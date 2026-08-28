Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z11RGBtoLetterhhhhjjbb:bb.a
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
  %i.as = sitofp i32 %2 to double
  %i.at = sitofp i32 %4 to double
  %i.au = icmp slt i32 %3, 1
  %i.av = icmp slt i32 %5, 1
  %i.aw = sitofp i32 %3 to double
  %i.ax = sitofp i32 %5 to double
  %i.ay = sext i32 %2 to i64                      ; 2 uses
  %i.az = sext i32 %3 to i64                      ; 2 uses
  %i.ba = zext i32 %4 to i64                      ; 4 uses
  %brmerge228 = or i1 %i.ar, %i.au
  %wide.trip.count247 = zext i32 %3 to i64        ; 2 uses
  %wide.trip.count257 = zext nneg i32 %3 to i64
  %brmerge231 = or i1 %i.av, %i.ar
  %wide.trip.count281 = zext nneg i32 %5 to i64
  %i.bb = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> poison, double %i.at, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %wide.trip.count247, 1
  %7 = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count247, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod325 = trunc i32 %3 to i1
  %i.bf = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter326 = and i64 %i.ba, 1
  %i.bj = icmp eq i32 %4, 1
  %unroll_iter329 = and i64 %i.ba, 2147483646
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  %lcmp.mod328 = trunc i32 %4 to i1
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %._crit_edge221.split
  %.0163222 = phi i32 [ 0, %.preheader190.lr.ph ], [ %i.fj, %._crit_edge221.split ] ; 13 uses
  br i1 %brmerge228, label %.preheader, label %.lr.ph207

._crit_edge224:                                   ; preds = %._crit_edge221.split, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182
  %.not.i.i.i = icmp eq ptr %.sroa.0185.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge224
  %i.bk = ptrtoint ptr %.sroa.10.0 to i64
  %i.bl = ptrtoint ptr %.sroa.0185.0 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0, i64 noundef %i.bm) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i183 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIhSaIhEED2Ev.exit184, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = ptrtoint ptr %i.u to i64
  %i.bp = ptrtoint ptr %i.v to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bq) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit184

..loopexit189_crit_edge.loopexit322.unr-lcssa:    ; preds = %.lr.ph207.split
  br i1 %lcmp.mod.not, label %..loopexit189_crit_edge, label %.lr.ph207.split.epil.preheader

.lr.ph207.split.epil.preheader:                   ; preds = %..loopexit189_crit_edge.loopexit322.unr-lcssa, %.lr.ph207.split.preheader
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph207.split.preheader ], [ %indvars.iv.next245.1, %..loopexit189_crit_edge.loopexit322.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod325)
  %i.br = trunc i64 %indvars.iv244.epil.init to i32
  %i.bs = mul i32 %4, %i.br
  %i.bt = add nuw i32 %i.bs, %.0162208
  %i.bu = mul i32 %i.bt, %i.j
  %i.bv = add nsw i32 %i.bu, %.0163222
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.bw
  store i8 0, ptr %i.bx, align 1, !tbaa !34
  br label %..loopexit189_crit_edge

..loopexit189_crit_edge:                          ; preds = %.lr.ph207.split.epil.preheader, %..loopexit189_crit_edge.loopexit322.unr-lcssa, %._crit_edge204.us
  %exitcond259.not = icmp eq i32 %i.by, %4
  br i1 %exitcond259.not, label %.preheader, label %.lr.ph207, !llvm.loop !129

.preheader:                                       ; preds = %..loopexit189_crit_edge, %.preheader190
  br i1 %brmerge231, label %._crit_edge221.split, label %.lr.ph217

.lr.ph207:                                        ; preds = %.preheader190, %..loopexit189_crit_edge
  %.0162208 = phi i32 [ %i.by, %..loopexit189_crit_edge ], [ 0, %.preheader190 ] ; 6 uses
  %i.by = add nuw nsw i32 %.0162208, 1            ; 3 uses
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = uitofp nneg i32 %.0162208 to double
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bz, i64 1
  %i.cd = fmul nnan <2 x double> %i.bc, %i.cc
  %i.ce = fdiv <2 x double> %i.cd, %i.be
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float> ; 3 uses
  %i.cg = fptosi <2 x float> %i.cf to <2 x i32>   ; 2 uses
  %i.ch = extractelement <2 x float> %i.cf, i64 0 ; 3 uses
  %i.ci = extractelement <2 x float> %i.cf, i64 1 ; 3 uses
  %i.cj = fsub float %i.ci, %i.ch
  %i.ck = fpext float %i.cj to double
  %i.cl = fdiv double 1.000000e+00, %i.ck
  %i.cm = extractelement <2 x i32> %i.cg, i64 0   ; 6 uses
  %i.cn = extractelement <2 x i32> %i.cg, i64 1   ; 4 uses
  %i.co = icmp sle i32 %i.cm, %i.cn
  %i.cp = icmp sgt i32 %2, %i.cm
  %i.cq = and i1 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph207.split.us, label %.lr.ph207.split.preheader

.lr.ph207.split.preheader:                        ; preds = %.lr.ph207
  br i1 %7, label %.lr.ph207.split.epil.preheader, label %.lr.ph207.split

.lr.ph207.split.us:                               ; preds = %.lr.ph207
  %i.cr = tail call noundef float @llvm.floor.f32(float %i.ci)
  %i.cs = fsub float %i.cr, %i.ci
  %i.ct = fadd float %i.cs, 1.000000e+00
  %i.cu = fpext float %i.ct to double             ; 2 uses
  %i.cv = tail call noundef float @llvm.floor.f32(float %i.ch)
  %i.cw = fsub float %i.ch, %i.cv
  %i.cx = fpext float %i.cw to double
  %i.cy = fsub double 1.000000e+00, %i.cx         ; 2 uses
  %i.cz = load ptr, ptr %1, align 8, !tbaa !117   ; 2 uses
  %i.da = sext i32 %i.cm to i64
  %i.db = sext i32 %i.cn to i64                   ; 2 uses
  %i.dc = icmp eq i32 %i.cm, %i.cn
  %i.dd = fsub double %i.cy, %i.cu
  %.1158.us.peel = select i1 %i.dc, double %i.dd, double %i.cy
  %indvars.iv.next250.peel = add nsw i64 %i.da, 1 ; 2 uses
  %i.de = icmp slt i32 %i.cm, %i.cn
  %i.df = icmp slt i64 %indvars.iv.next250.peel, %i.ay
  %i.dg = and i1 %i.de, %i.df
  %i.dh = fsub double 1.000000e+00, %i.cu
  br label %.lr.ph203.us

.lr.ph203.us:                                     ; preds = %._crit_edge204.us, %.lr.ph207.split.us
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %._crit_edge204.us ], [ 0, %.lr.ph207.split.us ] ; 3 uses
  %i.di = trunc i64 %indvars.iv254 to i32
  %i.dj = mul i32 %2, %i.di                       ; 2 uses
  %i.dk = add i32 %i.dj, %i.cm
  %i.dl = mul i32 %i.dk, %i.j
  %i.dm = add nsw i32 %i.dl, %.0163222
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !34
  %i.dq = uitofp i8 %i.dp to double
  %i.dr = tail call double @llvm.fmuladd.f64(double %.1158.us.peel, double %i.dq, double 0.000000e+00) ; 2 uses
  br i1 %i.dg, label %.peel.next, label %._crit_edge204.us

.peel.next:                                       ; preds = %.lr.ph203.us, %.peel.next
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.peel.next ], [ %indvars.iv.next250.peel, %.lr.ph203.us ] ; 4 uses
  %.0160200.us = phi double [ %i.eb, %.peel.next ], [ %i.dr, %.lr.ph203.us ]
  %i.ds = trunc nsw i64 %indvars.iv249 to i32
  %i.dt = add i32 %i.dj, %i.ds
  %i.du = mul i32 %i.dt, %i.j
  %i.dv = icmp eq i64 %indvars.iv249, %i.db
  %.1158.us = select i1 %i.dv, double %i.dh, double 1.000000e+00
  %i.dw = add nsw i32 %i.du, %.0163222
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !34
  %i.ea = uitofp i8 %i.dz to double
  %i.eb = tail call double @llvm.fmuladd.f64(double %.1158.us, double %i.ea, double %.0160200.us) ; 2 uses
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.ec = icmp slt i64 %indvars.iv249, %i.db
  %i.ed = icmp slt i64 %indvars.iv.next250, %i.ay
  %i.ee = and i1 %i.ec, %i.ed
  br i1 %i.ee, label %.peel.next, label %._crit_edge204.us, !llvm.loop !130

._crit_edge204.us:                                ; preds = %.peel.next, %.lr.ph203.us
  %.lcssa = phi double [ %i.dr, %.lr.ph203.us ], [ %i.eb, %.peel.next ]
  %i.ef = trunc i64 %indvars.iv254 to i32
  %i.eg = mul i32 %4, %i.ef
  %i.eh = add nuw i32 %i.eg, %.0162208
  %i.ei = mul i32 %i.eh, %i.j
  %i.ej = fmul double %i.cl, %.lcssa
  %i.ek = fptoui double %i.ej to i8
  %i.el = add nsw i32 %i.ei, %.0163222
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.em
  store i8 %i.ek, ptr %i.en, align 1, !tbaa !34
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %..loopexit189_crit_edge, label %.lr.ph203.us, !llvm.loop !132

.lr.ph207.split:                                  ; preds = %.lr.ph207.split.preheader, %.lr.ph207.split
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %.lr.ph207.split ], [ 0, %.lr.ph207.split.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph207.split ], [ 0, %.lr.ph207.split.preheader ]
  %i.eo = trunc i64 %indvars.iv244 to i32
  %i.ep = mul i32 %4, %i.eo
  %i.eq = add nuw i32 %i.ep, %.0162208
  %i.er = mul i32 %i.eq, %i.j
  %i.es = add nsw i32 %i.er, %.0163222
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.et
  store i8 0, ptr %i.eu, align 1, !tbaa !34
  %i.ev = trunc i64 %indvars.iv244 to i32
  %i.ew = or disjoint i32 %i.ev, 1
  %i.ex = mul i32 %4, %i.ew
  %i.ey = add nuw i32 %i.ex, %.0162208
  %i.ez = mul i32 %i.ey, %i.j
  %i.fa = add nsw i32 %i.ez, %.0163222
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !34
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit189_crit_edge.loopexit322.unr-lcssa, label %.lr.ph207.split, !llvm.loop !132

..loopexit_crit_edge.loopexit321.unr-lcssa:       ; preds = %.lr.ph217.split
  br i1 %lcmp.mod327.not, label %..loopexit_crit_edge, label %.lr.ph217.split.epil.preheader

.lr.ph217.split.epil.preheader:                   ; preds = %..loopexit_crit_edge.loopexit321.unr-lcssa, %.lr.ph217.split.preheader
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph217.split.preheader ], [ %indvars.iv.next261.1, %..loopexit_crit_edge.loopexit321.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod328)
  %i.fd = add nuw nsw i64 %indvars.iv260.epil.init, %i.ga
  %i.fe = trunc nuw i64 %i.fd to i32
  %i.ff = mul i32 %i.fe, %i.j
  %i.fg = add nsw i32 %i.ff, %.0163222
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fh
  store i8 0, ptr %i.fi, align 1, !tbaa !34
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %.lr.ph217.split.epil.preheader, %..loopexit_crit_edge.loopexit321.unr-lcssa, %._crit_edge214.us
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge221.split, label %.lr.ph217, !llvm.loop !133

._crit_edge221.split:                             ; preds = %..loopexit_crit_edge, %.preheader
  %i.fj = add nuw nsw i32 %.0163222, 1            ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.j
  br i1 %i.fk, label %.preheader190, label %._crit_edge224, !llvm.loop !134

.lr.ph217:                                        ; preds = %.preheader, %..loopexit_crit_edge
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %..loopexit_crit_edge ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next279 to i32
  %i.fm = trunc nuw nsw i64 %indvars.iv278 to i32
  %i.fn = uitofp nneg i32 %i.fl to double
  %i.fo = uitofp nneg i32 %i.fm to double
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fn, i64 1
  %i.fr = fmul nnan <2 x double> %i.bg, %i.fq
  %i.fs = fdiv <2 x double> %i.fr, %i.bi
  %i.ft = fptrunc <2 x double> %i.fs to <2 x float> ; 3 uses
  %i.fu = fptosi <2 x float> %i.ft to <2 x i32>   ; 2 uses
  %i.fv = extractelement <2 x float> %i.ft, i64 0 ; 3 uses
  %i.fw = extractelement <2 x float> %i.ft, i64 1 ; 3 uses
  %i.fx = fsub float %i.fw, %i.fv
  %i.fy = fpext float %i.fx to double
  %i.fz = fdiv double 1.000000e+00, %i.fy
  %i.ga = mul nuw nsw i64 %indvars.iv278, %i.ba   ; 4 uses
  %i.gb = extractelement <2 x i32> %i.fu, i64 0   ; 6 uses
  %i.gc = extractelement <2 x i32> %i.fu, i64 1   ; 4 uses
  %i.gd = icmp sle i32 %i.gb, %i.gc
  %i.ge = icmp sgt i32 %3, %i.gb
  %i.gf = and i1 %i.gd, %i.ge
  br i1 %i.gf, label %.lr.ph213.us.preheader, label %.lr.ph217.split.preheader

.lr.ph217.split.preheader:                        ; preds = %.lr.ph217
  br i1 %i.bj, label %.lr.ph217.split.epil.preheader, label %.lr.ph217.split

.lr.ph213.us.preheader:                           ; preds = %.lr.ph217
  %i.gg = tail call noundef float @llvm.floor.f32(float %i.fw)
  %i.gh = fsub float %i.gg, %i.fw
  %i.gi = fadd float %i.gh, 1.000000e+00
  %i.gj = fpext float %i.gi to double             ; 2 uses
  %i.gk = tail call noundef float @llvm.floor.f32(float %i.fv)
  %i.gl = fsub float %i.fv, %i.gk
  %i.gm = fpext float %i.gl to double
  %i.gn = fsub double 1.000000e+00, %i.gm         ; 2 uses
  %i.go = sext i32 %i.gb to i64
  %i.gp = sext i32 %i.gc to i64                   ; 2 uses
  %i.gq = mul i32 %4, %i.gb
  %i.gr = icmp eq i32 %i.gb, %i.gc
  %i.gs = fsub double %i.gn, %i.gj
  %.1.us.peel = select i1 %i.gr, double %i.gs, double %i.gn
  %indvars.iv.next266.peel = add nsw i64 %i.go, 1 ; 2 uses
  %i.gt = icmp slt i32 %i.gb, %i.gc
  %i.gu = icmp slt i64 %indvars.iv.next266.peel, %i.az
  %i.gv = and i1 %i.gt, %i.gu
  %i.gw = fsub double 1.000000e+00, %i.gj
  br label %.lr.ph213.us

.lr.ph213.us:                                     ; preds = %.lr.ph213.us.preheader, %._crit_edge214.us
  %indvars.iv273 = phi i64 [ 0, %.lr.ph213.us.preheader ], [ %indvars.iv.next274, %._crit_edge214.us ] ; 3 uses
  %i.gx = trunc nuw nsw i64 %indvars.iv273 to i32 ; 2 uses
  %i.gy = add i32 %i.gq, %i.gx
  %i.gz = mul i32 %i.gy, %i.j
  %i.ha = add nsw i32 %i.gz, %.0163222
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !34
  %i.he = uitofp i8 %i.hd to double
  %i.hf = tail call double @llvm.fmuladd.f64(double %.1.us.peel, double %i.he, double 0.000000e+00) ; 2 uses
  br i1 %i.gv, label %.peel.next271, label %._crit_edge214.us

.peel.next271:                                    ; preds = %.lr.ph213.us, %.peel.next271
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %.peel.next271 ], [ %indvars.iv.next266.peel, %.lr.ph213.us ] ; 4 uses
  %.0154210.us = phi double [ %i.hq, %.peel.next271 ], [ %i.hf, %.lr.ph213.us ]
  %i.hg = trunc i64 %indvars.iv265 to i32
  %i.hh = mul i32 %4, %i.hg
  %i.hi = add i32 %i.hh, %i.gx
  %i.hj = mul i32 %i.hi, %i.j
  %i.hk = icmp eq i64 %indvars.iv265, %i.gp
  %.1.us = select i1 %i.hk, double %i.gw, double 1.000000e+00
  %i.hl = add nsw i32 %i.hj, %.0163222
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !34
  %i.hp = uitofp i8 %i.ho to double
  %i.hq = tail call double @llvm.fmuladd.f64(double %.1.us, double %i.hp, double %.0154210.us) ; 2 uses
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.hr = icmp slt i64 %indvars.iv265, %i.gp
  %i.hs = icmp slt i64 %indvars.iv.next266, %i.az
  %i.ht = and i1 %i.hr, %i.hs
  br i1 %i.ht, label %.peel.next271, label %._crit_edge214.us, !llvm.loop !135

._crit_edge214.us:                                ; preds = %.peel.next271, %.lr.ph213.us
  %.lcssa234 = phi double [ %i.hf, %.lr.ph213.us ], [ %i.hq, %.peel.next271 ]
  %i.hu = add nuw nsw i64 %indvars.iv273, %i.ga
  %i.hv = trunc nuw i64 %i.hu to i32
  %i.hw = mul i32 %i.hv, %i.j
  %i.hx = fmul double %i.fz, %.lcssa234
  %i.hy = fptoui double %i.hx to i8
  %i.hz = add nsw i32 %i.hw, %.0163222
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ia
  store i8 %i.hy, ptr %i.ib, align 1, !tbaa !34
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.ba
  br i1 %exitcond277.not, label %..loopexit_crit_edge, label %.lr.ph213.us, !llvm.loop !136

.lr.ph217.split:                                  ; preds = %.lr.ph217.split.preheader, %.lr.ph217.split
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ] ; 3 uses
  %niter330 = phi i64 [ %niter330.next.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ]
  %i.ic = add nuw nsw i64 %indvars.iv260, %i.ga
  %i.id = trunc nuw i64 %i.ic to i32
  %i.ie = mul i32 %i.id, %i.j
  %i.if = add nsw i32 %i.ie, %.0163222
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ig
  store i8 0, ptr %i.ih, align 1, !tbaa !34
  %indvars.iv.next261 = or disjoint i64 %indvars.iv260, 1
  %i.ii = add nuw nsw i64 %indvars.iv.next261, %i.ga
  %i.ij = trunc nuw i64 %i.ii to i32
  %i.ik = mul i32 %i.ij, %i.j
  %i.il = add nsw i32 %i.ik, %.0163222
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.im
  store i8 0, ptr %i.in, align 1, !tbaa !34
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %niter330.next.1 = add i64 %niter330, 2         ; 2 uses
  %niter330.ncmp.1 = icmp eq i64 %niter330.next.1, %unroll_iter329
  br i1 %niter330.ncmp.1, label %..loopexit_crit_edge.loopexit321.unr-lcssa, label %.lr.ph217.split, !llvm.loop !136

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %._crit_edge196
  %indvars.iv239 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next240, %._crit_edge196 ] ; 3 uses
  %i.io = trunc nuw nsw i64 %indvars.iv239 to i32
  %i.ip = uitofp nneg i32 %i.io to double
  %i.iq = fadd nnan double %i.ip, 5.000000e-01
  %i.ir = fmul double %i.iq, %i.z
  %i.is = fdiv double %i.ir, %i.aa
  %i.it = fadd double %i.is, -5.000000e-01
  %i.iu = fptosi double %i.it to i32
  %i.iv = mul nsw i32 %2, %i.iu
  %i.iw = mul nuw nsw i64 %indvars.iv239, %i.ag
  br label %iter.check

._crit_edge196:                                   ; preds = %._crit_edge
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195, !llvm.loop !137

iter.check:                                       ; preds = %.lr.ph195, %._crit_edge
  %indvars.iv236 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next237, %._crit_edge ] ; 3 uses
  %i.ix = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.iy = uitofp nneg i32 %i.ix to double
  %i.iz = fadd nnan double %i.iy, 5.000000e-01
  %i.ja = fmul double %i.iz, %i.ac
  %i.jb = fdiv double %i.ja, %i.ad
  %i.jc = fadd double %i.jb, -5.000000e-01
  %i.jd = fptosi double %i.jc to i32
  %i.je = add i32 %i.iv, %i.jd
  %i.jf = mul i32 %i.je, %i.j
  %i.jg = add nuw nsw i64 %indvars.iv236, %i.iw
  %i.jh = mul i64 %i.jg, %i.i
  %i.ji = sext i32 %i.jf to i64                   ; 2 uses
  %sext = shl i64 %i.jh, 32
  %i.jj = ashr exact i64 %sext, 32                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.pre.pre.pre, i64 %i.ji ; 3 uses
  %invariant.gep307 = getelementptr i8, ptr %i.v, i64 %i.jj ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jk = add i64 %i.jj, %i.w
  %i.jl = add i64 %.pre.pre.pre313, %i.ji
  %i.jm = sub i64 %i.jl, %i.jk
  %diff.check = icmp ugt i64 %i.jm, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check314, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.jn = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %wide.load = load <16 x i8>, ptr %i.jn, align 1, !tbaa !34
  %wide.load315 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !34
  %i.jp = getelementptr i8, ptr %invariant.gep307, i64 %index ; 2 uses
end_hunk_0
begin_hunk_1_@_Z13printZlibInfoR4Data:bb.a

bb.v:                                             ; preds = %._crit_edge.i.i61
  %i.cm = load i8, ptr %i.c, align 1, !tbaa !34
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !34
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr nonnull align 1 %i.c, i64 %i.ch, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i61
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  store i64 %i.cn, ptr %i.ay, align 8, !tbaa !41
  %i.co = load ptr, ptr %3, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cq = load i64, ptr %i.ay, align 8, !tbaa !41 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4
  %.pre153 = load ptr, ptr %3, align 8, !tbaa !43 ; 3 uses
  br i1 %i.cr, label %bb.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.y:                                             ; preds = %bb.x
  %i.cs = load i32, ptr %.pre153, align 1
  %i.ct = icmp ne i32 %i.cs, 1413563465
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.y, %bb.x
  %i.cw = phi i1 [ false, %bb.x ], [ %i.cv, %bb.y ]
  %i.cx = icmp eq ptr %.pre153, %i.ax
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cy = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cy)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cz = load i64, ptr %i.ax, align 8, !tbaa !34
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %.pre153, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.cw, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.db = invoke noundef ptr @_Z24lodepng_chunk_data_constPKh(ptr noundef %.042151)
          to label %bb.aa unwind label %bb.ai     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.dc = invoke noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef %.042151)
          to label %bb.ab unwind label %.loopexit146

bb.ab:                                            ; preds = %bb.aa
  %i.dd = zext i32 %i.dc to i64                   ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.042151, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dg = icmp ugt ptr %i.df, %i.m
  br i1 %i.dg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.dd
  %i.dn = icmp ult ptr %i.df, %i.ap
  %or.cond = or i1 %i.dm, %i.dn
  br i1 %or.cond, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %.loopexit.split-lp147 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.ad
  %i.dp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 240
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i107 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i107, label %bb.ae, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc112 unwind label %.loopexit.split-lp147

.noexc112:                                        ; preds = %bb.ae
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !28
  %.not.i1.i.i109 = icmp eq i8 %i.dw, 0
  br i1 %.not.i1.i.i109, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 67
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i110

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.du)
          to label %.noexc113 unwind label %.loopexit.split-lp147

.noexc113:                                        ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef signext i8 %i.eb(ptr noundef nonnull align 8 dereferenceable(570) %i.du, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i110 unwind label %.loopexit.split-lp147, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i110: ; preds = %.noexc113, %bb.af
  %.0.i.i.i111 = phi i8 [ %i.dy, %bb.af ], [ %i.ec, %.noexc113 ]
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i111)
          to label %.noexc115 unwind label %.loopexit.split-lp147

.noexc115:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i110
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %.critedge58 unwind label %.loopexit.split-lp147 ; 0 uses

bb.ah:                                            ; preds = %.noexc.i62
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.am

bb.ai:                                            ; preds = %bb.z
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit146:                                     ; preds = %bb.aa
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp147:                            ; preds = %bb.ad, %bb.ae, %bb.ag, %.noexc113, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i110, %.noexc115
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  %i.ej = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.en, ptr noundef %i.db, ptr noundef %i.ei)
          to label %.critedge unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.critedge:                                        ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.ep = invoke noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.042151, ptr noundef nonnull %i.m)
          to label %bb.al unwind label %.loopexit ; 3 uses

bb.al:                                            ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.eq = icmp ult ptr %i.ep, %i.m
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.o, %i.er
  %i.et = icmp sgt i64 %i.es, 7
  %i.eu = and i1 %i.eq, %i.et
  br i1 %i.eu, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !174

bb.am:                                            ; preds = %.loopexit146, %.loopexit.split-lp147, %.loopexit, %.loopexit.split-lp, %bb.ai, %bb.ak, %bb.ah, %bb.t
  %.pn54 = phi { ptr, i32 } [ %i.eo, %bb.ak ], [ %i.cg, %bb.t ], [ %i.ef, %bb.ah ], [ %i.eg, %bb.ai ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit148, %.loopexit146 ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.bc

._crit_edge.loopexit:                             ; preds = %bb.al
  %.pre154 = load ptr, ptr %i.az, align 8, !tbaa !116
  %.pre155 = load ptr, ptr %1, align 8, !tbaa !117
  %i.ev = ptrtoint ptr %.pre154 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.ew = phi ptr [ %.pre155, %._crit_edge.loopexit ], [ null, %bb.j ] ; 2 uses
  %i.ex = phi i64 [ %i.ev, %._crit_edge.loopexit ], [ 0, %bb.j ]
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %i.fa, 2
  br i1 %i.fb, label %.invoke173, label %_ZNSolsEPFRSoS_E.exit79

.invoke173:                                       ; preds = %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !34  ; 2 uses
  %5 = and i8 %i.fd, 1
  %.not47 = icmp eq i8 %5, 0                      ; 2 uses
  %i.fe = select i1 %.not47, ptr @.str.44, ptr @.str.43
  %i.ff = select i1 %.not47, i64 58, i64 43
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.fe, i64 noundef %i.ff)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81.invoke unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %.invoke173, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81.invoke, %.invoke
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81.invoke: ; preds = %.invoke173
  %i.fi = lshr i8 %i.fd, 1
  %i.fj = and i8 %i.fi, 3
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.fk)
          to label %.invoke unwind label %bb.an

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81.invoke
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %_ZNSolsEPFRSoS_E.exit79 unwind label %bb.an, !inline_history !88 ; 0 uses

_ZNSolsEPFRSoS_E.exit79:                          ; preds = %.invoke, %._crit_edge
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.45, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZNSolsEPFRSoS_E.exit79
  %i.fo = load ptr, ptr %i.ey, align 8, !tbaa !116
  %i.fp = load ptr, ptr %1, align 8, !tbaa !117
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.fs)
          to label %_ZNSolsEm.exit unwind label %bb.as ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !8
  %i.fv = getelementptr i8, ptr %i.fu, i64 -24
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 240
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i118 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i118, label %bb.ao, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119

bb.ao:                                            ; preds = %_ZNSolsEm.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc123 unwind label %bb.as

.noexc123:                                        ; preds = %bb.ao
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119: ; preds = %_ZNSolsEm.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !28
  %.not.i1.i.i120 = icmp eq i8 %i.gb, 0
  br i1 %.not.i1.i.i120, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 67
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fz)
          to label %.noexc124 unwind label %bb.as

.noexc124:                                        ; preds = %bb.aq
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = invoke noundef signext i8 %i.gg(ptr noundef nonnull align 8 dereferenceable(570) %i.fz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121 unwind label %bb.as, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121: ; preds = %.noexc124, %bb.ap
  %.0.i.i.i122 = phi i8 [ %i.gd, %bb.ap ], [ %i.gh, %.noexc124 ]
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, i8 noundef signext %.0.i.i.i122)
          to label %.noexc126 unwind label %bb.as

.noexc126:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gi)
          to label %_ZNSolsEPFRSoS_E.exit88 unwind label %bb.as ; 0 uses

_ZNSolsEPFRSoS_E.exit88:                          ; preds = %.noexc126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.gk = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.gl = load ptr, ptr %i.ey, align 8, !tbaa !36 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  %spec.select = select i1 %i.gm, ptr null, ptr %i.gk
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = invoke noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %spec.select, i64 noundef %i.gp, ptr noundef nonnull align 8 dereferenceable(40) @lodepng_default_decompress_settings)
          to label %bb.ar unwind label %bb.at     ; 2 uses

bb.ar:                                            ; preds = %_ZNSolsEPFRSoS_E.exit88
  store i32 %i.gq, ptr %i.n, align 8, !tbaa !77
  %.not48 = icmp eq i32 %i.gq, 0
  br i1 %.not48, label %bb.av, label %_ZNSolsEPFRSoS_E.exit94

bb.as:                                            ; preds = %.noexc126, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121, %.noexc124, %bb.aq, %bb.ao, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNSolsEPFRSoS_E.exit79
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.at:                                            ; preds = %.noexc137, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132, %.noexc135, %bb.ay, %bb.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %bb.av, %_ZNSolsEPFRSoS_E.exit88
  %i.gs = landingpad { ptr, i32 }
          cleanup
  %i.gt = load ptr, ptr %4, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !128
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bc

bb.av:                                            ; preds = %bb.ar
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.46, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %bb.av
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !116
  %i.hc = load ptr, ptr %4, align 8, !tbaa !117
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.hf)
          to label %_ZNSolsEm.exit92 unwind label %bb.at ; 3 uses

_ZNSolsEm.exit92:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !8
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 240
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i129 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i129, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130

bb.aw:                                            ; preds = %_ZNSolsEm.exit92
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc134 unwind label %bb.at

.noexc134:                                        ; preds = %bb.aw
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130: ; preds = %_ZNSolsEm.exit92
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !28
  %.not.i1.i.i131 = icmp eq i8 %i.ho, 0
  br i1 %.not.i1.i.i131, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 67
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hm)
          to label %.noexc135 unwind label %bb.at

.noexc135:                                        ; preds = %bb.ay
  %i.hr = load ptr, ptr %i.hm, align 8, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = invoke noundef signext i8 %i.ht(ptr noundef nonnull align 8 dereferenceable(570) %i.hm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132 unwind label %bb.at, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132: ; preds = %.noexc135, %bb.ax
  %.0.i.i.i133 = phi i8 [ %i.hq, %bb.ax ], [ %i.hu, %.noexc135 ]
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i8 noundef signext %.0.i.i.i133)
          to label %.noexc137 unwind label %bb.at

.noexc137:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
          to label %_ZNSolsEPFRSoS_E.exit94 unwind label %bb.at ; 0 uses

_ZNSolsEPFRSoS_E.exit94:                          ; preds = %.noexc137, %bb.ar
  %i.hx = load ptr, ptr %4, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIhSaIhEED2Ev.exit96, label %bb.az

bb.az:                                            ; preds = %_ZNSolsEPFRSoS_E.exit94
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !128
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ic) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit96

_ZNSt6vectorIhSaIhEED2Ev.exit96:                  ; preds = %_ZNSolsEPFRSoS_E.exit94, %bb.az
end_hunk_1
