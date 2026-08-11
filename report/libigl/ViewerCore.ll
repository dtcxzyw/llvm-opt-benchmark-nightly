inline.NumInlined: 3000
inline.NumDeleted: 1769
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3igl6opengl10ViewerCore22initialize_shadow_passEv:bb.a
  %i.de = fmul float %i.dd, %.sroa.022.12.vec.extract
  %i.df = fadd float %i.de, %i.cq
  %i.dg = fadd float %i.dc, %i.df
  %i.dh = fmul float %i.db, %.sroa.022.4.vec.extract
  %i.di = fmul float %i.dd, %.sroa.7.16.vec.extract
  %i.dj = fadd float %i.di, %i.cr
  %i.dk = fadd float %i.dh, %i.dj
  %i.dl = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <2 x i32> <i32 2, i32 5>
  %i.dm = fmul <2 x float> %i.da, %i.dl           ; 2 uses
  %i.dn = fmul float %i.co, %i.cp
  %i.do = extractelement <2 x float> %i.dm, i64 1
  %i.dp = fadd float %i.do, %i.dn
  %i.dq = extractelement <2 x float> %i.dm, i64 0
  %i.dr = fadd float %i.dq, %i.dp
  %i.ds = load <4 x float>, ptr %i.bc, align 16, !tbaa !51 ; 4 uses
  %.sroa.0.sroa.0.0.vec.extract = extractelement <4 x float> %i.cm, i64 0
  %i.dt = bitcast float %.sroa.0.sroa.0.0.vec.extract to <1 x float>
  %i.du = shufflevector <1 x float> %i.dt, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dv = fmul <4 x float> %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.dx = load <4 x float>, ptr %i.dw, align 16, !tbaa !51 ; 4 uses
  %.sroa.0.sroa.0.4.vec.extract = extractelement <4 x float> %i.cm, i64 1
  %i.dy = bitcast float %.sroa.0.sroa.0.4.vec.extract to <1 x float>
  %i.dz = shufflevector <1 x float> %i.dy, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ea = fmul <4 x float> %i.dx, %i.dz
  %i.eb = fadd <4 x float> %i.dv, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !tbaa !51 ; 4 uses
  %i.ee = bitcast float %.sroa.022.8.vec.extract to <1 x float>
  %i.ef = shufflevector <1 x float> %i.ee, <1 x float> poison, <4 x i32> zeroinitializer
  %i.eg = fmul <4 x float> %i.ed, %i.ef
  %i.eh = fadd <4 x float> %i.eb, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !tbaa !51 ; 4 uses
  %i.ek = fmul <4 x float> %i.ej, zeroinitializer
  %i.el = fadd <4 x float> %i.eh, %i.ek
  %i.em = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.en = fmul <4 x float> %i.ds, %i.em
  %i.eo = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = fmul <4 x float> %i.dx, %i.eo
  %i.eq = fadd <4 x float> %i.en, %i.ep
  %i.er = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.es = fmul <4 x float> %i.ed, %i.er
  %i.et = fadd <4 x float> %i.es, %i.eq
  %i.eu = fmul <4 x float> %i.ej, zeroinitializer
  %i.ev = fadd <4 x float> %i.eu, %i.et
  %i.ew = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ex = fmul <4 x float> %i.ew, %i.ds
  %i.ey = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ez = fmul <4 x float> %i.ey, %i.dx
  %i.fa = fadd <4 x float> %i.ex, %i.ez
  %i.fb = insertelement <4 x float> poison, float %i.co, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = fmul <4 x float> %i.fc, %i.ed
  %i.fe = fadd <4 x float> %i.fa, %i.fd
  %i.ff = fmul <4 x float> %i.ej, zeroinitializer
  %i.fg = fadd <4 x float> %i.fe, %i.ff
  %i.fh = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fj = fmul <4 x float> %i.fi, %i.ds
  %i.fk = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = fmul <4 x float> %i.fl, %i.dx
  %i.fn = fadd <4 x float> %i.fj, %i.fm
  %i.fo = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = fmul <4 x float> %i.fp, %i.ed
  %i.fr = fadd <4 x float> %i.fn, %i.fq
  %i.fs = fadd <4 x float> %i.fr, %i.ej
  store <4 x float> %i.el, ptr %i.bc, align 16, !tbaa !51
  store <4 x float> %i.ev, ptr %i.dw, align 16, !tbaa !51
  store <4 x float> %i.fg, ptr %i.ec, align 16, !tbaa !51
  store <4 x float> %i.fs, ptr %i.ei, align 16, !tbaa !51
  %i.ft = load <2 x float>, ptr %3, align 8, !tbaa !62
  %i.fu = load <2 x float>, ptr %5, align 8, !tbaa !62
  %i.fv = fsub <2 x float> %i.ft, %i.fu           ; 2 uses
  %i.fw = fmul <2 x float> %i.fv, %i.fv           ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fy = load float, ptr %i.ae, align 8, !tbaa !62
  %i.fz = load float, ptr %i.fx, align 8, !tbaa !62
  %i.ga = fsub float %i.fy, %i.fz                 ; 2 uses
  %i.gb = fmul float %i.ga, %i.ga
  %i.gc = extractelement <2 x float> %i.fw, i64 1
  %i.gd = fadd float %i.gc, %i.gb
  %i.ge = extractelement <2 x float> %i.fw, i64 0
  %i.gf = fadd float %i.ge, %i.gd
  %i.gg = call noundef float @llvm.sqrt.f32(float %i.gf)
  %i.gh = fpext float %i.ao to double
  %i.gi = fdiv double %i.gh, 3.600000e+02
  %i.gj = fmul double %i.gi, f0x400921FB54442D18
  %i.gk = call double @tan(double noundef %i.gj) #19
  %i.gl = fpext float %i.gg to double
  %i.gm = fmul double %i.gk, %i.gl
  %i.gn = fptrunc double %i.gm to float           ; 3 uses
  %i.go = fneg float %i.gn                        ; 2 uses
  %i.gp = load <2 x i32>, ptr %i.i, align 16, !tbaa !155
  %i.gq = uitofp <2 x i32> %i.gp to <2 x float>   ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gn, i64 1
  %i.gu = fmul <2 x float> %i.gr, %i.gt
  %i.gv = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gw = fdiv <2 x float> %i.gu, %i.gv           ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gy = extractelement <2 x float> %i.gw, i64 0
  %i.gz = extractelement <2 x float> %i.gw, i64 1
  call void @_ZN3igl5orthoIN5Eigen6MatrixIfLi4ELi4ELi0ELi4ELi4EEEEEvNT_6ScalarES5_S5_S5_S5_S5_RNS1_15PlainObjectBaseIS4_EE(float noundef %i.gy, float noundef %i.gz, float noundef %i.go, float noundef %i.gn, float noundef %i.aq, float noundef %i.cz, ptr noundef nonnull align 16 dereferenceable(64) %i.gx)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore24deinitialize_shadow_passEv(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(544) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  tail call void %i.a(i32 noundef 36160, i32 noundef 0)
  %i.b = load ptr, ptr @glad_glBindRenderbuffer, align 8, !tbaa !66
  tail call void %i.b(i32 noundef 36161, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore16draw_shadow_passERNS0_10ViewerDataEb(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(1488) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 582
  %i.d = load i8, ptr %i.c, align 2, !tbaa !101, !range !68, !noundef !69
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680
  tail call void @_ZN3igl6opengl10ViewerData8updateGLERKS1_bRNS0_6MeshGLE(ptr noundef nonnull align 8 dereferenceable(1488) %1, ptr noundef nonnull align 8 dereferenceable(1488) %1, i1 noundef zeroext %i.e, ptr noundef nonnull align 8 dereferenceable(804) %i.f)
  store i32 0, ptr %i.a, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  tail call void @_ZN3igl6opengl6MeshGL9bind_meshEv(ptr noundef nonnull align 8 dereferenceable(804) %i.g)
  %i.h = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !115
  %i.k = tail call i32 %i.h(i32 noundef %i.j, ptr noundef nonnull @.str)
  %i.l = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.m = load i32, ptr %i.i, align 8, !tbaa !115
  %i.n = tail call i32 %i.l(i32 noundef %i.m, ptr noundef nonnull @.str.3)
  %i.o = load ptr, ptr @glad_glUniformMatrix4fv, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void %i.o(i32 noundef %i.k, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.p)
  %i.q = load ptr, ptr @glad_glUniformMatrix4fv, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void %i.q(i32 noundef %i.n, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %i.r)
  %i.s = load ptr, ptr @glad_glUniform1i, align 8, !tbaa !66
  %i.t = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.u = load i32, ptr %i.i, align 8, !tbaa !115
  %i.v = tail call i32 %i.t(i32 noundef %i.u, ptr noundef nonnull @.str.17)
  tail call void %i.s(i32 noundef %i.v, i32 noundef 1)
  tail call void @_ZN3igl6opengl6MeshGL9draw_meshEb(ptr noundef nonnull align 8 dereferenceable(804) %i.g, i1 noundef zeroext true)
  %i.w = load ptr, ptr @glad_glUniform1i, align 8, !tbaa !66
  %i.x = load ptr, ptr @glad_glGetUniformLocation, align 8, !tbaa !66
  %i.y = load i32, ptr %i.i, align 8, !tbaa !115
  %i.z = tail call i32 %i.x(i32 noundef %i.y, ptr noundef nonnull @.str.17)
  tail call void %i.w(i32 noundef %i.z, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore11draw_bufferERNS0_10ViewerDataEbRN5Eigen6MatrixIhLin1ELin1ELi0ELin1ELin1EEES7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(1488) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !156  ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !157  ; 3 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = or i64 %i.j, %i.g
  %i.m = and i64 %i.l, 4294967295
  %or.cond = icmp eq i64 %i.m, 0                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.o = load float, ptr %i.n, align 8
  %i.p = fptoui float %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.r = load float, ptr %i.q, align 4
  %i.s = fptoui float %i.r to i32
  %.073 = select i1 %or.cond, i32 %i.s, i32 %i.k  ; 11 uses
  %.068 = select i1 %or.cond, i32 %i.p, i32 %i.h  ; 12 uses
  %i.t = zext i32 %.068 to i64                    ; 10 uses
  %i.u = zext i32 %.073 to i64                    ; 10 uses
  %i.v = icmp eq i32 %.068, 0
  %i.w = icmp eq i32 %.073, 0
  %or.cond.i.i = or i1 %i.v, %i.w                 ; 4 uses
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = udiv i64 9223372036854775807, %i.u
  %i.y = icmp samesign ult i64 %i.x, %i.t
  br i1 %i.y, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  %i.aa = mul nuw nsw i64 %i.u, %i.t              ; 12 uses
  %i.ab = mul nsw i64 %i.j, %i.g
  %.not.i.i = icmp eq i64 %i.aa, %i.ab
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ac = load ptr, ptr %3, align 8, !tbaa !158
  tail call void @free(ptr noundef %i.ac) #19
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.aa) #20 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.ad, %bb.e ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %3, align 8, !tbaa !158
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.sink.split.i.i
  store i64 %i.t, ptr %i.f, align 8, !tbaa !156
  store i64 %i.u, ptr %i.i, align 8, !tbaa !157
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i77, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ag = udiv i64 9223372036854775807, %i.u
  %i.ah = icmp samesign ult i64 %i.ag, %i.t
  br i1 %i.ah, label %bb.h, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i77

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i77: ; preds = %bb.g, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !156
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !157
  %i.an = mul nsw i64 %i.am, %i.ak
  %.not.i.i78 = icmp eq i64 %i.aa, %i.an
  br i1 %.not.i.i78, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit81, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i77
  %i.ao = load ptr, ptr %4, align 8, !tbaa !158
  tail call void @free(ptr noundef %i.ao) #19
  %.not119 = icmp eq i64 %i.aa, 0
  br i1 %.not119, label %.sink.split.i.i79, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.aa) #20 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %.sink.split.i.i79

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ar, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i79:                                ; preds = %bb.j, %bb.i
  %.sink.i.i80 = phi ptr [ %i.ap, %bb.j ], [ null, %bb.i ]
  store ptr %.sink.i.i80, ptr %4, align 8, !tbaa !158
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit81

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit81: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i77, %.sink.split.i.i79
  store i64 %i.t, ptr %i.aj, align 8, !tbaa !156
  store i64 %i.u, ptr %i.al, align 8, !tbaa !157
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i83, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit81
  %i.as = udiv i64 9223372036854775807, %i.u
  %i.at = icmp samesign ult i64 %i.as, %i.t
  br i1 %i.at, label %bb.m, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i83

bb.m:                                             ; preds = %bb.l
  %i.au = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.au, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i83: ; preds = %bb.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit81
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !156
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !157
  %i.az = mul nsw i64 %i.ay, %i.aw
  %.not.i.i84 = icmp eq i64 %i.aa, %i.az
  br i1 %.not.i.i84, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit87, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i83
  %i.ba = load ptr, ptr %5, align 8, !tbaa !158
  tail call void @free(ptr noundef %i.ba) #19
  %.not120 = icmp eq i64 %i.aa, 0
  br i1 %.not120, label %.sink.split.i.i85, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.aa) #20 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.p, label %.sink.split.i.i85

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bd, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i85:                                ; preds = %bb.o, %bb.n
  %.sink.i.i86 = phi ptr [ %i.bb, %bb.o ], [ null, %bb.n ]
  store ptr %.sink.i.i86, ptr %5, align 8, !tbaa !158
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit87

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit87: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i83, %.sink.split.i.i85
  store i64 %i.t, ptr %i.av, align 8, !tbaa !156
  store i64 %i.u, ptr %i.ax, align 8, !tbaa !157
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i89, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit87
  %i.be = udiv i64 9223372036854775807, %i.u
  %i.bf = icmp samesign ult i64 %i.be, %i.t
  br i1 %i.bf, label %bb.r, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i89

bb.r:                                             ; preds = %bb.q
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bg, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i89: ; preds = %bb.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit87
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !156
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !157
  %i.bl = mul nsw i64 %i.bk, %i.bi
  %.not.i.i90 = icmp eq i64 %i.aa, %i.bl
  br i1 %.not.i.i90, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i89
  %i.bm = load ptr, ptr %6, align 8, !tbaa !158
  tail call void @free(ptr noundef %i.bm) #19
  %.not121 = icmp eq i64 %i.aa, 0
  br i1 %.not121, label %.sink.split.i.i91, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.aa) #20 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.u, label %.sink.split.i.i91

bb.u:                                             ; preds = %bb.t
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bp, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i91:                                ; preds = %bb.t, %bb.s
  %.sink.i.i92 = phi ptr [ %i.bn, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i.i92, ptr %6, align 8, !tbaa !158
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i.i91, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i89
  store i64 %i.t, ptr %i.bh, align 8, !tbaa !156
  store i64 %i.u, ptr %i.bj, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bq = load ptr, ptr @glad_glGenFramebuffers, align 8, !tbaa !66
  call void %i.bq(i32 noundef 1, ptr noundef nonnull %i.a)
  %i.br = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !155
  call void %i.br(i32 noundef 36160, i32 noundef %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bt = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !66
  call void %i.bt(i32 noundef 1, ptr noundef nonnull %i.b)
  %i.bu = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !66
  %i.bv = load i32, ptr %i.b, align 4, !tbaa !155
  call void %i.bu(i32 noundef 37120, i32 noundef %i.bv)
  %i.bw = load ptr, ptr @glad_glTexImage2DMultisample, align 8, !tbaa !66
  call void %i.bw(i32 noundef 37120, i32 noundef 4, i32 noundef 6408, i32 noundef %.068, i32 noundef %.073, i8 noundef zeroext 1)
  %i.bx = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !66
  call void %i.bx(i32 noundef 37120, i32 noundef 0)
  %i.by = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !66
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !155
  call void %i.by(i32 noundef 36160, i32 noundef 36064, i32 noundef 37120, i32 noundef %i.bz, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ca = load ptr, ptr @glad_glGenRenderbuffers, align 8, !tbaa !66
  call void %i.ca(i32 noundef 1, ptr noundef nonnull %i.c)
  %i.cb = load ptr, ptr @glad_glBindRenderbuffer, align 8, !tbaa !66
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !155
  call void %i.cb(i32 noundef 36161, i32 noundef %i.cc)
  %i.cd = load ptr, ptr @glad_glRenderbufferStorageMultisample, align 8, !tbaa !66
  call void %i.cd(i32 noundef 36161, i32 noundef 4, i32 noundef 35056, i32 noundef %.068, i32 noundef %.073)
  %i.ce = load ptr, ptr @glad_glBindRenderbuffer, align 8, !tbaa !66
  call void %i.ce(i32 noundef 36161, i32 noundef 0)
  %i.cf = load ptr, ptr @glad_glFramebufferRenderbuffer, align 8, !tbaa !66
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !155
  call void %i.cf(i32 noundef 36160, i32 noundef 33306, i32 noundef 36161, i32 noundef %i.cg)
  %i.ch = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  call void %i.ch(i32 noundef 36160, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ci = load ptr, ptr @glad_glGenFramebuffers, align 8, !tbaa !66
  call void %i.ci(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.cj = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !155
  call void %i.cj(i32 noundef 36160, i32 noundef %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cl = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !66
  call void %i.cl(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.cm = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !66
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !155
  call void %i.cm(i32 noundef 3553, i32 noundef %i.cn)
  %i.co = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !66
  call void %i.co(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %.068, i32 noundef %.073, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef null)
  %i.cp = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !66
  call void %i.cp(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729)
  %i.cq = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !66
  call void %i.cq(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729)
  %i.cr = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !66
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !155
  call void %i.cr(i32 noundef 36160, i32 noundef 36064, i32 noundef 3553, i32 noundef %i.cs, i32 noundef 0)
  %i.ct = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  call void %i.ct(i32 noundef 36160, i32 noundef 0)
  %i.cu = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !155
  call void %i.cu(i32 noundef 36160, i32 noundef %i.cv)
  %i.cw = load ptr, ptr @glad_glClearColor, align 8, !tbaa !66
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load float, ptr %i.cx, align 16, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.da = load float, ptr %i.cz, align 4, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load float, ptr %i.db, align 8, !tbaa !62
  call void %i.cw(float noundef %i.cy, float noundef %i.da, float noundef %i.dc, float noundef 0.000000e+00)
  %i.dd = load ptr, ptr @glad_glClear, align 8, !tbaa !66
  call void %i.dd(i32 noundef 16640)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.sroa.0118.0.copyload = load <4 x float>, ptr %i.de, align 16, !tbaa !51
  store <2 x float> zeroinitializer, ptr %i.de, align 16, !tbaa !62
  %i.df = uitofp i32 %.068 to float
  store float %i.df, ptr %i.n, align 8, !tbaa !62
  %i.dg = uitofp i32 %.073 to float
  store float %i.dg, ptr %i.q, align 4, !tbaa !62
  call void @_ZN3igl6opengl10ViewerCore4drawERNS0_10ViewerDataEb(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(1488) %1, i1 noundef zeroext %2)
  store <4 x float> %.sroa.0118.0.copyload, ptr %i.de, align 16, !tbaa !51
  %i.dh = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  %i.di = load i32, ptr %i.a, align 4, !tbaa !155
  call void %i.dh(i32 noundef 36008, i32 noundef %i.di)
  %i.dj = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  %i.dk = load i32, ptr %i.d, align 4, !tbaa !155
  call void %i.dj(i32 noundef 36009, i32 noundef %i.dk)
  %i.dl = load ptr, ptr @glad_glBlitFramebuffer, align 8, !tbaa !66
  call void %i.dl(i32 noundef 0, i32 noundef 0, i32 noundef %.068, i32 noundef %.073, i32 noundef 0, i32 noundef 0, i32 noundef %.068, i32 noundef %.073, i32 noundef 16384, i32 noundef 9728)
  %i.dm = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  %i.dn = load i32, ptr %i.d, align 4, !tbaa !155
  call void %i.dm(i32 noundef 36160, i32 noundef %i.dn)
  %i.do = shl i32 %.073, 2
  %i.dp = mul i32 %i.do, %.068
  %i.dq = zext i32 %i.dp to i64
  %i.dr = call noalias ptr @calloc(i64 noundef %i.dq, i64 noundef 1) #22 ; 3 uses
  %i.ds = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !66
  call void %i.ds(i32 noundef 0, i32 noundef 0, i32 noundef %.068, i32 noundef %.073, i32 noundef 6408, i32 noundef 5121, ptr noundef %i.dr)
  %i.dt = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  call void %i.dt(i32 noundef 36009, i32 noundef 0)
  %i.du = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  call void %i.du(i32 noundef 36008, i32 noundef 0)
  %i.dv = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !66
  call void %i.dv(i32 noundef 36160, i32 noundef 0)
  %i.dw = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !66
  call void %i.dw(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.dx = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !66
  call void %i.dx(i32 noundef 1, ptr noundef nonnull %i.b)
  %i.dy = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !66
  call void %i.dy(i32 noundef 1, ptr noundef nonnull %i.a)
  %i.dz = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !66
  call void %i.dz(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.ea = load ptr, ptr @glad_glDeleteRenderbuffers, align 8, !tbaa !66
  call void %i.ea(i32 noundef 1, ptr noundef nonnull %i.c)
  %i.eb = icmp ne i32 %.073, 0
  %i.ec = icmp ne i32 %.068, 0
  %or.cond127 = and i1 %i.eb, %i.ec
  br i1 %or.cond127, label %.preheader, label %._crit_edge126.split

.preheader:                                       ; preds = %bb.v, %._crit_edge
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %._crit_edge ], [ 0, %bb.v ] ; 5 uses
  %indvars.iv128 = phi i32 [ %indvars.iv.next129, %._crit_edge ], [ 0, %bb.v ] ; 2 uses
  %7 = sext i32 %indvars.iv128 to i64
  br label %bb.w

._crit_edge126.split:                             ; preds = %._crit_edge, %bb.v
  call void @free(ptr noundef %i.dr) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

._crit_edge:                                      ; preds = %bb.w
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %indvars.iv.next129 = add i32 %indvars.iv128, %.068
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %i.u
  br i1 %exitcond137.not, label %._crit_edge126.split, label %.preheader, !llvm.loop !159

bb.w:                                             ; preds = %.preheader, %bb.w
  %indvars.iv128.a = phi i64 [ %7, %.preheader ], [ %indvars.iv.next129.a, %bb.w ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.w ] ; 5 uses
  %i.ed = shl nsw i64 %indvars.iv128.a, 2
  %i.ee = getelementptr inbounds i8, ptr %i.dr, i64 %i.ed ; 4 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !51
  %i.eg = load ptr, ptr %3, align 8, !tbaa !158
  %i.eh = load i64, ptr %i.f, align 8, !tbaa !156
  %i.ei = mul nsw i64 %i.eh, %indvars.iv133
  %i.ej = getelementptr i8, ptr %i.eg, i64 %indvars.iv
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.ei
  store i8 %i.ef, ptr %i.ek, align 1, !tbaa !51
  %i.el = getelementptr i8, ptr %i.ee, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !51
  %i.en = load ptr, ptr %4, align 8, !tbaa !158
  %i.eo = load i64, ptr %i.aj, align 8, !tbaa !156
  %i.ep = mul nsw i64 %i.eo, %indvars.iv133
  %i.eq = getelementptr i8, ptr %i.en, i64 %indvars.iv
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.ep
  store i8 %i.em, ptr %i.er, align 1, !tbaa !51
  %i.es = getelementptr i8, ptr %i.ee, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !51
  %i.eu = load ptr, ptr %5, align 8, !tbaa !158
  %i.ev = load i64, ptr %i.av, align 8, !tbaa !156
  %i.ew = mul nsw i64 %i.ev, %indvars.iv133
  %i.ex = getelementptr i8, ptr %i.eu, i64 %indvars.iv
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ew
  store i8 %i.et, ptr %i.ey, align 1, !tbaa !51
  %i.ez = getelementptr i8, ptr %i.ee, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !51
  %i.fb = load ptr, ptr %6, align 8, !tbaa !158
  %i.fc = load i64, ptr %i.bh, align 8, !tbaa !156
  %i.fd = mul nsw i64 %i.fc, %indvars.iv133
  %i.fe = getelementptr i8, ptr %i.fb, i64 %indvars.iv
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fd
  store i8 %i.fa, ptr %i.ff, align 1, !tbaa !51
  %indvars.iv.next129.a = add nsw i64 %indvars.iv128.a, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.w, !llvm.loop !160
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN3igl6opengl6MeshGL11bind_labelsERKNS1_6TextGLE(ptr noundef nonnull align 8 dereferenceable(804), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

declare void @_ZN3igl6opengl6MeshGL11draw_labelsERKNS1_6TextGLE(ptr noundef nonnull align 8 dereferenceable(804), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore17set_rotation_typeERKNS1_12RotationTypeE(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.Eigen::Quaternion", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !161
  %i.c = load i32, ptr %1, align 4, !tbaa !162    ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !161
  %i.d = icmp eq i32 %i.c, 1
  %i.e = icmp ne i32 %i.b, 1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !163
  call void @_ZN3igl16snap_to_fixed_upIfEEvRKN5Eigen10QuaternionIT_Li0EEERS4_(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN3igl16snap_to_fixed_upIfEEvRKN5Eigen10QuaternionIT_Li0EEERS4_(ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK3igl6opengl10ViewerCore3setERjb(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(544) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !125   ; 2 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = xor i32 %i.a, -1
  %i.c = load i32, ptr %1, align 4, !tbaa !155
  %i.d = and i32 %i.c, %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !155
  %i.f = or i32 %i.e, %i.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK3igl6opengl10ViewerCore5unsetERj(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(544) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !125
  %i.b = xor i32 %i.a, -1
  %i.c = load i32, ptr %1, align 4, !tbaa !155
  %i.d = and i32 %i.c, %i.b
  store i32 %i.d, ptr %1, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK3igl6opengl10ViewerCore6toggleERj(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(544) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !125
  %i.b = load i32, ptr %1, align 4, !tbaa !155
  %i.c = xor i32 %i.b, %i.a
  store i32 %i.c, ptr %1, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCoreC2Ev(ptr noundef nonnull align 16 dereferenceable(544) initializes((0, 4), (16, 46), (48, 56), (68, 76), (80, 96)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen16CommaInitializerINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEcmERKf.exit74:
  %1 = alloca %"class.Eigen::Quaternion", align 16 ; 4 uses
  store i32 1, ptr %0, align 16, !tbaa !125
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> <float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %i.a, align 16, !tbaa !62
  store <2 x float> <float 0.000000e+00, float 3.000000e-01>, ptr %i.b, align 16, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.h, align 4, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 0, ptr %i.i, align 1, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2056, ptr %i.j, align 16, !tbaa !144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 2056, ptr %i.k, align 4, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !124
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.m, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !163
  call void @_ZN3igl16snap_to_fixed_upIfEEvRKN5Eigen10QuaternionIT_Li0EEERS4_(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 16, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.o, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  store <2 x float> <float 1.000000e+00, float 1.000000e+02>, ptr %i.p, align 4, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 4.500000e+01>, ptr %i.e, align 4, !tbaa !62
  store <4 x float> <float 5.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.q, align 4, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 1, ptr %i.r, align 4, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 0, ptr %i.s, align 1, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 3.000000e+01, ptr %i.t, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore4initEv(ptr noundef nonnull align 16 dereferenceable(544) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void %i.a(i32 noundef 1, ptr noundef nonnull %i.b), !inline_history !166
  %i.c = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void %i.c(i32 noundef 1, ptr noundef nonnull %i.d), !inline_history !166
  %i.e = load ptr, ptr @glad_glDeleteRenderbuffers, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(i32 noundef 1, ptr noundef nonnull %i.f), !inline_history !166
  tail call void @_ZN3igl6opengl10ViewerCore23generate_shadow_buffersEv(ptr noundef nonnull align 16 dereferenceable(544) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore21delete_shadow_buffersEv(ptr noundef nonnull align 16 dereferenceable(544) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void %i.a(i32 noundef 1, ptr noundef nonnull %i.b)
  %i.c = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void %i.c(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.e = load ptr, ptr @glad_glDeleteRenderbuffers, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(i32 noundef 1, ptr noundef nonnull %i.f)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerCore23generate_shadow_buffersEv(ptr noundef nonnull align 16 dereferenceable(544) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.Eigen::Matrix.3", align 16  ; 4 uses
  %i.a = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  tail call void %i.a(i32 noundef 1, ptr noundef nonnull %i.b)
  %i.c = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !66
  tail call void %i.c(i32 noundef 1, ptr noundef nonnull %i.b)
  %i.d = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !66
  %i.e = load i32, ptr %i.b, align 8, !tbaa !123
  tail call void %i.d(i32 noundef 3553, i32 noundef %i.e)
  %i.f = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !145
  tail call void %i.f(i32 noundef 3553, i32 noundef 0, i32 noundef 6402, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 0, i32 noundef 6402, i32 noundef 5126, ptr noundef null)
  %i.k = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !66
  tail call void %i.k(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728)
  %i.l = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !66
  tail call void %i.l(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728)
  %i.m = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !66
  tail call void %i.m(i32 noundef 3553, i32 noundef 10242, i32 noundef 33069)
  %i.n = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !66
  tail call void %i.n(i32 noundef 3553, i32 noundef 10243, i32 noundef 33069)
  %i.o = load ptr, ptr @glad_glTexParameterfv, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store <4 x float> splat (float 1.000000e+00), ptr %1, align 16, !tbaa !62
  call void %i.o(i32 noundef 3553, i32 noundef 4100, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
end_hunk_0
