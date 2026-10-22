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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = load ptr, ptr %1, align 8, !tbaa !100
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
  store ptr %i.o, ptr %0, align 8, !tbaa !100
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !107
  store i8 0, ptr %i.o, align 1, !tbaa !42
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
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !99
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
  %.pre.pre.pre = load ptr, ptr %1, align 8, !tbaa !100 ; 2 uses
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
  store i8 0, ptr %i.al, align 1, !tbaa !42
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
  %i.ba = zext i32 %4 to i64                      ; 3 uses
  %brmerge228 = or i1 %i.ar, %i.au
  %wide.trip.count257 = zext nneg i32 %3 to i64
  %brmerge231 = or i1 %i.av, %i.ar
  %wide.trip.count281 = zext nneg i32 %5 to i64
  %i.bb = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> poison, double %i.at, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = icmp eq i32 %3, 1
  %8 = and i32 %3, 2147483646
  %unroll_iter = zext nneg i32 %8 to i64
  %lcmp.mod.not = trunc i32 %3 to i1
  %lcmp.mod325 = trunc i32 %3 to i1
  %i.bf = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = icmp eq i32 %4, 1
  %unroll_iter329 = and i64 %i.ba, 2147483646
  %lcmp.mod327.not = trunc i32 %4 to i1
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
  br i1 %lcmp.mod.not, label %.lr.ph207.split.epil.preheader, label %..loopexit189_crit_edge

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
  store i8 0, ptr %i.bx, align 1, !tbaa !42
  br label %..loopexit189_crit_edge

..loopexit189_crit_edge:                          ; preds = %.lr.ph207.split.epil.preheader, %..loopexit189_crit_edge.loopexit322.unr-lcssa, %._crit_edge204.us
  %exitcond259.not = icmp eq i32 %i.by, %4
  br i1 %exitcond259.not, label %.preheader, label %.lr.ph207, !llvm.loop !173

.preheader:                                       ; preds = %..loopexit189_crit_edge, %.preheader190
  br i1 %brmerge231, label %._crit_edge221.split, label %.lr.ph217

.lr.ph207:                                        ; preds = %.preheader190, %..loopexit189_crit_edge
  %.0162208 = phi i32 [ %i.by, %..loopexit189_crit_edge ], [ 0, %.preheader190 ] ; 6 uses
  %i.by = add nuw nsw i32 %.0162208, 1            ; 3 uses
  %i.bz = uitofp nneg i32 %.0162208 to double
  %i.ca = uitofp nneg i32 %i.by to double
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
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
  %i.cz = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
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
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !42
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
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !42
  %i.ea = uitofp i8 %i.dz to double
  %i.eb = tail call double @llvm.fmuladd.f64(double %.1158.us, double %i.ea, double %.0160200.us) ; 2 uses
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.ec = icmp slt i64 %indvars.iv249, %i.db
  %i.ed = icmp slt i64 %indvars.iv.next250, %i.ay
  %i.ee = and i1 %i.ec, %i.ed
  br i1 %i.ee, label %.peel.next, label %._crit_edge204.us, !llvm.loop !174

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
  store i8 %i.ek, ptr %i.en, align 1, !tbaa !42
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %..loopexit189_crit_edge, label %.lr.ph203.us, !llvm.loop !175

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
  store i8 0, ptr %i.eu, align 1, !tbaa !42
  %i.ev = trunc i64 %indvars.iv244 to i32
  %i.ew = or disjoint i32 %i.ev, 1
  %i.ex = mul i32 %4, %i.ew
  %i.ey = add nuw i32 %i.ex, %.0162208
  %i.ez = mul i32 %i.ey, %i.j
  %i.fa = add nsw i32 %i.ez, %.0163222
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !42
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit189_crit_edge.loopexit322.unr-lcssa, label %.lr.ph207.split, !llvm.loop !175

..loopexit_crit_edge.loopexit321.unr-lcssa:       ; preds = %.lr.ph217.split
  br i1 %lcmp.mod327.not, label %.lr.ph217.split.epil.preheader, label %..loopexit_crit_edge

.lr.ph217.split.epil.preheader:                   ; preds = %..loopexit_crit_edge.loopexit321.unr-lcssa, %.lr.ph217.split.preheader
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph217.split.preheader ], [ %indvars.iv.next261.1, %..loopexit_crit_edge.loopexit321.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod328)
  %i.fd = add nuw nsw i64 %indvars.iv260.epil.init, %i.ga
  %i.fe = trunc nuw i64 %i.fd to i32
  %i.ff = mul i32 %i.fe, %i.j
  %i.fg = add nsw i32 %i.ff, %.0163222
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fh
  store i8 0, ptr %i.fi, align 1, !tbaa !42
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %.lr.ph217.split.epil.preheader, %..loopexit_crit_edge.loopexit321.unr-lcssa, %._crit_edge214.us
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge221.split, label %.lr.ph217, !llvm.loop !176

._crit_edge221.split:                             ; preds = %..loopexit_crit_edge, %.preheader
  %i.fj = add nuw nsw i32 %.0163222, 1            ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.j
  br i1 %i.fk, label %.preheader190, label %._crit_edge224, !llvm.loop !177

.lr.ph217:                                        ; preds = %.preheader, %..loopexit_crit_edge
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %..loopexit_crit_edge ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv278 to i32
  %i.fm = uitofp nneg i32 %i.fl to double
  %i.fn = trunc nuw nsw i64 %indvars.iv.next279 to i32
  %i.fo = uitofp nneg i32 %i.fn to double
  %i.fp = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fo, i64 1
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
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !42
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
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !42
  %i.hp = uitofp i8 %i.ho to double
  %i.hq = tail call double @llvm.fmuladd.f64(double %.1.us, double %i.hp, double %.0154210.us) ; 2 uses
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.hr = icmp slt i64 %indvars.iv265, %i.gp
  %i.hs = icmp slt i64 %indvars.iv.next266, %i.az
  %i.ht = and i1 %i.hr, %i.hs
  br i1 %i.ht, label %.peel.next271, label %._crit_edge214.us, !llvm.loop !178

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
  store i8 %i.hy, ptr %i.ib, align 1, !tbaa !42
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.ba
  br i1 %exitcond277.not, label %..loopexit_crit_edge, label %.lr.ph213.us, !llvm.loop !179

.lr.ph217.split:                                  ; preds = %.lr.ph217.split.preheader, %.lr.ph217.split
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ] ; 3 uses
  %niter330 = phi i64 [ %niter330.next.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ]
  %i.ic = add nuw nsw i64 %indvars.iv260, %i.ga
  %i.id = trunc nuw i64 %i.ic to i32
  %i.ie = mul i32 %i.id, %i.j
  %i.if = add nsw i32 %i.ie, %.0163222
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ig
  store i8 0, ptr %i.ih, align 1, !tbaa !42
  %indvars.iv.next261 = or disjoint i64 %indvars.iv260, 1
  %i.ii = add nuw nsw i64 %indvars.iv.next261, %i.ga
  %i.ij = trunc nuw i64 %i.ii to i32
  %i.ik = mul i32 %i.ij, %i.j
  %i.il = add nsw i32 %i.ik, %.0163222
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.im
  store i8 0, ptr %i.in, align 1, !tbaa !42
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %niter330.next.1 = add i64 %niter330, 2         ; 2 uses
  %niter330.ncmp.1 = icmp eq i64 %niter330.next.1, %unroll_iter329
  br i1 %niter330.ncmp.1, label %..loopexit_crit_edge.loopexit321.unr-lcssa, label %.lr.ph217.split, !llvm.loop !179

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
  br i1 %exitcond243.not, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph195, !llvm.loop !180

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
  %wide.load = load <16 x i8>, ptr %i.jn, align 1, !tbaa !42
  %wide.load315 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !42
  %i.jp = getelementptr i8, ptr %invariant.gep307, i64 %index ; 2 uses
end_hunk_0
begin_hunk_1_@_Z13printZlibInfoR4Data:bb.a
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split, %.noexc103.invoke
  %i.ce = phi i8 [ %i.cb, %.noexc103.invoke ], [ %i.cd, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.ce)
          to label %.noexc105.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %.critedge58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %.noexc.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ax, ptr %3, align 8, !tbaa !47
  %i.ci = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !81
  %i.cj = icmp ugt i64 %i.ci, 15
  br i1 %i.cj, label %.noexc.i62, label %._crit_edge.i.i61

.noexc.i62:                                       ; preds = %bb.s
  %i.ck = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc63 unwind label %bb.ad  ; 2 uses

.noexc63:                                         ; preds = %.noexc.i62
  store ptr %i.ck, ptr %3, align 8, !tbaa !50
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.cl, ptr %i.ax, align 8, !tbaa !42
  br label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %.noexc63, %bb.s
  %i.cm = phi ptr [ %i.ck, %.noexc63 ], [ %i.ax, %bb.s ] ; 2 uses
  switch i64 %i.ci, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i61
  %i.cn = load i8, ptr %i.c, align 1, !tbaa !42
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !42
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr nonnull align 1 %i.c, i64 %i.ci, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i61
  %i.co = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  store i64 %i.co, ptr %i.ay, align 8, !tbaa !49
  %i.cp = load ptr, ptr %3, align 8, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cr = load i64, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4
  %.pre149 = load ptr, ptr %3, align 8, !tbaa !50 ; 3 uses
  br i1 %i.cs, label %bb.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %.pre149, align 1
  %i.cu = icmp ne i32 %i.ct, 1413563465
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.w, %bb.v
  %i.cx = phi i1 [ false, %bb.v ], [ %i.cw, %bb.w ]
  %i.cy = icmp eq ptr %.pre149, %i.ax
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cz = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.da = load i64, ptr %i.ax, align 8, !tbaa !42
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %.pre149, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.cx, label %bb.x, label %.critedge

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.dc = invoke noundef ptr @_Z24lodepng_chunk_data_constPKh(ptr noundef %.042146)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.dd = invoke noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef %.042146)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.de = zext i32 %i.dd to i64                   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.042146, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12 ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.m
  br i1 %i.dh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ult i64 %i.dm, %i.de
  %i.do = icmp ult ptr %i.dg, %i.ap
  %or.cond = or i1 %i.dn, %i.do
  br i1 %or.cond, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.ab
  %i.dq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 240
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !35 ; 5 uses
  %.not.i.i.i107 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i107, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !41
  %.not.i1.i.i109 = icmp eq i8 %i.dx, 0
  br i1 %.not.i1.i.i109, label %bb.ac, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i108
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dv)
          to label %.noexc103.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.noexc.i62
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.aa
  %i.dz = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de
  %i.eb = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ef, ptr noundef %i.dc, ptr noundef %i.ea)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.k, %.critedge, %bb.x, %bb.ae, %.noexc103.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke, %.noexc105.invoke, %.invoke, %bb.p, %bb.ab, %bb.q, %bb.ac
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.critedge:                                        ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.eg = invoke noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.042146, ptr noundef nonnull %i.m)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.af:                                            ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.eh = icmp ult ptr %i.eg, %i.m
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.o, %i.ei
  %i.ek = icmp sgt i64 %i.ej, 7
  %i.el = and i1 %i.eh, %i.ek
  br i1 %i.el, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !202

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.dy, %bb.ad ], [ %i.ch, %bb.r ], [ %lpad.loopexit.split-lp174, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.au

._crit_edge.loopexit:                             ; preds = %bb.af
  %.pre150 = load ptr, ptr %i.az, align 8, !tbaa !99
  %.pre151 = load ptr, ptr %1, align 8, !tbaa !100
  %i.em = ptrtoint ptr %.pre150 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.en = phi ptr [ %.pre151, %._crit_edge.loopexit ], [ null, %bb.j ] ; 2 uses
  %i.eo = phi i64 [ %i.em, %._crit_edge.loopexit ], [ 0, %bb.j ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.eo, %i.eq
  %i.es = icmp ugt i64 %i.er, 2
  br i1 %i.es, label %.invoke170, label %_ZNSolsEPFRSoS_E.exit79

.invoke170:                                       ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !42  ; 2 uses
  %.not47 = trunc i8 %i.eu to i1                  ; 2 uses
  %.str.44..str.43 = select i1 %.not47, ptr @.str.43, ptr @.str.44
  %. = select i1 %.not47, i64 43, i64 58
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str.44..str.43, i64 noundef %.)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.invoke unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.invoke: ; preds = %.invoke170
  %i.ew = lshr i8 %i.eu, 1
  %i.ex = and i8 %i.ew, 3
  %i.ey = zext nneg i8 %i.ex to i32
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ey)
          to label %.invoke169 unwind label %bb.ak

.invoke169:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.invoke
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_ZNSolsEPFRSoS_E.exit79 unwind label %bb.ak, !inline_history !2 ; 0 uses

_ZNSolsEPFRSoS_E.exit79:                          ; preds = %.invoke169, %._crit_edge
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.45, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZNSolsEPFRSoS_E.exit79
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !99
  %i.fd = load ptr, ptr %1, align 8, !tbaa !100
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.fg)
          to label %_ZNSolsEm.exit unwind label %bb.ak ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !17
  %i.fj = getelementptr i8, ptr %i.fi, i64 -24
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 240
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i118 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i118, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119

bb.ag:                                            ; preds = %_ZNSolsEm.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc123 unwind label %bb.ak

.noexc123:                                        ; preds = %bb.ag
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119: ; preds = %_ZNSolsEm.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !41
  %.not.i1.i.i120 = icmp eq i8 %i.fp, 0
  br i1 %.not.i1.i.i120, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 67
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fn)
          to label %.noexc124 unwind label %bb.ak

.noexc124:                                        ; preds = %bb.ai
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !17
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef signext i8 %i.fu(ptr noundef nonnull align 8 dereferenceable(570) %i.fn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121 unwind label %bb.ak, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121: ; preds = %.noexc124, %bb.ah
  %.0.i.i.i122 = phi i8 [ %i.fr, %bb.ah ], [ %i.fv, %.noexc124 ]
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, i8 noundef signext %.0.i.i.i122)
          to label %.noexc126 unwind label %bb.ak

.noexc126:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %_ZNSolsEPFRSoS_E.exit88 unwind label %bb.ak ; 0 uses

_ZNSolsEPFRSoS_E.exit88:                          ; preds = %.noexc126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fy = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %i.fz = load ptr, ptr %i.ep, align 8, !tbaa !44 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  %spec.select = select i1 %i.ga, ptr null, ptr %i.fy
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.fy to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = invoke noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %spec.select, i64 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(40) @lodepng_default_decompress_settings)
          to label %bb.aj unwind label %bb.al     ; 2 uses

bb.aj:                                            ; preds = %_ZNSolsEPFRSoS_E.exit88
  store i32 %i.ge, ptr %i.n, align 8, !tbaa !74
  %.not48 = icmp eq i32 %i.ge, 0
  br i1 %.not48, label %bb.an, label %_ZNSolsEPFRSoS_E.exit94

bb.ak:                                            ; preds = %.invoke170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.invoke, %.invoke169, %.noexc126, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121, %.noexc124, %bb.ai, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNSolsEPFRSoS_E.exit79
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.al:                                            ; preds = %.noexc137, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132, %.noexc135, %bb.aq, %bb.ao, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %bb.an, %_ZNSolsEPFRSoS_E.exit88
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %4, align 8, !tbaa !100   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !107
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gm) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.au

bb.an:                                            ; preds = %bb.aj
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.46, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %bb.an
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !99
  %i.gq = load ptr, ptr %4, align 8, !tbaa !100
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.gt)
          to label %_ZNSolsEm.exit92 unwind label %bb.al ; 3 uses

_ZNSolsEm.exit92:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !17
  %i.gw = getelementptr i8, ptr %i.gv, i64 -24
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds i8, ptr %i.gu, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i129 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i129, label %bb.ao, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130

bb.ao:                                            ; preds = %_ZNSolsEm.exit92
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc134 unwind label %bb.al

.noexc134:                                        ; preds = %bb.ao
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130: ; preds = %_ZNSolsEm.exit92
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !41
  %.not.i1.i.i131 = icmp eq i8 %i.hc, 0
  br i1 %.not.i1.i.i131, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 67
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132

bb.aq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ha)
          to label %.noexc135 unwind label %bb.al

.noexc135:                                        ; preds = %bb.aq
  %i.hf = load ptr, ptr %i.ha, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef signext i8 %i.hh(ptr noundef nonnull align 8 dereferenceable(570) %i.ha, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132 unwind label %bb.al, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132: ; preds = %.noexc135, %bb.ap
  %.0.i.i.i133 = phi i8 [ %i.he, %bb.ap ], [ %i.hi, %.noexc135 ]
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i8 noundef signext %.0.i.i.i133)
          to label %.noexc137 unwind label %bb.al

.noexc137:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
          to label %_ZNSolsEPFRSoS_E.exit94 unwind label %bb.al ; 0 uses

_ZNSolsEPFRSoS_E.exit94:                          ; preds = %.noexc137, %bb.aj
  %i.hl = load ptr, ptr %4, align 8, !tbaa !100   ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIhSaIhEED2Ev.exit96, label %bb.ar

bb.ar:                                            ; preds = %_ZNSolsEPFRSoS_E.exit94
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !107
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit96

_ZNSt6vectorIhSaIhEED2Ev.exit96:                  ; preds = %_ZNSolsEPFRSoS_E.exit94, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.as

.critedge58:                                      ; preds = %.noexc105.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
end_hunk_1
