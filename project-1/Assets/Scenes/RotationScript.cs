using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotationScript : MonoBehaviour
{
    Vector3 rotation;
    public float speed = 100f;

    // Start is called before the first frame update
    void Start()
    {
        Debug.Log("Start");
        rotation = this.transform.rotation.eulerAngles;
    }

    /// <summary>
    /// Awake is called when the script instance is being loaded.
    /// </summary>
    void Awake()
    {
        Debug.Log("Awake");
    }

    // Update is called once per frame
    void Update()
    {
        rotation += new Vector3(0, 0, 1) * Time.deltaTime * speed;
        this.transform.eulerAngles = rotation ;
    }

    /// <summary>
    /// This function is called every fixed framerate frame, if the MonoBehaviour is enabled.
    /// </summary>
    void FixedUpdate()
    {
        
    }
}
