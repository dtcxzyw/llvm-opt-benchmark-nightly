Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z11RGBtoLetterhhhhjjbb:bb.a
  %i.dw = icmp samesign ult i32 %i.dm, 138
  br i1 %i.dw, label %_Z11HueToLetteri.exit46, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = icmp samesign ult i32 %i.dm, 159
  br i1 %i.dx, label %_Z11HueToLetteri.exit46, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dy = icmp samesign ult i32 %i.dm, 181
  br i1 %i.dy, label %_Z11HueToLetteri.exit46, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = icmp samesign ult i32 %i.dm, 202
  br i1 %i.dz, label %_Z11HueToLetteri.exit46, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = icmp samesign ult i32 %i.dm, 223
  %spec.select.i44 = select i1 %i.ea, i8 77, i8 70
  br label %_Z11HueToLetteri.exit46

_Z11HueToLetteri.exit46:                          ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i45 = phi i8 [ %spec.select.i44, %bb.as ], [ 82, %_Z8RGBtoHSLhhhPhS_S_.exit ], [ 79, %bb.aj ], [ 89, %bb.ak ], [ 76, %bb.al ], [ 71, %bb.am ], [ 84, %bb.an ], [ 67, %bb.ao ], [ 65, %bb.ap ], [ 66, %bb.aq ], [ 86, %bb.ar ] ; 2 uses
  %i.eb = add i8 %spec.select109, 23
  %or.cond = icmp ult i8 %i.eb, 47
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.do
  br i1 %or.cond5, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %_Z11HueToLetteri.exit46.thread, %_Z11HueToLetteri.exit46
  %spec.select109121127 = phi i8 [ %spec.select109118, %_Z11HueToLetteri.exit46.thread ], [ %spec.select109, %_Z11HueToLetteri.exit46 ] ; 8 uses
  %i.ec = icmp ult i8 %spec.select109121127, 16
  br i1 %i.ec, label %_Z17lightnessToLetteri.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = icmp ult i8 %spec.select109121127, 48
  br i1 %i.ed, label %_Z17lightnessToLetteri.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ee = icmp ult i8 %spec.select109121127, 80
  br i1 %i.ee, label %_Z17lightnessToLetteri.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ef = icmp ult i8 %spec.select109121127, 112
  br i1 %i.ef, label %_Z17lightnessToLetteri.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eg = icmp ult i8 %spec.select109121127, -112
  br i1 %i.eg, label %_Z17lightnessToLetteri.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = icmp samesign ult i8 %spec.select109121127, -80
  br i1 %i.eh, label %_Z17lightnessToLetteri.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = icmp samesign ult i8 %spec.select109121127, -48
  br i1 %i.ei, label %_Z17lightnessToLetteri.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = icmp samesign ult i8 %spec.select109121127, -16
  %..i47 = select i1 %i.ej, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.bb:                                            ; preds = %_Z11HueToLetteri.exit46
  %i.ek = or disjoint i8 %.0.i45, 32
  %i.el = icmp slt i8 %spec.select109, 0
  %spec.select = select i1 %i.el, i8 %.0.i45, i8 %i.ek
  br label %_Z17lightnessToLetteri.exit

_Z17lightnessToLetteri.exit:                      ; preds = %bb.bb, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_Z11HueToLetteri.exit, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.1 = phi i8 [ %..i38, %bb.ac ], [ %i.ca, %_Z11HueToLetteri.exit ], [ 43, %bb.ab ], [ 32, %bb.v ], [ 46, %bb.w ], [ 58, %bb.x ], [ 45, %bb.y ], [ 33, %bb.z ], [ 42, %bb.aa ], [ %spec.select, %bb.bb ], [ 43, %bb.az ], [ 32, %bb.at ], [ 46, %bb.au ], [ 58, %bb.av ], [ 45, %bb.aw ], [ 33, %bb.ax ], [ 42, %bb.ay ], [ %..i47, %bb.ba ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define void @_Z7rescaleRKSt6vectorIhSaIhEEiiiib(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !117
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = mul nsw i32 %3, %2
  %i.h = sext i32 %i.g to i64
  %i.i = udiv i64 %i.f, %i.h                      ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 17 uses
  %i.k = mul i32 %4, %i.j                         ; 2 uses
  %i.l = mul i32 %i.k, %5                         ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #25
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc175

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc175:                                        ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29 ; 6 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !117
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !128
  store i8 0, ptr %i.o, align 1, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.s = add nsw i64 %i.m, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc175
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc175, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.p, %.noexc175 ], [ %i.p, %bb.b ]
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc175 ], [ %i.o, %bb.b ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.r, %.noexc175 ], [ %i.p, %bb.b ]
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !116
  br i1 %6, label %bb.d, label %.preheader191

.preheader191:                                    ; preds = %bb.c
  %i.y = icmp sgt i32 %5, 0
  br i1 %i.y, label %.lr.ph198, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.lr.ph198:                                        ; preds = %.preheader191
  %i.z = sitofp i32 %3 to double
  %i.aa = uitofp nneg i32 %5 to double
  %i.ab = icmp slt i32 %4, 1
  %i.ac = sitofp i32 %2 to double
  %i.ad = sitofp i32 %4 to double
  %i.ae = icmp slt i32 %i.j, 1
  %brmerge = or i1 %i.ab, %i.ae
  br i1 %brmerge, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %.lr.ph198
  %i.af = and i64 %i.i, 2147483647                ; 6 uses
  %i.ag = zext nneg i32 %4 to i64                 ; 2 uses
  %wide.trip.count242 = zext nneg i32 %5 to i64
  %.pre.pre.pre = load ptr, ptr %1, align 8, !tbaa !117 ; 2 uses
  %.pre.pre.pre313 = ptrtoaddr ptr %.pre.pre.pre to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  %min.iters.check314 = icmp samesign ult i64 %i.af, 32
  %i.ah = and i64 %umax, 28
  %n.vec = and i64 %umax, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec316 = and i64 %umax, 2147483644           ; 3 uses
  %cmp.n320 = icmp eq i64 %i.af, %n.vec316
  br label %.lr.ph195

bb.d:                                             ; preds = %bb.c
  %i.ai = mul i32 %i.k, %3                        ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.e, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #25
          to label %.noexc180 unwind label %bb.i

.noexc180:                                        ; preds = %bb.e
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176: ; preds = %bb.d
  %.not.i.i.i.i177 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i177, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #29
          to label %.noexc181 unwind label %bb.i  ; 5 uses

.noexc181:                                        ; preds = %bb.f
  %i.am = getelementptr i8, ptr %i.al, i64 %i.aj  ; 2 uses
  store i8 0, ptr %i.al, align 1, !tbaa !34
  %i.an = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182, label %bb.g

bb.g:                                             ; preds = %.noexc181
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ap, i8 0, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182:            ; preds = %bb.g, %.noexc181, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176
  %.sroa.10.0 = phi ptr [ %i.am, %bb.g ], [ %i.am, %.noexc181 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176 ]
  %.sroa.0185.0 = phi ptr [ %i.al, %bb.g ], [ %i.al, %.noexc181 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i176 ] ; 9 uses
  %i.aq = icmp sgt i32 %i.j, 0
  br i1 %i.aq, label %.preheader190.lr.ph, label %._crit_edge224

.preheader190.lr.ph:                              ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182
  %i.ar = icmp slt i32 %4, 1                      ; 2 uses
  %7 = sitofp i32 %2 to double
  %8 = sitofp i32 %4 to double
  %i.as = icmp slt i32 %3, 1
  %i.at = icmp slt i32 %5, 1
  %9 = sitofp i32 %3 to double
  %10 = sitofp i32 %5 to double
  %i.au = sext i32 %2 to i64                      ; 2 uses
  %i.av = sext i32 %3 to i64                      ; 2 uses
  %i.aw = zext i32 %4 to i64                      ; 4 uses
  %brmerge228 = or i1 %i.ar, %i.as
  %wide.trip.count247 = zext i32 %3 to i64        ; 2 uses
  %wide.trip.count257 = zext nneg i32 %3 to i64
  %brmerge231 = or i1 %i.at, %i.ar
  %wide.trip.count281 = zext nneg i32 %5 to i64
  %11 = insertelement <2 x double> poison, double %7, i64 0
  %i.ax = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> poison, double %8, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %wide.trip.count247, 1
  %i.ay = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count247, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod325 = trunc i32 %3 to i1
  %14 = insertelement <2 x double> poison, double %9, i64 0
  %i.az = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = insertelement <2 x double> poison, double %10, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter326 = and i64 %i.aw, 1
  %i.ba = icmp eq i32 %4, 1
  %unroll_iter329 = and i64 %i.aw, 2147483646
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  %lcmp.mod328 = trunc i32 %4 to i1
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %._crit_edge221.split
  %.0163222 = phi i32 [ 0, %.preheader190.lr.ph ], [ %i.fa, %._crit_edge221.split ] ; 13 uses
  br i1 %brmerge228, label %.preheader, label %.lr.ph207

._crit_edge224:                                   ; preds = %._crit_edge221.split, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182
  %.not.i.i.i = icmp eq ptr %.sroa.0185.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge224
  %i.bb = ptrtoint ptr %.sroa.10.0 to i64
  %i.bc = ptrtoint ptr %.sroa.0185.0 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0, i64 noundef %i.bd) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i183 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIhSaIhEED2Ev.exit184, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = ptrtoint ptr %i.u to i64
  %i.bg = ptrtoint ptr %i.v to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bh) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit184

..loopexit189_crit_edge.loopexit322.unr-lcssa:    ; preds = %.lr.ph207.split
  br i1 %lcmp.mod.not, label %..loopexit189_crit_edge, label %.lr.ph207.split.epil.preheader

.lr.ph207.split.epil.preheader:                   ; preds = %..loopexit189_crit_edge.loopexit322.unr-lcssa, %.lr.ph207.split.preheader
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph207.split.preheader ], [ %indvars.iv.next245.1, %..loopexit189_crit_edge.loopexit322.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod325)
  %i.bi = trunc i64 %indvars.iv244.epil.init to i32
  %i.bj = mul i32 %4, %i.bi
  %i.bk = add nuw i32 %i.bj, %.0162208
  %i.bl = mul i32 %i.bk, %i.j
  %i.bm = add nsw i32 %i.bl, %.0163222
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !34
  br label %..loopexit189_crit_edge

..loopexit189_crit_edge:                          ; preds = %.lr.ph207.split.epil.preheader, %..loopexit189_crit_edge.loopexit322.unr-lcssa, %._crit_edge204.us
  %exitcond259.not = icmp eq i32 %i.bp, %4
  br i1 %exitcond259.not, label %.preheader, label %.lr.ph207, !llvm.loop !129

.preheader:                                       ; preds = %..loopexit189_crit_edge, %.preheader190
  br i1 %brmerge231, label %._crit_edge221.split, label %.lr.ph217

.lr.ph207:                                        ; preds = %.preheader190, %..loopexit189_crit_edge
  %.0162208 = phi i32 [ %i.bp, %..loopexit189_crit_edge ], [ 0, %.preheader190 ] ; 6 uses
  %i.bp = add nuw nsw i32 %.0162208, 1            ; 3 uses
  %i.bq = uitofp nneg i32 %i.bp to double
  %i.br = uitofp nneg i32 %.0162208 to double
  %i.bs = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bq, i64 1
  %i.bu = fmul nnan <2 x double> %i.ax, %i.bt
  %i.bv = fdiv <2 x double> %i.bu, %13
  %i.bw = fptrunc <2 x double> %i.bv to <2 x float> ; 3 uses
  %i.bx = fptosi <2 x float> %i.bw to <2 x i32>   ; 2 uses
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 3 uses
  %i.bz = extractelement <2 x float> %i.bw, i64 1 ; 3 uses
  %i.ca = fsub float %i.bz, %i.by
  %i.cb = fpext float %i.ca to double
  %i.cc = fdiv double 1.000000e+00, %i.cb
  %i.cd = extractelement <2 x i32> %i.bx, i64 0   ; 6 uses
  %i.ce = extractelement <2 x i32> %i.bx, i64 1   ; 4 uses
  %i.cf = icmp sle i32 %i.cd, %i.ce
  %i.cg = icmp sgt i32 %2, %i.cd
  %i.ch = and i1 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph207.split.us, label %.lr.ph207.split.preheader

.lr.ph207.split.preheader:                        ; preds = %.lr.ph207
  br i1 %i.ay, label %.lr.ph207.split.epil.preheader, label %.lr.ph207.split

.lr.ph207.split.us:                               ; preds = %.lr.ph207
  %i.ci = tail call noundef float @llvm.floor.f32(float %i.bz)
  %i.cj = fsub float %i.ci, %i.bz
  %i.ck = fadd float %i.cj, 1.000000e+00
  %i.cl = fpext float %i.ck to double             ; 2 uses
  %i.cm = tail call noundef float @llvm.floor.f32(float %i.by)
  %i.cn = fsub float %i.by, %i.cm
  %i.co = fpext float %i.cn to double
  %i.cp = fsub double 1.000000e+00, %i.co         ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !117   ; 2 uses
  %i.cr = sext i32 %i.cd to i64
  %i.cs = sext i32 %i.ce to i64                   ; 2 uses
  %i.ct = icmp eq i32 %i.cd, %i.ce
  %i.cu = fsub double %i.cp, %i.cl
  %.1158.us.peel = select i1 %i.ct, double %i.cu, double %i.cp
  %indvars.iv.next250.peel = add nsw i64 %i.cr, 1 ; 2 uses
  %i.cv = icmp slt i32 %i.cd, %i.ce
  %i.cw = icmp slt i64 %indvars.iv.next250.peel, %i.au
  %i.cx = and i1 %i.cv, %i.cw
  %i.cy = fsub double 1.000000e+00, %i.cl
  br label %.lr.ph203.us

.lr.ph203.us:                                     ; preds = %._crit_edge204.us, %.lr.ph207.split.us
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %._crit_edge204.us ], [ 0, %.lr.ph207.split.us ] ; 3 uses
  %i.cz = trunc i64 %indvars.iv254 to i32
  %i.da = mul i32 %2, %i.cz                       ; 2 uses
  %i.db = add i32 %i.da, %i.cd
  %i.dc = mul i32 %i.db, %i.j
  %i.dd = add nsw i32 %i.dc, %.0163222
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !34
  %i.dh = uitofp i8 %i.dg to double
  %i.di = tail call double @llvm.fmuladd.f64(double %.1158.us.peel, double %i.dh, double 0.000000e+00) ; 2 uses
  br i1 %i.cx, label %.peel.next, label %._crit_edge204.us

.peel.next:                                       ; preds = %.lr.ph203.us, %.peel.next
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.peel.next ], [ %indvars.iv.next250.peel, %.lr.ph203.us ] ; 4 uses
  %.0160200.us = phi double [ %i.ds, %.peel.next ], [ %i.di, %.lr.ph203.us ]
  %i.dj = trunc nsw i64 %indvars.iv249 to i32
  %i.dk = add i32 %i.da, %i.dj
  %i.dl = mul i32 %i.dk, %i.j
  %i.dm = icmp eq i64 %indvars.iv249, %i.cs
  %.1158.us = select i1 %i.dm, double %i.cy, double 1.000000e+00
  %i.dn = add nsw i32 %i.dl, %.0163222
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !34
  %i.dr = uitofp i8 %i.dq to double
  %i.ds = tail call double @llvm.fmuladd.f64(double %.1158.us, double %i.dr, double %.0160200.us) ; 2 uses
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.dt = icmp slt i64 %indvars.iv249, %i.cs
  %i.du = icmp slt i64 %indvars.iv.next250, %i.au
  %i.dv = and i1 %i.dt, %i.du
  br i1 %i.dv, label %.peel.next, label %._crit_edge204.us, !llvm.loop !130

._crit_edge204.us:                                ; preds = %.peel.next, %.lr.ph203.us
  %.lcssa = phi double [ %i.di, %.lr.ph203.us ], [ %i.ds, %.peel.next ]
  %i.dw = trunc i64 %indvars.iv254 to i32
  %i.dx = mul i32 %4, %i.dw
  %i.dy = add nuw i32 %i.dx, %.0162208
  %i.dz = mul i32 %i.dy, %i.j
  %i.ea = fmul double %i.cc, %.lcssa
  %i.eb = fptoui double %i.ea to i8
  %i.ec = add nsw i32 %i.dz, %.0163222
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.ed
  store i8 %i.eb, ptr %i.ee, align 1, !tbaa !34
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %..loopexit189_crit_edge, label %.lr.ph203.us, !llvm.loop !132

.lr.ph207.split:                                  ; preds = %.lr.ph207.split.preheader, %.lr.ph207.split
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph207.split ], [ 0, %.lr.ph207.split.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph207.split ], [ 0, %.lr.ph207.split.preheader ]
  %i.ef = trunc i64 %indvars.iv244 to i32
  %i.eg = mul i32 %4, %i.ef
  %i.eh = add nuw i32 %i.eg, %.0162208
  %i.ei = mul i32 %i.eh, %i.j
  %i.ej = add nsw i32 %i.ei, %.0163222
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.ek
  store i8 0, ptr %i.el, align 1, !tbaa !34
  %i.em = trunc i64 %indvars.iv244 to i32
  %i.en = or disjoint i32 %i.em, 1
  %i.eo = mul i32 %4, %i.en
  %i.ep = add nuw i32 %i.eo, %.0162208
  %i.eq = mul i32 %i.ep, %i.j
  %i.er = add nsw i32 %i.eq, %.0163222
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.es
  store i8 0, ptr %i.et, align 1, !tbaa !34
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit189_crit_edge.loopexit322.unr-lcssa, label %.lr.ph207.split, !llvm.loop !132

..loopexit_crit_edge.loopexit321.unr-lcssa:       ; preds = %.lr.ph217.split
  br i1 %lcmp.mod327.not, label %..loopexit_crit_edge, label %.lr.ph217.split.epil.preheader

.lr.ph217.split.epil.preheader:                   ; preds = %..loopexit_crit_edge.loopexit321.unr-lcssa, %.lr.ph217.split.preheader
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph217.split.preheader ], [ %indvars.iv.next261.1, %..loopexit_crit_edge.loopexit321.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod328)
  %i.eu = add nuw nsw i64 %indvars.iv260.epil.init, %i.fr
  %i.ev = trunc nuw i64 %i.eu to i32
  %i.ew = mul i32 %i.ev, %i.j
  %i.ex = add nsw i32 %i.ew, %.0163222
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ey
  store i8 0, ptr %i.ez, align 1, !tbaa !34
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %.lr.ph217.split.epil.preheader, %..loopexit_crit_edge.loopexit321.unr-lcssa, %._crit_edge214.us
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge221.split, label %.lr.ph217, !llvm.loop !133

._crit_edge221.split:                             ; preds = %..loopexit_crit_edge, %.preheader
  %i.fa = add nuw nsw i32 %.0163222, 1            ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %i.j
  br i1 %i.fb, label %.preheader190, label %._crit_edge224, !llvm.loop !134

.lr.ph217:                                        ; preds = %.preheader, %..loopexit_crit_edge
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %..loopexit_crit_edge ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv.next279 to i32
  %i.fd = trunc nuw nsw i64 %indvars.iv278 to i32
  %i.fe = uitofp nneg i32 %i.fc to double
  %i.ff = uitofp nneg i32 %i.fd to double
  %i.fg = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.fe, i64 1
  %i.fi = fmul nnan <2 x double> %i.az, %i.fh
  %i.fj = fdiv <2 x double> %i.fi, %16
  %i.fk = fptrunc <2 x double> %i.fj to <2 x float> ; 3 uses
  %i.fl = fptosi <2 x float> %i.fk to <2 x i32>   ; 2 uses
  %i.fm = extractelement <2 x float> %i.fk, i64 0 ; 3 uses
  %i.fn = extractelement <2 x float> %i.fk, i64 1 ; 3 uses
  %i.fo = fsub float %i.fn, %i.fm
  %i.fp = fpext float %i.fo to double
  %i.fq = fdiv double 1.000000e+00, %i.fp
  %i.fr = mul nuw nsw i64 %indvars.iv278, %i.aw   ; 4 uses
  %i.fs = extractelement <2 x i32> %i.fl, i64 0   ; 6 uses
  %i.ft = extractelement <2 x i32> %i.fl, i64 1   ; 4 uses
  %i.fu = icmp sle i32 %i.fs, %i.ft
  %i.fv = icmp sgt i32 %3, %i.fs
  %i.fw = and i1 %i.fu, %i.fv
  br i1 %i.fw, label %.lr.ph213.us.preheader, label %.lr.ph217.split.preheader

.lr.ph217.split.preheader:                        ; preds = %.lr.ph217
  br i1 %i.ba, label %.lr.ph217.split.epil.preheader, label %.lr.ph217.split

.lr.ph213.us.preheader:                           ; preds = %.lr.ph217
  %i.fx = tail call noundef float @llvm.floor.f32(float %i.fn)
  %i.fy = fsub float %i.fx, %i.fn
  %i.fz = fadd float %i.fy, 1.000000e+00
  %i.ga = fpext float %i.fz to double             ; 2 uses
  %i.gb = tail call noundef float @llvm.floor.f32(float %i.fm)
  %i.gc = fsub float %i.fm, %i.gb
  %i.gd = fpext float %i.gc to double
  %i.ge = fsub double 1.000000e+00, %i.gd         ; 2 uses
  %i.gf = sext i32 %i.fs to i64
  %i.gg = sext i32 %i.ft to i64                   ; 2 uses
  %i.gh = mul i32 %4, %i.fs
  %i.gi = icmp eq i32 %i.fs, %i.ft
  %i.gj = fsub double %i.ge, %i.ga
  %.1.us.peel = select i1 %i.gi, double %i.gj, double %i.ge
  %indvars.iv.next266.peel = add nsw i64 %i.gf, 1 ; 2 uses
  %i.gk = icmp slt i32 %i.fs, %i.ft
  %i.gl = icmp slt i64 %indvars.iv.next266.peel, %i.av
  %i.gm = and i1 %i.gk, %i.gl
  %i.gn = fsub double 1.000000e+00, %i.ga
  br label %.lr.ph213.us

.lr.ph213.us:                                     ; preds = %.lr.ph213.us.preheader, %._crit_edge214.us
  %indvars.iv273 = phi i64 [ 0, %.lr.ph213.us.preheader ], [ %indvars.iv.next274, %._crit_edge214.us ] ; 3 uses
  %i.go = trunc nuw nsw i64 %indvars.iv273 to i32 ; 2 uses
  %i.gp = add i32 %i.gh, %i.go
  %i.gq = mul i32 %i.gp, %i.j
  %i.gr = add nsw i32 %i.gq, %.0163222
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !34
  %i.gv = uitofp i8 %i.gu to double
  %i.gw = tail call double @llvm.fmuladd.f64(double %.1.us.peel, double %i.gv, double 0.000000e+00) ; 2 uses
  br i1 %i.gm, label %.peel.next271, label %._crit_edge214.us

.peel.next271:                                    ; preds = %.lr.ph213.us, %.peel.next271
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %.peel.next271 ], [ %indvars.iv.next266.peel, %.lr.ph213.us ] ; 4 uses
  %.0154210.us = phi double [ %i.hh, %.peel.next271 ], [ %i.gw, %.lr.ph213.us ]
  %i.gx = trunc i64 %indvars.iv265 to i32
  %i.gy = mul i32 %4, %i.gx
  %i.gz = add i32 %i.gy, %i.go
  %i.ha = mul i32 %i.gz, %i.j
  %i.hb = icmp eq i64 %indvars.iv265, %i.gg
  %.1.us = select i1 %i.hb, double %i.gn, double 1.000000e+00
  %i.hc = add nsw i32 %i.ha, %.0163222
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !34
  %i.hg = uitofp i8 %i.hf to double
  %i.hh = tail call double @llvm.fmuladd.f64(double %.1.us, double %i.hg, double %.0154210.us) ; 2 uses
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.hi = icmp slt i64 %indvars.iv265, %i.gg
  %i.hj = icmp slt i64 %indvars.iv.next266, %i.av
  %i.hk = and i1 %i.hi, %i.hj
  br i1 %i.hk, label %.peel.next271, label %._crit_edge214.us, !llvm.loop !135

._crit_edge214.us:                                ; preds = %.peel.next271, %.lr.ph213.us
  %.lcssa234 = phi double [ %i.gw, %.lr.ph213.us ], [ %i.hh, %.peel.next271 ]
  %i.hl = add nuw nsw i64 %indvars.iv273, %i.fr
  %i.hm = trunc nuw i64 %i.hl to i32
  %i.hn = mul i32 %i.hm, %i.j
  %i.ho = fmul double %i.fq, %.lcssa234
  %i.hp = fptoui double %i.ho to i8
  %i.hq = add nsw i32 %i.hn, %.0163222
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hr
  store i8 %i.hp, ptr %i.hs, align 1, !tbaa !34
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.aw
  br i1 %exitcond277.not, label %..loopexit_crit_edge, label %.lr.ph213.us, !llvm.loop !136

.lr.ph217.split:                                  ; preds = %.lr.ph217.split.preheader, %.lr.ph217.split
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ] ; 3 uses
  %niter330 = phi i64 [ %niter330.next.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ]
  %i.ht = add nuw nsw i64 %indvars.iv260, %i.fr
  %i.hu = trunc nuw i64 %i.ht to i32
  %i.hv = mul i32 %i.hu, %i.j
  %i.hw = add nsw i32 %i.hv, %.0163222
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hx
  store i8 0, ptr %i.hy, align 1, !tbaa !34
  %indvars.iv.next261 = or disjoint i64 %indvars.iv260, 1
  %i.hz = add nuw nsw i64 %indvars.iv.next261, %i.fr
  %i.ia = trunc nuw i64 %i.hz to i32
  %i.ib = mul i32 %i.ia, %i.j
  %i.ic = add nsw i32 %i.ib, %.0163222
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.id
  store i8 0, ptr %i.ie, align 1, !tbaa !34
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %niter330.next.1 = add i64 %niter330, 2         ; 2 uses
  %niter330.ncmp.1 = icmp eq i64 %niter330.next.1, %unroll_iter329
  br i1 %niter330.ncmp.1, label %..loopexit_crit_edge.loopexit321.unr-lcssa, label %.lr.ph217.split, !llvm.loop !136

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %._crit_edge196
  %indvars.iv239 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next240, %._crit_edge196 ] ; 3 uses
  %i.if = trunc nuw nsw i64 %indvars.iv239 to i32
  %i.ig = uitofp nneg i32 %i.if to double
  %i.ih = fadd nnan double %i.ig, 5.000000e-01
  %i.ii = fmul double %i.ih, %i.z
  %i.ij = fdiv double %i.ii, %i.aa
  %i.ik = fadd double %i.ij, -5.000000e-01
  %i.il = fptosi double %i.ik to i32
  %i.im = mul nsw i32 %2, %i.il
  %i.in = mul nuw nsw i64 %indvars.iv239, %i.ag
  br label %iter.check

._crit_edge196:                                   ; preds = %._crit_edge
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195, !llvm.loop !137

iter.check:                                       ; preds = %.lr.ph195, %._crit_edge
  %indvars.iv236 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next237, %._crit_edge ] ; 3 uses
  %i.io = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.ip = uitofp nneg i32 %i.io to double
  %i.iq = fadd nnan double %i.ip, 5.000000e-01
  %i.ir = fmul double %i.iq, %i.ac
  %i.is = fdiv double %i.ir, %i.ad
  %i.it = fadd double %i.is, -5.000000e-01
  %i.iu = fptosi double %i.it to i32
  %i.iv = add i32 %i.im, %i.iu
  %i.iw = mul i32 %i.iv, %i.j
  %i.ix = add nuw nsw i64 %indvars.iv236, %i.in
  %i.iy = mul i64 %i.ix, %i.i
  %i.iz = sext i32 %i.iw to i64                   ; 2 uses
  %sext = shl i64 %i.iy, 32
  %i.ja = ashr exact i64 %sext, 32                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.pre.pre.pre, i64 %i.iz ; 3 uses
  %invariant.gep307 = getelementptr i8, ptr %i.v, i64 %i.ja ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jb = add i64 %i.ja, %i.w
  %i.jc = add i64 %.pre.pre.pre313, %i.iz
  %i.jd = sub i64 %i.jc, %i.jb
  %diff.check = icmp ugt i64 %i.jd, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check314, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.je = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %wide.load = load <16 x i8>, ptr %i.je, align 1, !tbaa !34
  %wide.load315 = load <16 x i8>, ptr %i.jf, align 1, !tbaa !34
  %i.jg = getelementptr i8, ptr %invariant.gep307, i64 %index ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  store <16 x i8> %wide.load, ptr %i.jg, align 1, !tbaa !34
  store <16 x i8> %wide.load315, ptr %i.jh, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !141

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index317 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next319, %vec.epilog.vector.body ] ; 3 uses
  %i.jj = getelementptr i8, ptr %invariant.gep, i64 %index317
  %wide.load318 = load <4 x i8>, ptr %i.jj, align 1, !tbaa !34
  %i.jk = getelementptr i8, ptr %invariant.gep307, i64 %index317
  store <4 x i8> %wide.load318, ptr %i.jk, align 1, !tbaa !34
  %index.next319 = add nuw i64 %index317, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next319, %n.vec316
  br i1 %i.jl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n320, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec316, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph
end_hunk_0
