Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.08?download=true
inline.NumInlined: 2151
inline.NumDeleted: 1036
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCshxhuDJfZv4T_6fontbe4colr12to_colr_line:bb.a
  %i.r = bitcast float %i.q to i32
  %.not = icmp sgt i32 %i.r, -1
  %i.s = uitofp i1 %.not to float
  %i.t = fadd float %i.s, -5.000000e-01
  %i.u = fmul float %i.q, 1.638400e+04
  %i.v = fadd float %i.u, %i.t
  %i.w = call i16 @llvm.fptosi.sat.i16.f32(float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.056, i64 4
  %.sroa.019.0.copyload = load i32, ptr %i.x, align 4 ; 2 uses
  %i.y = invoke { i64, i64 } @_RNvMsu_NtCs3v5ql5U6hxj_6fontir2irNtB5_13ColorPalettes8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i32 noundef %.sroa.019.0.copyload)
          to label %bb.e unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.o, %bb.c
  %i.z = trunc i64 %4 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.z, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %.sroa.526.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.n

.loopexit:                                        ; preds = %.lr.ph, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %common.resume unwind label %bb.p

bb.e:                                             ; preds = %.lr.ph
  %i.ab = extractvalue { i64, i64 } %i.y, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = extractvalue { i64, i64 } %i.y, 1
  %.sroa.053.0.insert.ext = zext i16 %i.w to i48
  %i.ae = trunc i64 %i.ad to i48
  %.sroa.053.2.insert.ext = shl i48 %i.ae, 16
  %.sroa.053.2.insert.shift = and i48 %.sroa.053.2.insert.ext, 4294901760
  %.sroa.053.2.insert.insert = or disjoint i48 %.sroa.053.2.insert.shift, %.sroa.053.0.insert.ext
  %.sroa.053.4.insert.insert = or disjoint i48 %.sroa.053.2.insert.insert, 70368744177664
  %i.af = load i64, ptr %i.m, align 8, !alias.scope !2139, !noundef !8 ; 3 uses
  %i.ag = load i64, ptr %i.c, align 8, !range !31, !alias.scope !2139, !noundef !8
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %bb.o unwind label %.loopexit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = load i8, ptr %2, align 8, !range !12, !noundef !8
  %i.aj = icmp eq i8 %i.ai, 25
  br i1 %i.aj, label %bb.j, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.031.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.432.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 6, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.031.0.copyload, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 6, ptr %.sroa.647.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i32 %.sroa.019.0.copyload, ptr %.sroa.748.0..sroa_idx, align 1
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %lpad.phi, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopEECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr9ColorStopEECshxhuDJfZv4T_6fontbe.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %bb.f, %bb.g
  %i.am = load ptr, ptr %i.l, align 8, !alias.scope !2139, !nonnull !8, !noundef !8
  %i.an = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.af
  store i48 %.sroa.053.4.insert.insert, ptr %i.an, align 2
  %i.ao = add i64 %i.af, 1
  store i64 %i.ao, ptr %i.m, align 8, !alias.scope !2139
  %i.ap = icmp eq ptr %i.p, %i.n
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr13to_colr_paint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1952) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(none) dereferenceable(8) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.680 = alloca [32 x i8], align 8          ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.668 = alloca [32 x i8], align 8          ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.565 = alloca [30 x i8], align 2          ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.650 = alloca [32 x i8], align 8          ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.547 = alloca [30 x i8], align 2          ; 5 uses
  %.sroa.69 = alloca [32 x i8], align 8           ; 4 uses
  %i.l = alloca [96 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 11 uses
  %i.q = load i64, ptr %7, align 8, !range !32, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  switch i64 %i.q, label %default.unreachable189 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

default.unreachable189:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  %i.v = load i8, ptr %i.u, align 8, !range !12, !noundef !8
  %i.w = icmp eq i8 %i.v, 25
  br i1 %i.w, label %bb.i, label %bb.h, !prof !22

bb.d:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !27, !noundef !8
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.an, label %bb.ao

bb.e:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ae = load <2 x double>, ptr %i.ab, align 8
  %i.af = load <2 x i16>, ptr %5, align 2         ; 2 uses
  %i.ag = sitofp <2 x i16> %i.af to <2 x double>  ; 3 uses
  %i.ah = load <2 x i16>, ptr %i.ac, align 2
  %i.ai = sub <2 x i16> %i.ah, %i.af
  %i.aj = sitofp <2 x i16> %i.ai to <2 x double>  ; 3 uses
  %i.ak = fmul <2 x double> %i.ae, %i.aj
  %8 = fadd <2 x double> %i.ak, %i.ag             ; 4 uses
  %9 = load <2 x double>, ptr %i.ad, align 8
  %10 = fmul <2 x double> %9, %i.aj
  %i.al = fadd <2 x double> %10, %i.ag            ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !range !11, !noundef !8
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.au, label %bb.av

bb.f:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.as = load <2 x i16>, ptr %5, align 2         ; 2 uses
  %i.at = load <2 x i16>, ptr %i.aq, align 2
  %i.au = sub <2 x i16> %i.at, %i.as
  %i.av = sitofp <2 x i16> %i.au to <2 x double>  ; 3 uses
  %i.aw = load <2 x double>, ptr %i.ap, align 8
  %i.ax = sitofp <2 x i16> %i.as to <2 x double>  ; 2 uses
  %i.ay = fmul <2 x double> %i.aw, %i.av
  %i.az = fadd <2 x double> %i.ay, %i.ax
  %i.ba = load <2 x double>, ptr %i.ar, align 8
  %i.bb = fmul <2 x double> %i.ba, %i.av          ; 3 uses
  %i.bc = fadd <2 x double> %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !range !25, !noundef !8
  %i.bf = trunc nuw i32 %i.be to i1
  br i1 %i.bf, label %bb.az, label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !8 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bo, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.bg

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 10, ptr %i.bt, align 8
  store i64 1, ptr %i.o, align 8
  %i.bu = invoke noundef nonnull ptr @_RNvMs1_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_10ContextMapNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_5GlyphE3getB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #31
          to label %common.resume unwind label %bb.am

bb.l:                                             ; preds = %bb.j
  store ptr %i.bu, ptr %i.p, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  %i.bw = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2183, !noundef !8
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit unwind label %bb.t

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  %i.by = load i64, ptr %i.bt, align 8, !range !17, !alias.scope !2185, !noundef !8
  switch i64 %i.by, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit [
    i64 10, label %bb.o
    i64 15, label %bb.q
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i: ; preds = %bb.r, %bb.p
  %.sink.i.i = phi ptr [ %i.ca, %bb.p ], [ %i.cf, %bb.r ]
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.i) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  %i.bz = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !range !12, !alias.scope !2189, !noundef !8
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.bz, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !2192, !nonnull !8, !noundef !8
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !2192
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %i.ce = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !range !12, !alias.scope !2196, !noundef !8
  %switch.i.i.i1.i.i = icmp samesign ult i8 %i.ce, 25
  br i1 %switch.i.i.i1.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !2199, !nonnull !8, !noundef !8
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !2199
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit

.body:                                            ; preds = %bb.ac, %bb.t, %bb.af
  %.pn = phi { ptr, i32 } [ %i.df, %bb.af ], [ %i.cm, %bb.t ], [ %i.dc, %bb.ac ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.cj = load ptr, ptr %i.p, align 8, !alias.scope !2202, !nonnull !8, !noundef !8
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !2202
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %common.resume unwind label %bb.am

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i, %bb.m, %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cn = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !19, !noundef !8 ; 3 uses
  %i.cq = icmp ne i64 %i.cp, -9223372036854775807
  call void @llvm.assume(i1 %i.cq)
  %i.cr = xor i64 %i.cp, -9223372036854775808
  %i.cs = icmp slt i64 %i.cp, 0
  %i.ct = select i1 %i.cs, i64 %i.cr, i64 1       ; 2 uses
  switch i64 %i.ct, label %bb.b [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.u
  ]

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit
  br label %bb.w

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit, %bb.w
  %storemerge = phi i64 [ %.sroa.42.0, %bb.w ], [ %i.ct, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit ]
  store i64 %storemerge, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr13to_colr_paint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef align 8 dereferenceable(32) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.x unwind label %bb.t

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit, %bb.u
  %.sink = phi i64 [ 72, %bb.u ], [ 64, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sink
  %.sroa.42.0 = load i64, ptr %i.cu, align 8
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cv = load i64, ptr %i.l, align 8, !range !33, !noundef !8 ; 2 uses
  %.not161 = icmp eq i64 %i.cv, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 32, i1 false)
  br i1 %.not161, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5102.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.599.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, i64 32, i1 false)
  store i64 %i.cv, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.cx = load ptr, ptr %i.p, align 8, !alias.scope !2205, !nonnull !8, !noundef !8
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !2205
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit167

bb.z:                                             ; preds = %bb.y
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit167

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit167: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.al

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2206
  %i.da = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 481) 32, i64 noundef range(i64 1, 9) 8) #33, !noalias !2206 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ab, label %bb.ae, !prof !6

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #34
          to label %.noexc168 unwind label %bb.ac

.noexc168:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5PaintECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.69) #31
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, i64 32, i1 false)
  store ptr %i.da, ptr %i.m, align 8
  %i.de = invoke { i64, i64 } @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12get_index_ofBO_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBG_6tables4colr5PaintKj3_EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8) %i.m) #31
          to label %.body unwind label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.dg = extractvalue { i64, i64 } %i.de, 0
  %i.dh = trunc nuw i64 %i.dg to i1
  br i1 %i.dh, label %bb.ah, label %bb.aj, !prof !23

bb.ah:                                            ; preds = %bb.ag
  %i.di = extractvalue { i64, i64 } %i.de, 1
  %i.dj = trunc i64 %i.di to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 9, ptr %i.dk, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.da, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.dj, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  %i.dl = load ptr, ptr %i.p, align 8, !alias.scope !2209, !nonnull !8, !noundef !8
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !2209
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit169

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit169

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit169: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #34
          to label %bb.ak unwind label %bb.af

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.bh, %._crit_edge, %bb.bf, %bb.be, %bb.ay, %bb.ax, %bb.at, %bb.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit169, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit167
  ret void

bb.am:                                            ; preds = %bb.s, %bb.af, %bb.k
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.bn, %bb.bk, %bb.k, %bb.s, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.hn, %bb.bk ], [ %.pn, %.body ], [ %i.bv, %bb.k ], [ %.pn, %bb.s ], [ %i.hs, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

bb.an:                                            ; preds = %bb.d
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.sroa.021.0.copyload = load i32, ptr %i.dp, align 1 ; 2 uses
  %i.dq = tail call { i64, i64 } @_RNvMsu_NtCs3v5ql5U6hxj_6fontir2irNtB5_13ColorPalettes8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, i32 noundef %.sroa.021.0.copyload) ; 2 uses
  %i.dr = extractvalue { i64, i64 } %i.dq, 0
  %i.ds = trunc nuw i64 %i.dr to i1
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.d, %bb.ap
  %.sroa.020.0 = phi i16 [ %i.dv, %bb.ap ], [ -1, %bb.d ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.dt, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.020.0, ptr %.sroa.517.0..sroa_idx, align 2
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 16384, ptr %.sroa.618.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.ap:                                            ; preds = %bb.an
  %i.du = extractvalue { i64, i64 } %i.dq, 1
  %i.dv = trunc i64 %i.du to i16
  br label %bb.ao

bb.aq:                                            ; preds = %bb.an
  %i.dw = load i8, ptr %4, align 8, !range !12, !noundef !8
  %i.dx = icmp eq i8 %i.dw, 25
  br i1 %i.dx, label %bb.as, label %bb.ar, !prof !22

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #35
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.0109.0.copyload = load i64, ptr %i.a, align 8
  store i64 6, ptr %0, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0109.0.copyload, ptr %.sroa.4124.0..sroa_idx, align 8
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5125.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 6, ptr %.sroa.6126.0..sroa_idx, align 8
  %.sroa.7127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i32 %.sroa.021.0.copyload, ptr %.sroa.7127.0..sroa_idx, align 1
  br label %bb.al

bb.au:                                            ; preds = %bb.e
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dz = load <2 x double>, ptr %i.dy, align 8
  %i.ea = fmul <2 x double> %i.dz, %i.aj
  %i.eb = fadd <2 x double> %i.ea, %i.ag
  br label %bb.aw

bb.av:                                            ; preds = %bb.e
  %i.ec = shufflevector <2 x double> %i.al, <2 x double> %8, <2 x i32> <i32 1, i32 2>
  %i.ed = shufflevector <2 x double> %8, <2 x double> %i.al, <2 x i32> <i32 1, i32 2>
  %i.ee = fsub <2 x double> %i.ec, %i.ed
  %i.ef = fadd <2 x double> %8, %i.ee
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.eg = phi <2 x double> [ %i.eb, %bb.au ], [ %i.ef, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !8, !noundef !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !8
  call fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr12to_colr_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ei, i64 noundef %i.ek)
  %i.el = load i64, ptr %i.j, align 8, !range !33, !noundef !8 ; 2 uses
  %.not160 = icmp eq i64 %i.el, -1
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.650, ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 32, i1 false)
  br i1 %.not160, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5134.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4136.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.650, i64 32, i1 false)
  store i64 %i.el, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547)
  br label %bb.al

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.650, i64 32, i1 false)
  %i.en = fadd <2 x double> %8, splat (double 5.000000e-01) ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0
  %i.ep = tail call double @llvm.floor.f64(double %i.eo)
  %i.eq = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.ep)
  %i.er = extractelement <2 x double> %i.en, i64 1
  %i.es = tail call double @llvm.floor.f64(double %i.er)
  %i.et = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.es)
  %i.eu = fadd <2 x double> %i.al, splat (double 5.000000e-01) ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 0
  %i.ew = tail call double @llvm.floor.f64(double %i.ev)
  %i.ex = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.ew)
  %i.ey = extractelement <2 x double> %i.eu, i64 1
  %i.ez = tail call double @llvm.floor.f64(double %i.ey)
  %i.fa = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.ez)
  %i.fb = fadd <2 x double> %i.eg, splat (double 5.000000e-01) ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 0
  %i.fd = tail call double @llvm.floor.f64(double %i.fc)
  %i.fe = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.fd)
  %i.ff = extractelement <2 x double> %i.fb, i64 1
  %i.fg = tail call double @llvm.floor.f64(double %i.ff)
  %i.fh = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.fg)
  call void @_RNvMs2A_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_19PaintLinearGradient3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, i16 noundef %i.eq, i16 noundef %i.et, i16 noundef %i.ex, i16 noundef %i.fa, i16 noundef %i.fe, i16 noundef %i.fh)
  %.sroa.547.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.547, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.547.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 3, ptr %i.fi, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.547, i64 30, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.650)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547)
  br label %bb.al

bb.az:                                            ; preds = %bb.f
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.fk = load float, ptr %i.fj, align 4
  %i.fl = tail call i16 @llvm.fptoui.sat.i16.f32(float %i.fk)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.f, %bb.az
  %.sroa.057.0 = phi i16 [ %i.fl, %bb.az ], [ 0, %bb.f ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.fn = load i32, ptr %i.fm, align 8, !range !25, !noundef !8
  %i.fo = trunc nuw i32 %i.fn to i1
  br i1 %i.fo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.fq = load float, ptr %i.fp, align 4, !noundef !8
  %i.fr = tail call i16 @llvm.fptoui.sat.i16.f32(float %i.fq)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.fs = fsub <2 x double> zeroinitializer, %i.bb ; 2 uses
  %i.ft = fmul <2 x double> %i.fs, %i.fs          ; 2 uses
  %i.fu = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ft)
  %i.fv = tail call nsz noundef double @llvm.maximumnum.f64(double %i.fu, double 0.000000e+00)
  %i.fw = fsub <2 x double> %i.av, %i.bb          ; 2 uses
  %i.fx = fmul <2 x double> %i.fw, %i.fw          ; 2 uses
  %i.fy = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fz = fadd <2 x double> %i.fy, %i.fx          ; 2 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 0
  %i.gb = tail call nsz noundef double @llvm.maximumnum.f64(double %i.fv, double %i.ga)
  %i.gc = extractelement <2 x double> %i.fz, i64 1
  %i.gd = tail call nsz noundef double @llvm.maximumnum.f64(double %i.gb, double %i.gc)
  %i.ge = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fx)
  %i.gf = tail call nsz noundef double @llvm.maximumnum.f64(double %i.gd, double %i.ge)
  %i.gg = tail call double @llvm.sqrt.f64(double %i.gf)
  %i.gh = fadd double %i.gg, 5.000000e-01
  %i.gi = tail call double @llvm.floor.f64(double %i.gh)
  %i.gj = tail call noundef i16 @llvm.fptoui.sat.i16.f64(double %i.gi)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.063.0 = phi i16 [ %i.fr, %bb.bb ], [ %i.gj, %bb.bc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !nonnull !8, !noundef !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !8
  call fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr12to_colr_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.gl, i64 noundef %i.gn)
  %i.go = load i64, ptr %i.g, align 8, !range !33, !noundef !8 ; 2 uses
  %.not159 = icmp eq i64 %i.go, -1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.668, ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i64 32, i1 false)
  br i1 %.not159, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5143.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4145.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.668, i64 32, i1 false)
  store i64 %i.go, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.565)
  br label %bb.al

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.668, i64 32, i1 false)
  %i.gq = fadd <2 x double> %i.az, splat (double 5.000000e-01) ; 2 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = tail call double @llvm.floor.f64(double %i.gr)
  %i.gt = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.gs)
  %i.gu = extractelement <2 x double> %i.gq, i64 1
  %i.gv = tail call double @llvm.floor.f64(double %i.gu)
  %i.gw = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.gv)
  %i.gx = fadd <2 x double> %i.bc, splat (double 5.000000e-01) ; 2 uses
  %i.gy = extractelement <2 x double> %i.gx, i64 0
  %i.gz = tail call double @llvm.floor.f64(double %i.gy)
  %i.ha = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.gz)
  %i.hb = extractelement <2 x double> %i.gx, i64 1
  %i.hc = tail call double @llvm.floor.f64(double %i.hb)
  %i.hd = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.hc)
  call void @_RNvMs2O_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_19PaintRadialGradient3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, i16 noundef %i.gt, i16 noundef %i.gw, i16 noundef %.sroa.057.0, i16 noundef %i.ha, i16 noundef %i.hd, i16 noundef %.sroa.063.0)
  %.sroa.565.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.565, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.565.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 5, ptr %i.he, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.565, i64 30, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.565)
  br label %bb.al

bb.bg:                                            ; preds = %.lr.ph, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBK_6tables4colr5PaintKj4_EE8push_mutCshxhuDJfZv4T_6fontbe.exit
  %.sroa.075.0176 = phi ptr [ %i.bm, %.lr.ph ], [ %i.hk, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBK_6tables4colr5PaintKj4_EE8push_mutCshxhuDJfZv4T_6fontbe.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr13to_colr_paint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(8) %5, ptr noalias nofree noundef align 8 dereferenceable(32) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.075.0176)
  %i.hf = load i64, ptr %i.e, align 8, !range !33, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.hf, -1
  br i1 %.not, label %bb.bi, label %bb.bh

._crit_edge.loopexit:                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBK_6tables4colr5PaintKj4_EE8push_mutCshxhuDJfZv4T_6fontbe.exit
  %.pre = load i64, ptr %i.bn, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.hg = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.hh = icmp ult i64 %i.hg, 576460752303423488
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = trunc i64 %i.hg to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.hj, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bj, ptr %.sroa.489.0..sroa_idx, align 4
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.hi, ptr %.sroa.590.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.680, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5155.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5152.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4154.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.680, i64 32, i1 false)
  store i64 %i.hf, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.680)
  br label %bb.al

bb.bi:                                            ; preds = %bb.bg
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.075.0176, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.680, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.680, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.680)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2210
  %i.hl = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 481) 32, i64 noundef range(i64 1, 9) 8) #33, !noalias !2210 ; 4 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.bj, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5PaintE3newCshxhuDJfZv4T_6fontbe.exit, !prof !6

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #34
          to label %.noexc170 unwind label %bb.bk

.noexc170:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5PaintECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #31
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
end_hunk_0
