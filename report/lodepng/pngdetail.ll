Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z11RGBtoLetterhhhhjjbb:bb.a
  %i.ca = select i1 %i.bz, i8 32, i8 0
  %i.cb = or disjoint i8 %i.ca, %.0.i
  br label %_Z17lightnessToLetteri.exit

bb.v:                                             ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit.i
  %i.cc = mul nsw i32 %i.ax, 31
  %i.cd = sdiv i32 %i.cc, 256
  %i.ce = add nsw i32 %i.cd, %spec.select106      ; 8 uses
  %i.cf = icmp slt i32 %i.ce, 16
  br i1 %i.cf, label %_Z17lightnessToLetteri.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = icmp samesign ult i32 %i.ce, 48
  br i1 %i.cg, label %_Z17lightnessToLetteri.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = icmp samesign ult i32 %i.ce, 80
  br i1 %i.ch, label %_Z17lightnessToLetteri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = icmp samesign ult i32 %i.ce, 112
  br i1 %i.ci, label %_Z17lightnessToLetteri.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = icmp samesign ult i32 %i.ce, 144
  br i1 %i.cj, label %_Z17lightnessToLetteri.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = icmp samesign ult i32 %i.ce, 176
  br i1 %i.ck, label %_Z17lightnessToLetteri.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = icmp samesign ult i32 %i.ce, 208
  br i1 %i.cl, label %_Z17lightnessToLetteri.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = icmp samesign ult i32 %i.ce, 240
  %..i38 = select i1 %i.cm, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.ad:                                            ; preds = %bb.c
  %i.cn = tail call i8 @llvm.umin.i8(i8 %.099, i8 %.0100)
  %i.co = tail call i8 @llvm.umin.i8(i8 %i.cn, i8 %.0101) ; 2 uses
  %i.cp = icmp eq i8 %i.co, %i.r
  br i1 %i.cp, label %_Z11HueToLetteri.exit44.thread, label %bb.ae

_Z11HueToLetteri.exit44.thread:                   ; preds = %bb.ad
  %i.cq = sext i1 %7 to i8
  %spec.select107116 = xor i8 %.0101, %i.cq
  br label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated50.i = zext i8 %i.r to i32     ; 2 uses
  %.sroa.speculated.i40 = zext i8 %i.co to i32    ; 2 uses
  %i.cr = add nuw nsw i32 %.sroa.speculated.i40, %.sroa.speculated50.i ; 4 uses
  %i.cs = sub nsw i32 %.sroa.speculated50.i, %.sroa.speculated.i40 ; 4 uses
  %i.ct = lshr i32 %i.cr, 1
  %i.cu = trunc nuw i32 %i.ct to i8
  %i.cv = mul nsw i32 %i.cs, 255
  %.not.not.i = icmp samesign ult i32 %i.cr, 256
  %i.cw = sub nuw nsw i32 512, %i.cr
  %i.cx = select i1 %.not.not.i, i32 %i.cr, i32 %i.cw
  %i.cy = sdiv i32 %i.cv, %i.cx
  %.not.i = icmp ult i8 %.0101, %i.q
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = sub nsw i32 %i.o, %i.p
  %i.da = mul nsw i32 %i.cz, 255
  %i.db = sdiv i32 %i.da, %i.cs
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dc = icmp eq i8 %i.r, %.0100
  br i1 %i.dc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dd = sub nsw i32 %i.p, %i.n
  %i.de = mul nsw i32 %i.dd, 255
  %i.df = sdiv i32 %i.de, %i.cs
  %i.dg = add nsw i32 %i.df, 512
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dh = sub nsw i32 %i.n, %i.o
  %i.di = mul nsw i32 %i.dh, 255
  %i.dj = sdiv i32 %i.di, %i.cs
  %i.dk = add nsw i32 %i.dj, 1024
  br label %_Z8RGBtoHSLhhhPhS_S_.exit

_Z8RGBtoHSLhhhPhS_S_.exit:                        ; preds = %bb.af, %bb.ah, %bb.ai
  %i.dl = phi i32 [ %i.db, %bb.af ], [ %i.dg, %bb.ah ], [ %i.dk, %bb.ai ]
  %i.dm = sdiv i32 %i.dl, 6
  %i.dn = and i32 %i.dm, 255                      ; 11 uses
  %i.do = and i32 %i.cy, 192
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = sext i1 %7 to i8
  %spec.select107 = xor i8 %i.cu, %i.dq           ; 3 uses
  %i.dr = add nsw i32 %i.dn, -244
  %or.cond.i41 = icmp ult i32 %i.dr, -233
  br i1 %or.cond.i41, label %_Z11HueToLetteri.exit44, label %bb.aj

bb.aj:                                            ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit
  %i.ds = icmp samesign ult i32 %i.dn, 32
  br i1 %i.ds, label %_Z11HueToLetteri.exit44, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = icmp samesign ult i32 %i.dn, 53
  br i1 %i.dt, label %_Z11HueToLetteri.exit44, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = icmp samesign ult i32 %i.dn, 74
  br i1 %i.du, label %_Z11HueToLetteri.exit44, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = icmp samesign ult i32 %i.dn, 96
  br i1 %i.dv, label %_Z11HueToLetteri.exit44, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dw = icmp samesign ult i32 %i.dn, 117
  br i1 %i.dw, label %_Z11HueToLetteri.exit44, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dx = icmp samesign ult i32 %i.dn, 138
  br i1 %i.dx, label %_Z11HueToLetteri.exit44, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = icmp samesign ult i32 %i.dn, 159
  br i1 %i.dy, label %_Z11HueToLetteri.exit44, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = icmp samesign ult i32 %i.dn, 181
  br i1 %i.dz, label %_Z11HueToLetteri.exit44, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ea = icmp samesign ult i32 %i.dn, 202
  br i1 %i.ea, label %_Z11HueToLetteri.exit44, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = icmp samesign ult i32 %i.dn, 223
  %spec.select.i42 = select i1 %i.eb, i8 77, i8 70
  br label %_Z11HueToLetteri.exit44

_Z11HueToLetteri.exit44:                          ; preds = %_Z8RGBtoHSLhhhPhS_S_.exit, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i43 = phi i8 [ %spec.select.i42, %bb.as ], [ 82, %_Z8RGBtoHSLhhhPhS_S_.exit ], [ 79, %bb.aj ], [ 89, %bb.ak ], [ 76, %bb.al ], [ 71, %bb.am ], [ 84, %bb.an ], [ 67, %bb.ao ], [ 65, %bb.ap ], [ 66, %bb.aq ], [ 86, %bb.ar ] ; 2 uses
  %i.ec = add i8 %spec.select107, 23
  %or.cond = icmp ult i8 %i.ec, 47
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.dp
  br i1 %or.cond5, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %_Z11HueToLetteri.exit44.thread, %_Z11HueToLetteri.exit44
  %spec.select107119125 = phi i8 [ %spec.select107116, %_Z11HueToLetteri.exit44.thread ], [ %spec.select107, %_Z11HueToLetteri.exit44 ] ; 8 uses
  %i.ed = icmp ult i8 %spec.select107119125, 16
  br i1 %i.ed, label %_Z17lightnessToLetteri.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ee = icmp ult i8 %spec.select107119125, 48
  br i1 %i.ee, label %_Z17lightnessToLetteri.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ef = icmp ult i8 %spec.select107119125, 80
  br i1 %i.ef, label %_Z17lightnessToLetteri.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = icmp ult i8 %spec.select107119125, 112
  br i1 %i.eg, label %_Z17lightnessToLetteri.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eh = icmp ult i8 %spec.select107119125, -112
  br i1 %i.eh, label %_Z17lightnessToLetteri.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ei = icmp samesign ult i8 %spec.select107119125, -80
  br i1 %i.ei, label %_Z17lightnessToLetteri.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ej = icmp samesign ult i8 %spec.select107119125, -48
  br i1 %i.ej, label %_Z17lightnessToLetteri.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ek = icmp samesign ult i8 %spec.select107119125, -16
  %..i45 = select i1 %i.ek, i8 61, i8 35
  br label %_Z17lightnessToLetteri.exit

bb.bb:                                            ; preds = %_Z11HueToLetteri.exit44
  %i.el = or disjoint i8 %.0.i43, 32
  %i.em = icmp slt i8 %spec.select107, 0
  %spec.select = select i1 %i.em, i8 %.0.i43, i8 %i.el
  br label %_Z17lightnessToLetteri.exit

_Z17lightnessToLetteri.exit:                      ; preds = %bb.bb, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_Z11HueToLetteri.exit, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.1 = phi i8 [ %..i38, %bb.ac ], [ %i.cb, %_Z11HueToLetteri.exit ], [ 43, %bb.ab ], [ 32, %bb.v ], [ 46, %bb.w ], [ 58, %bb.x ], [ 45, %bb.y ], [ 33, %bb.z ], [ 42, %bb.aa ], [ %spec.select, %bb.bb ], [ 43, %bb.az ], [ 32, %bb.at ], [ 46, %bb.au ], [ 58, %bb.av ], [ 45, %bb.aw ], [ 33, %bb.ax ], [ 42, %bb.ay ], [ %..i45, %bb.ba ]
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
  %min.iters.check313 = icmp samesign ult i64 %i.af, 32
  %i.ah = and i64 %umax, 28
  %n.vec = and i64 %umax, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec315 = and i64 %umax, 2147483644           ; 3 uses
  %cmp.n319 = icmp eq i64 %i.af, %n.vec315
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
  %i.bf = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count247, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod324 = trunc i32 %3 to i1
  %i.bg = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %xtraiter325 = and i64 %i.ba, 1
  %i.bk = icmp eq i32 %4, 1
  %unroll_iter328 = and i64 %i.ba, 2147483646
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  %lcmp.mod327 = trunc i32 %4 to i1
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %._crit_edge221.split
  %.0163222 = phi i32 [ 0, %.preheader190.lr.ph ], [ %i.fj, %._crit_edge221.split ] ; 13 uses
  br i1 %brmerge228, label %.preheader, label %.lr.ph207

._crit_edge224:                                   ; preds = %._crit_edge221.split, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit182
  %.not.i.i.i = icmp eq ptr %.sroa.0185.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge224
  %i.bl = ptrtoint ptr %.sroa.10.0 to i64
  %i.bm = ptrtoint ptr %.sroa.0185.0 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0, i64 noundef %i.bn) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i183 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIhSaIhEED2Ev.exit184, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = ptrtoint ptr %i.u to i64
  %i.bq = ptrtoint ptr %i.v to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.br) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit184

..loopexit189_crit_edge.loopexit321.unr-lcssa:    ; preds = %.lr.ph207.split
  br i1 %lcmp.mod.not, label %..loopexit189_crit_edge, label %.lr.ph207.split.epil.preheader

.lr.ph207.split.epil.preheader:                   ; preds = %..loopexit189_crit_edge.loopexit321.unr-lcssa, %.lr.ph207.split.preheader
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph207.split.preheader ], [ %indvars.iv.next245.1, %..loopexit189_crit_edge.loopexit321.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %i.bs = trunc i64 %indvars.iv244.epil.init to i32
  %i.bt = mul i32 %4, %i.bs
  %i.bu = add nuw i32 %i.bt, %.0162208
  %i.bv = mul i32 %i.bu, %i.j
  %i.bw = add nsw i32 %i.bv, %.0163222
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0185.0, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !34
  br label %..loopexit189_crit_edge

..loopexit189_crit_edge:                          ; preds = %.lr.ph207.split.epil.preheader, %..loopexit189_crit_edge.loopexit321.unr-lcssa, %._crit_edge204.us
  %exitcond259.not = icmp eq i32 %i.bz, %4
  br i1 %exitcond259.not, label %.preheader, label %.lr.ph207, !llvm.loop !129

.preheader:                                       ; preds = %..loopexit189_crit_edge, %.preheader190
  br i1 %brmerge231, label %._crit_edge221.split, label %.lr.ph217

.lr.ph207:                                        ; preds = %.preheader190, %..loopexit189_crit_edge
  %.0162208 = phi i32 [ %i.bz, %..loopexit189_crit_edge ], [ 0, %.preheader190 ] ; 6 uses
  %i.bz = add nuw nsw i32 %.0162208, 1            ; 3 uses
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = uitofp nneg i32 %.0162208 to double
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.ca, i64 1
  %i.ce = fmul nnan <2 x double> %i.bc, %i.cd
  %i.cf = fdiv <2 x double> %i.ce, %i.be
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float> ; 3 uses
  %i.ch = fptosi <2 x float> %i.cg to <2 x i32>   ; 2 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 3 uses
  %i.cj = extractelement <2 x float> %i.cg, i64 1 ; 3 uses
  %i.ck = fsub float %i.cj, %i.ci
  %i.cl = fpext float %i.ck to double
  %i.cm = fdiv double 1.000000e+00, %i.cl
  %i.cn = extractelement <2 x i32> %i.ch, i64 0   ; 6 uses
  %i.co = extractelement <2 x i32> %i.ch, i64 1   ; 4 uses
  %i.cp = icmp sle i32 %i.cn, %i.co
  %i.cq = icmp sgt i32 %2, %i.cn
  %i.cr = and i1 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph207.split.us, label %.lr.ph207.split.preheader

.lr.ph207.split.preheader:                        ; preds = %.lr.ph207
  br i1 %i.bf, label %.lr.ph207.split.epil.preheader, label %.lr.ph207.split

.lr.ph207.split.us:                               ; preds = %.lr.ph207
  %i.cs = tail call noundef float @llvm.floor.f32(float %i.cj)
  %i.ct = fsub float %i.cs, %i.cj
  %i.cu = fadd float %i.ct, 1.000000e+00
  %i.cv = fpext float %i.cu to double             ; 2 uses
  %i.cw = tail call noundef float @llvm.floor.f32(float %i.ci)
  %i.cx = fsub float %i.ci, %i.cw
  %i.cy = fpext float %i.cx to double
  %i.cz = fsub double 1.000000e+00, %i.cy         ; 2 uses
  %7 = load ptr, ptr %1, align 8, !tbaa !117      ; 2 uses
  %i.da = sext i32 %i.cn to i64
  %i.db = sext i32 %i.co to i64                   ; 2 uses
  %i.dc = icmp eq i32 %i.cn, %i.co
  %i.dd = fsub double %i.cz, %i.cv
  %.1158.us.peel = select i1 %i.dc, double %i.dd, double %i.cz
  %indvars.iv.next250.peel = add nsw i64 %i.da, 1 ; 2 uses
  %i.de = icmp slt i32 %i.cn, %i.co
  %i.df = icmp slt i64 %indvars.iv.next250.peel, %i.ay
  %i.dg = and i1 %i.de, %i.df
  %i.dh = fsub double 1.000000e+00, %i.cv
  br label %.lr.ph203.us

.lr.ph203.us:                                     ; preds = %._crit_edge204.us, %.lr.ph207.split.us
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %._crit_edge204.us ], [ 0, %.lr.ph207.split.us ] ; 3 uses
  %i.di = trunc i64 %indvars.iv254 to i32
  %i.dj = mul i32 %2, %i.di                       ; 2 uses
  %i.dk = add i32 %i.dj, %i.cn
  %i.dl = mul i32 %i.dk, %i.j
  %i.dm = add nsw i32 %i.dl, %.0163222
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 %i.dn
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
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 %i.dx
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
  %i.ej = fmul double %i.cm, %.lcssa
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
  br i1 %niter.ncmp.1, label %..loopexit189_crit_edge.loopexit321.unr-lcssa, label %.lr.ph207.split, !llvm.loop !132

..loopexit_crit_edge.loopexit320.unr-lcssa:       ; preds = %.lr.ph217.split
  br i1 %lcmp.mod326.not, label %..loopexit_crit_edge, label %.lr.ph217.split.epil.preheader

.lr.ph217.split.epil.preheader:                   ; preds = %..loopexit_crit_edge.loopexit320.unr-lcssa, %.lr.ph217.split.preheader
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph217.split.preheader ], [ %indvars.iv.next261.1, %..loopexit_crit_edge.loopexit320.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod327)
  %i.fd = add nuw nsw i64 %indvars.iv260.epil.init, %i.ga
  %i.fe = trunc nuw i64 %i.fd to i32
  %i.ff = mul i32 %i.fe, %i.j
  %i.fg = add nsw i32 %i.ff, %.0163222
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fh
  store i8 0, ptr %i.fi, align 1, !tbaa !34
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %.lr.ph217.split.epil.preheader, %..loopexit_crit_edge.loopexit320.unr-lcssa, %._crit_edge214.us
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
  %i.fr = fmul nnan <2 x double> %i.bh, %i.fq
  %i.fs = fdiv <2 x double> %i.fr, %i.bj
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
  br i1 %i.bk, label %.lr.ph217.split.epil.preheader, label %.lr.ph217.split

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
  %niter329 = phi i64 [ %niter329.next.1, %.lr.ph217.split ], [ 0, %.lr.ph217.split.preheader ]
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
  %niter329.next.1 = add i64 %niter329, 2         ; 2 uses
  %niter329.ncmp.1 = icmp eq i64 %niter329.next.1, %unroll_iter328
  br i1 %niter329.ncmp.1, label %..loopexit_crit_edge.loopexit320.unr-lcssa, label %.lr.ph217.split, !llvm.loop !136

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
  br i1 %min.iters.check313, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.jn = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %wide.load = load <16 x i8>, ptr %i.jn, align 1, !tbaa !34
  %wide.load314 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !34
  %i.jp = getelementptr i8, ptr %invariant.gep307, i64 %index ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  store <16 x i8> %wide.load, ptr %i.jp, align 1, !tbaa !34
  store <16 x i8> %wide.load314, ptr %i.jq, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !141

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index316 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next318, %vec.epilog.vector.body ] ; 3 uses
  %i.js = getelementptr i8, ptr %invariant.gep, i64 %index316
  %wide.load317 = load <4 x i8>, ptr %i.js, align 1, !tbaa !34
  %i.jt = getelementptr i8, ptr %invariant.gep307, i64 %index316
  store <4 x i8> %wide.load317, ptr %i.jt, align 1, !tbaa !34
  %index.next318 = add nuw i64 %index316, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next318, %n.vec315
  br i1 %i.ju, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n319, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec315, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237, %i.ag
  br i1 %exitcond.not, label %._crit_edge196, label %iter.check, !llvm.loop !143

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.jv = load i8, ptr %gep, align 1, !tbaa !34
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv
  store i8 %i.jv, ptr %gep308, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jw = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.jw, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !144

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge196, %.lr.ph198, %.preheader191, %bb.h, %._crit_edge224
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit184:                 ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.bo
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define void @_Z15displayAsciiArtRKSt6vectorIhSaIhEEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %.sroa.0 = alloca ptr, align 8                  ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store ptr null, ptr %.sroa.0, align 8
  %i.h = icmp ult i32 %3, %1
  br i1 %i.h, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a
  %i.i = mul i32 %3, %2
  %i.j = udiv i32 %i.i, %1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_Z7rescaleRKSt6vectorIhSaIhEEiiiib(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.j, i1 noundef zeroext true)
  %i.k = load ptr, ptr %4, align 8, !tbaa !117    ; 2 uses
  store ptr %i.k, ptr %.sroa.0, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.a
  %.sroa.0.0..sroa.0.0..sroa.0.0.163 = phi ptr [ %i.k, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.10.0 = phi i64 [ %i.n, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  %.067 = phi i32 [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %2, %bb.a ] ; 3 uses
  %.066 = phi i32 [ %3, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %1, %bb.a ] ; 5 uses
  %.065 = phi ptr [ %.sroa.0, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %0, %bb.a ]
  %i.o = icmp ne i32 %.066, 0
  %i.p = icmp ne i32 %.067, 0
  %or.cond = and i1 %i.p, %i.o
  br i1 %or.cond, label %bb.c, label %_ZNSolsEPFRSoS_E.exit119

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.24, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.r = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i124 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i124, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc125 unwind label %bb.l

.noexc125:                                        ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w)
          to label %.noexc126 unwind label %bb.l

.noexc126:                                        ; preds = %bb.f
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.l, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc126, %bb.e
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ae, %.noexc126 ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc128 unwind label %bb.l

.noexc128:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.l ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc128
  %i.ah = shl i32 %.067, 2
  %i.ai = add i32 %i.ah, -4
  %i.aj = udiv i32 %i.ai, 7                       ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 43, ptr %i.g, align 1, !tbaa !34
  %i.al = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !145
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.m ; 0 uses

bb.h:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.i:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 43, ptr %i.f, align 1, !tbaa !34
  %i.at = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
end_hunk_0
begin_hunk_1_@_ZN4DataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !34
  store i8 %i.j, ptr %i.i, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !41
  %i.m = load ptr, ptr %0, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  invoke void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 0, ptr %i.q, align 8
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIhSaIhEED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4

_ZNSt6vectorIhSaIhEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.g
  %i.af = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !34
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z14readExifUint32PKhmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  %i.d = sub nuw i32 %i.b, %i.a
  %i.e = icmp ult i32 %i.d, 4
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %2         ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 1
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 65536) i32 @_Z14readExifUint16PKhmmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = icmp ugt i32 %i.a, %i.b
  %i.d = sub nuw i32 %i.b, %i.a
  %i.e = icmp ult i32 %i.d, 2
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %2         ; 3 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !34
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.g, align 1
  %i.p = zext i16 %i.o to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_Z11showExifIFDPKhmmb(ptr nofree noundef readonly %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 16 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::map.30", align 8       ; 12 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  store i64 %2, ptr %i.d, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.g, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !109
  %i.k = trunc i64 %1 to i32                      ; 34 uses
  br label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.a
  %.0218 = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.0216 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29
          to label %bb.b unwind label %bb.h       ; 5 uses

bb.b:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.m = load i64, ptr %i.d, align 8, !tbaa !87
  store i64 %i.m, ptr %i.l, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.o = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.o, align 1, !tbaa !110
  %umax = call i64 @llvm.umax.i64(i64 %.0218, i64 16385)
  %exitcond10291353 = icmp ugt i64 %.0218, 16384
  br i1 %exitcond10291353, label %._crit_edge, label %.lr.ph1361.preheader

.lr.ph1361.preheader:                             ; preds = %bb.c
  %.str.185..str.186 = select i1 %.0216, ptr @.str.185, ptr @.str.186
  %. = select i1 %.0216, i64 22, i64 10
  br label %.lr.ph1361

bb.d:                                             ; preds = %_ZNSolsEPFRSoS_E.exit246
  %exitcond1029 = icmp eq i64 %i.ah, %umax
  br i1 %exitcond1029, label %._crit_edge, label %.lr.ph1361, !llvm.loop !312

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.sroa.21.0875.lcssa = phi ptr [ %.sroa.21.3.lcssa, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.0.0873.lcssa = phi ptr [ %.sroa.0.3.lcssa, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.177, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit662 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge
  %i.q = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i424 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i424, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc425 unwind label %.loopexit.split-lp663

.noexc425:                                        ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
          to label %.noexc426 unwind label %.loopexit662

.noexc426:                                        ; preds = %bb.g
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit662, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc426, %bb.f
  %.0.i.i.i = phi i8 [ %i.z, %bb.f ], [ %i.ad, %.noexc426 ]
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc428 unwind label %.loopexit662

.noexc428:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.loopexit1071 unwind label %.loopexit662 ; 0 uses

bb.h:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.l, %bb.b ]
  %.sroa.21.1 = phi ptr [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %i.n, %bb.b ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp643

.loopexit662:                                     ; preds = %._crit_edge, %bb.g, %.noexc426, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc428
  %lpad.loopexit664 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp643

.loopexit.split-lp663:                            ; preds = %bb.e
  %lpad.loopexit.split-lp665 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp643

.lr.ph1361:                                       ; preds = %.lr.ph1361.preheader, %bb.d
  %.in = phi i64 [ %i.ah, %bb.d ], [ %.0218, %.lr.ph1361.preheader ]
  %.sroa.0.08731359 = phi ptr [ %.sroa.0.3.lcssa, %bb.d ], [ %i.l, %.lr.ph1361.preheader ] ; 7 uses
  %.sroa.11.08741358 = phi ptr [ %.sroa.11.1.lcssa, %bb.d ], [ %i.n, %.lr.ph1361.preheader ]
  %.sroa.21.08751356 = phi ptr [ %.sroa.21.3.lcssa, %bb.d ], [ %i.n, %.lr.ph1361.preheader ] ; 7 uses
  %.05538761355 = phi i64 [ %.1554, %bb.d ], [ 0, %.lr.ph1361.preheader ]
  %.02028781354 = phi i1 [ true, %bb.d ], [ false, %.lr.ph1361.preheader ] ; 2 uses
  %i.ah = add i64 %.in, 1                         ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.11.08741358, i64 -8 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !87 ; 7 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp ugt i32 %i.ak, %i.k
  %i.am = sub nuw i32 %i.k, %i.ak
  %i.an = icmp ult i32 %i.am, 2
  %i.ao = select i1 %i.al, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph1361
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.178, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %.loopexit657 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %bb.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.aj)
          to label %_ZNSolsEm.exit unwind label %.loopexit657 ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i430 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i430, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431

bb.j:                                             ; preds = %_ZNSolsEm.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc435 unwind label %.loopexit.split-lp658

.noexc435:                                        ; preds = %bb.j
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431: ; preds = %_ZNSolsEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !28
  %.not.i1.i.i432 = icmp eq i8 %i.ay, 0
  br i1 %.not.i1.i.i432, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 67
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i431
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
          to label %.noexc436 unwind label %.loopexit657

.noexc436:                                        ; preds = %bb.l
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433 unwind label %.loopexit657, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433: ; preds = %.noexc436, %bb.k
  %.0.i.i.i434 = phi i8 [ %i.ba, %bb.k ], [ %i.be, %.noexc436 ]
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext %.0.i.i.i434)
          to label %.noexc438 unwind label %.loopexit657

.noexc438:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.loopexit1071 unwind label %.loopexit657 ; 0 uses

.loopexit657:                                     ; preds = %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243, %bb.l, %.noexc436, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i433, %.noexc438
  %lpad.loopexit659 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp643

.loopexit.split-lp658:                            ; preds = %bb.j
  %lpad.loopexit.split-lp660 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp643

bb.m:                                             ; preds = %.lr.ph1361
  %i.bh = getelementptr i8, ptr %0, i64 %i.aj     ; 3 uses
  br i1 %3, label %bb.n, label %bb.o
end_hunk_1
begin_hunk_2_@_Z11showExifIFDPKhmmb:bb.a
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !28
  %.not.i1.i.i498 = icmp eq i8 %i.jd, 0
  br i1 %.not.i1.i.i498, label %bb.az, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke.sink.split

bb.az:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i497
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jb)
          to label %.noexc502.invoke unwind label %.loopexit.split-lp.loopexit

.noexc502.invoke:                                 ; preds = %bb.az, %bb.ai
  %.sink = phi ptr [ %i.id, %bb.ai ], [ %i.jb, %bb.az ] ; 2 uses
  %i.je = load ptr, ptr %.sink, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = invoke noundef signext i8 %i.jg(ptr noundef nonnull align 8 dereferenceable(570) %.sink, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke unwind label %.loopexit.split-lp.loopexit, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i497, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i486
  %.sink1373 = phi ptr [ %i.id, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i486 ], [ %i.jb, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i497 ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sink1373, i64 67
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke.sink.split, %.noexc502.invoke
  %i.jk = phi i8 [ %i.jh, %.noexc502.invoke ], [ %i.jj, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke.sink.split ]
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.jk)
          to label %.noexc504.invoke unwind label %.loopexit.split-lp.loopexit

.noexc504.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i499.invoke
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jl)
          to label %.loopexit1071 unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit332
  %i.jn = icmp eq i32 %i.ig, 0
  br i1 %i.jn, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.203, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338: ; preds = %bb.bb
  %i.jp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.jq = getelementptr i8, ptr %i.jp, i64 -24
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 240
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i507 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i507, label %.invoke1368, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508

.invoke1368:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont1369 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont1369:                                        ; preds = %.invoke1368
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !28
  %.not.i1.i.i509 = icmp eq i8 %i.jw, 0
  br i1 %.not.i1.i.i509, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 67
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510

bb.bd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ju)
          to label %.noexc513 unwind label %.loopexit

.noexc513:                                        ; preds = %bb.bd
  %i.jz = load ptr, ptr %i.ju, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef signext i8 %i.kb(ptr noundef nonnull align 8 dereferenceable(570) %i.ju, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510 unwind label %.loopexit, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510: ; preds = %.noexc513, %bb.bc
  %.0.i.i.i511 = phi i8 [ %i.jy, %bb.bc ], [ %i.kc, %.noexc513 ]
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i511)
          to label %.noexc515 unwind label %.loopexit

.noexc515:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %_ZNSolsEPFRSoS_E.exit293 unwind label %.loopexit ; 0 uses

bb.be:                                            ; preds = %bb.ba
  switch i32 %.0.i285565575, label %bb.cm [
    i32 1, label %bb.bf
    i32 2, label %.preheader633.a
    i32 3, label %bb.bm
    i32 4, label %bb.bq
    i32 5, label %bb.cg
  ]

.preheader633.a:                                  ; preds = %bb.be
  %i.kf = zext i32 %spec.select591 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.kf
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kg = zext i32 %spec.select591 to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !34
  %i.kj = zext i8 %i.ki to i64
  br label %.invoke1212

.invoke1212:                                      ; preds = %bb.bp, %bb.bo, %bb.bm, %_Z14readExifUint32PKhmmb.exit363, %bb.bf
  %i.kk = phi i64 [ %i.kj, %bb.bf ], [ %i.ms, %_Z14readExifUint32PKhmmb.exit363 ], [ %i.li, %bb.bp ], [ %i.lg, %bb.bo ], [ 0, %bb.bm ]
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.kk)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit ; 0 uses

bb.bg:                                            ; preds = %.preheader633.a, %bb.bk
  %.0195857 = phi i64 [ 0, %.preheader633.a ], [ %i.kv, %bb.bk ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.0195857
  %i.km = load i8, ptr %gep, align 1, !tbaa !34   ; 3 uses
  %.not227 = icmp eq i8 %i.km, 0
  br i1 %.not227, label %_ZNSolsEj.exit342, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.km, ptr %i.c, align 1, !tbaa !34
  %i.kn = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.ko = getelementptr i8, ptr %i.kn, i64 -24
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !145
  %.not.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.bk unwind label %bb.bl     ; 0 uses

bb.bj:                                            ; preds = %bb.bh
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.km)
          to label %bb.bk unwind label %bb.bl     ; 0 uses

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kv = add nuw nsw i64 %.0195857, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.kv, %i.ih
  br i1 %exitcond.not, label %_ZNSolsEj.exit342, label %bb.bg, !llvm.loop !313

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp643

bb.bm:                                            ; preds = %bb.be
  %i.kx = icmp ult i32 %i.is, 2
  br i1 %i.kx, label %.invoke1212, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ky = zext i32 %spec.select591 to i64
  %i.kz = getelementptr i8, ptr %0, i64 %i.ky     ; 3 uses
  br i1 %3, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !34
  %i.lb = zext i8 %i.la to i64
  %i.lc = shl nuw nsw i64 %i.lb, 8
  %i.ld = getelementptr i8, ptr %i.kz, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !34
  %i.lf = zext i8 %i.le to i64
  %i.lg = or disjoint i64 %i.lc, %i.lf
  br label %.invoke1212

bb.bp:                                            ; preds = %bb.bn
  %i.lh = load i16, ptr %i.kz, align 1
  %i.li = zext i16 %i.lh to i64
  br label %.invoke1212

bb.bq:                                            ; preds = %bb.be
  %i.lj = icmp eq i32 %.0.i283557563577, 34665
  br i1 %i.lj, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.lk = icmp ult i32 %i.is, 4
  br i1 %i.lk, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = zext i32 %spec.select591 to i64
  %i.lm = getelementptr i8, ptr %0, i64 %i.ll     ; 2 uses
  br i1 %3, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ln = load i32, ptr %i.lm, align 1
  %i.lo = call i32 @llvm.bswap.i32(i32 %i.ln)
  br label %_Z14readExifUint32PKhmmb.exit350

bb.bu:                                            ; preds = %bb.bs
  %i.lp = load i32, ptr %i.lm, align 1
  br label %_Z14readExifUint32PKhmmb.exit350

_Z14readExifUint32PKhmmb.exit350:                 ; preds = %bb.bt, %bb.bu
  %.0.i349 = phi i32 [ %i.lp, %bb.bu ], [ %i.lo, %bb.bt ] ; 2 uses
  %i.lq = zext i32 %.0.i349 to i64                ; 4 uses
  store i64 %i.lq, ptr %i.e, align 8, !tbaa !87
  %.not225 = icmp eq i32 %.0.i349, 0
  br i1 %.not225, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.bv

bb.bv:                                            ; preds = %_Z14readExifUint32PKhmmb.exit350
  %i.lr = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.lr, %bb.bv ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.bv ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !87
  %i.lu = icmp ult i64 %i.lt, %i.lq               ; 3 uses
  %.19.i.i.i = select i1 %i.lu, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.lu, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i351 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i351, label %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !314

_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.lv = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.lv, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lu, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.lw = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !87
  %.not629 = icmp ugt i64 %i.lw, %i.lq
  br i1 %.not629, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_Z14readExifUint32PKhmmb.exit350.thread

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.bv, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit
  %.not.i352 = icmp eq ptr %.sroa.11.1865, %.sroa.21.3866
  br i1 %.not.i352, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  store i64 %i.lq, ptr %.sroa.11.1865, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

bb.bx:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  %i.lx = ptrtoint ptr %.sroa.21.3866 to i64
  %i.ly = ptrtoint ptr %.sroa.0.3864 to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.by, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #25
          to label %.noexc359 unwind label %.loopexit.split-lp638

.noexc359:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353: ; preds = %bb.bx
  %i.mb = ashr exact i64 %i.lz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i354, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 1152921504606846975)
  %i.mf = select i1 %i.md, i64 1152921504606846975, i64 %i.me ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #29
          to label %.noexc360 unwind label %.loopexit637 ; 4 uses

.noexc360:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 2 uses
  %5 = load i64, ptr %i.e, align 8, !tbaa !87
  store i64 %5, ptr %i.mi, align 8, !tbaa !87
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bz, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

bb.bz:                                            ; preds = %.noexc360
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mh, ptr align 8 %.sroa.0.3864, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358: ; preds = %bb.bz, %.noexc360
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3864, i64 noundef %i.lz) #27
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

_ZNSt6vectorImSaImEE9push_backERKm.exit361:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358, %bb.bw
  %.sroa.0.15 = phi ptr [ %i.mh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.0.3864, %bb.bw ] ; 2 uses
  %.pn = phi ptr [ %i.mi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.11.1865, %bb.bw ]
  %.sroa.21.15 = phi ptr [ %i.mk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.21.3866, %bb.bw ] ; 2 uses
  %i.ml = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ca unwind label %.loopexit637

bb.ca:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361
  %.sroa.11.8 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store i8 1, ptr %i.ml, align 1, !tbaa !110
  br label %_Z14readExifUint32PKhmmb.exit350.thread

.loopexit637:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %.sroa.0.5.ph = phi ptr [ %.sroa.0.3864, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0.15, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %.sroa.21.5.ph = phi ptr [ %.sroa.21.3866, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.21.15, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %lpad.loopexit639 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp638:                            ; preds = %bb.by
  %lpad.loopexit.split-lp640 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp638, %.loopexit637
  %.sroa.0.5 = phi ptr [ %.sroa.0.5.ph, %.loopexit637 ], [ %.sroa.0.3864, %.loopexit.split-lp638 ]
  %.sroa.21.5 = phi ptr [ %.sroa.21.5.ph, %.loopexit637 ], [ %.sroa.21.3866, %.loopexit.split-lp638 ]
  %lpad.phi641 = phi { ptr, i32 } [ %lpad.loopexit639, %.loopexit637 ], [ %lpad.loopexit.split-lp640, %.loopexit.split-lp638 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.loopexit.split-lp643

_Z14readExifUint32PKhmmb.exit350.thread:          ; preds = %bb.br, %bb.ca, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit, %_Z14readExifUint32PKhmmb.exit350
  %.sroa.0.6 = phi ptr [ %.sroa.0.3864, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.0.15, %bb.ca ], [ %.sroa.0.3864, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.0.3864, %bb.br ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.1865, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.11.8, %bb.ca ], [ %.sroa.11.1865, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.11.1865, %bb.br ]
  %.sroa.21.6 = phi ptr [ %.sroa.21.3866, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.21.15, %bb.ca ], [ %.sroa.21.3866, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.21.3866, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %_ZNSolsEj.exit342

bb.cc:                                            ; preds = %bb.bq
  %i.mm = icmp ult i32 %i.is, 4
  br i1 %i.mm, label %_Z14readExifUint32PKhmmb.exit363, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mn = zext i32 %spec.select591 to i64
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn     ; 2 uses
  br i1 %3, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.mp = load i32, ptr %i.mo, align 1
  %i.mq = call i32 @llvm.bswap.i32(i32 %i.mp)
  br label %_Z14readExifUint32PKhmmb.exit363

bb.cf:                                            ; preds = %bb.cd
  %i.mr = load i32, ptr %i.mo, align 1
  br label %_Z14readExifUint32PKhmmb.exit363

_Z14readExifUint32PKhmmb.exit363:                 ; preds = %bb.cc, %bb.ce, %bb.cf
  %.0.i362 = phi i32 [ %i.mr, %bb.cf ], [ %i.mq, %bb.ce ], [ 0, %bb.cc ]
  %i.ms = zext i32 %.0.i362 to i64
  br label %.invoke1212

bb.cg:                                            ; preds = %bb.be
  %i.mt = icmp ult i32 %i.is, 4
  br i1 %i.mt, label %_Z14readExifUint32PKhmmb.exit367, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mu = zext i32 %spec.select591 to i64
  %i.mv = getelementptr i8, ptr %0, i64 %i.mu     ; 2 uses
  br i1 %3, label %_Z14readExifUint32PKhmmb.exit367.thread598, label %_Z14readExifUint32PKhmmb.exit367.thread

_Z14readExifUint32PKhmmb.exit367:                 ; preds = %bb.cg
  %i.mw = add i32 %spec.select591, 4              ; 3 uses
  %i.mx = icmp ugt i32 %i.mw, %i.k
  %i.my = sub nuw i32 %i.k, %i.mw
  %i.mz = icmp ult i32 %i.my, 4
  %i.na = select i1 %i.mx, i1 true, i1 %i.mz
  br i1 %i.na, label %_Z14readExifUint32PKhmmb.exit369, label %bb.ci

_Z14readExifUint32PKhmmb.exit367.thread598:       ; preds = %bb.ch
  %i.nb = load i32, ptr %i.mv, align 1
  %i.nc = call i32 @llvm.bswap.i32(i32 %i.nb)
  %i.nd = uitofp i32 %i.nc to double              ; 2 uses
  %i.ne = add i32 %spec.select591, 4              ; 3 uses
  %i.nf = icmp ugt i32 %i.ne, %i.k
  %i.ng = sub nuw i32 %i.k, %i.ne
  %i.nh = icmp ult i32 %i.ng, 4
  %i.ni = select i1 %i.nf, i1 true, i1 %i.nh
  br i1 %i.ni, label %_Z14readExifUint32PKhmmb.exit369, label %.thread600

.thread600:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread598
  %i.nj = zext i32 %i.ne to i64
  %i.nk = getelementptr i8, ptr %0, i64 %i.nj
  br label %bb.cj

_Z14readExifUint32PKhmmb.exit367.thread:          ; preds = %bb.ch
  %i.nl = load i32, ptr %i.mv, align 1
  %i.nm = uitofp i32 %i.nl to double              ; 2 uses
  %i.nn = add i32 %spec.select591, 4              ; 3 uses
  %i.no = icmp ugt i32 %i.nn, %i.k
  %i.np = sub nuw i32 %i.k, %i.nn
  %i.nq = icmp ult i32 %i.np, 4
  %i.nr = select i1 %i.no, i1 true, i1 %i.nq
  br i1 %i.nr, label %_Z14readExifUint32PKhmmb.exit369, label %.thread597

.thread597:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread
  %i.ns = zext i32 %i.nn to i64
  %i.nt = getelementptr i8, ptr %0, i64 %i.ns
  br label %bb.ck

bb.ci:                                            ; preds = %_Z14readExifUint32PKhmmb.exit367
  %i.nu = zext i32 %i.mw to i64
  %i.nv = getelementptr i8, ptr %0, i64 %i.nu     ; 2 uses
  br i1 %3, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread600, %bb.ci
  %i.nw = phi ptr [ %i.nk, %.thread600 ], [ %i.nv, %bb.ci ]
  %i.nx = phi double [ %i.nd, %.thread600 ], [ 0.000000e+00, %bb.ci ]
  %i.ny = load i32, ptr %i.nw, align 1
  %i.nz = call i32 @llvm.bswap.i32(i32 %i.ny)
  br label %_Z14readExifUint32PKhmmb.exit369

bb.ck:                                            ; preds = %.thread597, %bb.ci
  %i.oa = phi ptr [ %i.nt, %.thread597 ], [ %i.nv, %bb.ci ]
  %i.ob = phi double [ %i.nm, %.thread597 ], [ 0.000000e+00, %bb.ci ]
  %i.oc = load i32, ptr %i.oa, align 1
  br label %_Z14readExifUint32PKhmmb.exit369

_Z14readExifUint32PKhmmb.exit369:                 ; preds = %_Z14readExifUint32PKhmmb.exit367.thread598, %_Z14readExifUint32PKhmmb.exit367.thread, %_Z14readExifUint32PKhmmb.exit367, %bb.cj, %bb.ck
  %i.od = phi double [ %i.ob, %bb.ck ], [ %i.nx, %bb.cj ], [ 0.000000e+00, %_Z14readExifUint32PKhmmb.exit367 ], [ %i.nm, %_Z14readExifUint32PKhmmb.exit367.thread ], [ %i.nd, %_Z14readExifUint32PKhmmb.exit367.thread598 ]
  %.0.i368 = phi i32 [ %i.oc, %bb.ck ], [ %i.nz, %bb.cj ], [ 0, %_Z14readExifUint32PKhmmb.exit367 ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread598 ]
  %i.oe = uitofp i32 %.0.i368 to double
  %i.of = fdiv double %i.od, %i.oe
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.of)
          to label %_ZNSolsEj.exit342 unwind label %bb.cl ; 0 uses

bb.cl:                                            ; preds = %_Z14readExifUint32PKhmmb.exit369
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp643

bb.cm:                                            ; preds = %bb.be
  %i.oi = icmp eq i32 %.0.i285565575, 7           ; 2 uses
  %i.oj = icmp ugt i32 %i.ig, 8
  %or.cond14 = and i1 %i.oi, %i.oj
  br i1 %or.cond14, label %bb.cn, label %bb.cw

bb.cn:                                            ; preds = %bb.cm
  %i.ok = zext i32 %spec.select591 to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 %i.ok ; 2 uses
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !34
  %i.on = icmp eq i8 %i.om, 65
  br i1 %i.on, label %bb.co, label %.thread604

bb.co:                                            ; preds = %bb.cn
  %i.oo = add i32 %spec.select591, 1
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !34
  %i.os = icmp eq i8 %i.or, 83
  br i1 %i.os, label %bb.cp, label %.thread604

bb.cp:                                            ; preds = %bb.co
  %i.ot = add i32 %spec.select591, 2
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !34
  %i.ox = icmp eq i8 %i.ow, 67
  br i1 %i.ox, label %bb.cq, label %.thread604

bb.cq:                                            ; preds = %bb.cp
  %i.oy = add i32 %spec.select591, 3
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !34
  %i.pc = icmp eq i8 %i.pb, 73
  br i1 %i.pc, label %bb.cr, label %.thread604

bb.cr:                                            ; preds = %bb.cq
  %i.pd = add i32 %spec.select591, 4
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !34
  %i.ph = icmp eq i8 %i.pg, 73
  br i1 %i.ph, label %.lr.ph, label %.thread604

.lr.ph:                                           ; preds = %bb.cr, %bb.cu
  %.0194863 = phi i64 [ %i.pr, %bb.cu ], [ 8, %bb.cr ] ; 2 uses
  %gep862 = getelementptr inbounds nuw i8, ptr %i.ol, i64 %.0194863
end_hunk_2
begin_hunk_3_@_Z11showExifIFDPKhmmb:bb.a
  %i.ur = invoke noundef signext i8 %i.uq(ptr noundef nonnull align 8 dereferenceable(570) %i.uj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521 unwind label %.loopexit, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521: ; preds = %.noexc524, %bb.dz
  %.0.i.i.i522 = phi i8 [ %i.un, %bb.dz ], [ %i.ur, %.noexc524 ]
  %i.us = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i522)
          to label %.noexc526 unwind label %.loopexit

.noexc526:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i521
  %i.ut = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.us)
          to label %_ZNSolsEPFRSoS_E.exit293 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit293:                         ; preds = %.noexc515, %.noexc526
  %.sroa.0.8 = phi ptr [ %.sroa.0.3864, %.noexc515 ], [ %.sroa.0.7, %.noexc526 ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %.sroa.11.1865, %.noexc515 ], [ %.sroa.11.3, %.noexc526 ] ; 2 uses
  %.sroa.21.8 = phi ptr [ %.sroa.21.3866, %.noexc515 ], [ %.sroa.21.7, %.noexc526 ] ; 2 uses
  %i.uu = add nuw nsw i64 %.0198868, 1            ; 2 uses
  %exitcond1028.not = icmp eq i64 %i.uu, %.0.i
  br i1 %exitcond1028.not, label %_ZNSolsEPFRSoS_E.exit282, label %.lr.ph869, !llvm.loop !316

_ZNSolsEPFRSoS_E.exit282:                         ; preds = %_ZNSolsEPFRSoS_E.exit293, %_ZNSolsEPFRSoS_E.exit256
  %.sroa.0.3.lcssa = phi ptr [ %.sroa.0.08731359, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.0.8, %_ZNSolsEPFRSoS_E.exit293 ] ; 10 uses
  %.sroa.11.1.lcssa = phi ptr [ %i.ai, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.11.4, %_ZNSolsEPFRSoS_E.exit293 ] ; 2 uses
  %.sroa.21.3.lcssa = phi ptr [ %.sroa.21.08751356, %_ZNSolsEPFRSoS_E.exit256 ], [ %.sroa.21.8, %_ZNSolsEPFRSoS_E.exit293 ] ; 8 uses
  %.0199.lcssa = phi i64 [ %i.dt, %_ZNSolsEPFRSoS_E.exit256 ], [ %i.ii, %_ZNSolsEPFRSoS_E.exit293 ] ; 2 uses
  %i.uv = trunc i64 %.0199.lcssa to i32           ; 2 uses
  %i.uw = icmp ugt i32 %i.uv, %i.k
  %i.ux = sub nuw i32 %i.k, %i.uv
  %i.uy = icmp ult i32 %i.ux, 4
  %i.uz = select i1 %i.uw, i1 true, i1 %i.uy
  br i1 %i.uz, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit282
  %i.va = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.207, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404 unwind label %.loopexit.split-lp643.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404: ; preds = %bb.eb
  %i.vb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.vc = getelementptr i8, ptr %i.vb, i64 -24
  %i.vd = load i64, ptr %i.vc, align 8
  %i.ve = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 240
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i529 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i529, label %bb.ec, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc534 unwind label %.loopexit.split-lp643.loopexit.split-lp

.noexc534:                                        ; preds = %bb.ec
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit404
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 56
  %i.vi = load i8, ptr %i.vh, align 8, !tbaa !28
  %.not.i1.i.i531 = icmp eq i8 %i.vi, 0
  br i1 %.not.i1.i.i531, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 67
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532

bb.ee:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i530
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.vg)
          to label %.noexc535 unwind label %.loopexit.split-lp643.loopexit

.noexc535:                                        ; preds = %bb.ee
  %i.vl = load ptr, ptr %i.vg, align 8, !tbaa !8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %i.vn = load ptr, ptr %i.vm, align 8
  %i.vo = invoke noundef signext i8 %i.vn(ptr noundef nonnull align 8 dereferenceable(570) %i.vg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532 unwind label %.loopexit.split-lp643.loopexit, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532: ; preds = %.noexc535, %bb.ed
  %.0.i.i.i533 = phi i8 [ %i.vk, %bb.ed ], [ %i.vo, %.noexc535 ]
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i533)
          to label %.noexc537 unwind label %.loopexit.split-lp643.loopexit

.noexc537:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i532
  %i.vq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vp)
          to label %.loopexit1071 unwind label %.loopexit.split-lp643.loopexit ; 0 uses

bb.ef:                                            ; preds = %_ZNSolsEPFRSoS_E.exit282
  br i1 %.02028781354, label %_ZNSolsEPFRSoS_E.exit246, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vr = getelementptr i8, ptr %0, i64 %.0199.lcssa ; 2 uses
  br i1 %3, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.vs = load i32, ptr %i.vr, align 1
  %i.vt = call i32 @llvm.bswap.i32(i32 %i.vs)
  br label %_Z14readExifUint32PKhmmb.exit408

bb.ei:                                            ; preds = %bb.eg
  %i.vu = load i32, ptr %i.vr, align 1
  br label %_Z14readExifUint32PKhmmb.exit408

_Z14readExifUint32PKhmmb.exit408:                 ; preds = %bb.eh, %bb.ei
  %.0.i407 = phi i32 [ %i.vu, %bb.ei ], [ %i.vt, %bb.eh ]
  %i.vv = zext i32 %.0.i407 to i64
  br label %_ZNSolsEPFRSoS_E.exit246

_ZNSolsEPFRSoS_E.exit246:                         ; preds = %_Z14readExifUint32PKhmmb.exit408, %bb.ef
  %.1554 = phi i64 [ %.05538761355, %bb.ef ], [ %i.vv, %_Z14readExifUint32PKhmmb.exit408 ] ; 5 uses
  %i.vw = icmp eq ptr %.sroa.0.3.lcssa, %.sroa.11.1.lcssa
  br i1 %i.vw, label %bb.ej, label %bb.d, !llvm.loop !312

bb.ej:                                            ; preds = %_ZNSolsEPFRSoS_E.exit246
  %i.vx = icmp eq i64 %.1554, 0
  br i1 %i.vx, label %.loopexit1071, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vy = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %.not10.i.i.i409 = icmp eq ptr %i.vy, null
  br i1 %.not10.i.i.i409, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph.i.i.i410

.lr.ph.i.i.i410:                                  ; preds = %bb.ek, %.lr.ph.i.i.i410
  %.012.i.i.i411 = phi ptr [ %.1.i.i.i416, %.lr.ph.i.i.i410 ], [ %i.vy, %bb.ek ] ; 4 uses
  %.0811.i.i.i412 = phi ptr [ %.19.i.i.i413, %.lr.ph.i.i.i410 ], [ %i.f, %bb.ek ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.012.i.i.i411, i64 32
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !87
  %i.wb = icmp ult i64 %i.wa, %.1554              ; 3 uses
  %.19.i.i.i413 = select i1 %i.wb, ptr %.0811.i.i.i412, ptr %.012.i.i.i411 ; 2 uses
  %.1.in.v.i.i.i414 = select i1 %i.wb, i64 24, i64 16
  %.1.in.i.i.i415 = getelementptr inbounds nuw i8, ptr %.012.i.i.i411, i64 %.1.in.v.i.i.i414
  %.1.i.i.i416 = load ptr, ptr %.1.in.i.i.i415, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i417 = icmp eq ptr %.1.i.i.i416, null
  br i1 %.not.i.i.i417, label %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i418, label %.lr.ph.i.i.i410, !llvm.loop !314

_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i418: ; preds = %.lr.ph.i.i.i410
  %i.wc = icmp eq ptr %.19.i.i.i413, %i.f
  br i1 %i.wc, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit420

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit420: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i418
  %.19.i.i.i413.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.wb, ptr %.0811.i.i.i412, ptr %.012.i.i.i411
  %.19.i.i.i413.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i413.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.wd = load i64, ptr %.19.i.i.i413.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !87
  %.not630 = icmp ult i64 %.1554, %i.wd
  br i1 %.not630, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.loopexit1071

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit420, %bb.ek, %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i418
  store i64 %.1554, ptr %i.d, align 8, !tbaa !87
  %i.we = ptrtoint ptr %.sroa.21.3.lcssa to i64
  %i.wf = ptrtoint ptr %.sroa.0.3.lcssa to i64
  %i.wg = sub i64 %i.we, %i.wf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3.lcssa, i64 noundef %i.wg) #27
  br label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

.loopexit.split-lp643:                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit653, %.loopexit.split-lp654, %.loopexit642, %.loopexit.split-lp643.loopexit.split-lp, %.loopexit.split-lp643.loopexit, %.loopexit657, %.loopexit.split-lp658, %.loopexit662, %.loopexit.split-lp663, %bb.bl, %bb.cb, %bb.cl, %bb.cv, %bb.di, %bb.dx, %bb.h
  %.sroa.0.13 = phi ptr [ %.sroa.0.1, %bb.h ], [ %.sroa.0.3864, %bb.cl ], [ %.sroa.0.0873.lcssa, %.loopexit.split-lp663 ], [ %.sroa.0.08731359, %.loopexit.split-lp658 ], [ %.sroa.0.2.ph.ph, %.loopexit.split-lp643.loopexit.split-lp ], [ %.sroa.0.3864, %.loopexit.split-lp654 ], [ %.sroa.0.3864, %bb.cv ], [ %.sroa.0.3864, %bb.di ], [ %.sroa.0.3864, %bb.dx ], [ %.sroa.0.3864, %bb.bl ], [ %.sroa.0.5, %bb.cb ], [ %.sroa.0.0873.lcssa, %.loopexit662 ], [ %.sroa.0.08731359, %.loopexit657 ], [ %.sroa.0.08731359, %.loopexit642 ], [ %.sroa.0.3.lcssa, %.loopexit.split-lp643.loopexit ], [ %.sroa.0.3864, %.loopexit653 ], [ %.sroa.0.4.ph, %.loopexit ], [ %.sroa.0.3864, %.loopexit.split-lp.loopexit ], [ %.sroa.0.4.ph635.ph, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.21.13 = phi ptr [ %.sroa.21.1, %bb.h ], [ %.sroa.21.3866, %bb.cl ], [ %.sroa.21.0875.lcssa, %.loopexit.split-lp663 ], [ %.sroa.21.08751356, %.loopexit.split-lp658 ], [ %.sroa.21.2.ph.ph, %.loopexit.split-lp643.loopexit.split-lp ], [ %.sroa.21.3866, %.loopexit.split-lp654 ], [ %.sroa.21.3866, %bb.cv ], [ %.sroa.21.3866, %bb.di ], [ %.sroa.21.3866, %bb.dx ], [ %.sroa.21.3866, %bb.bl ], [ %.sroa.21.5, %bb.cb ], [ %.sroa.21.0875.lcssa, %.loopexit662 ], [ %.sroa.21.08751356, %.loopexit657 ], [ %.sroa.21.08751356, %.loopexit642 ], [ %.sroa.21.3.lcssa, %.loopexit.split-lp643.loopexit ], [ %.sroa.21.3866, %.loopexit653 ], [ %.sroa.21.4.ph, %.loopexit ], [ %.sroa.21.3866, %.loopexit.split-lp.loopexit ], [ %.sroa.21.4.ph636.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn235.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.oh, %bb.cl ], [ %lpad.loopexit.split-lp665, %.loopexit.split-lp663 ], [ %lpad.loopexit.split-lp660, %.loopexit.split-lp658 ], [ %lpad.loopexit.split-lp648, %.loopexit.split-lp643.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp654 ], [ %i.ps, %bb.cv ], [ %i.rh, %bb.di ], [ %i.tx, %bb.dx ], [ %i.kw, %bb.bl ], [ %lpad.phi641, %bb.cb ], [ %lpad.loopexit664, %.loopexit662 ], [ %lpad.loopexit659, %.loopexit657 ], [ %lpad.loopexit644, %.loopexit642 ], [ %lpad.loopexit647, %.loopexit.split-lp643.loopexit ], [ %lpad.loopexit655, %.loopexit653 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit650, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp651, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i422 = icmp eq ptr %.sroa.0.13, null
  br i1 %.not.i.i.i422, label %_ZNSt6vectorImSaImEED2Ev.exit423, label %bb.el

bb.el:                                            ; preds = %.loopexit.split-lp643
  %i.wh = ptrtoint ptr %.sroa.21.13 to i64
  %i.wi = ptrtoint ptr %.sroa.0.13 to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.13, i64 noundef %i.wj) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit423

_ZNSt6vectorImSaImEED2Ev.exit423:                 ; preds = %.loopexit.split-lp643, %bb.el
  call void @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn235.pn

.loopexit1071:                                    ; preds = %bb.ej, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit420, %.noexc504.invoke, %.noexc428, %.noexc537, %.noexc438, %.noexc482
  %.sroa.0.11.ph = phi ptr [ %.sroa.0.0873.lcssa, %.noexc428 ], [ %.sroa.0.3864, %.noexc504.invoke ], [ %.sroa.0.3864, %.noexc482 ], [ %.sroa.0.08731359, %.noexc438 ], [ %.sroa.0.3.lcssa, %.noexc537 ], [ %.sroa.0.3.lcssa, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit420 ], [ %.sroa.0.3.lcssa, %bb.ej ] ; 2 uses
  %.sroa.21.11.ph = phi ptr [ %.sroa.21.0875.lcssa, %.noexc428 ], [ %.sroa.21.3866, %.noexc504.invoke ], [ %.sroa.21.3866, %.noexc482 ], [ %.sroa.21.08751356, %.noexc438 ], [ %.sroa.21.3.lcssa, %.noexc537 ], [ %.sroa.21.3.lcssa, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit420 ], [ %.sroa.21.3.lcssa, %bb.ej ]
  %i.wk = ptrtoint ptr %.sroa.21.11.ph to i64
  %i.wl = ptrtoint ptr %.sroa.0.11.ph to i64
  %i.wm = sub i64 %i.wk, %i.wl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.11.ph, i64 noundef %i.wm) #27
  %i.wn = load ptr, ptr %i.g, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.wn)
          to label %_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEED2Ev.exit unwind label %bb.em

bb.em:                                            ; preds = %.loopexit1071
  %i.wo = landingpad { ptr, i32 }
          catch ptr null
  %i.wp = extractvalue { ptr, i32 } %i.wo, 0
  call void @__clang_call_terminate(ptr %i.wp) #28
  unreachable

_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEED2Ev.exit: ; preds = %.loopexit1071
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %2 = load i64, ptr %1, align 8, !tbaa !87       ; 2 uses
  br label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %.lr.ph.i.i.i.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %.lr.ph.i.i.i.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %.lr.ph.i.i.i.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !87
  %i.f = icmp ult i64 %i.e, %2                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i.a, !llvm.loop !317

_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i.a
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !87
  %i.j = icmp ult i64 %2, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %3 = load i64, ptr %1, align 8, !tbaa !87
  store i64 %3, ptr %i.l, align 8, !tbaa !318
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i8 0, ptr %i.m, align 8, !tbaa !320
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.l, align 8, !tbaa !87
  %i.t = load i64, ptr %i.r, align 8, !tbaa !87
  %i.u = icmp ult i64 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !109
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !109
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #27
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z8showExifR4Data(ptr noundef nonnull align 8 dereferenceable(736) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load i32, ptr %i.c, align 8, !tbaa !321
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.208, i64 noundef 38) ; 0 uses
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.o, %bb.e ], [ %i.s, %bb.f ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 0 uses
  br label %bb.ai

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !322  ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.y = load i32, ptr %i.x, align 8, !tbaa !323  ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %i.aa = icmp ult i32 %i.y, 8
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.209, i64 noundef 21) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.z) ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i25, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !28
  %.not.i1.i.i27 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29: ; preds = %bb.j, %bb.k
  %.0.i.i.i28 = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext %.0.i.i.i28)
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) ; 0 uses
  br label %bb.ai

bb.l:                                             ; preds = %bb.g
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.210, i64 noundef 11) ; 0 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.z) ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i30 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i30, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31: ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !28
  %.not.i1.i.i32 = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_:bb.a
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !43
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #26 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, bool>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, bool>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !348
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !83
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !39
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !43
  %i.m = load i64, ptr %i.g, align 8, !tbaa !34
  store i64 %i.m, ptr %i.e, align 8, !tbaa !34
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8, !tbaa !41
  store ptr %i.g, ptr %i.d, align 8, !tbaa !43
  store i64 0, ptr %i.p, align 8, !tbaa !41
  store i8 0, ptr %i.g, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.r, align 8, !tbaa !353
  store ptr %i.a, ptr %i.o, align 8, !tbaa !350
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ah = phi i1 [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !109
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !109
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !34
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %.sroa.0.011
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !356

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !34
  store i8 %i.s, ptr %i.g, align 1, !tbaa !34
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !116
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !356

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !34
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !356

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !34
  store i8 %i.ad, ptr %1, align 1, !tbaa !34
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !356

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !34
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !34
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !116
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !356

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !34
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !116
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !356

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !34
  store i8 %i.au, ptr %1, align 1, !tbaa !34
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #25
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #29
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !356

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !34
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !356

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !34
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !34
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !356

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %4 = load ptr, ptr %i.d, align 8, !tbaa !128
  %5 = ptrtoint ptr %4 to i64
  %i.bv = sub i64 %5, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #27
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !117
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !116
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !128
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i16, ptr %i.g, align 2, !tbaa !176  ; 2 uses
  %i.i = load i16, ptr %2, align 2, !tbaa !176    ; 2 uses
  %i.j = icmp ult i16 %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i16 %i.i, %i.h
  br i1 %i.k, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i:          ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !179  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !179  ; 2 uses
  %i.p = icmp ult i16 %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i:         ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i
  %i.q = icmp ult i16 %i.o, %i.m
  br i1 %i.q, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %bb.e

bb.e:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i16, ptr %i.r, align 2, !tbaa !176  ; 2 uses
  %i.u = load i16, ptr %i.s, align 2, !tbaa !176  ; 2 uses
  %i.v = icmp ult i16 %i.t, %i.u
  br i1 %i.v, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ult i16 %i.u, %i.t
  br i1 %i.w, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 38
  %i.y = load i16, ptr %i.x, align 2, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !179
  %i.ab = icmp ult i16 %i.y, %i.aa
  br i1 %i.ab, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44: ; preds = %bb.f, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i, %bb.d, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit, %bb.b
  %i.ac = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 2 dereferenceable(8) %2) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i16, ptr %2, align 2, !tbaa !176   ; 6 uses
  %i.ah = load i16, ptr %i.af, align 2, !tbaa !176 ; 2 uses
  %i.ai = icmp ult i16 %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp ult i16 %i.ah, %i.ag
  br i1 %i.aj, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10:        ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !179 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.an = load i16, ptr %i.am, align 2, !tbaa !179 ; 2 uses
  %i.ao = icmp ult i16 %i.al, %i.an
  br i1 %i.ao, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11:       ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10
  %i.ap = icmp ult i16 %i.an, %i.al
  br i1 %i.ap, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16, label %bb.i

bb.i:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.as = load i16, ptr %i.aq, align 2, !tbaa !176 ; 2 uses
  %i.at = load i16, ptr %i.ar, align 2, !tbaa !176 ; 2 uses
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ult i16 %i.at, %i.as
  br i1 %i.av, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12: ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !179
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !179
  %i.ba = icmp ult i16 %i.ax, %i.az
  br i1 %i.ba, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread: ; preds = %bb.i, %bb.g, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !122 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread
  %i.be = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !176 ; 2 uses
  %i.bh = icmp ult i16 %i.bg, %i.ag
  br i1 %i.bh, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp ult i16 %i.ag, %i.bg
  br i1 %i.bi, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13:        ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 34
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !179 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !179 ; 2 uses
  %i.bn = icmp ult i16 %i.bk, %i.bm
  br i1 %i.bn, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14:       ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13
  %i.bo = icmp ult i16 %i.bm, %i.bk
  br i1 %i.bo, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48, label %bb.m

bb.m:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.br = load i16, ptr %i.bp, align 2, !tbaa !176 ; 2 uses
  %i.bs = load i16, ptr %i.bq, align 2, !tbaa !176 ; 2 uses
  %i.bt = icmp ult i16 %i.br, %i.bs
  br i1 %i.bt, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp ult i16 %i.bs, %i.br
  br i1 %i.bu, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15: ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 38
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !179
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !179
  %i.bz = icmp ult i16 %i.bw, %i.by
  br i1 %i.bz, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread: ; preds = %bb.m, %bb.k, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !343
  %i.cc = icmp eq ptr %i.cb, null                 ; 2 uses
  %spec.select = select i1 %i.cc, ptr null, ptr %1
  %spec.select53 = select i1 %i.cc, ptr %i.be, ptr %1
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48: ; preds = %bb.n, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14, %bb.l, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15
  %i.cd = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 2 dereferenceable(8) %2) ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0
  %i.cf = extractvalue { ptr, ptr } %i.cd, 1
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16:        ; preds = %bb.j, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !179 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !179 ; 2 uses
  %i.ck = icmp ult i16 %i.ch, %i.cj
  br i1 %i.ck, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17:       ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16
  %i.cl = icmp ult i16 %i.cj, %i.ch
  br i1 %i.cl, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17
end_hunk_4
