Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/encode?download=true
inline.NumInlined: 81
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%union.anon.8 = type { [16384 x i32] }
%struct.encode_options_t = type { %struct.utils__SkipUntilSpecification, %struct.utils__SkipUntilSpecification, i32, i32, i64, i32, i32, i64, [64 x %struct.compression_setting_t], i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [64 x ptr], i32, i32, %union.anon.1, %struct.anon.3 }
%struct.utils__SkipUntilSpecification = type { i32, i32, %union.anon }
%union.anon = type { double }
%struct.compression_setting_t = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.EncoderSession = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i64, i64, i64, i64, i32, i64, [16 x i8], %struct.SampleInfo, i32, %union.anon.4, ptr, ptr, ptr, double, double }
%struct.SampleInfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, %struct.FLACDecoderData }
%struct.FLACDecoderData = type { i64, ptr, i32, i64, [1024 x ptr], i64, i32 }
%struct.FLAC__StreamMetadata = type { i32, i32, i32, %union.anon.7 }
%union.anon.7 = type { %struct.FLAC__StreamMetadata_CueSheet }
%struct.FLAC__StreamMetadata_CueSheet = type { [129 x i8], i64, i32, i32, ptr }
%struct.static_metadata_t = type { i32, ptr, ptr, ptr }

@FLAC_ENCODE__DEFAULT_PADDING = dso_local local_unnamed_addr constant i32 8192, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"%s: WARNING reading foreign metadata: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: ERROR reading foreign metadata: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: ERROR: creating decoder for FLAC input\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: ERROR: unsupported number of channels %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: ERROR: unsupported sample rate %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: ERROR: unsupported bits-per-sample %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [116 x i8] c"%s: WARNING: there is data trailing the audio data. Use --keep-foreign-metadata or --ignore-chunk-sizes to keep it\0A\00", align 1
@.str.7 = private unnamed_addr constant [134 x i8] c"%s: WARNING: the length of the data chunk overruns the end of the file. Please consult the manual on the --ignore-chunk-sizes option\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: ERROR: value of --skip is too large\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"%s: ERROR: value of --skip exceeds input size\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"(No runtime statistics possible; please wait for encoding to finish...)\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"%s: ERROR during read while skipping samples\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"%s: ERROR while skipping samples, FLAC decoder state = %s\0A\00", align 1
@ubuffer = internal global %union.anon.8 zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"%s: ERROR during read\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"%s: ERROR: got partial sample\0A\00", align 1
@input_ = internal global [8 x ptr] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [22 x i8] c"ERROR during encoding\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"%s: WARNING: unexpected EOF; expected %lu samples, got %lu samples\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"%s: INFO: hit EOF with --ignore-chunk-sizes, got %lu samples\0A\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"%s: ERROR: %d consecutive FLAC__STREAM_DECODER_END_OF_STREAM events.\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"%s: ERROR: while decoding FLAC input, state = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"%s: ERROR during read while skipping over remaining \22riff\22 header\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"%s: ERROR: incomplete chunk identifier\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"%s: ERROR: file has multiple 'ds64' chunks\0A\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"%s: ERROR: 'ds64' chunk appears after 'fmt ' or 'data' chunk\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"%s: ERROR: non-standard 'ds64' chunk has length = %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"%s: ERROR during read while skipping over extra 'ds64' data\0A\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"%s: ERROR: file has multiple 'fmt ' chunks\0A\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"%s: ERROR: freakishly large Wave64 'fmt ' chunk has length = 0x%08X%08X\0A\00", align 1
@.str.31 = private unnamed_addr constant [73 x i8] c"%s: ERROR: freakishly small Wave64 'fmt ' chunk has length = 0x%08X%08X\0A\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"%s: ERROR: non-standard 'fmt ' chunk has length = %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"%s: ERROR: unsupported format type %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"%s: WARNING: legacy WAVE file has format type %u but bits-per-sample=%u\0A\00", align 1
@.str.35 = private unnamed_addr constant [71 x i8] c"%s: ERROR: legacy WAVE file has format type %u but bits-per-sample=%u\0A\00", align 1
@.str.36 = private unnamed_addr constant [85 x i8] c"%s: ERROR: legacy WAVE file has block alignment=%u, bits-per-sample=%u, channels=%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [91 x i8] c"%s: ERROR: WAVE has >2 channels but is not WAVE_FORMAT_EXTENSIBLE; cannot assign channels\0A\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"%s: ERROR: invalid WAVEFORMATEXTENSIBLE chunk with size %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [62 x i8] c"%s: ERROR: invalid WAVEFORMATEXTENSIBLE chunk with cbSize %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [99 x i8] c"%s: ERROR: invalid WAVEFORMATEXTENSIBLE chunk with wValidBitsPerSample (%u) > wBitsPerSample (%u)\0A\00", align 1
@.str.41 = private unnamed_addr constant [118 x i8] c"%s: WARNING: WAVEFORMATEXTENSIBLE chunk: channel mask 0x%04X has extra bits for non-existant channels (#channels=%u)\0A\00", align 1
@.str.42 = private unnamed_addr constant [74 x i8] c"%s: ERROR: unsupported WAVEFORMATEXTENSIBLE chunk with non-PCM format %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [60 x i8] c"%s: ERROR during read while skipping over extra 'fmt' data\0A\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"%s: ERROR: got 'data' chunk before 'fmt' chunk\0A\00", align 1
@.str.47 = private unnamed_addr constant [77 x i8] c"%s: ERROR: freakishly small Wave64 'data' chunk has length = 0x00000000%08X\0A\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c"%s: ERROR: RF64 file has no 'ds64' chunk before 'data' chunk\0A\00", align 1
@.str.49 = private unnamed_addr constant [96 x i8] c"%s: WARNING: 'data' chunk has non-zero size, using --ignore-chunk-sizes is probably a bad idea\0A\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"%s: ERROR: 'data' chunk has size of 0\0A\00", align 1
@.str.51 = private unnamed_addr constant [80 x i8] c"%s: WARNING: skipping unknown chunk '%s' (use --keep-foreign-metadata to keep)\0A\00", align 1
@.str.52 = private unnamed_addr constant [144 x i8] c"%s: WARNING: skipping unknown chunk %02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X (use --keep-foreign-metadata to keep)\0A\00", align 1
@.str.53 = private unnamed_addr constant [70 x i8] c"%s: ERROR: freakishly small Wave64 chunk has length = 0x00000000%08X\0A\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"%s: ERROR during read while skipping over chunk\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"%s: ERROR: didn't find fmt chunk\0A\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"%s: ERROR: didn't find data chunk\0A\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"%s: ERROR: unexpected EOF\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"%s: ERROR: file has multiple 'COMM' chunks\0A\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"%s: ERROR: non-standard %s 'COMM' chunk has length = %u\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"AIFF-C\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"AIFF\00", align 1
@.str.63 = private unnamed_addr constant [72 x i8] c"%s: WARNING: non-standard %s 'COMM' chunk has length = %u, expected %u\0A\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"%s: ERROR: unsupported number of channels %u for AIFF\0A\00", align 1
@.str.65 = private unnamed_addr constant [60 x i8] c"%s: ERROR: can't handle AIFF-C compression type \22%c%c%c%c\22\0A\00", align 1
@.str.66 = private unnamed_addr constant [59 x i8] c"%s: ERROR during read while skipping over extra COMM data\0A\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"%s: ERROR: got 'SSND' chunk before 'COMM' chunk\0A\00", align 1
@.str.69 = private unnamed_addr constant [96 x i8] c"%s: WARNING: 'SSND' chunk has non-zero size, using --ignore-chunk-sizes is probably a bad idea\0A\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"%s: ERROR: 'SSND' chunk has size <= 8\0A\00", align 1
@.str.71 = private unnamed_addr constant [101 x i8] c"%s: WARNING: 'SSND' chunk has non-zero blocksize, using --ignore-chunk-sizes is probably a bad idea\0A\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"%s: ERROR: skipping offset in SSND chunk\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"%s: ERROR: didn't find COMM chunk\0A\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"%s: ERROR: didn't find SSND chunk\0A\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"%s: ERROR: invalid floating-point value\0A\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"%s: ERROR: setting up decoder for FLAC input\0A\00", align 1
@.str.77 = private unnamed_addr constant [64 x i8] c"%s: ERROR: initializing decoder for Ogg FLAC input, state = %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [60 x i8] c"%s: ERROR: initializing decoder for FLAC input, state = %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [91 x i8] c"%s: ERROR: out of memory or too many metadata blocks while reading metadata in FLAC input\0A\00", align 1
@.str.80 = private unnamed_addr constant [55 x i8] c"%s: ERROR: reading metadata in FLAC input, state = %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [67 x i8] c"%s: ERROR: reading metadata in FLAC input, got no metadata blocks\0A\00", align 1
@.str.82 = private unnamed_addr constant [83 x i8] c"%s: ERROR: reading metadata in FLAC input, first metadata block is not STREAMINFO\0A\00", align 1
@.str.83 = private unnamed_addr constant [88 x i8] c"%s: ERROR: FLAC input has STREAMINFO with unknown total samples which is not supported\0A\00", align 1
@.str.84 = private unnamed_addr constant [54 x i8] c"ERROR: number of channels of input changed mid-stream\00", align 1
@.str.85 = private unnamed_addr constant [51 x i8] c"ERROR: bits-per-sample of input changed mid-stream\00", align 1
@.str.86 = private unnamed_addr constant [40 x i8] c"ERROR got %s while decoding FLAC input\0A\00", align 1
@FLAC__StreamDecoderErrorStatusString = external local_unnamed_addr constant [0 x ptr], align 8
@in_ = internal global [8 x [2048 x i32]] zeroinitializer, align 16
@.str.88 = private unnamed_addr constant [44 x i8] c"%s: ERROR allocating memory for seek table\0A\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"%s: ERROR creating the encoder instance\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.90 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.91 = private unnamed_addr constant [49 x i8] c"%s: ERROR: could not read back MD5sum of output\0A\00", align 1
@.str.92 = private unnamed_addr constant [63 x i8] c"%s: ERROR: MD5sum of input is different from MD5sum of output\0A\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"%s: ERROR:  MD5sum of input FLAC file mismatched\0A\00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"%s: ERROR: updating foreign metadata in FLAC file: %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [358 x i8] c"FAILURE: Compression failed (ratio %0.3f, should be < 1.0).\0AThis happens for some files for one or more of the following reasons:\0A * Recompressing an existing FLAC from a higher to a lower compression setting.\0A * Insufficient input data  (e.g. very short files, < 10000 frames).\0A * The audio data is not compressible (e.g. a full range white noise signal).\0A\00", align 1
@flac__utils_verbosity_ = external local_unnamed_addr global i32, align 4
@.str.96 = private unnamed_addr constant [6 x i8] c"%0.3f\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"%swrote %lu bytes, ratio=%s\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"Verify OK, \00", align 1
@.str.100 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"%u%% complete, ratio=%s\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"%s: ERROR: mismatch in decoded data, verify FAILED!\0A\00", align 1
@.str.103 = private unnamed_addr constant [82 x i8] c"       Absolute sample=%lu, frame=%u, channel=%u, sample=%u, expected %d, got %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [75 x i8] c"       In all known cases, verify errors are caused by hardware problems,\0A\00", align 1
@.str.105 = private unnamed_addr constant [52 x i8] c"       usually overclocking or bad RAM.  Delete %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [78 x i8] c"       and repeat the flac command exactly as before.  If it does not give a\0A\00", align 1
@.str.107 = private unnamed_addr constant [81 x i8] c"       verify error in the exact same place each time you try it, then there is\0A\00", align 1
@.str.108 = private unnamed_addr constant [58 x i8] c"       a problem with your hardware; please see the FAQ:\0A\00", align 1
@.str.109 = private unnamed_addr constant [63 x i8] c"           http://xiph.org/flac/faq.html#tools__hardware_prob\0A\00", align 1
@.str.110 = private unnamed_addr constant [65 x i8] c"       If it does fail in the exact same place every time, keep\0A\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"       %s and submit a bug report to:\0A\00", align 1
@.str.112 = private unnamed_addr constant [48 x i8] c"           https://github.com/xiph/flac/issues\0A\00", align 1
@.str.113 = private unnamed_addr constant [75 x i8] c"       Make sure to upload the FLAC file and use the \22Monitor\22 feature to\0A\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"       monitor the bug status.\0A\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"Verify FAILED!  Do not trust %s\0A\00", align 1
@.str.116 = private unnamed_addr constant [69 x i8] c"%s: ERROR, number of channels (%u) must be 1 or 2 for --replay-gain\0A\00", align 1
@.str.117 = private unnamed_addr constant [55 x i8] c"%s: ERROR, invalid sample rate (%u) for --replay-gain\0A\00", align 1
@.str.118 = private unnamed_addr constant [41 x i8] c"%s: ERROR initializing ReplayGain stage\0A\00", align 1
@.str.119 = private unnamed_addr constant [47 x i8] c"%s: ERROR allocating memory for PICTURE block\0A\00", align 1
@.str.120 = private unnamed_addr constant [87 x i8] c"%s: WARNING, replacing tags from input FLAC file with those given on the command-line\0A\00", align 1
@.str.121 = private unnamed_addr constant [54 x i8] c"%s: ERROR allocating memory for VORBIS_COMMENT block\0A\00", align 1
@.str.122 = private unnamed_addr constant [100 x i8] c"%s: WARNING, cuesheet in input FLAC file cannot be kept if input size is not known, dropping it...\0A\00", align 1
@.str.123 = private unnamed_addr constant [120 x i8] c"%s: WARNING, lead-out offset of cuesheet in input FLAC file does not match input length, dropping existing cuesheet...\0A\00", align 1
@.str.124 = private unnamed_addr constant [91 x i8] c"%s: WARNING, replacing cuesheet in input FLAC file with the one given on the command-line\0A\00", align 1
@.str.125 = private unnamed_addr constant [48 x i8] c"%s: ERROR allocating memory for CUESHEET block\0A\00", align 1
@.str.126 = private unnamed_addr constant [92 x i8] c"%s: WARNING, replacing seektable in input FLAC file with the one given on the command-line\0A\00", align 1
@.str.127 = private unnamed_addr constant [139 x i8] c"%s: WARNING, can't use existing seektable in input FLAC since the input size is changing or unknown, dropping existing SEEKTABLE block...\0A\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"%s: ERROR allocating memory for SEEKTABLE block\0A\00", align 1
@GRABBAG__REPLAYGAIN_MAX_TAG_SPACE_REQUIRED = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_LENGTH_LEN = external local_unnamed_addr constant i32, align 4
@.str.129 = private unnamed_addr constant [47 x i8] c"%s: ERROR allocating memory for PADDING block\0A\00", align 1
@.str.130 = private unnamed_addr constant [35 x i8] c"%s: ERROR adding channel mask tag\0A\00", align 1
@.str.131 = private unnamed_addr constant [26 x i8] c"%s: ERROR: out of memory\0A\00", align 1
@.str.132 = private unnamed_addr constant [56 x i8] c"%s: ERROR allocating memory for foreign metadata block\0A\00", align 1
@FLAC__STREAM_METADATA_APPLICATION_ID_LEN = external local_unnamed_addr constant i32, align 4
@.str.133 = private unnamed_addr constant [53 x i8] c"%s: ERROR: too many apodization functions requested\0A\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.135 = private unnamed_addr constant [77 x i8] c"%s: WARNING, MD5 computation disabled, resulting file will not have MD5 sum\0A\00", align 1
@.str.136 = private unnamed_addr constant [64 x i8] c"%s: WARNING, cannot write back MD5 sum when encoding to stdout\0A\00", align 1
@.str.137 = private unnamed_addr constant [109 x i8] c"%s: WARNING, cannot set number of threads: multithreading was not enabled during compilation of this binary\0A\00", align 1
@.str.138 = private unnamed_addr constant [53 x i8] c"%s: WARNING, cannot set number of threads: too many\0A\00", align 1
@.str.139 = private unnamed_addr constant [27 x i8] c"ERROR initializing encoder\00", align 1
@.str.140 = private unnamed_addr constant [88 x i8] c"%s: ERROR cannot import cuesheet when the number of input samples to encode is unknown\0A\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.142 = private unnamed_addr constant [49 x i8] c"%s: ERROR opening cuesheet \22%s\22 for reading: %s\0A\00", align 1
@.str.143 = private unnamed_addr constant [48 x i8] c"%s: ERROR parsing cuesheet \22%s\22 on line %u: %s\0A\00", align 1
@.str.144 = private unnamed_addr constant [37 x i8] c"%s: ERROR parsing cuesheet \22%s\22: %s\0A\00", align 1
@.str.145 = private unnamed_addr constant [57 x i8] c"%s: WARNING cuesheet \22%s\22 is not audio CD compliant: %s\0A\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"10s;\00", align 1
@.str.147 = private unnamed_addr constant [67 x i8] c"%s: WARNING, cannot write back seekpoints when encoding to stdout\0A\00", align 1
@.str.148 = private unnamed_addr constant [48 x i8] c"%s: ERROR: SEEKTABLE metadata block is invalid\0A\00", align 1
@.str.149 = private unnamed_addr constant [47 x i8] c"%s: ERROR: CUESHEET metadata block is invalid\0A\00", align 1
@.str.150 = private unnamed_addr constant [50 x i8] c"%s: ERROR: PICTURE metadata block is invalid: %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [77 x i8] c"%s: ERROR: there may only be one picture of type 1 (32x32 icon) in the file\0A\00", align 1
@.str.152 = private unnamed_addr constant [71 x i8] c"%s: ERROR: there may only be one picture of type 2 (icon) in the file\0A\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"\0A%s: %s\0A\00", align 1
@.str.154 = private unnamed_addr constant [22 x i8] c"%*s init_status = %s\0A\00", align 1
@FLAC__StreamEncoderInitStatusString = external local_unnamed_addr constant [0 x ptr], align 8
@.str.155 = private unnamed_addr constant [16 x i8] c"%*s state = %s\0A\00", align 1
@FLAC__StreamEncoderStateString = external local_unnamed_addr constant [0 x ptr], align 8
@.str.156 = private unnamed_addr constant [83 x i8] c"\0AAn error occurred while writing; the most common cause is that the disk is full.\0A\00", align 1
@.str.157 = private unnamed_addr constant [192 x i8] c"\0AAn error occurred opening the output file; it is likely that the output\0Adirectory does not exist or is not writable, the output file already exists and\0Ais not writable, or the disk is full.\0A\00", align 1
@.str.158 = private unnamed_addr constant [304 x i8] c"\0AThe encoding parameters specified do not conform to the FLAC Subset and may not\0Abe streamable or playable in hardware devices.  If you really understand the\0Aconsequences, you can add --lax to the command-line options to encode with\0Athese parameters anyway.  See http://xiph.org/flac/format.html#subset\0A\00", align 1
@.str.159 = private unnamed_addr constant [49 x i8] c"%s: WARNING, error while calculating ReplayGain\0A\00", align 1
@.str.160 = private unnamed_addr constant [42 x i8] c"%s: ERROR, value of --until is too large\0A\00", align 1
@.str.161 = private unnamed_addr constant [60 x i8] c"%s: ERROR, cannot use --until when input length is unknown\0A\00", align 1
@.str.162 = private unnamed_addr constant [55 x i8] c"%s: ERROR, --until value is before beginning of input\0A\00", align 1
@.str.163 = private unnamed_addr constant [49 x i8] c"%s: ERROR, --until value is before --skip point\0A\00", align 1
@.str.164 = private unnamed_addr constant [48 x i8] c"%s: ERROR, --until value is after end of input\0A\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c"ERROR: unsupported input format\0A\00", align 1
@.str.166 = private unnamed_addr constant [177 x i8] c"ERROR during read, sample data (channel#%u sample#%u = %d) has non-zero least-significant bits\0A  WAVE/AIFF header said the last %u bits are not significant and should be zero.\0A\00", align 1
@fskip_ahead.dump = internal global [8192 x i8] zeroinitializer, align 16

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @flac__encode_file(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef byval(%struct.encode_options_t) align 8 %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 14 uses
  %7 = alloca %struct.stat, align 8               ; 5 uses
  %8 = alloca %struct.stat, align 8               ; 5 uses
  %9 = alloca %struct.stat, align 8               ; 5 uses
  %10 = alloca %struct.stat, align 8              ; 5 uses
  %11 = alloca %struct.stat, align 8              ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 11 uses
  %i.c = alloca i16, align 2                      ; 12 uses
  %i.d = alloca i32, align 4                      ; 13 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %12 = alloca %struct.stat, align 8              ; 5 uses
  %13 = alloca %struct.stat, align 8              ; 5 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca [16 x i8], align 16               ; 25 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i16, align 2                      ; 15 uses
  %i.l = alloca i32, align 4                      ; 10 uses
  %i.m = alloca i16, align 2                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 8 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 7 uses
  %14 = alloca %struct.EncoderSession, align 8    ; 173 uses
  %i.r = alloca [8 x i64], align 16               ; 15 uses
  %i.s = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.5480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1120
  %.sroa.7481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1700 ; 9 uses
  %.sroa.7481.0.copyload = load i32, ptr %.sroa.7481.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1704 ; 6 uses
  store ptr @in_, ptr @input_, align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @in_, i64 8192), ptr getelementptr inbounds nuw (i8, ptr @input_, i64 8), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @in_, i64 16384), ptr getelementptr inbounds nuw (i8, ptr @input_, i64 16), align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @in_, i64 24576), ptr getelementptr inbounds nuw (i8, ptr @input_, i64 24), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @in_, i64 32768), ptr getelementptr inbounds nuw (i8, ptr @input_, i64 32), align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @in_, i64 40960), ptr getelementptr inbounds nuw (i8, ptr @input_, i64 40), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @in_, i64 49152), ptr getelementptr inbounds nuw (i8, ptr @input_, i64 48), align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @in_, i64 57344), ptr getelementptr inbounds nuw (i8, ptr @input_, i64 56), align 8, !tbaa !13
  %i.t = load <2 x i32>, ptr %.sroa.3.0..sroa_idx, align 8
  %i.u = shufflevector <2 x i32> %i.t, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.u, ptr %14, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.x = load <2 x i32>, ptr %.sroa.5480.0..sroa_idx, align 8
  store <2 x i32> %i.x, ptr %i.v, align 8, !tbaa !14
  %i.y = load i8, ptr %3, align 1
  %.not.i364 = icmp eq i8 %i.y, 45
  br i1 %.not.i364, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %bb.a
  %i.ad = phi i32 [ 0, %bb.a ], [ %i.ac, %sub_1.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 11 uses
  store i32 0, ptr %i.af, align 4, !tbaa !23
  %i.ag = tail call ptr @grabbag__file_get_basename(ptr noundef %2) #18 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 112 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %2, ptr %i.ai, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 11 uses
  store ptr %3, ptr %i.aj, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 18 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 8440
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, i8 0, i64 36, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 120 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 152 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, i8 0, i64 56, i1 false)
  store i32 %.sroa.7481.0.copyload, ptr %i.ap, align 8, !tbaa !28
  switch i32 %.sroa.7481.0.copyload, label %EncoderSession_finish_error.exit373 [
    i32 0, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.c
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %.tail.i, %.tail.i, %.tail.i, %.tail.i, %.tail.i
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 160
  store i64 0, ptr %i.aq, align 8, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %.tail.i, %.tail.i
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 160
  store ptr null, ptr %i.ar, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 168
  store i64 %1, ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 176
  store ptr %4, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 184
  store i32 %5, ptr %i.au, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 192
  store i64 0, ptr %i.av, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8392
  store i64 0, ptr %i.aw, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8400
  store i32 0, ptr %i.ax, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.tail.i
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8408 ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8416 ; 48 uses
  store ptr %0, ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8424
  %i.bb = tail call ptr @FLAC__metadata_object_new(i32 noundef 3) #18 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !31
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bd, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef %i.ag) #18
  br label %EncoderSession_finish_error.exit373

bb.f:                                             ; preds = %bb.d
  %i.be = tail call ptr @FLAC__stream_encoder_new() #18 ; 2 uses
  store ptr %i.be, ptr %i.ay, align 8, !tbaa !33
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.g, label %EncoderSession_construct.exit.preheader

EncoderSession_construct.exit.preheader:          ; preds = %bb.f
  store i64 0, ptr %i.r, align 16, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 2, ptr %i.bh, align 16, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 3, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 4, ptr %i.bj, align 16, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 5, ptr %i.bk, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 6, ptr %i.bl, align 16, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 7, ptr %i.bm, align 8, !tbaa !34
  %i.bn = add nsw i32 %.sroa.7481.0.copyload, -1
  %narrow.i = icmp ult i32 %i.bn, 5
  %i.bo = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %i.bp = icmp ne ptr %i.bo, null
  %or.cond = select i1 %narrow.i, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.h, label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bq, i32 noundef 1, ptr noundef nonnull @.str.89, ptr noundef %i.ag) #18
  call fastcc void @EncoderSession_destroy(ptr noundef nonnull %14)
  br label %EncoderSession_finish_error.exit373

bb.h:                                             ; preds = %EncoderSession_construct.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  %i.br = load i32, ptr %.sroa.7481.0..sroa_idx, align 4, !tbaa !83 ; 2 uses
  %i.bs = and i32 %i.br, -3
  %or.cond17 = icmp eq i32 %i.bs, 1
  br i1 %or.cond17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = call i32 @flac__foreign_metadata_read_from_wave(ptr noundef nonnull %i.bo, ptr noundef %2, ptr noundef nonnull %i.s) #18
  %.not269 = icmp eq i32 %i.bt, 0
  br i1 %.not269, label %bb.m, label %bb.aa

bb.j:                                             ; preds = %bb.h
  %i.bu = icmp eq i32 %i.br, 2
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = call i32 @flac__foreign_metadata_read_from_wave64(ptr noundef nonnull %i.bo, ptr noundef %2, ptr noundef nonnull %i.s) #18
  %.not268 = icmp eq i32 %i.bv, 0
  br i1 %.not268, label %bb.m, label %bb.aa

bb.l:                                             ; preds = %bb.j
  %i.bw = call i32 @flac__foreign_metadata_read_from_aiff(ptr noundef nonnull %i.bo, ptr noundef %2, ptr noundef nonnull %i.s) #18
  %.not267 = icmp eq i32 %i.bw, 0
  br i1 %.not267, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 1160
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !84
  %.not270 = icmp eq i32 %i.by, 0
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !32 ; 2 uses
  %i.ca = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.cb = load ptr, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  br i1 %.not270, label %bb.u, label %bb.n

end_hunk_0
begin_hunk_1_@flac__encode_file:bb.a
bb.da:                                            ; preds = %read_uint64.exit369.i
  %i.pw = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.px = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.py = trunc nuw nsw i64 %i.pu to i32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.pw, i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef %i.px, i32 noundef %i.py) #18
  br label %.critedge309.i

bb.db:                                            ; preds = %read_uint64.exit369.i
  %i.pz = add i64 %i.pu, -24
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %read_uint32.exit364.i
  %storemerge299.i = phi i64 [ %i.pz, %bb.db ], [ %i.po, %read_uint32.exit364.i ] ; 5 uses
  store i64 %storemerge299.i, ptr %i.q, align 8, !tbaa !34
  %.not301.i = icmp eq i64 %storemerge299.i, 0
  br i1 %.not301.i, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qa = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.qb = icmp slt i64 %storemerge299.i, 0
  br i1 %i.qb, label %.loopexit.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qc = call i32 @fileno(ptr noundef %i.qa) #18
  %i.qd = call i32 @fstat64(i32 noundef %i.qc, ptr noundef nonnull %12) #18
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.df, label %.preheader3861

bb.df:                                            ; preds = %bb.de
  %i.qf = load i32, ptr %i.ej, align 8, !tbaa !48
  %i.qg = and i32 %i.qf, 61440
  %i.qh = icmp eq i32 %i.qg, 32768
  br i1 %i.qh, label %bb.dg, label %.preheader3861

bb.dg:                                            ; preds = %bb.df
  %i.qi = call i32 @fseeko64(ptr noundef %i.qa, i64 noundef %storemerge299.i, i32 noundef 1)
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %fskip_ahead.exit374.i, label %.preheader3861

.preheader3861:                                   ; preds = %bb.dg, %bb.df, %bb.de
  br label %bb.dh

bb.dh:                                            ; preds = %.preheader3861, %fread.inline.exit.i372.i
  %.013.i370.i = phi i64 [ %i.qn, %fread.inline.exit.i372.i ], [ %storemerge299.i, %.preheader3861 ] ; 3 uses
  %.not.i371.i = icmp eq i64 %.013.i370.i, 0
  br i1 %.not.i371.i, label %fskip_ahead.exit374.i, label %fread.inline.exit.i372.i

fread.inline.exit.i372.i:                         ; preds = %bb.dh
  %i.qk = call i64 @llvm.umin.i64(i64 %.013.i370.i, i64 8192) ; 3 uses
  %i.ql = call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.qk, ptr noundef nonnull %i.qa)
  %i.qm = icmp slt i64 %i.ql, %i.qk
  %i.qn = sub nuw nsw i64 %.013.i370.i, %i.qk
  br i1 %i.qm, label %.loopexit.i, label %bb.dh, !llvm.loop !0

fskip_ahead.exit374.i:                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.di

.loopexit.i:                                      ; preds = %bb.dd, %fread.inline.exit.i372.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.qo = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.qp = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.qo, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %i.qp) #18
  br label %.critedge309.i

bb.di:                                            ; preds = %fskip_ahead.exit374.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %bb.dk

.critedge309.i:                                   ; preds = %bb.cy, %.loopexit.i, %bb.da, %read_uint64.exit369.thread.i, %read_uint32.exit364.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %.thread416.i

.thread416.i:                                     ; preds = %.critedge309.i, %.thread395.i, %.thread.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.dl

bb.dj:                                            ; preds = %bb.cu, %bb.cr, %bb.cm, %bb.ci, %read_uint64.exit.thread.i, %read_uint32.exit353.thread.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di, %.loopexit584, %.loopexit
  %.3212.jt0.i = phi i32 [ 0, %.loopexit ], [ 1, %.loopexit584 ], [ %.0209.i1379, %bb.di ] ; 2 uses
  %.3204.jt0.i = phi i32 [ 1, %.loopexit ], [ %.0201.i1380, %.loopexit584 ], [ %.0201.i1380, %bb.di ]
  %.3199.jt0.i = phi i32 [ %.0196.i1381, %.loopexit ], [ %i.iy, %.loopexit584 ], [ %.0196.i1381, %bb.di ]
  %.3194.jt0.i = phi i32 [ %.0191.i1382, %.loopexit ], [ %i.is, %.loopexit584 ], [ %.0191.i1382, %bb.di ]
  %.3189.jt0.i = phi i32 [ %.0186.i1383, %.loopexit ], [ %i.jr, %.loopexit584 ], [ %.0186.i1383, %bb.di ]
  %.4185.jt0.i = phi i32 [ %.0181.i1384, %.loopexit ], [ %.1182.i, %.loopexit584 ], [ %.0181.i1384, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %i.qq = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.qr = call i32 @feof(ptr noundef %i.qq) #18
  %or.cond305.i = icmp eq i32 %i.qr, 0
  br i1 %or.cond305.i, label %fread.inline.exit.i310.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.dk
  %i.qs = icmp eq i32 %.3212.jt0.i, 0
  br i1 %i.qs, label %.critedge.i.thread, label %.thread1165.i

.critedge.thread.i:                               ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %.not3031159.i = icmp eq i32 %.0209.i1379, 0
  br i1 %.not3031159.i, label %.critedge.i.thread, label %.thread1165.i

.critedge.i.thread:                               ; preds = %.preheader.i, %.critedge.thread.i, %.critedge.i
  %i.qt = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.qu = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.qt, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef %i.qu) #18
  br label %bb.dl

.thread1165.i:                                    ; preds = %.critedge.thread.i, %.critedge.i
  %i.qv = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.qw = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.qv, i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef %i.qw) #18
  br label %bb.dl

get_sample_info_wave.exit:                        ; preds = %bb.cs, %bb.ct
  %i.qx = phi i64 [ %i.nr, %bb.ct ], [ %i.ny, %bb.cs ]
  store i64 %i.qx, ptr %i.dw, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  store i32 %.0196.i1381, ptr %i.ao, align 8, !tbaa !41
  %i.qy = getelementptr inbounds nuw i8, ptr %14, i64 124
  store i32 %.0191.i1382, ptr %i.qy, align 4, !tbaa !42
  %i.qz = getelementptr inbounds nuw i8, ptr %14, i64 128
  store i32 %.0186.i1383, ptr %i.qz, align 8, !tbaa !43
  %i.ra = getelementptr inbounds nuw i8, ptr %14, i64 132
  store i32 %.0181.i1384, ptr %i.ra, align 4, !tbaa !44
  %i.rb = load i32, ptr %i.g, align 4, !tbaa !14
  %i.rc = getelementptr inbounds nuw i8, ptr %14, i64 148
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.hm

bb.dl:                                            ; preds = %.thread1165.i, %.critedge.i.thread, %.thread416.i, %fread.inline.exit.i._crit_edge.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.rd = load i64, ptr %i.ak, align 8, !tbaa !40
  %.not.i371 = icmp eq i64 %i.rd, 0
  br i1 %.not.i371, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.re = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.re, i32 noundef 2, ptr noundef nonnull @.str.90) #18
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.rf = load ptr, ptr %i.ay, align 8, !tbaa !33
  %i.rg = call i32 @FLAC__stream_encoder_get_state(ptr noundef %i.rf) #18
  %i.rh = icmp eq i32 %i.rg, 4
  br i1 %i.rh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call fastcc void @print_verify_error(ptr noundef nonnull %14)
  call fastcc void @EncoderSession_destroy(ptr noundef nonnull %14)
  br label %EncoderSession_finish_error.exit373

bb.dp:                                            ; preds = %bb.dn
  %i.ri = load i32, ptr %i.af, align 4, !tbaa !23
  %.not8.i372 = icmp eq i32 %i.ri, 0
  call fastcc void @EncoderSession_destroy(ptr noundef nonnull %14)
  br i1 %.not8.i372, label %EncoderSession_finish_error.exit373, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.rj = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.rk = call i32 @unlink(ptr noundef %i.rj) #18 ; 0 uses
  br label %EncoderSession_finish_error.exit373

bb.dr:                                            ; preds = %bb.ab, %bb.ab
  %.sroa.3497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1132
  %.sroa.3497.0.copyload = load i32, ptr %.sroa.3497.0..sroa_idx, align 4
  %.sroa.4499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1148
  %.sroa.4499.0.copyload = load i32, ptr %.sroa.4499.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5501.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %14, i64 140
  store i32 0, ptr %i.rl, align 4, !tbaa !86
  %i.rm = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  store i32 1, ptr %i.rm, align 8, !tbaa !87
  %i.rn = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ro = call i32 @feof(ptr noundef %i.rn) #18
  %.not585.i = icmp eq i32 %i.ro, 0
  br i1 %.not585.i, label %fread.inline.exit.i.lr.ph.i, label %.critedge.thread.i374

fread.inline.exit.i.lr.ph.i:                      ; preds = %bb.dr
  %i.rp = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.rs = getelementptr inbounds nuw i8, ptr %14, i64 160
  %i.rt = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %.not209.i = icmp eq ptr %.sroa.5501.0.copyload, null
  %.not202.i = icmp eq i32 %.sroa.4499.0.copyload, 0
  %i.ru = icmp ne i32 %.sroa.4499.0.copyload, 0   ; 2 uses
  %.fr.i = freeze i32 %.sroa.3497.0.copyload
  %i.rv = icmp ne i32 %.fr.i, 0                   ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %20 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %fread.inline.exit.i.i376

fread.inline.exit.i.i376:                         ; preds = %bb.fp, %fread.inline.exit.i.lr.ph.i
  %.0134592.i = phi i64 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3137.i, %bb.fp ] ; 3 uses
  %.0139591.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3142.i, %bb.fp ] ; 3 uses
  %.0144590.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3147.i, %bb.fp ] ; 3 uses
  %.0149589.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3152.i, %bb.fp ] ; 3 uses
  %.0154588.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3157.i, %bb.fp ] ; 3 uses
  %.0164586.i = phi i32 [ 0, %fread.inline.exit.i.lr.ph.i ], [ %.3167.i, %bb.fp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
  %i.ry = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.rz = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.sa = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.ry)
  %i.sb = add i64 %i.sa, -1
  %i.sc = icmp ult i64 %i.sb, 3
  br i1 %i.sc, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %fread.inline.exit.i.i376
  %i.sd = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.sd, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.rz) #18
  %i.se = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.sf = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.se, i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef %i.sf) #18
  br label %.thread304.i

bb.dt:                                            ; preds = %fread.inline.exit.i.i376
  %i.sg = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.sh = call i32 @feof(ptr noundef %i.sg) #18
  %.not185.i = icmp eq i32 %i.sh, 0
  br i1 %.not185.i, label %bb.du, label %.thread313.i

.thread313.i:                                     ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge.i377

bb.du:                                            ; preds = %bb.dt
  %i.si = load i32, ptr %i.b, align 1
  %i.sj = icmp ne i32 %i.si, 1296912195
  %i.sk = zext i1 %i.sj to i32
  %.not186.i = icmp eq i32 %i.sk, 0
  br i1 %.not186.i, label %bb.dv, label %bb.eq

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.sl = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.sm = icmp eq i32 %i.sl, 5                    ; 5 uses
  %.neg599.i = select i1 %i.sm, i32 -22, i32 -18
  %i.sn = select i1 %i.sm, i32 22, i32 18         ; 2 uses
  %.not187.i = icmp eq i32 %.0164586.i, 0
  %i.so = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %.not187.i, label %fread.inline.exit.i.i.i383, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sp = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.sp, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.so) #18
  br label %.thread.i382

fread.inline.exit.i.i.i383:                       ; preds = %bb.dv
  %i.sq = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.sr = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.sq)
  %i.ss = icmp ult i64 %i.sr, 4
  br i1 %i.ss, label %read_uint32.exit.thread.i387, label %bb.dx

read_uint32.exit.thread.i387:                     ; preds = %fread.inline.exit.i.i.i383
  %i.st = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.st, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.so) #18
  br label %.thread.i382

bb.dx:                                            ; preds = %fread.inline.exit.i.i.i383
  %i.su = load <4 x i8>, ptr %i.d, align 4, !tbaa !29
  %i.sv = shufflevector <4 x i8> %i.su, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.sv, ptr %i.d, align 4, !tbaa !29
  %.cast3853 = bitcast <4 x i8> %i.sv to i32      ; 5 uses
  %i.sw = icmp ugt i32 %i.sn, %.cast3853
  br i1 %i.sw, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.sx = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.sy = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.sz = select i1 %i.sm, ptr @.str.61, ptr @.str.62
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.sx, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.sy, ptr noundef nonnull %i.sz, i32 noundef %.cast3853) #18
  br label %.thread.i382

bb.dz:                                            ; preds = %bb.dx
  %.not189.i = icmp eq i32 %i.sn, %.cast3853
  %or.cond215.i = or i1 %i.sm, %.not189.i
  br i1 %or.cond215.i, label %fread.inline.exit.i.i222.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ta = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.tb = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ta, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef %i.tb, ptr noundef nonnull @.str.62, i32 noundef %.cast3853, i32 noundef 18) #18
  %i.tc = load i32, ptr %i.v, align 8, !tbaa !39
  %.not190.i = icmp eq i32 %i.tc, 0
  br i1 %.not190.i, label %.fread.inline.exit.i.i222_crit_edge.i, label %.thread.i382

.fread.inline.exit.i.i222_crit_edge.i:            ; preds = %bb.ea
  %.pre.i384 = load i32, ptr %i.d, align 4, !tbaa !14
  br label %fread.inline.exit.i.i222.i

fread.inline.exit.i.i222.i:                       ; preds = %.fread.inline.exit.i.i222_crit_edge.i, %bb.dz
  %i.td = phi i32 [ %.pre.i384, %.fread.inline.exit.i.i222_crit_edge.i ], [ %.cast3853, %bb.dz ] ; 2 uses
  %i.te = add i32 %i.td, %.neg599.i
  %i.tf = and i32 %i.td, 1
  %i.tg = add i32 %i.te, %i.tf
  %i.th = zext i32 %i.tg to i64                   ; 2 uses
  %i.ti = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.tj = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.tk = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.ti)
  %i.tl = icmp ult i64 %i.tk, 2
  br i1 %i.tl, label %read_uint16.exit.thread.i386, label %bb.eb

read_uint16.exit.thread.i386:                     ; preds = %fread.inline.exit.i.i222.i
  %i.tm = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tm, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.tj) #18
  br label %.thread.i382

bb.eb:                                            ; preds = %fread.inline.exit.i.i222.i
  %i.tn = load i8, ptr %i.rt, align 1, !tbaa !29
  %i.to = load i8, ptr %i.c, align 2, !tbaa !29
  store i8 %i.to, ptr %i.rt, align 1, !tbaa !29
  store i8 %i.tn, ptr %i.c, align 2, !tbaa !29
  %i.tp = load i16, ptr %i.c, align 2, !tbaa !88  ; 3 uses
  %i.tq = zext i16 %i.tp to i32                   ; 4 uses
  %i.tr = icmp ult i16 %i.tp, 3
  %or.cond.i385 = or i1 %i.rv, %i.tr
  %i.ts = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %or.cond.i385, label %fread.inline.exit.i.i228.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.tt = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tt, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef %i.ts, i32 noundef %i.tq) #18
  br label %.thread.i382

fread.inline.exit.i.i228.i:                       ; preds = %bb.eb
  %i.tu = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.tv = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.tu)
  %i.tw = icmp ult i64 %i.tv, 4
  br i1 %i.tw, label %read_uint32.exit233.thread.i, label %fread.inline.exit.i.i474

read_uint32.exit233.thread.i:                     ; preds = %fread.inline.exit.i.i228.i
  %i.tx = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tx, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.ts) #18
  br label %.thread.i382

fread.inline.exit.i.i474:                         ; preds = %fread.inline.exit.i.i228.i
  %i.ty = load <4 x i8>, ptr %i.d, align 4, !tbaa !29
  %i.tz = shufflevector <4 x i8> %i.ty, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.tz, ptr %i.d, align 4, !tbaa !29
  %.cast3854 = bitcast <4 x i8> %i.tz to i32
  %i.ua = zext i32 %.cast3854 to i64
  %i.ub = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.uc = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.ud = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.ub)
  %i.ue = icmp ult i64 %i.ud, 2
  br i1 %i.ue, label %read_uint16.exit479.thread, label %bb.ed

read_uint16.exit479.thread:                       ; preds = %fread.inline.exit.i.i474
  %i.uf = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.uf, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.uc) #18
  br label %.thread.i382

bb.ed:                                            ; preds = %fread.inline.exit.i.i474
  %i.ug = load i8, ptr %i.rt, align 1, !tbaa !29
  %i.uh = load i8, ptr %i.c, align 2, !tbaa !29
  store i8 %i.uh, ptr %i.rt, align 1, !tbaa !29
  store i8 %i.ug, ptr %i.c, align 2, !tbaa !29
  %i.ui = load i16, ptr %i.c, align 2, !tbaa !88
  %i.uj = zext i16 %i.ui to i32                   ; 2 uses
  %i.uk = and i32 %i.uj, 7                        ; 2 uses
  %.not194.i = icmp eq i32 %i.uk, 0
  %i.ul = sub nuw nsw i32 8, %i.uk
  %i.um = select i1 %.not194.i, i32 0, i32 %i.ul  ; 2 uses
  %i.un = add nuw nsw i32 %i.um, %i.uj            ; 2 uses
  %i.uo = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.up = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.uq = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 10, ptr noundef nonnull %i.uo)
  %i.ur = icmp ult i64 %i.uq, 10
  br i1 %i.ur, label %read_sane_extended.exit.thread, label %read_bytes.exit.i471

read_bytes.exit.i471:                             ; preds = %bb.ed
  %23 = load i8, ptr %i.a, align 1, !tbaa !29     ; 2 uses
  %24 = zext i8 %23 to i16
  %25 = shl nuw i16 %24, 8
  %26 = load i8, ptr %15, align 1, !tbaa !29
  %27 = zext i8 %26 to i16
  %28 = or disjoint i16 %25, %27                  ; 2 uses
  %29 = icmp slt i8 %23, 0
  %i.us = add i16 %28, -16446
  %i.ut = icmp ult i16 %i.us, -63
  %or.cond5.i = select i1 %29, i1 true, i1 %i.ut
  br i1 %or.cond5.i, label %read_sane_extended.exit.thread, label %bb.ee

read_sane_extended.exit.thread:                   ; preds = %read_bytes.exit.i471, %bb.ed
  %.str.75.sink = phi ptr [ @.str.57, %bb.ed ], [ @.str.75, %read_bytes.exit.i471 ]
  %i.uu = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.uu, i32 noundef 1, ptr noundef nonnull %.str.75.sink, ptr noundef %i.up) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread.i382

bb.ee:                                            ; preds = %read_bytes.exit.i471
  %i.uv = sub nuw nsw i16 16446, %28
  %30 = load i8, ptr %i.rw, align 1, !tbaa !29
  %31 = zext i8 %30 to i64
  %32 = shl nuw i64 %31, 56
  %33 = load i8, ptr %16, align 1, !tbaa !29
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 48
  %36 = or disjoint i64 %35, %32
  %37 = load i8, ptr %17, align 1, !tbaa !29
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 40
  %40 = or disjoint i64 %36, %39
  %41 = load i8, ptr %18, align 1, !tbaa !29
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 32
  %44 = or disjoint i64 %40, %43
  %45 = load i8, ptr %19, align 1, !tbaa !29
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 24
  %48 = or disjoint i64 %44, %47
  %49 = load i8, ptr %20, align 1, !tbaa !29
  %50 = zext i8 %49 to i64
  %51 = shl nuw nsw i64 %50, 16
  %52 = or disjoint i64 %48, %51
  %53 = load i8, ptr %21, align 1, !tbaa !29
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 8
  %56 = or i64 %52, %55
  %57 = load i8, ptr %22, align 1, !tbaa !29
  %58 = zext i8 %57 to i64
  %59 = or i64 %56, %58                           ; 2 uses
  %i.uw = zext nneg i16 %i.uv to i64              ; 2 uses
  %i.ux = lshr i64 %59, %i.uw
  %i.uy = add nsw i64 %i.uw, -1
  %i.uz = lshr i64 %59, %i.uy
  %i.va = and i64 %i.uz, 1
  %i.vb = add nuw i64 %i.va, %i.ux
  %i.vc = trunc i64 %i.vb to i32                  ; 2 uses
  store i32 %i.vc, ptr %i.d, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.sm, label %bb.ef, label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  %i.vd = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ve = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.vf = call fastcc i32 @read_uint32(ptr noundef %i.vd, i32 noundef 1, ptr noundef %i.d, ptr noundef %i.ve)
  %.not196.i = icmp eq i32 %i.vf, 0
  br i1 %.not196.i, label %.thread.i382, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vg = load i32, ptr %i.d, align 4, !tbaa !14  ; 5 uses
  switch i32 %i.vg, label %bb.ei [
    i32 1936684916, label %bb.eh
    i32 1313820229, label %bb.ej
  ]

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.rm, align 8, !tbaa !87
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.vh = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.vi = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.vj = ashr i32 %i.vg, 24
  %i.vk = lshr i32 %i.vg, 16
  %i.vl = and i32 %i.vk, 8
  %i.vm = lshr i32 %i.vg, 8
  %i.vn = and i32 %i.vm, 8
  %i.vo = and i32 %i.vg, 8
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.vh, i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef %i.vi, i32 noundef %i.vj, i32 noundef %i.vl, i32 noundef %i.vn, i32 noundef %i.vo) #18
  br label %.thread.i382

bb.ej:                                            ; preds = %bb.eh, %bb.eg, %bb.ee
  br i1 %i.rv, label %bb.el, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.ej
  switch i16 %i.tp, label %bb.ek [
    i16 5, label %bb.el
    i16 3, label %bb.el
    i16 2, label %bb.el
    i16 1, label %bb.el
  ]

bb.ek:                                            ; preds = %switch.early.test.i
  %i.vp = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.vq = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.vp, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef %i.vq, i32 noundef %i.tq) #18
  br label %.thread.i382

bb.el:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.ej
  %i.vr = lshr i32 %i.un, 3
  %i.vs = mul nuw nsw i32 %i.vr, %i.tq
  store i32 %i.vs, ptr %i.rq, align 8, !tbaa !85
  %i.vt = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.vu = call i32 @fileno(ptr noundef %i.vt) #18
  %i.vv = call i32 @fstat64(i32 noundef %i.vu, ptr noundef nonnull %7) #18
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.em, label %.preheader4389

bb.em:                                            ; preds = %bb.el
  %i.vx = load i32, ptr %i.rx, align 8, !tbaa !48
  %i.vy = and i32 %i.vx, 61440
  %i.vz = icmp eq i32 %i.vy, 32768
  br i1 %i.vz, label %bb.en, label %.preheader4389

bb.en:                                            ; preds = %bb.em
  %i.wa = call i32 @fseeko64(ptr noundef %i.vt, i64 noundef %i.th, i32 noundef 1)
  %i.wb = icmp eq i32 %i.wa, 0
  br i1 %i.wb, label %.loopexit586, label %.preheader4389

.preheader4389:                                   ; preds = %bb.en, %bb.em, %bb.el
  br label %bb.eo

bb.eo:                                            ; preds = %.preheader4389, %fread.inline.exit.i466
  %.013.i464 = phi i64 [ %i.wf, %fread.inline.exit.i466 ], [ %i.th, %.preheader4389 ] ; 3 uses
  %.not.i465 = icmp eq i64 %.013.i464, 0
  br i1 %.not.i465, label %.loopexit586, label %fread.inline.exit.i466

fread.inline.exit.i466:                           ; preds = %bb.eo
  %i.wc = call i64 @llvm.umin.i64(i64 %.013.i464, i64 8192) ; 3 uses
  %i.wd = call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.wc, ptr noundef nonnull %i.vt)
  %i.we = icmp slt i64 %i.wd, %i.wc
  %i.wf = sub nuw nsw i64 %.013.i464, %i.wc
  br i1 %i.we, label %bb.ep, label %bb.eo, !llvm.loop !0

bb.ep:                                            ; preds = %fread.inline.exit.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.wg = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.wh = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.wg, i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef %i.wh) #18
  br label %.thread.i382

.thread.i382:                                     ; preds = %bb.ef, %bb.ea, %read_sane_extended.exit.thread, %read_uint16.exit479.thread, %bb.ep, %bb.ek, %bb.ei, %read_uint32.exit233.thread.i, %bb.ec, %read_uint16.exit.thread.i386, %bb.dy, %read_uint32.exit.thread.i387, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.thread304.i

.loopexit586:                                     ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.fp

bb.eq:                                            ; preds = %bb.du
  %i.wi = load i32, ptr %i.b, align 1
  %i.wj = icmp ne i32 %i.wi, 1145983827
  %i.wk = zext i1 %i.wj to i32
  %.not199.i = icmp eq i32 %i.wk, 0
  br i1 %.not199.i, label %bb.er, label %bb.fi

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %.not200.i = icmp eq i32 %.0164586.i, 0
  %i.wl = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %.not200.i, label %bb.es, label %fread.inline.exit.i.i235.i

bb.es:                                            ; preds = %bb.er
  %i.wm = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.wm, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %i.wl) #18
  br label %.thread296.i

fread.inline.exit.i.i235.i:                       ; preds = %bb.er
  %i.wn = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.wo = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.wn)
  %i.wp = icmp ult i64 %i.wo, 4
  br i1 %i.wp, label %read_uint32.exit240.thread.i, label %bb.et

read_uint32.exit240.thread.i:                     ; preds = %fread.inline.exit.i.i235.i
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.wq, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.wl) #18
  br label %.thread296.i

bb.et:                                            ; preds = %fread.inline.exit.i.i235.i
  %i.wr = load <4 x i8>, ptr %i.e, align 4, !tbaa !29
  %i.ws = shufflevector <4 x i8> %i.wr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.ws, ptr %i.e, align 4, !tbaa !29
  %.cast3850 = bitcast <4 x i8> %i.ws to i32      ; 3 uses
  %i.wt = zext i32 %.cast3850 to i64
  br i1 %.not202.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not203.i = icmp eq i32 %.cast3850, 0
  br i1 %.not203.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.wu = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.wv = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.wu, i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef %i.wv, ptr noundef nonnull %i.b) #18
  %i.ww = load i32, ptr %i.v, align 8, !tbaa !39
  %.not204.i = icmp eq i32 %i.ww, 0
  br i1 %.not204.i, label %bb.ew, label %.thread296.i

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.wx = load i32, ptr %i.rq, align 8, !tbaa !85
  %i.wy = zext i32 %i.wx to i64
  %i.wz = sub nsw i64 0, %i.wy
  br label %fread.inline.exit.i.i242.i

bb.ex:                                            ; preds = %bb.et
  %i.xa = icmp ult i32 %.cast3850, 9
  br i1 %i.xa, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.xb = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.xc = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xb, i32 noundef 1, ptr noundef nonnull @.str.70, ptr noundef %i.xc) #18
  br label %.thread296.i

bb.ez:                                            ; preds = %bb.ex
  %i.xd = add nsw i64 %i.wt, -8
  br label %fread.inline.exit.i.i242.i

fread.inline.exit.i.i242.i:                       ; preds = %bb.ez, %bb.ew
  %.0.i380 = phi i64 [ %i.wz, %bb.ew ], [ %i.xd, %bb.ez ]
  %i.xe = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.xf = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.xg = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.xe)
  %i.xh = icmp ult i64 %i.xg, 4
  br i1 %i.xh, label %read_uint32.exit247.thread.i, label %fread.inline.exit.i.i249.i

read_uint32.exit247.thread.i:                     ; preds = %fread.inline.exit.i.i242.i
  %i.xi = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xi, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.xf) #18
  br label %.thread296.i

fread.inline.exit.i.i249.i:                       ; preds = %fread.inline.exit.i.i242.i
  %i.xj = load <4 x i8>, ptr %i.e, align 4, !tbaa !29
  %i.xk = shufflevector <4 x i8> %i.xj, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.xk, ptr %i.e, align 4, !tbaa !29
  %.cast3851 = bitcast <4 x i8> %i.xk to i32
  %i.xl = zext i32 %.cast3851 to i64              ; 3 uses
  %i.xm = sub nsw i64 %.0.i380, %i.xl             ; 4 uses
  %i.xn = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.xo = load ptr, ptr %i.ah, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@FLAC__stream_encoder_disable_constant_subframes
declare i32 @FLAC__stream_encoder_disable_constant_subframes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_encoder_disable_fixed_subframes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_encoder_disable_verbatim_subframes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_encoder_set_do_md5(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_encoder_set_num_threads(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_encoder_set_ogg_serial_number(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_encoder_init_ogg_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @encoder_progress_callback(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3, i32 %4, ptr nofree noundef captures(none) initializes((72, 88), (8432, 8448)) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %1, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %2, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = uitofp i64 %2 to double
  %i.h = uitofp i64 %i.f to double
  %i.i = fdiv double %i.g, %i.h
  %i.j = select i1 %.not, double 0.000000e+00, double %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8432
  store double %i.j, ptr %i.k, align 8, !tbaa !69
  %i.l = fcmp une double %i.j, 0.000000e+00
  %i.m = icmp ne i64 %i.b, 0
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = uitofp i64 %1 to double
  %i.o = uitofp i64 %i.b to double
  %i.p = fcmp ogt double %i.j, 1.000000e+00
  %i.q = select i1 %i.p, double 1.000000e+00, double %i.j
  %i.r = fmul double %i.q, %i.o
  %i.s = fdiv double %i.n, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = phi double [ %i.s, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8440
  store double %i.t, ptr %i.u, align 8, !tbaa !27
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !240
  %i.x = zext i32 %i.w to i64
  %i.y = sub i64 %2, %i.x
  %i.z = icmp ugt i64 %i.y, 10000
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call i64 @clock() #18              ; 2 uses
  %i.ab = trunc i64 %2 to i32
  store i32 %i.ab, ptr %i.v, align 8, !tbaa !240
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !241
  %i.ae = sub nsw i64 %i.aa, %i.ad
  %i.af = icmp sgt i64 %i.ae, 250000
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @print_stats(ptr noundef nonnull %5)
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !241
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  ret void
}

declare i32 @FLAC__stream_encoder_init_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_error_with_init_status(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.139) #18
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @FLAC__StreamEncoderInitStatusString, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.154, i32 noundef %i.e, ptr noundef nonnull @.str.100, ptr noundef %i.j) #18
  switch i32 %1, label %bb.d [
    i32 1, label %bb.b
    i32 11, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8408
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = tail call ptr @FLAC__stream_encoder_get_resolved_state_string(ptr noundef %i.l) #18 ; 3 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.n, i32 noundef 1, ptr noundef nonnull @.str.155, i32 noundef %i.e, ptr noundef nonnull @.str.100, ptr noundef %i.m) #18
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @FLAC__StreamEncoderStateString, i64 40), align 8, !tbaa !38
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.o) #21
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @FLAC__StreamEncoderStateString, i64 48), align 8, !tbaa !38
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.r) #21
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.c, %bb.b
  %.str.158.sink = phi ptr [ @.str.157, %bb.c ], [ @.str.156, %bb.b ], [ @.str.158, %bb.a ]
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.u, i32 noundef 1, ptr noundef nonnull %.str.158.sink) #18
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

declare ptr @grabbag__cuesheet_parse(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @FLAC__format_cuesheet_is_legal(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @grabbag__seektable_convert_specification_to_template(ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FLAC__metadata_object_seektable_template_append_point(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @FLAC__metadata_object_seektable_template_sort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

declare i32 @FLAC__format_seektable_is_legal(ptr noundef) local_unnamed_addr #2

declare i32 @FLAC__format_picture_is_legal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare ptr @__strncat_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #13

declare ptr @FLAC__stream_encoder_get_resolved_state_string(ptr noundef) local_unnamed_addr #2

declare i32 @grabbag__replaygain_analyze(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_encoder_process(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nobuiltin nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!18 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!19 = !{!"p1 _ZTS20FLAC__StreamMetadata", !11, i64 0}
!20 = !{!"double", !7, i64 0}
!21 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !15, i64 16, !15, i64 24, !15, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !8, i64 88, !16, i64 96, !7, i64 104, !17, i64 120, !8, i64 152, !7, i64 160, !11, i64 8408, !18, i64 8416, !19, i64 8424, !20, i64 8432, !20, i64 8440}
!22 = !{!21, !8, i64 8}
!23 = !{!21, !8, i64 12}
!24 = !{!21, !15, i64 16}
!25 = !{!21, !15, i64 24}
!26 = !{!21, !15, i64 32}
!27 = !{!21, !20, i64 8440}
!28 = !{!21, !8, i64 152}
!29 = !{!7, !7, i64 0}
!30 = !{!21, !18, i64 8416}
!31 = !{!21, !19, i64 8424}
!32 = !{!18, !18, i64 0}
!33 = !{!21, !11, i64 8408}
!34 = !{!16, !16, i64 0}
!35 = !{!"", !8, i64 0, !8, i64 4, !7, i64 8}
!36 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!37 = !{!"", !35, i64 0, !35, i64 16, !8, i64 32, !8, i64 36, !16, i64 40, !8, i64 48, !8, i64 52, !16, i64 56, !7, i64 64, !8, i64 1088, !15, i64 1096, !8, i64 1104, !15, i64 1112, !8, i64 1120, !8, i64 1124, !8, i64 1128, !8, i64 1132, !8, i64 1136, !8, i64 1140, !8, i64 1144, !8, i64 1148, !8, i64 1152, !8, i64 1156, !8, i64 1160, !19, i64 1168, !19, i64 1176, !7, i64 1184, !8, i64 1696, !8, i64 1700, !7, i64 1704, !36, i64 1728}
!38 = !{!15, !15, i64 0}
!39 = !{!21, !8, i64 40}
!40 = !{!21, !16, i64 56}
!41 = !{!21, !8, i64 120}
!42 = !{!21, !8, i64 124}
!43 = !{!21, !8, i64 128}
!44 = !{!21, !8, i64 132}
!45 = !{!21, !8, i64 148}
!46 = !{!"timespec", !16, i64 0, !16, i64 8}
!47 = !{!"stat", !16, i64 0, !16, i64 8, !16, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !46, i64 72, !46, i64 88, !46, i64 104, !7, i64 120}
!48 = !{!47, !8, i64 24}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"short", !7, i64 0}
!51 = !{!"FLAC__StreamMetadata", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 16}
!52 = !{!51, !8, i64 0}
!53 = !{!21, !16, i64 64}
!54 = !{!21, !16, i64 80}
!55 = !{!21, !8, i64 44}
!56 = !{!"any p2 pointer", !11, i64 0}
!57 = !{!"p2 _ZTS20FLAC__StreamMetadata", !56, i64 0}
!58 = !{!"", !8, i64 0, !12, i64 8, !57, i64 16, !19, i64 24}
!59 = !{!58, !8, i64 0}
!60 = !{!21, !8, i64 48}
!61 = !{!19, !19, i64 0}
!62 = !{!58, !12, i64 8}
!63 = !{!58, !57, i64 16}
!64 = !{!58, !19, i64 24}
!65 = !{!"", !16, i64 0, !15, i64 8, !8, i64 16, !16, i64 24, !7, i64 32, !16, i64 8224, !8, i64 8232}
!66 = !{!65, !16, i64 24}
!67 = !{!65, !8, i64 8232}
!68 = !{!21, !16, i64 72}
!69 = !{!21, !20, i64 8432}
!70 = distinct !{!70, !49}
!71 = distinct !{!71, !"memcpy.inline"}
!72 = distinct !{!72, !71, !"memcpy.inline: argument 1"}
!73 = distinct !{!73, !71, !"memcpy.inline: argument 0"}
!74 = distinct !{!74, !"memcpy.inline"}
!75 = distinct !{!75, !74, !"memcpy.inline: argument 1"}
!76 = distinct !{!76, !74, !"memcpy.inline: argument 0"}
!77 = distinct !{!77, !"memcpy.inline"}
!78 = distinct !{!78, !77, !"memcpy.inline: argument 1"}
!79 = distinct !{!79, !77, !"memcpy.inline: argument 0"}
!80 = distinct !{!80, !49, !94}
!81 = distinct !{!81, !49, !94}
!82 = distinct !{!82, !49}
!83 = !{!37, !8, i64 1700}
!84 = !{!37, !8, i64 1160}
!85 = !{!21, !8, i64 136}
!86 = !{!21, !8, i64 140}
!87 = !{!21, !8, i64 144}
!88 = !{!50, !50, i64 0}
!89 = !{!37, !8, i64 1148}
!90 = !{!35, !8, i64 0}
!91 = !{!73, !72}
!92 = !{!76, !75}
!93 = !{!79, !78}
!94 = !{!"llvm.loop.peeled.count", i32 1}
!95 = !{!37, !8, i64 1152}
!96 = distinct !{!96, !49}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !49}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = distinct !{!102, !49}
!103 = distinct !{!103, !49}
!104 = distinct !{!104, !49}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = !{!37, !8, i64 1144}
!108 = !{!37, !8, i64 1136}
!109 = !{!37, !15, i64 1112}
!110 = !{!37, !15, i64 1096}
!111 = !{!37, !8, i64 1104}
!112 = !{!37, !8, i64 1128}
!113 = !{!21, !8, i64 0}
!114 = !{!"", !7, i64 0, !16, i64 136, !8, i64 144, !8, i64 148, !11, i64 152}
!115 = !{!114, !8, i64 148}
!116 = !{!114, !11, i64 152}
!117 = !{!"", !16, i64 0, !7, i64 8, !7, i64 9, !8, i64 22, !8, i64 22, !7, i64 23, !11, i64 24}
!118 = !{!117, !7, i64 23}
!119 = !{!117, !16, i64 0}
!120 = !{!117, !11, i64 24}
!121 = !{!"", !16, i64 0, !7, i64 8}
!122 = !{!121, !16, i64 0}
!123 = !{!37, !8, i64 1696}
!124 = !{!37, !19, i64 1168}
!125 = !{!51, !8, i64 8}
!126 = !{!37, !8, i64 52}
!127 = !{!51, !8, i64 4}
!128 = !{!37, !19, i64 1176}
!129 = !{!"", !8, i64 0, !11, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60}
!130 = !{!129, !16, i64 16}
!131 = !{!129, !11, i64 8}
!132 = !{!"", !16, i64 0, !8, i64 8}
!133 = !{!132, !8, i64 8}
!134 = !{!37, !8, i64 32}
!135 = !{!37, !8, i64 48}
!136 = !{!37, !16, i64 56}
!137 = !{!"", !8, i64 0, !7, i64 8}
!138 = !{!137, !8, i64 0}
!139 = !{!37, !8, i64 1156}
!140 = !{!37, !8, i64 1728}
!141 = !{!37, !8, i64 1732}
!142 = !{!37, !8, i64 1736}
!143 = !{!37, !8, i64 1740}
!144 = !{!37, !8, i64 1088}
!145 = !{!37, !16, i64 40}
!146 = distinct !{!146, !49}
!147 = distinct !{!147, !213}
!148 = distinct !{!148, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !49, !216, !217}
!152 = distinct !{!152, !213}
!153 = distinct !{!153, !49, !216}
!154 = distinct !{!154, !49}
!155 = distinct !{!155, !"LVerDomain"}
!156 = distinct !{!156, !155}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !49, !216, !217}
!159 = distinct !{!159, !213}
!160 = distinct !{!160, !49, !216}
!161 = distinct !{!161, !49}
!162 = distinct !{!162, !"LVerDomain"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !162}
end_hunk_2
