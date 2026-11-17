Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/autoit?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0
@.str.343 = private unnamed_addr constant [10 x i8] c"TCPLISTEN\00", align 1
@.str.344 = private unnamed_addr constant [12 x i8] c"TCPNAMETOIP\00", align 1
@.str.345 = private unnamed_addr constant [8 x i8] c"TCPRECV\00", align 1
@.str.346 = private unnamed_addr constant [8 x i8] c"TCPSEND\00", align 1
@.str.347 = private unnamed_addr constant [12 x i8] c"TCPSHUTDOWN\00", align 1
@.str.348 = private unnamed_addr constant [11 x i8] c"TCPSTARTUP\00", align 1
@.str.349 = private unnamed_addr constant [10 x i8] c"TIMERDIFF\00", align 1
@.str.350 = private unnamed_addr constant [10 x i8] c"TIMERINIT\00", align 1
@.str.351 = private unnamed_addr constant [8 x i8] c"TOOLTIP\00", align 1
@.str.352 = private unnamed_addr constant [15 x i8] c"TRAYCREATEITEM\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"TRAYCREATEMENU\00", align 1
@.str.354 = private unnamed_addr constant [11 x i8] c"TRAYGETMSG\00", align 1
@.str.355 = private unnamed_addr constant [15 x i8] c"TRAYITEMDELETE\00", align 1
@.str.356 = private unnamed_addr constant [18 x i8] c"TRAYITEMGETHANDLE\00", align 1
@.str.357 = private unnamed_addr constant [17 x i8] c"TRAYITEMGETSTATE\00", align 1
@.str.358 = private unnamed_addr constant [16 x i8] c"TRAYITEMGETTEXT\00", align 1
@.str.359 = private unnamed_addr constant [19 x i8] c"TRAYITEMSETONEVENT\00", align 1
@.str.360 = private unnamed_addr constant [17 x i8] c"TRAYITEMSETSTATE\00", align 1
@.str.361 = private unnamed_addr constant [16 x i8] c"TRAYITEMSETTEXT\00", align 1
@.str.362 = private unnamed_addr constant [13 x i8] c"TRAYSETCLICK\00", align 1
@.str.363 = private unnamed_addr constant [12 x i8] c"TRAYSETICON\00", align 1
@.str.364 = private unnamed_addr constant [15 x i8] c"TRAYSETONEVENT\00", align 1
@.str.365 = private unnamed_addr constant [17 x i8] c"TRAYSETPAUSEICON\00", align 1
@.str.366 = private unnamed_addr constant [13 x i8] c"TRAYSETSTATE\00", align 1
@.str.367 = private unnamed_addr constant [15 x i8] c"TRAYSETTOOLTIP\00", align 1
@.str.368 = private unnamed_addr constant [8 x i8] c"TRAYTIP\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"UBOUND\00", align 1
@.str.370 = private unnamed_addr constant [8 x i8] c"UDPBIND\00", align 1
@.str.371 = private unnamed_addr constant [15 x i8] c"UDPCLOSESOCKET\00", align 1
@.str.372 = private unnamed_addr constant [8 x i8] c"UDPOPEN\00", align 1
@.str.373 = private unnamed_addr constant [8 x i8] c"UDPRECV\00", align 1
@.str.374 = private unnamed_addr constant [8 x i8] c"UDPSEND\00", align 1
@.str.375 = private unnamed_addr constant [12 x i8] c"UDPSHUTDOWN\00", align 1
@.str.376 = private unnamed_addr constant [11 x i8] c"UDPSTARTUP\00", align 1
@.str.377 = private unnamed_addr constant [11 x i8] c"VARGETTYPE\00", align 1
@.str.378 = private unnamed_addr constant [12 x i8] c"WINACTIVATE\00", align 1
@.str.379 = private unnamed_addr constant [10 x i8] c"WINACTIVE\00", align 1
@.str.380 = private unnamed_addr constant [9 x i8] c"WINCLOSE\00", align 1
@.str.381 = private unnamed_addr constant [10 x i8] c"WINEXISTS\00", align 1
@.str.382 = private unnamed_addr constant [9 x i8] c"WINFLASH\00", align 1
@.str.383 = private unnamed_addr constant [15 x i8] c"WINGETCARETPOS\00", align 1
@.str.384 = private unnamed_addr constant [16 x i8] c"WINGETCLASSLIST\00", align 1
@.str.385 = private unnamed_addr constant [17 x i8] c"WINGETCLIENTSIZE\00", align 1
@.str.386 = private unnamed_addr constant [13 x i8] c"WINGETHANDLE\00", align 1
@.str.387 = private unnamed_addr constant [10 x i8] c"WINGETPOS\00", align 1
@.str.388 = private unnamed_addr constant [14 x i8] c"WINGETPROCESS\00", align 1
@.str.389 = private unnamed_addr constant [12 x i8] c"WINGETSTATE\00", align 1
@.str.390 = private unnamed_addr constant [11 x i8] c"WINGETTEXT\00", align 1
@.str.391 = private unnamed_addr constant [12 x i8] c"WINGETTITLE\00", align 1
@.str.392 = private unnamed_addr constant [8 x i8] c"WINKILL\00", align 1
@.str.393 = private unnamed_addr constant [8 x i8] c"WINLIST\00", align 1
@.str.394 = private unnamed_addr constant [18 x i8] c"WINMENUSELECTITEM\00", align 1
@.str.395 = private unnamed_addr constant [15 x i8] c"WINMINIMIZEALL\00", align 1
@.str.396 = private unnamed_addr constant [19 x i8] c"WINMINIMIZEALLUNDO\00", align 1
@.str.397 = private unnamed_addr constant [8 x i8] c"WINMOVE\00", align 1
@.str.398 = private unnamed_addr constant [12 x i8] c"WINSETONTOP\00", align 1
@.str.399 = private unnamed_addr constant [12 x i8] c"WINSETSTATE\00", align 1
@.str.400 = private unnamed_addr constant [12 x i8] c"WINSETTITLE\00", align 1
@.str.401 = private unnamed_addr constant [12 x i8] c"WINSETTRANS\00", align 1
@.str.402 = private unnamed_addr constant [8 x i8] c"WINWAIT\00", align 1
@.str.403 = private unnamed_addr constant [14 x i8] c"WINWAITACTIVE\00", align 1
@.str.404 = private unnamed_addr constant [13 x i8] c"WINWAITCLOSE\00", align 1
@.str.405 = private unnamed_addr constant [17 x i8] c"WINWAITNOTACTIVE\00", align 1
@autoit_functions = local_unnamed_addr global [406 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405], align 16
@.str.406 = private unnamed_addr constant [10 x i8] c"UNKNOWN_0\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.408 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.409 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.410 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.411 = private unnamed_addr constant [5 x i8] c"THEN\00", align 1
@.str.412 = private unnamed_addr constant [5 x i8] c"ELSE\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"ELSEIF\00", align 1
@.str.414 = private unnamed_addr constant [6 x i8] c"ENDIF\00", align 1
@.str.415 = private unnamed_addr constant [6 x i8] c"WHILE\00", align 1
@.str.416 = private unnamed_addr constant [5 x i8] c"WEND\00", align 1
@.str.417 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.418 = private unnamed_addr constant [6 x i8] c"UNTIL\00", align 1
@.str.419 = private unnamed_addr constant [4 x i8] c"FOR\00", align 1
@.str.420 = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.421 = private unnamed_addr constant [3 x i8] c"TO\00", align 1
@.str.422 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str.423 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.424 = private unnamed_addr constant [9 x i8] c"EXITLOOP\00", align 1
@.str.425 = private unnamed_addr constant [13 x i8] c"CONTINUELOOP\00", align 1
@.str.426 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.427 = private unnamed_addr constant [5 x i8] c"CASE\00", align 1
@.str.428 = private unnamed_addr constant [10 x i8] c"ENDSELECT\00", align 1
@.str.429 = private unnamed_addr constant [7 x i8] c"SWITCH\00", align 1
@.str.430 = private unnamed_addr constant [10 x i8] c"ENDSWITCH\00", align 1
@.str.431 = private unnamed_addr constant [13 x i8] c"CONTINUECASE\00", align 1
@.str.432 = private unnamed_addr constant [4 x i8] c"DIM\00", align 1
@.str.433 = private unnamed_addr constant [6 x i8] c"REDIM\00", align 1
@.str.434 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.436 = private unnamed_addr constant [6 x i8] c"CONST\00", align 1
@.str.437 = private unnamed_addr constant [7 x i8] c"STATIC\00", align 1
@.str.438 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.439 = private unnamed_addr constant [8 x i8] c"ENDFUNC\00", align 1
@.str.440 = private unnamed_addr constant [7 x i8] c"RETURN\00", align 1
@.str.441 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.442 = private unnamed_addr constant [6 x i8] c"BYREF\00", align 1
@.str.443 = private unnamed_addr constant [5 x i8] c"WITH\00", align 1
@.str.444 = private unnamed_addr constant [8 x i8] c"ENDWITH\00", align 1
@.str.445 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.446 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.448 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.449 = private unnamed_addr constant [9 x i8] c"VOLATILE\00", align 1
@.str.450 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@autoit_keywords = local_unnamed_addr global [45 x ptr] [ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450], align 16
@.str.451 = private unnamed_addr constant [17 x i8] c"in scanautoit()\0A\00", align 1
@.str.452 = private unnamed_addr constant [11 x i8] c"autoit-tmp\00", align 1
@.str.453 = private unnamed_addr constant [45 x i8] c"autoit: Can't create temporary directory %s\0A\00", align 1
@.str.454 = private unnamed_addr constant [32 x i8] c"autoit: Extracting files to %s\0A\00", align 1
@fpu_words = internal unnamed_addr global i32 0, align 4
@.str.455 = private unnamed_addr constant [106 x i8] c"autoit: EA06 support not available(cannot extract ea06 doubles, unknown floating double representation).\0A\00", align 1
@.str.456 = private unnamed_addr constant [24 x i8] c"autoit: unknown method\0A\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"autoit\00", align 1
@.str.458 = private unnamed_addr constant [50 x i8] c"autoit: no FILE magic found, extraction complete\0A\00", align 1
@cli_debug_flag = external local_unnamed_addr global i8, align 1
@.str.459 = private unnamed_addr constant [27 x i8] c"autoit: magic string '%s'\0A\00", align 1
@.str.460 = private unnamed_addr constant [32 x i8] c"autoit: original filename '%s'\0A\00", align 1
@.str.461 = private unnamed_addr constant [35 x i8] c"autoit: bad file size - giving up\0A\00", align 1
@.str.462 = private unnamed_addr constant [29 x i8] c"autoit: skipping empty file\0A\00", align 1
@.str.463 = private unnamed_addr constant [29 x i8] c"autoit: compressed size: %x\0A\00", align 1
@.str.464 = private unnamed_addr constant [41 x i8] c"autoit: advertised uncompressed size %x\0A\00", align 1
@.str.465 = private unnamed_addr constant [24 x i8] c"autoit: ref chksum: %x\0A\00", align 1
@.str.466 = private unnamed_addr constant [45 x i8] c"autoit: compressed size too small, skipping\0A\00", align 1
@.str.467 = private unnamed_addr constant [66 x i8] c"autoit: failed to read compressed stream. broken/truncated file?\0A\00", align 1
@.str.468 = private unnamed_addr constant [28 x i8] c"autoit: file is compressed\0A\00", align 1
@.str.469 = private unnamed_addr constant [42 x i8] c"autoit: bad magic or unsupported version\0A\00", align 1
@.str.470 = private unnamed_addr constant [37 x i8] c"autoit: uncompressed size again: %x\0A\00", align 1
@.str.471 = private unnamed_addr constant [70 x i8] c"autoit: decompression error after %u bytes  - partial file may exist\0A\00", align 1
@.str.472 = private unnamed_addr constant [32 x i8] c"autoit: file is not compressed\0A\00", align 1
@.str.473 = private unnamed_addr constant [27 x i8] c"autoit: file is too short\0A\00", align 1
@.str.474 = private unnamed_addr constant [15 x i8] c"%s/autoit.%.3u\00", align 1
@.str.475 = private unnamed_addr constant [30 x i8] c"autoit: Can't create file %s\0A\00", align 1
@.str.476 = private unnamed_addr constant [31 x i8] c"autoit: cannot write %d bytes\0A\00", align 1
@.str.477 = private unnamed_addr constant [30 x i8] c"autoit: file extracted to %s\0A\00", align 1
@.str.478 = private unnamed_addr constant [37 x i8] c"autoit: file successfully extracted\0A\00", align 1
@.str.479 = private unnamed_addr constant [36 x i8] c"autoit: call to lseek() has failed\0A\00", align 1
@.str.480 = private unnamed_addr constant [47 x i8] c"autoit: getbits() - not enough bits available\0A\00", align 1
@__const.ea06.prefixes = private unnamed_addr constant [8 x i8] c"\00\00@$\00.\22\00", align 1
@.str.481 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.482 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.483 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.484 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.485 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.486 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.487 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.488 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.489 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.490 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.491 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.492 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.493 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.494 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.495 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.496 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.497 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.498 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.499 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.500 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.501 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.502 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.503 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.504 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.505 = private unnamed_addr constant [2 x i8] c":\00", align 1
@__const.ea06.opers = private unnamed_addr constant [25 x ptr] [ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505], align 16
@.str.506 = private unnamed_addr constant [11 x i8] c"cli_autoit\00", align 1
@.str.507 = private unnamed_addr constant [53 x i8] c"autoit: no FILE magic found, giving up (got 0x%08x)\0A\00", align 1
@.str.509 = private unnamed_addr constant [40 x i8] c"autoit: magic string too long to print\0A\00", align 1
@.str.510 = private unnamed_addr constant [69 x i8] c"autoit: decompression error after %u bytes - partial file may exist\0A\00", align 1
@.str.511 = private unnamed_addr constant [33 x i8] c"autoit: script has got %u lines\0A\00", align 1
@.str.512 = private unnamed_addr constant [66 x i8] c"autoit: too few bytes present - expected enough for a keyword ID\0A\00", align 1
@.str.513 = private unnamed_addr constant [41 x i8] c"autoit: unknown AutoIT keyword ID: 0x%x\0A\00", align 1
@.str.514 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.515 = private unnamed_addr constant [51 x i8] c"autoit: encountered use of unknown keyword ID: %s\0A\00", align 1
@.str.516 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.517 = private unnamed_addr constant [67 x i8] c"autoit: too few bytes present - expected enough for a function ID\0A\00", align 1
@.str.518 = private unnamed_addr constant [42 x i8] c"autoit: unknown AutoIT function ID: 0x%x\0A\00", align 1
@.str.519 = private unnamed_addr constant [52 x i8] c"autoit: encountered use of unknown function ID: %s\0A\00", align 1
@.str.520 = private unnamed_addr constant [37 x i8] c"autoit: not enough space for an int\0A\00", align 1
@.str.521 = private unnamed_addr constant [8 x i8] c"0x%08x \00", align 1
@.str.522 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for an int64\0A\00", align 1
@.str.523 = private unnamed_addr constant [10 x i8] c"0x%016lx \00", align 1
@.str.524 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for a double\0A\00", align 1
@.str.525 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.526 = private unnamed_addr constant [35 x i8] c"autoit: not enough space for size\0A\00", align 1
@.str.527 = private unnamed_addr constant [54 x i8] c"autoit: size too big - needed %d, total %d, avail %d\0A\00", align 1
@.str.528 = private unnamed_addr constant [33 x i8] c"autoit: found unknown op (0x%x)\0A\00", align 1
@.str.529 = private unnamed_addr constant [58 x i8] c"autoit: decompilation aborted - partial script may exist\0A\00", align 1
@.str.530 = private unnamed_addr constant [28 x i8] c"autoit: %s extracted to %s\0A\00", align 1
@.str.531 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.532 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.533 = private unnamed_addr constant [35 x i8] c"autoit: %s successfully extracted\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scanautoit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [600 x i8], align 16              ; 23 uses
  %i.b = alloca [1024 x i8], align 16             ; 10 uses
  %2 = alloca %struct.UNP, align 8                ; 39 uses
  %i.c = alloca [300 x i8], align 16              ; 10 uses
  %i.d = alloca [1024 x i8], align 16             ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.451) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = tail call ptr %i.h(ptr noundef %i.f, i64 noundef %1, i64 noundef 1, i32 noundef 0) #14, !inline_history !20 ; 20 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.iq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = tail call ptr @cli_gentemp_with_prefix(ptr noundef %i.k, ptr noundef nonnull @.str.452) #14 ; 9 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.iq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @mkdir(ptr noundef nonnull %i.l, i32 noundef 448) #14
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.453, ptr noundef nonnull %i.l) #14
  tail call void @free(ptr noundef nonnull %i.l) #14
  br label %bb.iq

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !67
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.454, ptr noundef nonnull %i.l) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load i8, ptr %i.i, align 1, !tbaa !10
  switch i8 %i.r, label %bb.im [
    i8 53, label %bb.h
    i8 54, label %bb.cz
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false)
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !43   ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.w = getelementptr i8, ptr %i.t, i64 16       ; 7 uses
  %.val.i.i = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.x = getelementptr i8, ptr %i.t, i64 72       ; 7 uses
  %.val4.i.i = load i64, ptr %i.x, align 8, !tbaa !69
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %.val.i.i to i64
  %i.aa = add i64 %.val4.i.i, %i.z
  %i.ab = sub i64 %i.y, %i.aa
  %i.ac = tail call ptr %i.v(ptr noundef %i.t, i64 noundef %i.ab, i64 noundef 16, i32 noundef 0) #14, !inline_history !21
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %ea05.exit, label %.preheader605.preheader.i

.preheader605.preheader.i:                        ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ae = load i8, ptr %i.s, align 1, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 11
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bi = tail call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph671.lr.ph.i, label %ea05.exit

.lr.ph671.lr.ph.i:                                ; preds = %.preheader605.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.i, i64 17
  %i.bk = zext i8 %i.ae to i32
  %i.bl = zext i8 %i.ag to i32
  %i.bm = zext i8 %i.ai to i32
  %i.bn = zext i8 %i.ak to i32
  %i.bo = zext i8 %i.am to i32
  %i.bp = zext i8 %i.ao to i32
  %i.bq = zext i8 %i.aq to i32
  %i.br = zext i8 %i.as to i32
  %i.bs = zext i8 %i.au to i32
  %i.bt = zext i8 %i.aw to i32
  %i.bu = zext i8 %i.ay to i32
  %i.bv = zext i8 %i.ba to i32
  %i.bw = zext i8 %i.bc to i32
  %i.bx = zext i8 %i.be to i32
  %i.by = zext i8 %i.bg to i32
  %i.bz = zext i8 %i.bh to i32
  %i.ca = add nuw nsw i32 %i.bk, 8879
  %i.cb = add nuw nsw i32 %i.ca, %i.bl
  %i.cc = add nuw nsw i32 %i.cb, %i.bm
  %i.cd = add nuw nsw i32 %i.cc, %i.bn
  %i.ce = add nuw nsw i32 %i.cd, %i.bo
  %i.cf = add nuw nsw i32 %i.ce, %i.bp
  %i.cg = add nuw nsw i32 %i.cf, %i.bq
  %i.ch = add nuw nsw i32 %i.cg, %i.br
  %i.ci = add nuw nsw i32 %i.ch, %i.bs
  %i.cj = add nuw nsw i32 %i.ci, %i.bt
  %i.ck = add nuw nsw i32 %i.cj, %i.bu
  %i.cl = add nuw nsw i32 %i.ck, %i.bv
  %i.cm = add nuw nsw i32 %i.cl, %i.bw
  %i.cn = add nuw nsw i32 %i.cm, %i.bx
  %i.co = add nuw nsw i32 %i.cn, %i.by
  %i.cp = add nuw nsw i32 %i.co, %i.bz
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 1023
  br label %.lr.ph671.i

bb.i:                                             ; preds = %.lr.ph671.i, %.backedge.i
  %.1122670.i = phi ptr [ %.1122.ph690.i, %.lr.ph671.i ], [ %.1122.be.i, %.backedge.i ] ; 4 uses
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !45
  %.val.i184.i = load ptr, ptr %i.w, align 8, !tbaa !68
  %.val4.i185.i = load i64, ptr %i.x, align 8, !tbaa !69
  %i.cs = ptrtoint ptr %.1122670.i to i64
  %i.ct = ptrtoint ptr %.val.i184.i to i64
  %i.cu = add i64 %.val4.i185.i, %i.ct
  %i.cv = sub i64 %i.cs, %i.cu
  %i.cw = call ptr %i.cr(ptr noundef %i.t, i64 noundef %i.cv, i64 noundef 8, i32 noundef 0) #14, !inline_history !21
  %.not148.i = icmp eq ptr %i.cw, null
  br i1 %.not148.i, label %ea05.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = load i32, ptr %.1122670.i, align 1, !tbaa !10
  %.not149.i = icmp eq i32 %i.cx, -827298305
  br i1 %.not149.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.458) #14
  br label %ea05.exit

bb.l:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %.1122670.i, i64 4
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !10 ; 2 uses
  %i.da = xor i32 %i.cz, 10684                    ; 4 uses
  %i.db = icmp slt i32 %i.cz, 0
  br i1 %i.db, label %ea05.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %.1122670.i, i64 8 ; 3 uses
  %i.dd = load i8, ptr @cli_debug_flag, align 1, !tbaa !10
  %i.de = icmp ne i8 %i.dd, 0
  %i.df = zext nneg i32 %i.da to i64              ; 4 uses
  %i.dg = icmp ult i32 %i.da, 300
  %or.cond.i = and i1 %i.dg, %i.de
  br i1 %or.cond.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %i.u, align 8, !tbaa !45
  %.val.i186.i = load ptr, ptr %i.w, align 8, !tbaa !68
  %.val4.i187.i = load i64, ptr %i.x, align 8, !tbaa !69
  %i.di = ptrtoint ptr %i.dc to i64
  %i.dj = ptrtoint ptr %.val.i186.i to i64
  %i.dk = add i64 %.val4.i187.i, %i.dj
  %i.dl = sub i64 %i.di, %i.dk
  %i.dm = call ptr %i.dh(ptr noundef nonnull %i.t, i64 noundef %i.dl, i64 noundef range(i64 0, 4294967296) %i.df, i32 noundef 0) #14, !inline_history !21
  %.not150.i = icmp eq ptr %i.dm, null
  br i1 %.not150.i, label %ea05.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.dc, i64 %i.df, i1 false)
  %i.dn = add nuw nsw i32 %i.da, 41566
  call fastcc void @MT_decrypt(ptr noundef nonnull %i.c, i32 noundef %i.da, i32 noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.df
  store i8 0, ptr %i.do, align 1, !tbaa !10
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.459, ptr noundef nonnull %i.c) #14
  br label %bb.p
end_hunk_0
begin_hunk_1_@cli_scanautoit:bb.a
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !67
  %.not173.i = icmp eq i32 %i.aqw, 0
  br i1 %.not173.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.477, ptr noundef nonnull %i.d) #14
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.478) #14
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.aqx = call i64 @lseek(i32 noundef %i.aqq, i64 noundef 0, i32 noundef 0) #14
  %i.aqy = icmp eq i64 %i.aqx, -1
  br i1 %i.aqy, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.479) #14
  br label %.thread546.thread559.i

bb.cv:                                            ; preds = %bb.ct
  %i.aqz = call i32 @cli_magic_scan_desc(i32 noundef %i.aqq, ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not174.i = icmp eq i32 %i.aqz, 0
  br i1 %.not174.i, label %bb.cw, label %.thread546.thread559.i

bb.cw:                                            ; preds = %bb.cv
  %i.ara = call i32 @close(i32 noundef %i.aqq) #14 ; 0 uses
  %i.arb = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 48
  %i.ard = load i32, ptr %i.arc, align 8, !tbaa !67
  %.not175.i = icmp eq i32 %i.ard, 0
  br i1 %.not175.i, label %bb.cx, label %.outer.i

bb.cx:                                            ; preds = %bb.cw
  %i.are = call i32 @cli_unlink(ptr noundef nonnull %i.d) #14 ; 0 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.cx, %bb.cw
  %i.arf = call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %.lr.ph671.i, label %ea05.exit

.lr.ph671.i:                                      ; preds = %.outer.i, %.lr.ph671.lr.ph.i
  %.0117.ph691.i = phi i32 [ 0, %.lr.ph671.lr.ph.i ], [ %i.aqo, %.outer.i ]
  %.1122.ph690.i = phi ptr [ %scevgep.i, %.lr.ph671.lr.ph.i ], [ %i.fu, %.outer.i ]
  br label %bb.i

.thread551.i:                                     ; preds = %bb.al, %bb.af
  %.0120.i = phi i32 [ 0, %bb.af ], [ 20, %bb.al ]
  call void @free(ptr noundef nonnull %i.fn) #14
  br label %ea05.exit

.thread546.i:                                     ; preds = %bb.co
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.475, ptr noundef nonnull %i.d) #14
  call void @free(ptr noundef nonnull %.sroa.0.1.i) #14
  br label %ea05.exit

.thread546.thread559.i:                           ; preds = %bb.cv, %bb.cu, %.thread546.thread998.i
  %.0120536544562.i = phi i32 [ 14, %.thread546.thread998.i ], [ 13, %bb.cu ], [ %i.aqz, %bb.cv ] ; 2 uses
  %i.arh = call i32 @close(i32 noundef %i.aqq) #14 ; 0 uses
  %i.ari = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 48
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !67
  %.not178.i = icmp eq i32 %i.ark, 0
  br i1 %.not178.i, label %bb.cy, label %ea05.exit

bb.cy:                                            ; preds = %.thread546.thread559.i
  %i.arl = call i32 @cli_unlink(ptr noundef nonnull %i.d) #14 ; 0 uses
  br label %ea05.exit

ea05.exit:                                        ; preds = %.outer.i, %bb.i, %bb.l, %bb.n, %bb.p, %bb.q, %bb.s, %bb.u, %.backedge.i, %bb.ad, %bb.h, %.preheader605.preheader.i, %bb.k, %bb.w, %.thread551.i, %.thread546.i, %.thread546.thread559.i, %bb.cy
  %.0120536544554.i = phi i32 [ %.0120.i, %.thread551.i ], [ %.0120536544562.i, %.thread546.thread559.i ], [ %.0120536544562.i, %bb.cy ], [ 9, %.thread546.i ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.w ], [ 0, %bb.l ], [ %i.bi, %.preheader605.preheader.i ], [ %i.ez, %.backedge.i ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.u ], [ 20, %bb.ad ], [ 0, %bb.q ], [ %i.arf, %.outer.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.in

bb.cz:                                            ; preds = %bb.g
  %i.arm = load i32, ptr @fpu_words, align 4, !tbaa !11 ; 2 uses
  %i.arn = icmp eq i32 %i.arm, 0
  br i1 %i.arn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aro = tail call i32 @get_fpu_endian() #14    ; 2 uses
  store i32 %i.aro, ptr @fpu_words, align 4, !tbaa !11
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.arp = phi i32 [ %i.aro, %bb.da ], [ %i.arm, %bb.cz ]
  %i.arq = icmp eq i32 %i.arp, 3
  br i1 %i.arq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.455) #14
  br label %bb.in

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.arr = load ptr, ptr %i.e, align 8, !tbaa !43 ; 9 uses
  %i.ars = tail call i32 @cli_checklimits(ptr noundef nonnull @.str.506, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14 ; 2 uses
  %i.art = icmp eq i32 %i.ars, 0
  br i1 %i.art, label %.lr.ph491.i, label %ea06.exit

.lr.ph491.i:                                      ; preds = %bb.dd
  %i.aru = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arr, i64 104 ; 6 uses
  %i.arw = getelementptr i8, ptr %i.arr, i64 16   ; 6 uses
  %i.arx = getelementptr i8, ptr %i.arr, i64 72   ; 6 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 26 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 57 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 19 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 26 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.b, i64 1023
  br label %bb.de

bb.de:                                            ; preds = %bb.il, %.lr.ph491.i
  %.0221489.i = phi i32 [ 0, %.lr.ph491.i ], [ %.1222.i, %bb.il ] ; 4 uses
  %.0236488.i = phi ptr [ %i.aru, %.lr.ph491.i ], [ %.1237.i, %bb.il ] ; 4 uses
  %i.asj = load ptr, ptr %i.arv, align 8, !tbaa !45
  %.val.i.i27 = load ptr, ptr %i.arw, align 8, !tbaa !68
  %.val4.i.i28 = load i64, ptr %i.arx, align 8, !tbaa !69
  %i.ask = ptrtoint ptr %.0236488.i to i64
  %i.asl = ptrtoint ptr %.val.i.i27 to i64
  %i.asm = add i64 %.val4.i.i28, %i.asl
  %i.asn = sub i64 %i.ask, %i.asm
  %i.aso = call ptr %i.asj(ptr noundef %i.arr, i64 noundef %i.asn, i64 noundef 8, i32 noundef 0) #14, !inline_history !26
  %.not.i29 = icmp eq ptr %i.aso, null
  br i1 %.not.i29, label %ea06.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.asp = load i32, ptr %.0236488.i, align 1, !tbaa !10 ; 2 uses
  %.not287.i = icmp eq i32 %i.asp, 1388987243
  br i1 %.not287.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.507, i32 noundef %i.asp) #14
  br label %ea06.exit

bb.dh:                                            ; preds = %bb.df
  %i.asq = getelementptr inbounds nuw i8, ptr %.0236488.i, i64 4
  %i.asr = load i32, ptr %i.asq, align 1, !tbaa !10 ; 2 uses
  %i.ass = xor i32 %i.asr, 44476                  ; 3 uses
  %i.ast = shl i32 %i.ass, 1                      ; 9 uses
  %i.asu = icmp slt i32 %i.ast, 0
  br i1 %i.asu, label %ea06.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.asv = getelementptr inbounds nuw i8, ptr %.0236488.i, i64 8 ; 3 uses
  %i.asw = icmp ult i32 %i.ass, 300
  br i1 %i.asw, label %bb.dj, label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.asx = zext nneg i32 %i.ast to i64            ; 4 uses
  %i.asy = load ptr, ptr %i.arv, align 8, !tbaa !45
  %.val.i356.i = load ptr, ptr %i.arw, align 8, !tbaa !68
  %.val4.i357.i = load i64, ptr %i.arx, align 8, !tbaa !69
  %i.asz = ptrtoint ptr %i.asv to i64
  %i.ata = ptrtoint ptr %.val.i356.i to i64
  %i.atb = add i64 %.val4.i357.i, %i.ata
  %i.atc = sub i64 %i.asz, %i.atb
  %i.atd = call ptr %i.asy(ptr noundef nonnull %i.arr, i64 noundef %i.atc, i64 noundef range(i64 0, 4294967296) %i.asx, i32 noundef 0) #14, !inline_history !26
  %.not288.i = icmp eq ptr %i.atd, null
  br i1 %.not288.i, label %ea06.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.asv, i64 %i.asx, i1 false)
  %i.ate = trunc nuw nsw i32 %i.ass to i16
  %i.atf = add nuw nsw i16 %i.ate, -19649
  call fastcc void @LAME_decrypt(ptr noundef nonnull %i.a, i32 noundef %i.ast, i16 noundef zeroext %i.atf)
  %i.atg = icmp eq i32 %i.ast, 0
  br i1 %i.atg, label %u2a.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ath = icmp samesign ult i32 %i.ast, 5
  %i.ati = load i8, ptr %i.a, align 16
  %i.atj = icmp ne i8 %i.ati, -1
  %or.cond411.not517.i = select i1 %i.ath, i1 true, i1 %i.atj
  %i.atk = load i8, ptr %i.ary, align 1
  %i.atl = icmp ne i8 %i.atk, -2
  %or.cond414.not514.i = select i1 %or.cond411.not517.i, i1 true, i1 %i.atl
  %i.atm = load i8, ptr %i.arz, align 2
  %.not.i.i = icmp eq i8 %i.atm, 0
  %or.cond511.i = select i1 %or.cond414.not514.i, i1 true, i1 %.not.i.i
  br i1 %or.cond511.i, label %.lr.ph.preheader.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.atn = add nsw i32 %i.ast, -2
  br label %.lr.ph49.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dl
  %i.ato = call i32 @llvm.umin.i32(i32 %i.ast, i32 20) ; 2 uses
  %i.atp = zext nneg i32 %i.ato to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.do, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.do ] ; 2 uses
  %.045.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.atx, %bb.do ]
  %i.atq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.atr = load i8, ptr %i.atq, align 2, !tbaa !10
  %.not43.i.i = icmp eq i8 %i.atr, 0
  br i1 %.not43.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atq, i64 1
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !10
  %i.atu = icmp eq i8 %i.att, 0
  %i.atv = zext i1 %i.atu to i32
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.lr.ph.i.i
  %i.atw = phi i32 [ 0, %.lr.ph.i.i ], [ %i.atv, %bb.dn ]
  %i.atx = add i32 %i.atw, %.045.i.i              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next.i.i, %i.atp
  br i1 %3, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.do
  %i.aty = shl i32 %i.atx, 2
  %.not42.i.i = icmp ult i32 %i.aty, %i.ato
  br i1 %.not42.i.i, label %u2a.exit.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %._crit_edge.i.i, %bb.dm
  %.035.i.i = phi i32 [ %i.atn, %bb.dm ], [ %i.ast, %._crit_edge.i.i ] ; 2 uses
  %.034.i.i = phi ptr [ %i.arz, %bb.dm ], [ %i.a, %._crit_edge.i.i ] ; 9 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %.035.i.i, i32 2)
  %i.atz = add nsw i32 %umax.i, -1
  %i.aua = lshr i32 %i.atz, 1
  %narrow = add nuw i32 %i.aua, 1
  %i.aub = zext i32 %narrow to i64                ; 2 uses
  %xtraiter = and i64 %i.aub, 7                   ; 3 uses
  %i.auc = icmp ult i32 %.035.i.i, 15
  br i1 %i.auc, label %.lr.ph49.i.i.epil.preheader, label %.lr.ph49.preheader.i.i.new

.lr.ph49.preheader.i.i.new:                       ; preds = %.lr.ph49.preheader.i.i
  %unroll_iter.a = and i64 %i.aub, 4294967288
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i, %.lr.ph49.preheader.i.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph49.preheader.i.i.new ], [ %indvars.iv.next.i.7, %.lr.ph49.i.i ] ; 9 uses
  %.03646.i.i = phi ptr [ %i.a, %.lr.ph49.preheader.i.i.new ], [ %i.avh, %.lr.ph49.i.i ] ; 9 uses
  %niter.a = phi i64 [ 0, %.lr.ph49.preheader.i.i.new ], [ %niter.next.7, %.lr.ph49.i.i ]
  %i.aud = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !10
  %i.auf = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 1
  store i8 %i.aue, ptr %.03646.i.i, align 1, !tbaa !10
  %i.aug = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 2
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !10
  %i.auj = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 2
  store i8 %i.aui, ptr %i.auf, align 1, !tbaa !10
  %i.auk = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !10
  %i.aun = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 3
  store i8 %i.aum, ptr %i.auj, align 1, !tbaa !10
  %i.auo = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 6
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !10
  %i.aur = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 4
  store i8 %i.auq, ptr %i.aun, align 1, !tbaa !10
  %i.aus = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 8
  %i.auu = load i8, ptr %i.aut, align 1, !tbaa !10
  %i.auv = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 5
  store i8 %i.auu, ptr %i.aur, align 1, !tbaa !10
  %i.auw = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 10
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !10
  %i.auz = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 6
  store i8 %i.auy, ptr %i.auv, align 1, !tbaa !10
  %i.ava = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 12
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !10
  %i.avd = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 7
  store i8 %i.avc, ptr %i.auz, align 1, !tbaa !10
  %i.ave = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 14
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !10
  %i.avh = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 8 ; 2 uses
  store i8 %i.avg, ptr %i.avd, align 1, !tbaa !10
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 16 ; 2 uses
  %niter.next.7 = add i64 %niter.a, 8             ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter.a
  br i1 %niter.ncmp.7, label %u2a.exit.i.loopexit.unr-lcssa, label %.lr.ph49.i.i

u2a.exit.i.loopexit.unr-lcssa:                    ; preds = %.lr.ph49.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %u2a.exit.i, label %.lr.ph49.i.i.epil.preheader

.lr.ph49.i.i.epil.preheader:                      ; preds = %u2a.exit.i.loopexit.unr-lcssa, %.lr.ph49.preheader.i.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next.i.7, %u2a.exit.i.loopexit.unr-lcssa ]
  %.03646.i.i.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i.i ], [ %i.avh, %u2a.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod553 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod553)
  br label %.lr.ph49.i.i.epil

.lr.ph49.i.i.epil:                                ; preds = %.lr.ph49.i.i.epil, %.lr.ph49.i.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph49.i.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph49.i.i.epil.preheader ] ; 2 uses
  %.03646.i.i.epil = phi ptr [ %i.avk, %.lr.ph49.i.i.epil ], [ %.03646.i.i.epil.init, %.lr.ph49.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph49.i.i.epil ], [ 0, %.lr.ph49.i.i.epil.preheader ]
  %i.avi = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv.i.epil
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !10
  %i.avk = getelementptr inbounds nuw i8, ptr %.03646.i.i.epil, i64 1
  store i8 %i.avj, ptr %.03646.i.i.epil, align 1, !tbaa !10
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %u2a.exit.i, label %.lr.ph49.i.i.epil, !llvm.loop !27

u2a.exit.i:                                       ; preds = %u2a.exit.i.loopexit.unr-lcssa, %.lr.ph49.i.i.epil, %._crit_edge.i.i, %bb.dk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.459, ptr noundef nonnull %i.a) #14
  %i.avl = icmp eq i32 %i.asr, 44463
  br i1 %i.avl, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %u2a.exit.i
  %i.avm = load i128, ptr %i.a, align 16
  %i.avn = xor i128 112072022528062101447413485049216908862, %i.avm
  %i.avo = getelementptr i8, ptr %i.a, i64 3
  %i.avp = load i128, ptr %i.avo, align 1
  %i.avq = xor i128 80066441183196353176882849944769418561, %i.avp
  %i.avr = or i128 %i.avn, %i.avq
  %i.avs = icmp ne i128 %i.avr, 0
  %i.avt = zext i1 %i.avs to i32
  %.not289.i = icmp eq i32 %i.avt, 0
  br label %bb.dr

bb.dq:                                            ; preds = %bb.di
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.509) #14
  %.pre.i30 = zext nneg i32 %i.ast to i64
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %u2a.exit.i
  %.pre-phi.i31 = phi i64 [ %i.asx, %bb.dp ], [ %i.asx, %u2a.exit.i ], [ %.pre.i30, %bb.dq ]
  %.0220.i = phi i1 [ %.not289.i, %bb.dp ], [ false, %u2a.exit.i ], [ false, %bb.dq ] ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.asv, i64 %.pre-phi.i31 ; 3 uses
  %i.avv = load ptr, ptr %i.arv, align 8, !tbaa !45
  %.val.i358.i = load ptr, ptr %i.arw, align 8, !tbaa !68
  %.val4.i359.i = load i64, ptr %i.arx, align 8, !tbaa !69
  %i.avw = ptrtoint ptr %i.avu to i64
  %i.avx = ptrtoint ptr %.val.i358.i to i64
  %i.avy = add i64 %.val4.i359.i, %i.avx
  %i.avz = sub i64 %i.avw, %i.avy
  %i.awa = call ptr %i.avv(ptr noundef %i.arr, i64 noundef %i.avz, i64 noundef 4, i32 noundef 0) #14, !inline_history !26
  %.not290.i = icmp eq ptr %i.awa, null
  br i1 %.not290.i, label %ea06.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.awb = load i32, ptr %i.avu, align 1, !tbaa !10
  %i.awc = xor i32 %i.awb, 63520                  ; 3 uses
  %i.awd = shl i32 %i.awc, 1                      ; 8 uses
  %i.awe = icmp slt i32 %i.awd, 0
  br i1 %i.awe, label %ea06.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avu, i64 4 ; 3 uses
  %i.awg = load i8, ptr @cli_debug_flag, align 1, !tbaa !10
  %i.awh = icmp ne i8 %i.awg, 0
  %i.awi = icmp ult i32 %i.awc, 300
  %or.cond.i32 = and i1 %i.awi, %i.awh
  %i.awj = zext nneg i32 %i.awd to i64            ; 4 uses
  br i1 %or.cond.i32, label %bb.du, label %._crit_edge576.i

bb.du:                                            ; preds = %bb.dt
  %i.awk = load ptr, ptr %i.arv, align 8, !tbaa !45
  %.val.i360.i = load ptr, ptr %i.arw, align 8, !tbaa !68
  %.val4.i361.i = load i64, ptr %i.arx, align 8, !tbaa !69
  %i.awl = ptrtoint ptr %i.awf to i64
  %i.awm = ptrtoint ptr %.val.i360.i to i64
  %i.awn = add i64 %.val4.i361.i, %i.awm
  %i.awo = sub i64 %i.awl, %i.awn
  %i.awp = call ptr %i.awk(ptr noundef nonnull %i.arr, i64 noundef %i.awo, i64 noundef range(i64 0, 4294967296) %i.awj, i32 noundef 0) #14, !inline_history !26
  %.not291.i = icmp eq ptr %i.awp, null
  br i1 %.not291.i, label %ea06.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.awf, i64 %i.awj, i1 false)
  %i.awq = trunc nuw nsw i32 %i.awc to i16
  %i.awr = add nuw nsw i16 %i.awq, -2951
  call fastcc void @LAME_decrypt(ptr noundef nonnull %i.a, i32 noundef %i.awd, i16 noundef zeroext %i.awr)
  %i.aws = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awj ; 2 uses
  store i8 0, ptr %i.aws, align 2, !tbaa !10
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 1
  store i8 0, ptr %i.awt, align 1, !tbaa !10
  %i.awu = icmp eq i32 %i.awd, 0
  br i1 %i.awu, label %u2a.exit378.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.awv = icmp samesign ult i32 %i.awd, 5
  %i.aww = load i8, ptr %i.a, align 16
  %i.awx = icmp ne i8 %i.aww, -1
  %or.cond416.not522.i = select i1 %i.awv, i1 true, i1 %i.awx
  %i.awy = load i8, ptr %i.ary, align 1
  %i.awz = icmp ne i8 %i.awy, -2
  %or.cond419.not519.i = select i1 %or.cond416.not522.i, i1 true, i1 %i.awz
  %i.axa = load i8, ptr %i.arz, align 2
  %.not.i377.i = icmp eq i8 %i.axa, 0
  %or.cond512.i = select i1 %or.cond419.not519.i, i1 true, i1 %.not.i377.i
  br i1 %or.cond512.i, label %.lr.ph.preheader.i362.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.axb = add nsw i32 %i.awd, -2
  br label %.lr.ph49.preheader.i370.i

.lr.ph.preheader.i362.i:                          ; preds = %bb.dw
  %i.axc = call i32 @llvm.umin.i32(i32 %i.awd, i32 20) ; 2 uses
  %i.axd = zext nneg i32 %i.axc to i64
  br label %.lr.ph.i363.i

.lr.ph.i363.i:                                    ; preds = %bb.dz, %.lr.ph.preheader.i362.i
  %indvars.iv.i364.i = phi i64 [ 0, %.lr.ph.preheader.i362.i ], [ %indvars.iv.next.i367.i, %bb.dz ] ; 2 uses
  %.045.i365.i = phi i32 [ 0, %.lr.ph.preheader.i362.i ], [ %i.axl, %bb.dz ]
  %i.axe = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i364.i ; 2 uses
  %i.axf = load i8, ptr %i.axe, align 2, !tbaa !10
  %.not43.i366.i = icmp eq i8 %i.axf, 0
  br i1 %.not43.i366.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i363.i
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axe, i64 1
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !10
  %i.axi = icmp eq i8 %i.axh, 0
  %i.axj = zext i1 %i.axi to i32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph.i363.i
  %i.axk = phi i32 [ 0, %.lr.ph.i363.i ], [ %i.axj, %bb.dy ]
  %i.axl = add i32 %i.axk, %.045.i365.i           ; 2 uses
  %indvars.iv.next.i367.i = add nuw nsw i64 %indvars.iv.i364.i, 2 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next.i367.i, %i.axd
  br i1 %4, label %.lr.ph.i363.i, label %._crit_edge.i368.i

._crit_edge.i368.i:                               ; preds = %bb.dz
  %i.axm = shl i32 %i.axl, 2
  %.not42.i369.i = icmp ult i32 %i.axm, %i.axc
  br i1 %.not42.i369.i, label %u2a.exit378.i, label %.lr.ph49.preheader.i370.i

.lr.ph49.preheader.i370.i:                        ; preds = %._crit_edge.i368.i, %bb.dx
  %.035.i371.i = phi i32 [ %i.axb, %bb.dx ], [ %i.awd, %._crit_edge.i368.i ] ; 2 uses
  %.034.i372.i = phi ptr [ %i.arz, %bb.dx ], [ %i.a, %._crit_edge.i368.i ] ; 9 uses
  %umax549.i = call i32 @llvm.umax.i32(i32 %.035.i371.i, i32 2)
  %i.axn = add nsw i32 %umax549.i, -1
  %i.axo = lshr i32 %i.axn, 1
  %narrow564 = add nuw i32 %i.axo, 1
  %i.axp = zext i32 %narrow564 to i64             ; 2 uses
  %xtraiter554 = and i64 %i.axp, 7                ; 3 uses
  %i.axq = icmp ult i32 %.035.i371.i, 15
  br i1 %i.axq, label %.lr.ph49.i373.i.epil.preheader, label %.lr.ph49.preheader.i370.i.new

.lr.ph49.preheader.i370.i.new:                    ; preds = %.lr.ph49.preheader.i370.i
  %unroll_iter558 = and i64 %i.axp, 4294967288
  br label %.lr.ph49.i373.i

.lr.ph49.i373.i:                                  ; preds = %.lr.ph49.i373.i, %.lr.ph49.preheader.i370.i.new
  %indvars.iv546.i = phi i64 [ 0, %.lr.ph49.preheader.i370.i.new ], [ %indvars.iv.next547.i.7, %.lr.ph49.i373.i ] ; 9 uses
  %.03646.i375.i = phi ptr [ %i.a, %.lr.ph49.preheader.i370.i.new ], [ %i.ayv, %.lr.ph49.i373.i ] ; 9 uses
  %niter559 = phi i64 [ 0, %.lr.ph49.preheader.i370.i.new ], [ %niter559.next.7, %.lr.ph49.i373.i ]
  %i.axr = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.axs = load i8, ptr %i.axr, align 1, !tbaa !10
  %i.axt = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 1
  store i8 %i.axs, ptr %.03646.i375.i, align 1, !tbaa !10
  %i.axu = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 2
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !10
  %i.axx = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 2
  store i8 %i.axw, ptr %i.axt, align 1, !tbaa !10
  %i.axy = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 4
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !10
  %i.ayb = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 3
  store i8 %i.aya, ptr %i.axx, align 1, !tbaa !10
  %i.ayc = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 6
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !10
  %i.ayf = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 4
  store i8 %i.aye, ptr %i.ayb, align 1, !tbaa !10
  %i.ayg = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !10
  %i.ayj = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 5
  store i8 %i.ayi, ptr %i.ayf, align 1, !tbaa !10
  %i.ayk = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 10
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !10
  %i.ayn = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 6
  store i8 %i.aym, ptr %i.ayj, align 1, !tbaa !10
  %i.ayo = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 12
  %i.ayq = load i8, ptr %i.ayp, align 1, !tbaa !10
  %i.ayr = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 7
  store i8 %i.ayq, ptr %i.ayn, align 1, !tbaa !10
  %i.ays = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 14
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !10
  %i.ayv = getelementptr inbounds nuw i8, ptr %.03646.i375.i, i64 8 ; 2 uses
  store i8 %i.ayu, ptr %i.ayr, align 1, !tbaa !10
  %indvars.iv.next547.i.7 = add nuw nsw i64 %indvars.iv546.i, 16 ; 2 uses
  %niter559.next.7 = add i64 %niter559, 8         ; 2 uses
  %niter559.ncmp.7 = icmp eq i64 %niter559.next.7, %unroll_iter558
  br i1 %niter559.ncmp.7, label %u2a.exit378.i.loopexit.unr-lcssa, label %.lr.ph49.i373.i

u2a.exit378.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph49.i373.i
  %lcmp.mod556.not = icmp eq i64 %xtraiter554, 0
  br i1 %lcmp.mod556.not, label %u2a.exit378.i, label %.lr.ph49.i373.i.epil.preheader

.lr.ph49.i373.i.epil.preheader:                   ; preds = %u2a.exit378.i.loopexit.unr-lcssa, %.lr.ph49.preheader.i370.i
  %indvars.iv546.i.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i370.i ], [ %indvars.iv.next547.i.7, %u2a.exit378.i.loopexit.unr-lcssa ]
  %.03646.i375.i.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i370.i ], [ %i.ayv, %u2a.exit378.i.loopexit.unr-lcssa ]
  %lcmp.mod557 = icmp ne i64 %xtraiter554, 0
  call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph49.i373.i.epil

.lr.ph49.i373.i.epil:                             ; preds = %.lr.ph49.i373.i.epil, %.lr.ph49.i373.i.epil.preheader
  %indvars.iv546.i.epil = phi i64 [ %indvars.iv.next547.i.epil, %.lr.ph49.i373.i.epil ], [ %indvars.iv546.i.epil.init, %.lr.ph49.i373.i.epil.preheader ] ; 2 uses
  %.03646.i375.i.epil = phi ptr [ %i.ayy, %.lr.ph49.i373.i.epil ], [ %.03646.i375.i.epil.init, %.lr.ph49.i373.i.epil.preheader ] ; 2 uses
  %epil.iter555 = phi i64 [ %epil.iter555.next, %.lr.ph49.i373.i.epil ], [ 0, %.lr.ph49.i373.i.epil.preheader ]
  %i.ayw = getelementptr inbounds nuw i8, ptr %.034.i372.i, i64 %indvars.iv546.i.epil
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !10
  %i.ayy = getelementptr inbounds nuw i8, ptr %.03646.i375.i.epil, i64 1
  store i8 %i.ayx, ptr %.03646.i375.i.epil, align 1, !tbaa !10
  %indvars.iv.next547.i.epil = add nuw nsw i64 %indvars.iv546.i.epil, 2
  %epil.iter555.next = add i64 %epil.iter555, 1   ; 2 uses
  %epil.iter555.cmp.not = icmp eq i64 %epil.iter555.next, %xtraiter554
  br i1 %epil.iter555.cmp.not, label %u2a.exit378.i, label %.lr.ph49.i373.i.epil, !llvm.loop !28

u2a.exit378.i:                                    ; preds = %u2a.exit378.i.loopexit.unr-lcssa, %.lr.ph49.i373.i.epil, %._crit_edge.i368.i, %bb.dv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.460, ptr noundef nonnull %i.a) #14
  br label %._crit_edge576.i

._crit_edge576.i:                                 ; preds = %u2a.exit378.i, %bb.dt
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.awf, i64 %i.awj ; 7 uses
  %i.aza = load ptr, ptr %i.arv, align 8, !tbaa !45
  %.val.i379.i = load ptr, ptr %i.arw, align 8, !tbaa !68
  %.val4.i380.i = load i64, ptr %i.arx, align 8, !tbaa !69
  %i.azb = ptrtoint ptr %i.ayz to i64
  %i.azc = ptrtoint ptr %.val.i379.i to i64
  %i.azd = add i64 %.val4.i380.i, %i.azc
  %i.aze = sub i64 %i.azb, %i.azd
  %i.azf = call ptr %i.aza(ptr noundef %i.arr, i64 noundef %i.aze, i64 noundef 13, i32 noundef 0) #14, !inline_history !26
  %.not292.i = icmp eq ptr %i.azf, null
  br i1 %.not292.i, label %ea06.exit, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge576.i
  %i.azg = load i8, ptr %i.ayz, align 1, !tbaa !10
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayz, i64 1
  %i.azi = load i32, ptr %i.azh, align 1, !tbaa !10 ; 3 uses
  %i.azj = xor i32 %i.azi, 34748                  ; 2 uses
  store i32 %i.azj, ptr %i.asa, align 4, !tbaa !15
  %i.azk = icmp slt i32 %i.azi, 0
  br i1 %i.azk, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.461) #14
  br label %ea06.exit

bb.ec:                                            ; preds = %bb.ea
  %.not293.i = icmp eq i32 %i.azi, 34748
  br i1 %.not293.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.462) #14
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayz, i64 29
  br label %bb.il

bb.ee:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.463, i32 noundef %i.azj) #14
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayz, i64 5
  %i.azn = load i32, ptr %i.azm, align 1, !tbaa !10
  %i.azo = xor i32 %i.azn, 34748
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.464, i32 noundef %i.azo) #14
  %i.azp = getelementptr inbounds nuw i8, ptr %i.ayz, i64 9
  %i.azq = load i32, ptr %i.azp, align 1, !tbaa !10
  %i.azr = xor i32 %i.azq, 42629
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.465, i32 noundef %i.azr) #14
  %i.azs = getelementptr inbounds nuw i8, ptr %i.ayz, i64 29 ; 5 uses
  %i.azt = load i32, ptr %i.asa, align 4, !tbaa !15
  %i.azu = zext i32 %i.azt to i64
  %i.azv = call i32 @cli_checklimits(ptr noundef nonnull @.str.457, ptr noundef nonnull %0, i64 noundef %i.azu, i64 noundef 0, i64 noundef 0) #14
  %.not294.i = icmp eq i32 %i.azv, 0
  br i1 %.not294.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.azw = load i32, ptr %i.asa, align 4, !tbaa !15
  %i.azx = zext i32 %i.azw to i64
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azs, i64 %i.azx
  br label %bb.il

bb.eg:                                            ; preds = %bb.ee
  %i.azz = icmp eq i8 %i.azg, 1                   ; 2 uses
  %i.baa = load i32, ptr %i.asa, align 4          ; 2 uses
  %i.bab = icmp ult i32 %i.baa, 4
  %or.cond9.i33 = select i1 %i.azz, i1 %i.bab, i1 false
  br i1 %or.cond9.i33, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.466) #14
  br label %bb.il

bb.ei:                                            ; preds = %bb.eg
  %i.bac = zext i32 %i.baa to i64
  %i.bad = add i32 %.0221489.i, 1                 ; 6 uses
  %i.bae = call ptr @cli_max_malloc(i64 noundef %i.bac) #14 ; 2 uses
  store ptr %i.bae, ptr %i.asb, align 8, !tbaa !16
  %.not295.i = icmp eq ptr %i.bae, null
  br i1 %.not295.i, label %ea06.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.baf = load i32, ptr %i.asa, align 4, !tbaa !15
  %i.bag = zext i32 %i.baf to i64
  %i.bah = load ptr, ptr %i.arv, align 8, !tbaa !45
  %.val.i381.i = load ptr, ptr %i.arw, align 8, !tbaa !68
  %.val4.i382.i = load i64, ptr %i.arx, align 8, !tbaa !69
  %i.bai = ptrtoint ptr %i.azs to i64
  %i.baj = ptrtoint ptr %.val.i381.i to i64
  %i.bak = add i64 %.val4.i382.i, %i.baj
  %i.bal = sub i64 %i.bai, %i.bak
  %i.bam = call ptr %i.bah(ptr noundef nonnull %i.arr, i64 noundef %i.bal, i64 noundef range(i64 0, 4294967296) %i.bag, i32 noundef 0) #14, !inline_history !26
  %.not296.i = icmp eq ptr %i.bam, null
  br i1 %.not296.i, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.467) #14
  %i.ban = load ptr, ptr %i.asb, align 8, !tbaa !16
  call void @free(ptr noundef %i.ban) #14
  br label %ea06.exit

bb.el:                                            ; preds = %bb.ej
  %i.bao = load ptr, ptr %i.asb, align 8, !tbaa !16
  %i.bap = load i32, ptr %i.asa, align 4, !tbaa !15
  %i.baq = zext i32 %i.bap to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bao, ptr nonnull align 1 %i.azs, i64 %i.baq, i1 false)
  %i.bar = load i32, ptr %i.asa, align 4, !tbaa !15 ; 2 uses
  %i.bas = zext i32 %i.bar to i64
  %i.bat = getelementptr inbounds nuw i8, ptr %i.azs, i64 %i.bas ; 5 uses
end_hunk_1
