Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.00?download=true
inline.NumInlined: 930
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs4phXRVW1pDQ_9dwarfdump11print_usage:bb.a
bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4phXRVW1pDQ_9dwarfdump.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body18 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i17: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4phXRVW1pDQ_9dwarfdump.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit20 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit20: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i17
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvNtNtCsG258MDvU3F_3std2io5stdio6stderr8INSTANCE, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !6
  invoke void @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options5usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.o unwind label %bb.n

.body33:                                          ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i27, %bb.n
  %.pn11 = phi { ptr, i32 } [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i27 ], [ %i.w, %bb.n ], [ %i.ab, %bb.v ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i22 unwind label %bb.l

bb.l:                                             ; preds = %.body33
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i22: ; preds = %.body33
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.x

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i32, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit20
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.x = invoke noundef ptr @_RNvXso_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @151, ptr noundef nonnull %i.a)
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.t, %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i27 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i27: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body33 unwind label %bb.x

bb.s:                                             ; preds = %bb.o
  %.not10 = icmp eq ptr %i.x, null
  br i1 %.not10, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4phXRVW1pDQ_9dwarfdump(ptr nonnull %i.x)
          to label %bb.u unwind label %bb.p

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i32 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body33 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i32: ; preds = %bb.u
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit35 unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4phXRVW1pDQ_9dwarfdump.exit35: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef 1) #26
          to label %bb.f unwind label %bb.n

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i27, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i22, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i, %.body18
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.l, %bb.q, %bb.x, %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i22, %.body18
  %.pn11.pn = phi { ptr, i32 } [ %.pn, %.body18 ], [ %.pn11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i22 ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs4phXRVW1pDQ_9dwarfdump4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [64 x i8], align 16               ; 12 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [80 x i8], align 16               ; 15 uses
  %i.l = alloca [64 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 16               ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 16               ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 10 uses
  %i.x = alloca [64 x i8], align 16               ; 13 uses
  %i.y = alloca [64 x i8], align 8                ; 12 uses
  %i.z = alloca [4 x i8], align 4                 ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [4 x i8], align 4                ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [88 x i8], align 16              ; 16 uses
  %i.ae = alloca [64 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [160 x i8], align 8              ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [80 x i8], align 16              ; 11 uses
  %i.aj = alloca [160 x i8], align 8              ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [96 x i8], align 8               ; 11 uses
  %.sroa.03.i154.sroa.7 = alloca [72 x i8], align 8 ; 5 uses
  %.sroa.4.i155 = alloca [7 x i8], align 1        ; 5 uses
  %i.am = alloca [96 x i8], align 16              ; 12 uses
  %i.an = alloca [64 x i8], align 16              ; 12 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [160 x i8], align 8              ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [80 x i8], align 16              ; 12 uses
  %i.as = alloca [160 x i8], align 8              ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [96 x i8], align 8               ; 11 uses
  %.sroa.03.i.sroa.7 = alloca [72 x i8], align 8  ; 5 uses
  %.sroa.4.i = alloca [7 x i8], align 1           ; 5 uses
  %i.av = alloca [96 x i8], align 16              ; 12 uses
  %i.aw = alloca [64 x i8], align 16              ; 12 uses
  %i.ax = alloca [16 x i8], align 8               ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 4 uses
  %i.az = alloca [16 x i8], align 8               ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 4 uses
  %i.bb = alloca [16 x i8], align 8               ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 4 uses
  %i.be = alloca [128 x i8], align 8              ; 8 uses
  %i.bf = alloca [128 x i8], align 8              ; 9 uses
  %.sroa.026.i.i.sroa.0 = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.026.i.i.sroa.7 = alloca [104 x i8], align 8 ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [4 x i8], align 4                ; 6 uses
  %i.bj = alloca [64 x i8], align 8               ; 12 uses
  %i.bk = alloca [4 x i8], align 4                ; 5 uses
  %i.bl = alloca [4 x i8], align 4                ; 5 uses
  %i.bm = alloca [4 x i8], align 4                ; 5 uses
  %i.bn = alloca [2 x i8], align 2                ; 5 uses
  %i.bo = alloca [128 x i8], align 8              ; 8 uses
  %i.bp = alloca [128 x i8], align 8              ; 9 uses
  %.sroa.09.i.i.sroa.0 = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.09.i.i.sroa.7 = alloca [104 x i8], align 8 ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [4 x i8], align 4                ; 6 uses
  %i.bt = alloca [64 x i8], align 8               ; 12 uses
  %i.bu = alloca [4 x i8], align 4                ; 5 uses
  %i.bv = alloca [4 x i8], align 4                ; 5 uses
  %i.bw = alloca [4 x i8], align 4                ; 5 uses
  %i.bx = alloca [2 x i8], align 2                ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 3 uses
  %i.bz = alloca [24 x i8], align 8               ; 3 uses
  %i.ca = alloca [24 x i8], align 8               ; 3 uses
  %i.cb = alloca [24 x i8], align 8               ; 3 uses
  %i.cc = alloca [24 x i8], align 8               ; 3 uses
  %i.cd = alloca [24 x i8], align 8               ; 5 uses
  %i.ce = alloca [48 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [40 x i8], align 8               ; 4 uses
  %i.ch = alloca [64 x i8], align 8               ; 6 uses
  %i.ci = alloca [64 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [40 x i8], align 8               ; 4 uses
  %i.cm = alloca [56 x i8], align 8               ; 6 uses
  %i.cn = alloca [56 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 6 uses
  %i.cp = alloca [40 x i8], align 8               ; 4 uses
  %i.cq = alloca [56 x i8], align 8               ; 6 uses
  %i.cr = alloca [56 x i8], align 8               ; 5 uses
  %i.cs = alloca [40 x i8], align 8               ; 4 uses
  %i.ct = alloca [56 x i8], align 16              ; 10 uses
  %i.cu = alloca [40 x i8], align 8               ; 4 uses
  %i.cv = alloca [56 x i8], align 16              ; 10 uses
  %i.cw = alloca [24 x i8], align 8               ; 12 uses
  %i.cx = alloca [24 x i8], align 8               ; 11 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 6 uses
  %i.db = alloca [24 x i8], align 8               ; 6 uses
  %i.dc = alloca [32 x i8], align 8               ; 8 uses
  %i.dd = alloca [8 x i8], align 8                ; 5 uses
  %i.de = alloca [936 x i8], align 8              ; 9 uses
  %i.df = alloca [936 x i8], align 8              ; 21 uses
  %i.dg = alloca [1168 x i8], align 8             ; 9 uses
  %i.dh = alloca [1168 x i8], align 8             ; 19 uses
  %i.di = alloca [24 x i8], align 8               ; 6 uses
  %i.dj = alloca [56 x i8], align 8               ; 4 uses
  %i.dk = alloca [48 x i8], align 8               ; 8 uses
  %i.dl = alloca [40 x i8], align 8               ; 41 uses
  %i.dm = alloca [40 x i8], align 8               ; 15 uses
  %i.dn = alloca [16 x i8], align 8               ; 5 uses
  %i.do = alloca [24 x i8], align 8               ; 4 uses
  %i.dp = alloca [64 x i8], align 8               ; 4 uses
  %i.dq = alloca [72 x i8], align 8               ; 5 uses
  %i.dr = alloca [48 x i8], align 8               ; 7 uses
  %i.ds = alloca [8 x i8], align 8                ; 4 uses
  %i.dt = alloca [48 x i8], align 8               ; 14 uses
  %i.du = alloca [936 x i8], align 8              ; 9 uses
  %i.dv = alloca [32 x i8], align 8               ; 8 uses
  %i.dw = alloca [8 x i8], align 8                ; 5 uses
  %i.dx = alloca [936 x i8], align 8              ; 16 uses
  %i.dy = alloca [56 x i8], align 8               ; 17 uses
  %i.dz = alloca [56 x i8], align 8               ; 8 uses
  %i.ea = alloca [8 x i8], align 8                ; 19 uses
  %i.eb = alloca [1 x i8], align 1                ; 7 uses
  %i.ec = alloca [8 x i8], align 8                ; 5 uses
  %i.ed = alloca [32 x i8], align 8               ; 9 uses
  %i.ee = alloca [24 x i8], align 8               ; 3 uses
  %i.ef = alloca [24 x i8], align 8               ; 3 uses
  %i.eg = alloca [24 x i8], align 8               ; 4 uses
  %i.eh = alloca [32 x i8], align 8               ; 7 uses
  %i.ei = alloca [24 x i8], align 8               ; 5 uses
  %i.ej = alloca [32 x i8], align 8               ; 7 uses
  %i.ek = alloca [16 x i8], align 8               ; 5 uses
  %i.el = alloca [304 x i8], align 8              ; 8 uses
  %i.em = alloca [304 x i8], align 8              ; 11 uses
  %i.en = alloca [32 x i8], align 8               ; 7 uses
  %i.eo = alloca [8 x i8], align 8                ; 6 uses
  %i.ep = alloca [24 x i8], align 8               ; 7 uses
  %i.eq = alloca [16 x i8], align 8               ; 8 uses
  %i.er = alloca [32 x i8], align 8               ; 7 uses
  %i.es = alloca [8 x i8], align 8                ; 6 uses
  %i.et = alloca [16 x i8], align 8               ; 7 uses
  %i.eu = alloca [4 x i8], align 4                ; 4 uses
  %i.ev = alloca [16 x i8], align 8               ; 5 uses
  %i.ew = alloca [8 x i8], align 8                ; 9 uses
  %i.ex = alloca [304 x i8], align 8              ; 6 uses
  %i.ey = alloca [304 x i8], align 8              ; 6 uses
  %i.ez = alloca [56 x i8], align 8               ; 7 uses
  %i.fa = alloca [32 x i8], align 8               ; 7 uses
  %i.fb = alloca [24 x i8], align 8               ; 4 uses
  %i.fc = alloca [32 x i8], align 8               ; 5 uses
  %i.fd = alloca [24 x i8], align 8               ; 10 uses
  %i.fe = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.ff = alloca [32 x i8], align 8               ; 7 uses
  %i.fg = alloca [1 x i8], align 1                ; 3 uses
  %i.fh = alloca [24 x i8], align 8               ; 9 uses
  %i.fi = alloca [24 x i8], align 8               ; 10 uses
  %i.fj = alloca [24 x i8], align 8               ; 5 uses
  %i.fk = alloca [672 x i8], align 8              ; 31 uses
  %i.fl = alloca [16 x i8], align 8               ; 5 uses
  %i.fm = alloca [8 x i8], align 8                ; 4 uses
  %i.fn = alloca [32 x i8], align 8               ; 4 uses
  %i.fo = alloca [32 x i8], align 8               ; 4 uses
  %i.fp = alloca [40 x i8], align 8               ; 5 uses
  %i.fq = alloca [88 x i8], align 8               ; 6 uses
  %i.fr = alloca [88 x i8], align 8               ; 27 uses
  %i.fs = alloca [32 x i8], align 8               ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  store i64 0, ptr %i.fs, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i8 0, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 25
  store i8 0, ptr %i.fu, align 1
  %i.fv = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 23)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.pj, %.body137, %bb.c
  %.pn98 = phi { ptr, i32 } [ %i.ago, %bb.pj ], [ %.pn95, %.body137 ], [ %i.fw, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfcxKEGBgCs2_7getopts7OptionsECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fs) #21
          to label %common.resume unwind label %bb.bs

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4phXRVW1pDQ_9dwarfdump5FlagsEBD_.exit, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.fx = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @341, i64 noundef 43)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.fy = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @343, i64 noundef 25)
          to label %bb.f unwind label %bb.c       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.fz = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 28)
          to label %bb.g unwind label %bb.c       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ga = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 33)
          to label %bb.h unwind label %bb.c       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @349, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 33)
          to label %bb.i unwind label %bb.c       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.gc = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options10optflagopt(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @353, i64 noundef 6)
          to label %bb.j unwind label %bb.c       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.gd = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 25)
          to label %bb.k unwind label %bb.c       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ge = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 26)
          to label %bb.l unwind label %bb.c       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.gf = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @359, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 29)
          to label %bb.m unwind label %bb.c       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.gg = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @362, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @363, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 29)
          to label %bb.n unwind label %bb.c       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.gh = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 26)
          to label %bb.o unwind label %bb.c       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.gi = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @368, i64 noundef 23)
          to label %bb.p unwind label %bb.c       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.gj = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @369, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 48)
          to label %bb.q unwind label %bb.c       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.gk = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 48)
          to label %bb.r unwind label %bb.c       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.gl = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options6optopt(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @373, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @374, i64 noundef 77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @375, i64 noundef 12)
          to label %bb.s unwind label %bb.c       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.gm = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options7optflag(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @376, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @377, i64 noundef 21)
          to label %bb.t unwind label %bb.c       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.gn = invoke noundef nonnull align 8 ptr @_RNvMs_CsfcxKEGBgCs2_7getoptsNtB4_7Options6optopt(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @378, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @379, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @380, i64 noundef 52, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @381, i64 noundef 5)
          to label %bb.u unwind label %bb.c       ; 0 uses

end_hunk_0
begin_hunk_1_@_RNvCs4phXRVW1pDQ_9dwarfdump4main:bb.a
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !3204
  store ptr %i.bv, ptr %i.oy, align 8, !noalias !3204
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !noalias !3204
  store ptr %i.bu, ptr %i.oz, align 8, !noalias !3204
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !noalias !3204
  %i.adh = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @306, ptr noundef nonnull %i.bt)
          to label %.noexc103.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037 ; 4 uses

.noexc103.i:                                      ; preds = %bb.my
  %.not.i102.i = icmp eq ptr %i.adh, null
  br i1 %.not.i102.i, label %bb.nc, label %bb.mz

.loopexit117.i.i:                                 ; preds = %bb.nw, %bb.nc, %bb.mx
  %i.adi = load i16, ptr %i.pe, align 4, !alias.scope !3195, !noalias !3198, !noundef !6 ; 2 uses
  %i.adj = icmp eq i16 %i.adi, 0
  br i1 %i.adj, label %.loopexit149.i, label %bb.nd

bb.mz:                                            ; preds = %.noexc103.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3205
  %i.adk = ptrtoint ptr %i.adh to i64             ; 2 uses
  %i.adl = and i64 %i.adk, 3
  switch i64 %i.adl, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i
    i64 3, label %bb.na
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i
    i64 1, label %bb.nb
  ], !prof !13

bb.na:                                            ; preds = %bb.mz
  %i.adm = icmp ult ptr %i.adh, inttoptr (i64 188978561024 to ptr)
  %i.adn = and i64 %i.adk, 1095216660480
  %i.ado = icmp ne i64 %i.adn, 1095216660480
  call void @llvm.assume(i1 %i.adm)
  call void @llvm.assume(i1 %i.ado)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i

bb.nb:                                            ; preds = %bb.mz
  %i.adp = getelementptr i8, ptr %i.adh, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adp) ]
  store ptr %i.adp, ptr %i.pa, align 8, !alias.scope !3208, !noalias !3205
  store i8 3, ptr %i.bd, align 8, !alias.scope !3208, !noalias !3205
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pa)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i: ; preds = %bb.nb, %bb.na, %bb.mz, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !3204
  br label %bb.oa

bb.nc:                                            ; preds = %.noexc103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !3204
  %.not.i123.i.i = icmp eq i32 %i.adf, 0
  br i1 %.not.i123.i.i, label %.loopexit117.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.nc, %bb.nw
  %.sroa.0.0124.i.i = phi i32 [ %i.adq, %bb.nw ], [ 1, %bb.nc ] ; 3 uses
  %i.adq = add i32 %.sroa.0.0124.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !3204
  store i32 %.sroa.0.0124.i.i, ptr %i.bs, align 4, !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3204
  store ptr %i.bs, ptr %i.br, align 8, !noalias !3204
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.451.0..sroa_idx.i.i, align 8, !noalias !3204
  %i.adr = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @309, ptr noundef nonnull %i.br)
          to label %.noexc105.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !3037 ; 4 uses

.noexc105.i:                                      ; preds = %.lr.ph.i.i
  %.not77.i.i = icmp eq ptr %i.adr, null
  br i1 %.not77.i.i, label %bb.nt, label %bb.nq

bb.nd:                                            ; preds = %.loopexit117.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !3204
  store i16 %i.adi, ptr %i.bn, align 2, !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3204
  %i.ads = load i32, ptr %i.pf, align 8, !alias.scope !3195, !noalias !3198, !noundef !6
  store i32 %i.ads, ptr %i.bm, align 4, !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3204
  %i.adt = load i32, ptr %i.pg, align 4, !alias.scope !3195, !noalias !3198, !noundef !6 ; 3 uses
  store i32 %i.adt, ptr %i.bl, align 4, !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3204
  %i.adu = load i32, ptr %i.ph, align 8, !alias.scope !3195, !noalias !3198, !noundef !6
  store i32 %i.adu, ptr %i.bk, align 4, !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3204
  store ptr %i.bn, ptr %i.bj, align 8, !noalias !3204
  store ptr @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.457.0..sroa_idx.i.i, align 8, !noalias !3204
  store ptr %i.bm, ptr %i.pi, align 8, !noalias !3204
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !3204
  store ptr %i.bl, ptr %i.pj, align 8, !noalias !3204
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.465.0..sroa_idx.i.i, align 8, !noalias !3204
  store ptr %i.bk, ptr %i.pk, align 8, !noalias !3204
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx.i.i, align 8, !noalias !3204
  %i.adv = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @307, ptr noundef nonnull %i.bj)
          to label %.noexc106.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037 ; 4 uses

.noexc106.i:                                      ; preds = %bb.nd
  %.not79.i.i = icmp eq ptr %i.adv, null
  br i1 %.not79.i.i, label %bb.nh, label %bb.ne

bb.ne:                                            ; preds = %.noexc106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3211
  %i.adw = ptrtoint ptr %i.adv to i64             ; 2 uses
  %i.adx = and i64 %i.adw, 3
  switch i64 %i.adx, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i
    i64 3, label %bb.nf
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i
    i64 1, label %bb.ng
  ], !prof !13

bb.nf:                                            ; preds = %bb.ne
  %i.ady = icmp ult ptr %i.adv, inttoptr (i64 188978561024 to ptr)
  %i.adz = and i64 %i.adw, 1095216660480
  %i.aea = icmp ne i64 %i.adz, 1095216660480
  call void @llvm.assume(i1 %i.ady)
  call void @llvm.assume(i1 %i.aea)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i

bb.ng:                                            ; preds = %bb.ne
  %i.aeb = getelementptr i8, ptr %i.adv, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aeb) ]
  store ptr %i.aeb, ptr %i.pl, align 8, !alias.scope !3214, !noalias !3211
  store i8 3, ptr %i.bc, align 8, !alias.scope !3214, !noalias !3211
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pl)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i: ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3204
  br label %bb.oa

bb.nh:                                            ; preds = %.noexc106.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3204
  %.not.i84125.i.i = icmp eq i32 %i.adt, 0
  br i1 %.not.i84125.i.i, label %.loopexit149.i, label %.lr.ph127.i.i

.lr.ph127.i.i:                                    ; preds = %bb.nh, %bb.no
  %.sroa.093.0126.i.i = phi i32 [ %i.aec, %bb.no ], [ 1, %bb.nh ] ; 3 uses
  %i.aec = add i32 %.sroa.093.0126.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3204
  store i32 %.sroa.093.0126.i.i, ptr %i.bi, align 4, !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !3204
  store ptr %i.bi, ptr %i.bh, align 8, !noalias !3204
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.473.0..sroa_idx.i.i, align 8, !noalias !3204
  %i.aed = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @308, ptr noundef nonnull %i.bh)
          to label %.noexc108.i unwind label %.loopexit.i121, !noalias !3037 ; 4 uses

.noexc108.i:                                      ; preds = %.lr.ph127.i.i
  %.not80.i.i = icmp eq ptr %i.aed, null
  br i1 %.not80.i.i, label %bb.nl, label %bb.ni

bb.ni:                                            ; preds = %.noexc108.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !3217
  %i.aee = ptrtoint ptr %i.aed to i64             ; 2 uses
  %i.aef = and i64 %i.aee, 3
  switch i64 %i.aef, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i
    i64 3, label %bb.nj
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i
    i64 1, label %bb.nk
  ], !prof !13

bb.nj:                                            ; preds = %bb.ni
  %i.aeg = icmp ult ptr %i.aed, inttoptr (i64 188978561024 to ptr)
  %i.aeh = and i64 %i.aee, 1095216660480
  %i.aei = icmp ne i64 %i.aeh, 1095216660480
  call void @llvm.assume(i1 %i.aeg)
  call void @llvm.assume(i1 %i.aei)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i

bb.nk:                                            ; preds = %bb.ni
  %i.aej = getelementptr i8, ptr %i.aed, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aej) ]
  store ptr %i.aej, ptr %i.pn, align 8, !alias.scope !3220, !noalias !3217
  store i8 3, ptr %i.bb, align 8, !alias.scope !3220, !noalias !3217
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pn)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i: ; preds = %bb.nk, %bb.nj, %bb.ni, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3204
  br label %bb.np

bb.nl:                                            ; preds = %.noexc108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026.i.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026.i.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3204
  %i.aek = load i32, ptr %i.bi, align 4, !noalias !3204, !noundef !6
  invoke void @_RNvMs8_NtNtCsi68uqYEhoRA_5gimli4read5indexINtB5_9UnitIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8sectionsB2A_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.pd, i32 noundef %i.aek)
          to label %.noexc110.i unwind label %.loopexit.i121, !noalias !3037

.noexc110.i:                                      ; preds = %bb.nl
  %i.ael = load i8, ptr %i.pm, align 8, !range !9, !noalias !3204, !noundef !6 ; 2 uses
  %i.aem = icmp eq i8 %i.ael, 2
  br i1 %i.aem, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %.noexc110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3204
  br label %.loopexit573

bb.nn:                                            ; preds = %.noexc110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.026.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.026.i.i.sroa.7.0..sroa_idx, i64 104, i1 false), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.830.0..sroa_idx31.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.576.0..sroa_idx.i.i, i64 7, i1 false), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.i.i.sroa.0, i64 16, i1 false), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.026.i.i.sroa.7.0..sroa_idx1074, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.026.i.i.sroa.7, i64 104, i1 false), !noalias !3204
  store i8 %i.ael, ptr %.sroa.727.0..sroa_idx28.i.i, align 8, !noalias !3204
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump17dump_dwp_sectionsINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtBQ_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1168) %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(936) %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.not57.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %i.adb, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(128) %i.be)
          to label %.noexc111.i unwind label %.loopexit.i121, !noalias !3037

.noexc111.i:                                      ; preds = %bb.nn
  %i.aen = load i64, ptr %i.bg, align 8, !range !17, !noalias !3204, !noundef !6 ; 2 uses
  %.not81.i.i = icmp eq i64 %i.aen, -1
  br i1 %.not81.i.i, label %bb.no, label %.loopexit573

bb.no:                                            ; preds = %.noexc111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3204
  %exitcond135.not.i.i = icmp eq i32 %.sroa.093.0126.i.i, %i.adt
  br i1 %exitcond135.not.i.i, label %.loopexit149.i, label %.lr.ph127.i.i

.loopexit573:                                     ; preds = %.noexc111.i, %bb.nm
  %.sroa.14.0..sroa_idx122.sink.i = phi ptr [ %.sroa.026.i.i.sroa.0, %bb.nm ], [ %.sroa.14.0..sroa_idx122.i, %.noexc111.i ]
  %.sroa.0.3.i = phi i64 [ 0, %bb.nm ], [ %i.aen, %.noexc111.i ]
  %0 = load <2 x i64>, ptr %.sroa.14.0..sroa_idx122.sink.i, align 8, !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026.i.i.sroa.7)
  br label %bb.np

bb.np:                                            ; preds = %.loopexit573, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i
  %.sroa.0.2.i = phi i64 [ %.sroa.0.3.i, %.loopexit573 ], [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i ]
  %i.aeo = phi <2 x i64> [ %0, %.loopexit573 ], [ undef, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit89.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3204
  br label %bb.oa

bb.nq:                                            ; preds = %.noexc105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3223
  %i.aep = ptrtoint ptr %i.adr to i64             ; 2 uses
  %i.aeq = and i64 %i.aep, 3
  switch i64 %i.aeq, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i
    i64 3, label %bb.nr
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i
    i64 1, label %bb.ns
  ], !prof !13

bb.nr:                                            ; preds = %bb.nq
  %i.aer = icmp ult ptr %i.adr, inttoptr (i64 188978561024 to ptr)
  %i.aes = and i64 %i.aep, 1095216660480
  %i.aet = icmp ne i64 %i.aes, 1095216660480
  call void @llvm.assume(i1 %i.aer)
  call void @llvm.assume(i1 %i.aet)
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i

bb.ns:                                            ; preds = %bb.nq
  %i.aeu = getelementptr i8, ptr %i.adr, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aeu) ]
  store ptr %i.aeu, ptr %i.pc, align 8, !alias.scope !3226, !noalias !3223
  store i8 3, ptr %i.ba, align 8, !alias.scope !3226, !noalias !3223
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pc)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i: ; preds = %bb.ns, %bb.nr, %bb.nq, %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3204
  br label %bb.nx

bb.nt:                                            ; preds = %.noexc105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3204
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09.i.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09.i.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3204
  %i.aev = load i32, ptr %i.bs, align 4, !noalias !3204, !noundef !6
  invoke void @_RNvMs8_NtNtCsi68uqYEhoRA_5gimli4read5indexINtB5_9UnitIndexINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8sectionsB2A_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1168) %i.dh, i32 noundef %i.aev)
          to label %.noexc113.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !3037

.noexc113.i:                                      ; preds = %bb.nt
  %i.aew = load i8, ptr %i.pb, align 8, !range !9, !noalias !3204, !noundef !6 ; 2 uses
  %i.aex = icmp eq i8 %i.aew, 2
  br i1 %i.aex, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %.noexc113.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3204
  br label %.loopexit574

bb.nv:                                            ; preds = %.noexc113.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.09.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.09.i.i.sroa.7.0..sroa_idx, i64 104, i1 false), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx12.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i.i, i64 7, i1 false), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.i.i.sroa.0, i64 16, i1 false), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.09.i.i.sroa.7.0..sroa_idx1073, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.09.i.i.sroa.7, i64 104, i1 false), !noalias !3204
  store i8 %i.aew, ptr %.sroa.7.0..sroa_idx10.i.i, align 8, !noalias !3204
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump17dump_dwp_sectionsINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtBQ_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1168) %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(936) %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.not57.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %i.adb, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(128) %i.bo)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !3037

.noexc114.i:                                      ; preds = %bb.nv
  %i.aey = load i64, ptr %i.bq, align 8, !range !17, !noalias !3204, !noundef !6 ; 2 uses
  %.not78.i.i = icmp eq i64 %i.aey, -1
  br i1 %.not78.i.i, label %bb.nw, label %.loopexit574

bb.nw:                                            ; preds = %.noexc114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3204
  %exitcond.not.i.i = icmp eq i32 %.sroa.0.0124.i.i, %i.adf
  br i1 %exitcond.not.i.i, label %.loopexit117.i.i, label %.lr.ph.i.i

.loopexit574:                                     ; preds = %.noexc114.i, %bb.nu
  %.sroa.14.0..sroa_idx121.sink.i = phi ptr [ %.sroa.09.i.i.sroa.0, %bb.nu ], [ %.sroa.14.0..sroa_idx121.i, %.noexc114.i ]
  %.sroa.0.1.i = phi i64 [ 0, %bb.nu ], [ %i.aey, %.noexc114.i ]
  %1 = load <2 x i64>, ptr %.sroa.14.0..sroa_idx121.sink.i, align 8, !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.i.sroa.7)
  br label %bb.nx

bb.nx:                                            ; preds = %.loopexit574, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i
  %.sroa.0.0.i120 = phi i64 [ %.sroa.0.1.i, %.loopexit574 ], [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i ]
  %i.aez = phi <2 x i64> [ %1, %.loopexit574 ], [ undef, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit91.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3204
  br label %bb.oa

bb.ny:                                            ; preds = %bb.mw
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #26
          to label %bb.nz unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !3037

bb.nz:                                            ; preds = %bb.ny
  unreachable

bb.oa:                                            ; preds = %bb.nx, %bb.np, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i
  %.sroa.0.4.ph.i = phi i64 [ %.sroa.0.2.i, %bb.np ], [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i ], [ %.sroa.0.0.i120, %bb.nx ], [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i ]
  %i.afa = phi <2 x i64> [ %i.aeo, %bb.np ], [ undef, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit83.i.i ], [ %i.aez, %bb.nx ], [ undef, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3034
  br label %bb.of

.loopexit149.i:                                   ; preds = %bb.no, %bb.nh, %.loopexit117.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3034
  %i.afb = invoke noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write5flushCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl)
          to label %bb.ob unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037 ; 4 uses

bb.ob:                                            ; preds = %.loopexit149.i
  %.not74.i = icmp eq ptr %i.afb, null
  br i1 %.not74.i, label %bb.of, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3229
  %i.afc = ptrtoint ptr %i.afb to i64             ; 2 uses
  %i.afd = and i64 %i.afc, 3
  switch i64 %i.afd, label %default.unreachable [
    i64 2, label %bb.og
    i64 3, label %bb.od
    i64 0, label %bb.og
    i64 1, label %bb.oe
  ], !prof !13

bb.od:                                            ; preds = %bb.oc
  %i.afe = icmp ult ptr %i.afb, inttoptr (i64 188978561024 to ptr)
  %i.aff = and i64 %i.afc, 1095216660480
  %i.afg = icmp ne i64 %i.aff, 1095216660480
  call void @llvm.assume(i1 %i.afe)
  call void @llvm.assume(i1 %i.afg)
  br label %bb.og

bb.oe:                                            ; preds = %bb.oc
  %i.afh = getelementptr i8, ptr %i.afb, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afh) ]
  store ptr %i.afh, ptr %i.po, align 8, !alias.scope !3232, !noalias !3229
  store i8 3, ptr %i.az, align 8, !alias.scope !3232, !noalias !3229
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.po)
          to label %bb.og unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !3037

bb.of:                                            ; preds = %bb.ob, %bb.og, %bb.oa, %bb.mv
  %.sroa.0246.5 = phi i64 [ %.sroa.017.i.sroa.0.0.copyload282, %bb.mv ], [ %.sroa.0.4.ph.i, %bb.oa ], [ 2, %bb.og ], [ -1, %bb.ob ]
  %i.afi = phi <2 x i64> [ %i.ada, %bb.mv ], [ %i.afa, %bb.oa ], [ undef, %bb.og ], [ undef, %bb.ob ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !3034
  br label %bb.md

bb.og:                                            ; preds = %bb.oe, %bb.od, %bb.oc, %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3229
  br label %bb.of

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4phXRVW1pDQ_9dwarfdump.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !3034
  %i.afj = load ptr, ptr %i.dt, align 8, !alias.scope !3235, !noalias !3034, !noundef !6
  %i.afk = icmp eq ptr %i.afj, null
  br i1 %i.afk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit118.i, label %bb.oh

bb.oh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs4phXRVW1pDQ_9dwarfdump.exit.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtBT_4read5dwarf4UnitINtNtB1v_8relocate14RelocateReaderINtNtB1v_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit118.i unwind label %bb.fh, !noalias !3037

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB12_8relocate14RelocateReaderINtNtB12_12endian_slice11EndianSliceNtNtB14_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEEB3o_.exit.invoke.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit93.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB2Z_.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit118.i, %bb.fe
  %.sroa.0246.4 = phi i64 [ %.sroa.0246.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit118.i ], [ %.sroa.0246.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB2Z_.exit.i.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit93.i ], [ %.sroa.01.i.sroa.0.0.copyload277, %bb.fe ] ; 2 uses
  %i.afl = phi <2 x i64> [ %i.sa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit118.i ], [ %i.sa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEEB2Z_.exit.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common5DwoIdINtNtNtB1V_4read5dwarf4UnitINtNtB2x_8relocate14RelocateReaderINtNtB2x_12endian_slice11EndianSliceNtNtB1V_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEEB4C_.exit93.i ], [ %i.rt, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !3034
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsfER1pEaRVit_11typed_arena5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.dy)
          to label %bb.lv unwind label %bb.ez, !noalias !3037

bb.oi:                                            ; preds = %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %.not84 = icmp eq i64 %.sroa.0246.4, -1
  br i1 %.not84, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  store i64 %.sroa.0246.4, ptr %i.ei, align 8
  store <2 x i64> %i.afl, ptr %.sroa.25.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  store ptr %i.ew, ptr %i.eh, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.475.0..sroa_idx, align 8
  store ptr %i.ei, ptr %i.pp, align 8
  store ptr @_RNvXCs4phXRVW1pDQ_9dwarfdumpNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @389, ptr noundef nonnull %i.eh)
          to label %bb.ol unwind label %bb.ex

bb.ok:                                            ; preds = %bb.ol, %bb.oi
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(304) %i.em)
          to label %bb.om unwind label %bb.em

bb.ol:                                            ; preds = %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.ok

bb.om:                                            ; preds = %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %bb.on unwind label %bb.eh

bb.on:                                            ; preds = %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  %i.afm = call noundef i32 @close(i32 noundef %i.qh) #27 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.oy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs4phXRVW1pDQ_9dwarfdump.exit129, %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  %i.afn = icmp eq ptr %i.pz, %i.lz
  br i1 %i.afn, label %._crit_edge, label %bb.ea

bb.oo:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs4phXRVW1pDQ_9dwarfdump.exit129 unwind label %bb.eh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs4phXRVW1pDQ_9dwarfdump.exit129: ; preds = %bb.oo, %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  %i.afo = call noundef i32 @close(i32 noundef %i.qh) #27 ; 0 uses
  br label %.backedge

bb.op:                                            ; preds = %bb.ej
  %i.afp = landingpad { ptr, i32 }
          cleanup
  %.val102 = load ptr, ptr %i.eo, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4phXRVW1pDQ_9dwarfdump(ptr nonnull %.val102) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.bs

bb.oq:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  %.val101 = load ptr, ptr %i.eo, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.afq = ptrtoint ptr %.val101 to i64           ; 2 uses
  %i.afr = and i64 %i.afq, 3
  switch i64 %i.afr, label %default.unreachable [
    i64 2, label %bb.ot
    i64 3, label %bb.or
    i64 0, label %bb.ot
    i64 1, label %bb.os
  ], !prof !13

bb.or:                                            ; preds = %bb.oq
  %i.afs = icmp ult ptr %.val101, inttoptr (i64 188978561024 to ptr)
  %i.aft = and i64 %i.afq, 1095216660480
  %i.afu = icmp ne i64 %i.aft, 1095216660480
  call void @llvm.assume(i1 %i.afs)
  call void @llvm.assume(i1 %i.afu)
  br label %bb.ot

bb.os:                                            ; preds = %bb.oq
  %i.afv = getelementptr i8, ptr %.val101, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afv) ]
  store ptr %i.afv, ptr %i.pv, align 8, !alias.scope !3238
  store i8 3, ptr %i.ay, align 8, !alias.scope !3238
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pv)
          to label %bb.ot unwind label %bb.eh

bb.ot:                                            ; preds = %bb.or, %bb.oq, %bb.oq, %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs4phXRVW1pDQ_9dwarfdump.exit129

bb.ou:                                            ; preds = %bb.ef
  %i.afw = landingpad { ptr, i32 }
          cleanup
  %.val100 = load ptr, ptr %i.es, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4phXRVW1pDQ_9dwarfdump(ptr nonnull %.val100) #21
          to label %bb.dl unwind label %bb.bs

bb.ov:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %.val = load ptr, ptr %i.es, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.afx = ptrtoint ptr %.val to i64              ; 2 uses
  %i.afy = and i64 %i.afx, 3
  switch i64 %i.afy, label %default.unreachable [
    i64 2, label %bb.oy
    i64 3, label %bb.ow
end_hunk_1
