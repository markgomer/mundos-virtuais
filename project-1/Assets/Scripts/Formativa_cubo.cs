using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Formativa_cubo : MonoBehaviour
{
    public Material cubeMaterial;
    GameObject cube;

    // Start is called before the first frame update
    void Start()
    {
        // Create a cube at the world origin (0, 0, 0)
        cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        cube.transform.position = new Vector3(0, 0, 0);
    
        // Assign the material to the cube
        cube.GetComponent<Renderer>().material = cubeMaterial;
    }

    // Update is called once per frame
    void Update()
    {
        // Check for user input to rotate the cube
        RotateCube();
    }

    void RotateCube()
    {
        float rotationSpeed = 50.0f;

        // Rotate around the Y-axis when "a" or "d" are pressed
        if (Input.GetKey(KeyCode.A))
        {
            cube.transform.Rotate(Vector3.up, -rotationSpeed * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.D))
        {
            cube.transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
        }

        // Rotate around the X-axis when "w" or "s" are pressed
        if (Input.GetKey(KeyCode.W))
        {
            cube.transform.Rotate(Vector3.right, -rotationSpeed * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.S))
        {
            cube.transform.Rotate(Vector3.right, rotationSpeed * Time.deltaTime);
        }
    }
}
