Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.13?download=true
inline.NumInlined: 509
inline.NumDeleted: 257
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend13MemoryBackendEBJ_:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend13MemoryBuilderEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !490, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6config12MemoryConfigEBJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6config12MemoryConfigEBJ_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6config12MemoryConfigEBJ_.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringBC_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit3: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdMEyVxnODSb_10serde_json5value2de11visit_arrayNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBZ_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserialize9___VisitorEB13_(ptr dead_on_unwind noalias nofree noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [16 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 7 uses
  %i.bg = alloca [16 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 7 uses
  %i.bi = alloca [16 x i8], align 8               ; 7 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [16 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 8               ; 7 uses
  %i.br = alloca [16 x i8], align 8               ; 7 uses
  %i.bs = alloca [16 x i8], align 8               ; 7 uses
  %i.bt = alloca [16 x i8], align 8               ; 7 uses
  %i.bu = alloca [16 x i8], align 8               ; 7 uses
  %i.bv = alloca [16 x i8], align 8               ; 7 uses
  %i.bw = alloca [16 x i8], align 8               ; 7 uses
  %i.bx = alloca [16 x i8], align 8               ; 7 uses
  %i.by = alloca [16 x i8], align 8               ; 7 uses
  %i.bz = alloca [16 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 7 uses
  %i.cc = alloca [16 x i8], align 8               ; 7 uses
  %i.cd = alloca [16 x i8], align 8               ; 7 uses
  %i.ce = alloca [16 x i8], align 8               ; 7 uses
  %i.cf = alloca [16 x i8], align 8               ; 7 uses
  %i.cg = alloca [16 x i8], align 8               ; 7 uses
  %i.ch = alloca [16 x i8], align 8               ; 7 uses
  %i.ci = alloca [16 x i8], align 8               ; 7 uses
  %i.cj = alloca [16 x i8], align 8               ; 7 uses
  %i.ck = alloca [16 x i8], align 8               ; 7 uses
  %i.cl = alloca [16 x i8], align 8               ; 7 uses
  %i.cm = alloca [16 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 7 uses
  %i.co = alloca [16 x i8], align 8               ; 7 uses
  %i.cp = alloca [16 x i8], align 8               ; 7 uses
  %i.cq = alloca [16 x i8], align 8               ; 7 uses
  %i.cr = alloca [16 x i8], align 8               ; 7 uses
  %i.cs = alloca [32 x i8], align 8               ; 92 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !4 ; 9 uses
  %i.cv = icmp ult i64 %i.cu, 288230376151711744
  tail call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !4, !noundef !4 ; 16 uses
  %i.cy = load i64, ptr %1, align 8, !range !5, !noundef !4
  %.idx = shl nuw nsw i64 %i.cu, 5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  store ptr %i.cx, ptr %i.cs, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 8 uses
  store ptr %i.cx, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 %i.cy, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  store ptr %i.cz, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.da = icmp eq i64 %i.cu, 0
  br i1 %i.da, label %bb.f, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  store ptr %i.db, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !565, !noalias !566
  %.sroa.0.0.copyload2.i.i.i.i = load i8, ptr %i.cx, align 8, !noalias !567 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.7.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !568
  store i8 %.sroa.0.0.copyload2.i.i.i.i, ptr %i.l, align 8, !noalias !568
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i.i, i64 31, i1 false), !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !568
  invoke void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %.noexc unwind label %bb.mx

.noexc:                                           ; preds = %bb.b
  %i.dc = load i8, ptr %i.k, align 8, !range !14, !noalias !568, !noundef !4
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !568, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !568
  br label %.noexc8

bb.d:                                             ; preds = %.noexc
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !range !14, !noalias !568, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !568
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.di = icmp eq i64 %i.cu, 1
  br i1 %i.di, label %bb.j, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i725.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i725.i: ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 2 uses
  store ptr %i.dj, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !573, !noalias !574
  %.sroa.0.0.copyload2.i.i.i726.i = load i8, ptr %i.db, align 8, !noalias !575 ; 2 uses
  %.not.i.i.i727.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i726.i, -1
  br i1 %.not.i.i.i727.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i725.i
  %.sroa.7.0..sroa_idx3.i.i.i728.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !576
  store i8 %.sroa.0.0.copyload2.i.i.i726.i, ptr %i.j, align 8, !noalias !576
  %.sroa.7.0..sroa_idx.i.i.i729.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i729.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i728.i, i64 31, i1 false), !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !576
  invoke void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %.noexc7 unwind label %bb.mx

.noexc7:                                          ; preds = %bb.e
  %i.dk = load i8, ptr %i.i, align 8, !range !14, !noalias !576, !noundef !4
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.g, label %bb.h

bb.f:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %bb.a
  %i.dm = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 0, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc8 unwind label %bb.mx

.noexc8:                                          ; preds = %bb.f, %bb.c
  %.sink.i = phi ptr [ %i.df, %bb.c ], [ %i.dm, %bb.f ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.dn, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.g:                                             ; preds = %.noexc7
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !576, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !576
  br label %.noexc10

bb.h:                                             ; preds = %.noexc7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !range !14, !noalias !576, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !576
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.ds = icmp eq i64 %i.cu, 2
  br i1 %i.ds, label %bb.n, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i733.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i733.i: ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 96 ; 2 uses
  store ptr %i.dt, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !581, !noalias !582
  %.sroa.0.0.copyload2.i.i.i734.i = load i8, ptr %i.dj, align 8, !noalias !583 ; 2 uses
  %.not.i.i.i735.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i734.i, -1
  br i1 %.not.i.i.i735.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i733.i
  %.sroa.7.0..sroa_idx3.i.i.i736.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !584
  store i8 %.sroa.0.0.copyload2.i.i.i734.i, ptr %i.h, align 8, !noalias !584
  %.sroa.7.0..sroa_idx.i.i.i737.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i737.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i736.i, i64 31, i1 false), !noalias !585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !584
  invoke void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %.noexc9 unwind label %bb.mx

.noexc9:                                          ; preds = %bb.i
  %i.du = load i8, ptr %i.g, align 8, !range !14, !noalias !584, !noundef !4
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i725.i, %bb.d
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 1, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc10 unwind label %bb.mx

.noexc10:                                         ; preds = %bb.j, %bb.g
  %.sink948.i = phi ptr [ %i.dp, %bb.g ], [ %i.dw, %bb.j ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink948.i, ptr %i.dx, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.k:                                             ; preds = %.noexc9
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !584, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !584
  br label %.noexc12

bb.l:                                             ; preds = %.noexc9
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !range !14, !noalias !584, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !584
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.ec = icmp eq i64 %i.cu, 3
  br i1 %i.ec, label %bb.r, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i741.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i741.i: ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cx, i64 128 ; 2 uses
  store ptr %i.ed, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !589, !noalias !590
  %.sroa.0.0.copyload2.i.i.i742.i = load i8, ptr %i.dt, align 8, !noalias !591 ; 2 uses
  %.not.i.i.i743.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i742.i, -1
  br i1 %.not.i.i.i743.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i741.i
  %.sroa.7.0..sroa_idx3.i.i.i744.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !592
  store i8 %.sroa.0.0.copyload2.i.i.i742.i, ptr %i.f, align 8, !noalias !592
  %.sroa.7.0..sroa_idx.i.i.i745.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i745.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i744.i, i64 31, i1 false), !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !592
  invoke void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc11 unwind label %bb.mx

.noexc11:                                         ; preds = %bb.m
  %i.ee = load i8, ptr %i.e, align 8, !range !14, !noalias !592, !noundef !4
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i733.i, %bb.h
  %i.eg = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 2, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc12 unwind label %bb.mx

.noexc12:                                         ; preds = %bb.n, %bb.k
  %.sink950.i = phi ptr [ %i.dz, %bb.k ], [ %i.eg, %bb.n ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink950.i, ptr %i.eh, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.o:                                             ; preds = %.noexc11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !592, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !592
  br label %.noexc14

bb.p:                                             ; preds = %.noexc11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !range !14, !noalias !592, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !592
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.em = icmp eq i64 %i.cu, 4
  br i1 %i.em, label %bb.v, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i749.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i749.i: ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 160 ; 2 uses
  store ptr %i.en, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !597, !noalias !598
  %.sroa.0.0.copyload2.i.i.i750.i = load i8, ptr %i.ed, align 8, !noalias !599 ; 2 uses
  %.not.i.i.i751.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i750.i, -1
  br i1 %.not.i.i.i751.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i749.i
  %.sroa.7.0..sroa_idx3.i.i.i752.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !600
  store i8 %.sroa.0.0.copyload2.i.i.i750.i, ptr %i.d, align 8, !noalias !600
  %.sroa.7.0..sroa_idx.i.i.i753.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i753.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i752.i, i64 31, i1 false), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !600
  invoke void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc13 unwind label %bb.mx

.noexc13:                                         ; preds = %bb.q
  %i.eo = load i8, ptr %i.c, align 8, !range !14, !noalias !600, !noundef !4
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.s, label %bb.t

bb.r:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i741.i, %bb.l
  %i.eq = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 3, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc14 unwind label %bb.mx

.noexc14:                                         ; preds = %bb.r, %bb.o
  %.sink952.i = phi ptr [ %i.ej, %bb.o ], [ %i.eq, %bb.r ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink952.i, ptr %i.er, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.s:                                             ; preds = %.noexc13
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !noalias !600, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !600
  br label %.noexc16

bb.t:                                             ; preds = %.noexc13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !range !14, !noalias !600, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !600
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.ew = icmp eq i64 %i.cu, 5
  br i1 %i.ew, label %bb.y, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i757.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i757.i: ; preds = %bb.t
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cx, i64 192
  store ptr %i.ex, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !605, !noalias !606
  %.sroa.0.0.copyload2.i.i.i758.i = load i8, ptr %i.en, align 8, !noalias !607 ; 2 uses
  %.not.i.i.i759.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i758.i, -1
  br i1 %.not.i.i.i759.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i757.i
  %.sroa.7.0..sroa_idx3.i.i.i760.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !608
  store i8 %.sroa.0.0.copyload2.i.i.i758.i, ptr %i.b, align 8, !noalias !608
  %.sroa.7.0..sroa_idx.i.i.i761.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i761.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i760.i, i64 31, i1 false), !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !608
  invoke void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc15 unwind label %bb.mx

.noexc15:                                         ; preds = %bb.u
  %i.ey = load i8, ptr %i.a, align 8, !range !14, !noalias !608, !noundef !4
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %bb.x

bb.v:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i749.i, %bb.p
  %i.fa = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 4, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc16 unwind label %bb.mx

.noexc16:                                         ; preds = %bb.v, %bb.s
  %.sink954.i = phi ptr [ %i.et, %bb.s ], [ %i.fa, %bb.v ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink954.i, ptr %i.fb, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.w:                                             ; preds = %.noexc15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !608, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !608
  br label %.noexc18

bb.x:                                             ; preds = %.noexc15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !range !14, !noalias !608, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !610
  invoke fastcc void @_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cr, ptr nonnull align 8 dereferenceable(32) %i.cs)
          to label %.noexc17 unwind label %bb.mx

.noexc17:                                         ; preds = %bb.x
  %i.fg = load i8, ptr %i.cr, align 8, !range !14, !noalias !610, !noundef !4
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i757.i, %bb.t
  %i.fi = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 5, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc18 unwind label %bb.mx

.noexc18:                                         ; preds = %bb.y, %bb.w
  %.sink956.i = phi ptr [ %i.fd, %bb.w ], [ %i.fi, %bb.y ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink956.i, ptr %i.fj, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.z:                                             ; preds = %.noexc17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !610, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !610
  br label %.noexc20

bb.aa:                                            ; preds = %.noexc17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !range !16, !noalias !610, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !610
  %.not552.i = icmp eq i8 %i.fn, 2
  br i1 %.not552.i, label %bb.ac, label %bb.ab, !prof !19

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !610
  invoke fastcc void @_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cq, ptr nonnull align 8 dereferenceable(32) %i.cs)
          to label %.noexc19 unwind label %bb.mx

.noexc19:                                         ; preds = %bb.ab
  %i.fo = load i8, ptr %i.cq, align 8, !range !14, !noalias !610, !noundef !4
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.fq = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 6, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc20 unwind label %bb.mx

.noexc20:                                         ; preds = %bb.ac, %bb.z
  %.sink958.i = phi ptr [ %i.fl, %bb.z ], [ %i.fq, %bb.ac ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink958.i, ptr %i.fr, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.ad:                                            ; preds = %.noexc19
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !610, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !610
  br label %.noexc22

bb.ae:                                            ; preds = %.noexc19
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !range !16, !noalias !610, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !610
  %.not553.i = icmp eq i8 %i.fv, 2
  br i1 %.not553.i, label %bb.ag, label %bb.af, !prof !19

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !610
  invoke fastcc void @_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cp, ptr nonnull align 8 dereferenceable(32) %i.cs)
          to label %.noexc21 unwind label %bb.mx

.noexc21:                                         ; preds = %bb.af
  %i.fw = load i8, ptr %i.cp, align 8, !range !14, !noalias !610, !noundef !4
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fy = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 7, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc22 unwind label %bb.mx

.noexc22:                                         ; preds = %bb.ag, %bb.ad
  %.sink960.i = phi ptr [ %i.ft, %bb.ad ], [ %i.fy, %bb.ag ]
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink960.i, ptr %i.fz, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.ah:                                            ; preds = %.noexc21
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !610, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !610
  br label %.noexc24

bb.ai:                                            ; preds = %.noexc21
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !range !16, !noalias !610, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !610
  %.not554.i = icmp eq i8 %i.gd, 2
  br i1 %.not554.i, label %bb.ak, label %bb.aj, !prof !19

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !610
  invoke fastcc void @_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.co, ptr nonnull align 8 dereferenceable(32) %i.cs)
          to label %.noexc23 unwind label %bb.mx

.noexc23:                                         ; preds = %bb.aj
  %i.ge = load i8, ptr %i.co, align 8, !range !14, !noalias !610, !noundef !4
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.gg = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 8, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc24 unwind label %bb.mx

.noexc24:                                         ; preds = %bb.ak, %bb.ah
  %.sink962.i = phi ptr [ %i.gb, %bb.ah ], [ %i.gg, %bb.ak ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink962.i, ptr %i.gh, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.al:                                            ; preds = %.noexc23
  %i.gi = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !610, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !610
  br label %.noexc26

bb.am:                                            ; preds = %.noexc23
  %i.gk = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !range !16, !noalias !610, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !610
  %.not555.i = icmp eq i8 %i.gl, 2
  br i1 %.not555.i, label %bb.ao, label %bb.an, !prof !19

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !610
  invoke fastcc void @_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.cn, ptr nonnull align 8 dereferenceable(32) %i.cs)
          to label %.noexc25 unwind label %bb.mx

.noexc25:                                         ; preds = %bb.an
  %i.gm = load i8, ptr %i.cn, align 8, !range !14, !noalias !610, !noundef !4
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.go = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef 9, ptr noundef nonnull @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.noexc26 unwind label %bb.mx

.noexc26:                                         ; preds = %bb.ao, %bb.al
  %.sink964.i = phi ptr [ %i.gj, %bb.al ], [ %i.go, %bb.ao ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink964.i, ptr %i.gp, align 8, !alias.scope !560, !noalias !561
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split275

bb.ap:                                            ; preds = %.noexc25
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !610, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !610
  br label %.noexc28

bb.aq:                                            ; preds = %.noexc25
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !range !16, !noalias !610, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !610
  %.not556.i = icmp eq i8 %i.gt, 2
  br i1 %.not556.i, label %bb.as, label %bb.ar, !prof !19

bb.ar:                                            ; preds = %bb.aq
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!367 = distinct !{!367, !366, !"_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!368 = !{!365}
!369 = !{!367}
!370 = !{!367, !365}
!371 = distinct !{!371, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_"}
!372 = distinct !{!372, !371, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_: argument 0"}
!373 = distinct !{!373, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_"}
!374 = distinct !{!374, !373, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_: argument 0"}
!375 = !{!372}
!376 = !{!374}
!377 = !{!374, !372}
!378 = distinct !{!378, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_"}
!379 = distinct !{!379, !378, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_: argument 0"}
!380 = distinct !{!380, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!381 = distinct !{!381, !380, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!382 = distinct !{!382, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!383 = distinct !{!383, !382, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!384 = distinct !{!384, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!385 = distinct !{!385, !384, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!386 = distinct !{!386, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!387 = distinct !{!387, !386, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!388 = distinct !{!388, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_"}
!389 = distinct !{!389, !388, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_: argument 0"}
!390 = distinct !{!390, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_"}
!391 = distinct !{!391, !390, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_: argument 0"}
!392 = distinct !{!392, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECs5XgW7KoffLW_12opendal_core"}
!393 = distinct !{!393, !392, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECs5XgW7KoffLW_12opendal_core: argument 0"}
!394 = distinct !{!394, !"_RNvXs1_NtCsk2Y6yuwWMc1_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop"}
!395 = distinct !{!395, !394, !"_RNvXs1_NtCsk2Y6yuwWMc1_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop: argument 0"}
!396 = distinct !{ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_, null, null, null}
!397 = distinct !{!397, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECs5XgW7KoffLW_12opendal_core"}
!398 = distinct !{!398, !397, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECs5XgW7KoffLW_12opendal_core: argument 0"}
!399 = distinct !{!399, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!400 = distinct !{!400, !399, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!401 = !{!379}
!402 = !{!381}
!403 = !{!383}
!404 = !{!383, !381, !379}
!405 = !{!387, !385, !383, !381, !379}
!406 = !{!389}
!407 = !{!391}
!408 = !{!391, !389}
!409 = !{!393}
!410 = !{!395}
!411 = !{!395, !393, !391, !389}
!412 = !{!400, !398, !391, !389}
!413 = distinct !{!413, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_"}
!414 = distinct !{!414, !413, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_: argument 0"}
!415 = distinct !{!415, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_"}
!416 = distinct !{!416, !415, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_: argument 0"}
!417 = distinct !{!417, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops7OpWriteEBH_"}
!418 = distinct !{!418, !417, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops7OpWriteEBH_: argument 0"}
!419 = distinct !{!419, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!420 = distinct !{!420, !419, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!421 = distinct !{!421, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!422 = distinct !{!422, !421, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!423 = distinct !{!423, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!424 = distinct !{!424, !423, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!425 = distinct !{!425, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!426 = distinct !{!426, !425, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!427 = distinct !{!427, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops7OpWriteEBH_"}
!428 = distinct !{!428, !427, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops7OpWriteEBH_: argument 0"}
!429 = distinct !{!429, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!430 = distinct !{!430, !429, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!431 = distinct !{!431, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!432 = distinct !{!432, !431, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!433 = distinct !{!433, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!434 = distinct !{!434, !433, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!435 = distinct !{!435, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!436 = distinct !{!436, !435, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!437 = distinct !{!437, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio3buf9queue_buf8QueueBufEEB17_"}
!438 = distinct !{!438, !437, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio3buf9queue_buf8QueueBufEEB17_: argument 0"}
!439 = !{!414}
!440 = !{!416}
!441 = !{!416, !414}
!442 = !{!418}
!443 = !{!420}
!444 = !{!422}
!445 = !{!422, !420, !418}
!446 = !{!426, !424, !422, !420, !418}
!447 = !{!428}
!448 = !{!430}
!449 = !{!432}
!450 = !{!432, !430, !428}
!451 = !{!436, !434, !432, !430, !428}
!452 = !{!438}
!453 = distinct !{!453, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_"}
!454 = distinct !{!454, !453, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreEEB1g_: argument 0"}
!455 = distinct !{!455, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_"}
!456 = distinct !{!456, !455, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_: argument 0"}
!457 = distinct !{!457, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor11ServiceInfoEBH_"}
!458 = distinct !{!458, !457, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor11ServiceInfoEBH_: argument 0"}
!459 = distinct !{!459, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core"}
!460 = distinct !{!460, !459, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core: argument 0"}
!461 = distinct !{!461, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!462 = distinct !{!462, !461, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!463 = distinct !{!463, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core"}
!464 = distinct !{!464, !463, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core: argument 0"}
!465 = distinct !{!465, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!466 = distinct !{!466, !465, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!467 = distinct !{!467, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core"}
!468 = distinct !{!468, !467, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core: argument 0"}
!469 = distinct !{!469, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!470 = distinct !{!470, !469, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!471 = !{!454}
!472 = !{!456}
!473 = !{!456, !454}
!474 = !{!458}
!475 = !{!460}
!476 = !{!462}
!477 = !{!462, !460, !458}
!478 = !{!464}
!479 = !{!466}
!480 = !{!466, !464, !458}
!481 = !{!466, !464}
!482 = !{!468}
!483 = !{!470}
!484 = !{!470, !468, !458}
!485 = !{!470, !468}
!486 = distinct !{!486, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6config12MemoryConfigEBJ_"}
!487 = distinct !{!487, !486, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory6config12MemoryConfigEBJ_: argument 0"}
!488 = distinct !{!488, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!489 = distinct !{!489, !488, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!490 = !{!489, !487}
!491 = distinct !{!491, !"_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_"}
!492 = distinct !{!492, !491, !"_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_: argument 0"}
!493 = distinct !{!493, !491, !"_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_: argument 1"}
!494 = distinct !{!494, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!495 = distinct !{!495, !494, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 1"}
!496 = distinct !{!496, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core"}
!497 = distinct !{!497, !496, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 1"}
!498 = distinct !{!498, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!499 = distinct !{!499, !498, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!500 = distinct !{!500, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!501 = distinct !{!501, !500, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!502 = distinct !{!502, !494, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!503 = distinct !{!503, !496, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 0"}
!504 = distinct !{!504, !498, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!505 = distinct !{!505, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!506 = distinct !{!506, !505, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 1"}
!507 = distinct !{!507, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core"}
!508 = distinct !{!508, !507, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 1"}
!509 = distinct !{!509, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!510 = distinct !{!510, !509, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!511 = distinct !{!511, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!512 = distinct !{!512, !511, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!513 = distinct !{!513, !505, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!514 = distinct !{!514, !507, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 0"}
!515 = distinct !{!515, !509, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!516 = distinct !{!516, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!517 = distinct !{!517, !516, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 1"}
!518 = distinct !{!518, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core"}
!519 = distinct !{!519, !518, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 1"}
!520 = distinct !{!520, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!521 = distinct !{!521, !520, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!522 = distinct !{!522, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!523 = distinct !{!523, !522, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!524 = distinct !{!524, !516, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!525 = distinct !{!525, !518, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 0"}
!526 = distinct !{!526, !520, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!527 = distinct !{!527, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!528 = distinct !{!528, !527, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 1"}
!529 = distinct !{!529, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core"}
!530 = distinct !{!530, !529, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 1"}
!531 = distinct !{!531, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!532 = distinct !{!532, !531, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!533 = distinct !{!533, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!534 = distinct !{!534, !533, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!535 = distinct !{!535, !527, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!536 = distinct !{!536, !529, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 0"}
!537 = distinct !{!537, !531, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!538 = distinct !{!538, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!539 = distinct !{!539, !538, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 1"}
!540 = distinct !{!540, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core"}
!541 = distinct !{!541, !540, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 1"}
!542 = distinct !{!542, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!543 = distinct !{!543, !542, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!544 = distinct !{!544, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!545 = distinct !{!545, !544, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!546 = distinct !{!546, !538, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!547 = distinct !{!547, !540, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 0"}
!548 = distinct !{!548, !542, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!549 = distinct !{!549, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!550 = distinct !{!550, !549, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 1"}
!551 = distinct !{!551, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core"}
!552 = distinct !{!552, !551, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 1"}
!553 = distinct !{!553, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!554 = distinct !{!554, !553, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!555 = distinct !{!555, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!556 = distinct !{!556, !555, !"_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!557 = distinct !{!557, !549, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!558 = distinct !{!558, !551, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 0"}
!559 = distinct !{!559, !553, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!560 = !{!492}
!561 = !{!493}
!562 = !{!495}
!563 = !{!497}
!564 = !{!499}
!565 = !{!499, !497, !495, !493}
!566 = !{!504, !503, !502, !501, !492}
!567 = !{!499, !503, !497, !502, !495, !501, !493}
!568 = !{!503, !497, !502, !495, !501, !492, !493}
!569 = !{!503, !497, !502, !495, !501, !493}
!570 = !{!506}
!571 = !{!508}
!572 = !{!510}
!573 = !{!510, !508, !506, !493}
!574 = !{!515, !514, !513, !512, !492}
!575 = !{!510, !514, !508, !513, !506, !512, !493}
!576 = !{!514, !508, !513, !506, !512, !492, !493}
!577 = !{!514, !508, !513, !506, !512, !493}
!578 = !{!517}
!579 = !{!519}
!580 = !{!521}
!581 = !{!521, !519, !517, !493}
!582 = !{!526, !525, !524, !523, !492}
!583 = !{!521, !525, !519, !524, !517, !523, !493}
!584 = !{!525, !519, !524, !517, !523, !492, !493}
!585 = !{!525, !519, !524, !517, !523, !493}
!586 = !{!528}
!587 = !{!530}
!588 = !{!532}
!589 = !{!532, !530, !528, !493}
!590 = !{!537, !536, !535, !534, !492}
!591 = !{!532, !536, !530, !535, !528, !534, !493}
!592 = !{!536, !530, !535, !528, !534, !492, !493}
!593 = !{!536, !530, !535, !528, !534, !493}
!594 = !{!539}
!595 = !{!541}
!596 = !{!543}
!597 = !{!543, !541, !539, !493}
!598 = !{!548, !547, !546, !545, !492}
!599 = !{!543, !547, !541, !546, !539, !545, !493}
!600 = !{!547, !541, !546, !539, !545, !492, !493}
!601 = !{!547, !541, !546, !539, !545, !493}
!602 = !{!550}
!603 = !{!552}
!604 = !{!554}
!605 = !{!554, !552, !550, !493}
!606 = !{!559, !558, !557, !556, !492}
!607 = !{!554, !558, !552, !557, !550, !556, !493}
!608 = !{!558, !552, !557, !550, !556, !492, !493}
!609 = !{!558, !552, !557, !550, !556, !493}
!610 = !{!492, !493}
!611 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!612 = distinct !{!612, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs5XgW7KoffLW_12opendal_core"}
!613 = distinct !{!613, !612, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs5XgW7KoffLW_12opendal_core: argument 0"}
!614 = distinct !{!614, !612, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs5XgW7KoffLW_12opendal_core: argument 1"}
!615 = distinct !{!615, !"LVerDomain"}
!616 = distinct !{!616, !615}
!617 = distinct !{!617, !615}
!618 = distinct !{!618, !20, !21}
!619 = distinct !{!619, !612, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs5XgW7KoffLW_12opendal_core: argument 0:It1"}
!620 = distinct !{!620, !612, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs5XgW7KoffLW_12opendal_core: argument 1:It1"}
!621 = distinct !{!621, !20}
!622 = !{!613}
!623 = !{!614}
!624 = !{!613, !616}
!625 = !{!614, !617}
!626 = !{!619}
!627 = !{!620}
!628 = distinct !{!628, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core"}
!629 = distinct !{!629, !628, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core: argument 0"}
!630 = distinct !{!630, !628, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core: argument 1"}
!631 = distinct !{!631, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDataINtNtB2a_6option6OptionjEEECs5XgW7KoffLW_12opendal_core"}
!632 = distinct !{!632, !631, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDataINtNtB2a_6option6OptionjEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!633 = distinct !{!633, !631, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDataINtNtB2a_6option6OptionjEEECs5XgW7KoffLW_12opendal_core: argument 1"}
!634 = distinct !{!634, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!635 = distinct !{!635, !634, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!636 = distinct !{!636, !634, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!637 = !{!629}
!638 = !{!630}
!639 = !{!632}
!640 = !{!633}
!641 = !{!635}
!642 = !{!635, !633, !630}
!643 = !{!636, !632, !629}
!644 = !{!635, !632, !633, !629, !630}
!645 = !{!632, !633, !629, !630}
!646 = !{!632, !629}
!647 = !{!633, !630}
!648 = distinct !{!648, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core"}
!649 = distinct !{!649, !648, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 0"}
!650 = distinct !{!650, !648, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core: argument 1"}
!651 = distinct !{!651, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core"}
!652 = distinct !{!652, !651, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 0"}
!653 = distinct !{!653, !651, !"_RINvXs8_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatabEECs5XgW7KoffLW_12opendal_core: argument 1"}
!654 = distinct !{!654, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core"}
!655 = distinct !{!655, !654, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 1"}
!656 = distinct !{!656, !654, !"_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core: argument 0"}
!657 = !{!649}
!658 = !{!650}
!659 = !{!652}
!660 = !{!653}
!661 = !{!655}
!662 = !{!655, !653, !650}
!663 = !{!656, !652, !649}
!664 = !{!655, !652, !653, !649, !650}
!665 = !{!652, !653, !649, !650}
!666 = !{!652, !649}
!667 = !{!653, !650}
!668 = distinct !{!668, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldTNtNtCs6i54tJFfzR_5alloc6string6StringB10_EBZ_INtNtNtB14_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB32_11OperatorUri3newINtB1O_3VecBZ_EE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0B38_"}
!669 = distinct !{!669, !668, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldTNtNtCs6i54tJFfzR_5alloc6string6StringB10_EBZ_INtNtNtB14_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB32_11OperatorUri3newINtB1O_3VecBZ_EE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0B38_: argument 0"}
!670 = distinct !{!670, !"_RNCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB5_11OperatorUri3newINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB1n_6string6StringB1P_EEE0Bb_"}
!671 = distinct !{!671, !670, !"_RNCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB5_11OperatorUri3newINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB1n_6string6StringB1P_EEE0Bb_: argument 1"}
!672 = distinct !{!672, !670, !"_RNCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB5_11OperatorUri3newINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB1n_6string6StringB1P_EEE0Bb_: argument 0"}
!673 = distinct !{!673, !"_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase"}
!674 = distinct !{!674, !673, !"_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase: argument 1"}
!675 = distinct !{!675, !673, !"_RNvMs3_NtCs6i54tJFfzR_5alloc3stre18to_ascii_lowercase: argument 0"}
!676 = distinct !{!676, !"_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5XgW7KoffLW_12opendal_core"}
!677 = distinct !{!677, !676, !"_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5XgW7KoffLW_12opendal_core: argument 1"}
!678 = distinct !{!678, !676, !"_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5XgW7KoffLW_12opendal_core: argument 0"}
!679 = distinct !{!679, !"_RNvMNtCsgxBkk5gSRhY_4core3stre20make_ascii_lowercase"}
!680 = distinct !{!680, !679, !"_RNvMNtCsgxBkk5gSRhY_4core3stre20make_ascii_lowercase: argument 0"}
!681 = distinct !{!681, !20, !21}
!682 = distinct !{!682, !20, !21}
!683 = distinct !{!683, !21, !20}
!684 = !{!669}
!685 = !{!672, !671, !669}
!686 = !{!678, !677, !675, !674, !672, !671, !669}
!687 = !{!678, !675, !672, !671, !669}
!688 = !{!680}
!689 = !{!675, !674, !672, !671, !669}
!690 = !{!"branch_weights", i32 8, i32 24}
!691 = distinct !{!691, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core"}
!692 = distinct !{!692, !691, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core: argument 0"}
!693 = distinct !{!693, !"_RINvXs3_NtCskkYVyhWgx5W_10serde_core2deINtNtCsgxBkk5gSRhY_4core6marker11PhantomDataNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB1q_10CapabilityNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeNtNtNtCsdMEyVxnODSb_10serde_json5value2de18MapKeyDeserializerEB1u_"}
!694 = distinct !{!694, !693, !"_RINvXs3_NtCskkYVyhWgx5W_10serde_core2deINtNtCsgxBkk5gSRhY_4core6marker11PhantomDataNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB1q_10CapabilityNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeNtNtNtCsdMEyVxnODSb_10serde_json5value2de18MapKeyDeserializerEB1u_: argument 1"}
!695 = distinct !{!695, !693, !"_RINvXs3_NtCskkYVyhWgx5W_10serde_core2deINtNtCsgxBkk5gSRhY_4core6marker11PhantomDataNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB1q_10CapabilityNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeNtNtNtCsdMEyVxnODSb_10serde_json5value2de18MapKeyDeserializerEB1u_: argument 0"}
!696 = distinct !{!696, !"_RINvXs_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBa_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1k_11deserializeNtNtNtCsdMEyVxnODSb_10serde_json5value2de18MapKeyDeserializerEBe_"}
!697 = distinct !{!697, !696, !"_RINvXs_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBa_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1k_11deserializeNtNtNtCsdMEyVxnODSb_10serde_json5value2de18MapKeyDeserializerEBe_: argument 1"}
!698 = distinct !{!698, !696, !"_RINvXs_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBa_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1k_11deserializeNtNtNtCsdMEyVxnODSb_10serde_json5value2de18MapKeyDeserializerEBe_: argument 0"}
!699 = distinct !{!699, !"_RINvXsj_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_18MapKeyDeserializerNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer22deserialize_identifierNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB2o_10CapabilityNtB1a_11Deserialize11deserialize14___FieldVisitorEB2s_"}
!700 = distinct !{!700, !699, !"_RINvXsj_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_18MapKeyDeserializerNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer22deserialize_identifierNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB2o_10CapabilityNtB1a_11Deserialize11deserialize14___FieldVisitorEB2s_: argument 1"}
!701 = distinct !{!701, !699, !"_RINvXsj_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_18MapKeyDeserializerNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer22deserialize_identifierNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB2o_10CapabilityNtB1a_11Deserialize11deserialize14___FieldVisitorEB2s_: argument 0"}
!702 = distinct !{!702, !"_RINvXso_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_26BorrowedCowStrDeserializerNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB2p_10CapabilityNtB1i_11Deserialize11deserialize14___FieldVisitorEB2t_"}
!703 = distinct !{!703, !702, !"_RINvXso_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_26BorrowedCowStrDeserializerNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB2p_10CapabilityNtB1i_11Deserialize11deserialize14___FieldVisitorEB2t_: argument 1"}
!704 = distinct !{!704, !702, !"_RINvXso_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB6_26BorrowedCowStrDeserializerNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB2p_10CapabilityNtB1i_11Deserialize11deserialize14___FieldVisitorEB2t_: argument 0"}
!705 = distinct !{!705, !"_RINvYNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBa_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor12visit_stringNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEBe_"}
!706 = distinct !{!706, !705, !"_RINvYNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBa_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor12visit_stringNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEBe_: argument 1"}
!707 = distinct !{!707, !705, !"_RINvYNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBa_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor12visit_stringNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEBe_: argument 0"}
!708 = !{i8 -1, i8 6}
!709 = !{!692}
!710 = !{!704, !703, !701, !700, !698, !697, !695, !694}
!711 = !{!704, !701, !698, !695}
!712 = !{!706, !703, !700, !697, !694}
!713 = !{!707, !704, !703, !701, !700, !698, !697, !695, !694}
!714 = !{i8 0, i8 90}
!715 = distinct !{!715, !"_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EE4takeB1q_"}
!716 = distinct !{!716, !715, !"_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EE4takeB1q_: argument 0"}
!717 = distinct !{!717, !"_RNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ReadDynEL_ENtB7_4Read4read0Bf_"}
!718 = distinct !{!718, !717, !"_RNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ReadDynEL_ENtB7_4Read4read0Bf_: argument 1"}
!719 = distinct !{!719, !717, !"_RNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ReadDynEL_ENtB7_4Read4read0Bf_: argument 0"}
!720 = !{!716}
!721 = !{!719, !718}
!722 = !{!719}
!723 = !{!718}
!724 = distinct !{!724, !"_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtB4_15ConcurrentTasksNtNtNtNtB8_5types4read13buffer_stream16ChunkedReadInputNtNtB1l_6buffer6BufferE13has_remainingB8_"}
!725 = distinct !{!725, !724, !"_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtB4_15ConcurrentTasksNtNtNtNtB8_5types4read13buffer_stream16ChunkedReadInputNtNtB1l_6buffer6BufferE13has_remainingB8_: argument 0"}
!726 = distinct !{!726, !"_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1b_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1b_6buffer6BufferNtNtB1b_5error5ErrorEEEE9front_mutB1d_"}
!727 = distinct !{!727, !726, !"_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1b_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1b_6buffer6BufferNtNtB1b_5error5ErrorEEEE9front_mutB1d_: argument 0"}
!728 = distinct !{!728, !"_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1b_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1b_6buffer6BufferNtNtB1b_5error5ErrorEEEE9front_mutB1d_"}
!729 = distinct !{!729, !728, !"_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtB1b_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1b_6buffer6BufferNtNtB1b_5error5ErrorEEEE9front_mutB1d_: argument 0"}
!730 = distinct !{!730, !"_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3apiINtB4_4TaskTNtNtNtB8_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB8_6buffer6BufferNtNtB8_5error5ErrorEEE7replaceBa_"}
!731 = distinct !{!731, !730, !"_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3apiINtB4_4TaskTNtNtNtB8_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB8_6buffer6BufferNtNtB8_5error5ErrorEEE7replaceBa_: argument 0"}
!732 = !{!725}
!733 = !{!727}
!734 = !{!729}
!735 = !{!731}
!736 = distinct !{!736, !"_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtB1e_5types5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1e_"}
!737 = distinct !{!737, !736, !"_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtB1e_5types5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1e_: argument 0"}
!738 = distinct !{!738, !736, !"_RNvXsp_NtCsgxBkk5gSRhY_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtB1e_5types5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1e_: argument 1"}
!739 = distinct !{!739, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_"}
!740 = distinct !{!740, !739, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_: argument 0"}
!741 = distinct !{!741, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_"}
!742 = distinct !{!742, !741, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_: argument 0"}
!743 = distinct !{!743, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECs5XgW7KoffLW_12opendal_core"}
!744 = distinct !{!744, !743, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesECs5XgW7KoffLW_12opendal_core: argument 0"}
!745 = distinct !{!745, !"_RNvXs1_NtCsk2Y6yuwWMc1_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop"}
!746 = distinct !{!746, !745, !"_RNvXs1_NtCsk2Y6yuwWMc1_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop: argument 0"}
!747 = distinct !{!747, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECs5XgW7KoffLW_12opendal_core"}
!748 = distinct !{!748, !747, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECs5XgW7KoffLW_12opendal_core: argument 0"}
!749 = distinct !{!749, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!750 = distinct !{!750, !749, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!751 = distinct !{!751, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_"}
!752 = distinct !{!752, !751, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_: argument 0"}
!753 = distinct !{!753, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!754 = distinct !{!754, !753, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!755 = distinct !{!755, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!756 = distinct !{!756, !755, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!757 = distinct !{!757, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!758 = distinct !{!758, !757, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!759 = distinct !{!759, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!760 = distinct !{!760, !759, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!761 = distinct !{!761, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_"}
!762 = distinct !{!762, !761, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_: argument 0"}
!763 = distinct !{!763, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!764 = distinct !{!764, !763, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!765 = distinct !{!765, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!766 = distinct !{!766, !765, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!767 = distinct !{!767, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!768 = distinct !{!768, !767, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!769 = distinct !{!769, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!770 = distinct !{!770, !769, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!771 = distinct !{!771, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_"}
!772 = distinct !{!772, !771, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_: argument 0"}
!773 = distinct !{!773, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!774 = distinct !{!774, !773, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!775 = distinct !{!775, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!776 = distinct !{!776, !775, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!777 = distinct !{!777, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!778 = distinct !{!778, !777, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!779 = distinct !{!779, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!780 = distinct !{!780, !779, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!781 = !{!737}
!782 = !{!738}
!783 = !{!737, !738}
!784 = !{!740}
!785 = !{!742}
!786 = !{!742, !740}
!787 = !{!744}
!788 = !{!746}
!789 = !{!746, !744, !742, !740}
!790 = !{!750, !748, !742, !740}
!791 = !{!752}
!792 = !{!754}
!793 = !{!756}
!794 = !{!756, !754, !752}
!795 = !{!760, !758, !756, !754, !752}
!796 = !{!762}
!797 = !{!764}
!798 = !{!766}
!799 = !{!766, !764, !762}
!800 = !{!770, !768, !766, !764, !762}
!801 = !{!772}
!802 = !{!774}
!803 = !{!776}
!804 = !{!776, !774, !772}
!805 = !{!780, !778, !776, !774, !772}
!806 = distinct !{!806, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpPresignEBH_"}
!807 = distinct !{!807, !806, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpPresignEBH_: argument 0"}
!808 = distinct !{!808, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_"}
!809 = distinct !{!809, !808, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_: argument 0"}
end_hunk_1
