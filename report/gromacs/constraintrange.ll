Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/constraintrange?download=true
inline.NumInlined: 205
inline.NumDeleted: 132
begin_hunk_0_@_ZN3gmx12constr_r_maxERKNS_8MDLoggerEPK10gmx_mtop_tPK10t_inputrec:bb.a
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !158
  %i.cj = fpext float %i.cd to double
  %i.ck = call double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %i.cj)
  %i.cl = fptrunc double %i.ck to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge98.i
  %.059.i = phi float [ %i.cl, %bb.j ], [ %i.cd, %._crit_edge98.i ] ; 2 uses
  %i.cm = fsub float 1.000000e+00, %.059.i
  %i.cn = load float, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  %i.co = call noundef float @sqrtf(float noundef %i.cn) #12
  %i.cp = load float, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  %i.cq = call noundef float @sqrtf(float noundef %i.cp) #12
  %i.cr = fmul float %.059.i, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %i.cm, float %i.co, float %i.cr) ; 3 uses
  switch i32 %i.ce, label %bb.m [
    i32 0, label %bb.l
    i32 10, label %bb.l
    i32 11, label %bb.l
    i32 12, label %bb.l
    i32 9, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.ct = load i64, ptr %i.p, align 8, !tbaa !157
  %i.cu = load i64, ptr %i.q, align 8, !tbaa !159
  %i.cv = add nsw i64 %i.cu, %i.ct
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !158
  %i.cz = call double @llvm.fmuladd.f64(double %i.cw, double %i.cy, double %i.cc)
  %i.da = fptrunc double %i.cz to float           ; 2 uses
  %i.db = fsub float 1.000000e+00, %i.da
  %i.dc = call noundef float @sqrtf(float noundef %i.cn) #12
  %i.dd = call noundef float @sqrtf(float noundef %i.cp) #12
  %i.de = fmul float %i.dd, %i.da
  %i.df = call float @llvm.fmuladd.f32(float %i.db, float %i.dc, float %i.de) ; 2 uses
  %i.dg = fcmp olt float %i.cs, %i.df
  %.sroa.speculated.i = select i1 %i.dg, float %i.df, float %i.cs
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.0.i = phi float [ %i.bw, %bb.g ], [ %i.cs, %bb.k ], [ %.sroa.speculated.i, %bb.l ]
  %.not.i.i.i68.i = icmp eq ptr %.sroa.074.0.i, null
  br i1 %.not.i.i.i68.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit69.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = ptrtoint ptr %.sroa.14.0.i to i64
  %i.di = ptrtoint ptr %.sroa.074.0.i to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0.i, i64 noundef %i.dj) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69.i

_ZNSt6vectorIiSaIiEED2Ev.exit69.i:                ; preds = %bb.n, %bb.m
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i70.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i70.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69.i
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.o, %_ZNSt6vectorIiSaIiEED2Ev.exit69.i
  %i.dp = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i1.i.i, label %_ZN3gmx11ListOfListsIiED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #15
  br label %_ZN3gmx11ListOfListsIiED2Ev.exit.i

_ZN3gmx11ListOfListsIiED2Ev.exit.i:               ; preds = %bb.p, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit

_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit: ; preds = %bb.c, %_ZN3gmx11ListOfListsIiED2Ev.exit.i
  %.061.i = phi float [ %.0.i, %_ZN3gmx11ListOfListsIiED2Ev.exit.i ], [ 0.000000e+00, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.du = fcmp olt float %.024, %.061.i
  %.sroa.speculated = select i1 %i.du, float %.061.i, float %.024 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 2408 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.dx, ptr %6, align 8, !tbaa !162
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.dy, align 8, !tbaa !164
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.dz, align 8, !tbaa !166
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !146
  %i.ec = add nsw i32 %i.eb, 1
  %i.ed = fpext float %.0.lcssa to double
  %i.ee = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull @.str, i32 noundef %i.ec, double noundef %i.ed)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = load ptr, ptr %i.v, align 8, !tbaa !168
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.ee)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.s, !inline_history !23

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.r
  %i.ei = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.dx
  br i1 %i.ej, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.ek = load i64, ptr %i.dx, align 8, !tbaa !20
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dx
  br i1 %i.eo, label %_ZN3gmx14LogEntryWriterD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %bb.s
  %i.ep = load i64, ptr %i.dx, align 8, !tbaa !20
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #15
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit11

_ZN3gmx14LogEntryWriterD2Ev.exit11:               ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %common.resume

bb.t:                                             ; preds = %._crit_edge, %_ZN3gmx14LogEntryWriterD2Ev.exit
  ret float %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3gmx11make_at2conERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEENS_27FlexibleConstraintTreatmentE(ptr dead_on_unwind writable sret(%"class.gmx::ListOfLists") align 8, ptr noundef nonnull align 8 dereferenceable(2408), ptr, ptr, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN3gmx27flexibleConstraintTreatmentEb(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN3gmxL12constr_recurERKNS_11ListOfListsIiEERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS5_95EEENS_8ArrayRefIK9t_iparamsEEbiiiNSA_IiEEffPfPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2280) %1, ptr %2, ptr %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 -2147483647, -2147483648) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.121") align 8 captures(none) %8, float noundef %9, float noundef %10, ptr nofree noundef nonnull captures(none) %11, ptr nofree noundef nonnull captures(none) %12) unnamed_addr #4 {
bb.a:
  %13 = alloca %"class.gmx::ArrayRef.121", align 8 ; 3 uses
  %i.a = load i32, ptr %12, align 4, !tbaa !13
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %12, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = sext i32 %5 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m
  %.not105112 = icmp eq i32 %i.j, %i.l
  br i1 %.not105112, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.a
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %14 = load ptr, ptr %i.q, align 8, !tbaa !18
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 1496
  %i.r = load ptr, ptr %15, align 8, !tbaa !174
  %i.s = ptrtoint ptr %i.r to i64
  %16 = ptrtoint ptr %i.d to i64
  %17 = sub i64 %i.s, %16
  %i.t = icmp sgt i32 %6, 0                       ; 2 uses
  %i.u = load i64, ptr %8, align 8                ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 7 uses
  %i.w = ashr exact i64 %17, 2                    ; 2 uses
  %i.x = sub nsw i64 0, %i.w
  %invariant.gep = getelementptr [4 x i8], ptr %14, i64 %i.x
  %i.y = and i32 %7, 1
  %i.z = icmp eq i32 %i.y, 0                      ; 2 uses
  %i.aa = add nsw i32 %6, 1                       ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %7
  %i.ac = mul nsw i32 %7, 1000
  %i.ad = sext i32 %6 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ad ; 2 uses
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.an
  %wide.trip.count = zext i32 %6 to i64           ; 6 uses
  %wide.trip.count120 = zext nneg i32 %6 to i64
  %min.iters.check = icmp ult i32 %6, 4
  %min.iters.check129 = icmp ult i32 %6, 32
  %i.ap = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  %n.vec138 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec138, %wide.trip.count
  %.073.in.idx = select i1 %4, i64 4, i64 0
  %invariant.gep160 = getelementptr i8, ptr %2, i64 %.073.in.idx
  br label %bb.b

._crit_edge116:                                   ; preds = %bb.j, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph115, %bb.j
  %.sroa.091.0113 = phi ptr [ %i.p, %.lr.ph115 ], [ %i.da, %bb.j ] ; 2 uses
  %i.aq = load i32, ptr %.sroa.091.0113, align 4, !tbaa !13 ; 6 uses
  br i1 %i.t, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi130 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi131 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi132 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %wide.load = load <8 x i32>, ptr %i.ar, align 4, !tbaa !13
  %wide.load133 = load <8 x i32>, ptr %i.as, align 4, !tbaa !13
  %wide.load134 = load <8 x i32>, ptr %i.at, align 4, !tbaa !13
  %wide.load135 = load <8 x i32>, ptr %i.au, align 4, !tbaa !13
  %i.av = icmp eq <8 x i32> %broadcast.splat, %wide.load
  %i.aw = icmp eq <8 x i32> %broadcast.splat, %wide.load133
  %i.ax = icmp eq <8 x i32> %broadcast.splat, %wide.load134
  %i.ay = icmp eq <8 x i32> %broadcast.splat, %wide.load135
  %i.az = or <8 x i1> %vec.phi, %i.av             ; 2 uses
  %i.ba = or <8 x i1> %vec.phi130, %i.aw          ; 2 uses
  %i.bb = or <8 x i1> %vec.phi131, %i.ax          ; 2 uses
  %i.bc = or <8 x i1> %vec.phi132, %i.ay          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.ba, %i.az
  %bin.rdx136 = or <8 x i1> %i.bb, %bin.rdx
  %bin.rdx137 = or <8 x i1> %i.bc, %bin.rdx136
  %bin.rdx137.fr = freeze <8 x i1> %bin.rdx137
  %i.be = bitcast <8 x i1> %bin.rdx137.fr to i8
  %.not149 = icmp eq i8 %i.be, 0                  ; 3 uses
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not149, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.bf = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x i1> poison, i1 %i.bf, i64 0
  %broadcast.splat142 = shufflevector <4 x i1> %broadcast.splatinsert141, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi144 = phi <4 x i1> [ %broadcast.splat142, %vec.epilog.ph ], [ %.fr150, %vec.epilog.vector.body ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index143
  %wide.load145 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !13
  %i.bh = icmp eq <4 x i32> %broadcast.splat140, %wide.load145
  %i.bi = or <4 x i1> %vec.phi144, %i.bh
  %.fr150 = freeze <4 x i1> %i.bi                 ; 2 uses
  %index.next146 = add nuw i64 %index143, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next146, %n.vec138
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !171

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bk = bitcast <4 x i1> %.fr150 to i4
  %.not151 = icmp eq i4 %i.bk, 0                  ; 2 uses
  br i1 %cmp.n147, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec138, %vec.epilog.middle.block ]
  %.072106.ph = phi i1 [ true, %iter.check ], [ %.not149, %vec.epilog.iter.check ], [ %.not151, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %.not151, %vec.epilog.middle.block ], [ %.not149, %middle.block ], [ %spec.select, %.lr.ph ]
  br i1 %spec.select.lcssa, label %.critedge, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.072106 = phi i1 [ %spec.select, %.lr.ph ], [ %.072106.ph, %.lr.ph.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = icmp ne i32 %i.aq, %i.bm
  %spec.select = select i1 %i.bn, i1 %.072106, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !172

.critedge:                                        ; preds = %bb.b, %._crit_edge
  %i.bo = mul nsw i32 %i.aq, 3
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp sgt i64 %i.w, %i.bp
  %.0.i.v = select i1 %i.bq, ptr %i.d, ptr %invariant.gep
  %.0.i = getelementptr [4 x i8], ptr %.0.i.v, i64 %i.bp ; 4 uses
  %i.br = load i32, ptr %.0.i, align 4, !tbaa !13
  %i.bs = sext i32 %i.br to i64
  %gep = getelementptr [48 x i8], ptr %invariant.gep160, i64 %i.bs
  %.073 = load float, ptr %gep, align 4, !tbaa !20 ; 3 uses
  %i.bt = fadd float %9, %.073
  %i.bu = fadd float %10, %.073
  %.075 = select i1 %i.z, float %i.bt, float %9   ; 5 uses
  %.074 = select i1 %i.z, float %10, float %i.bu  ; 6 uses
  %i.bv = fmul float %.074, %.074
  %i.bw = tail call float @llvm.fmuladd.f32(float %.075, float %.075, float %i.bv) ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %.075, float %.074, float %i.bw)
  %i.by = load float, ptr %11, align 4, !tbaa !14
  %i.bz = fcmp ogt float %i.bx, %i.by
  br i1 %i.bz, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.ca = tail call float @llvm.fmuladd.f32(float %9, float %.074, float %i.bw) ; 2 uses
  store float %i.ca, ptr %11, align 4, !tbaa !14
  %i.cb = load ptr, ptr @debug, align 8, !tbaa !179 ; 2 uses
  %.not = icmp eq ptr %i.cb, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cc = fpext float %.075 to double
  %i.cd = fpext float %.074 to double
  %i.ce = tail call noundef float @sqrtf(float noundef %i.ca) #12
  %i.cf = fpext float %i.ce to double
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cb, ptr noundef nonnull @.str.2, double noundef %i.cc, double noundef %i.cd, double noundef %i.cf) #12 ; 0 uses
  br i1 %i.t, label %.lr.ph110, label %._crit_edge111

._crit_edge111:                                   ; preds = %.lr.ph110, %bb.d
  %i.ch = load ptr, ptr @debug, align 8, !tbaa !179
  %i.ci = fpext float %.073 to double
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.4, i32 noundef %i.aq, double noundef %i.ci) #12 ; 0 uses
  br label %bb.e

.lr.ph110:                                        ; preds = %bb.d, %.lr.ph110
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.lr.ph110 ], [ 0, %bb.d ] ; 2 uses
  %i.ck = load ptr, ptr @debug, align 8, !tbaa !179
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv117
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13
  %i.cn = load i32, ptr %.0.i, align 4, !tbaa !13
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [48 x i8], ptr %2, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !20
  %i.cr = fpext float %i.cq to double
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.3, i32 noundef %i.cm, double noundef %i.cr) #12 ; 0 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge111, label %.lr.ph110, !llvm.loop !173

bb.e:                                             ; preds = %bb.c, %._crit_edge111, %.critedge
  br i1 %i.ab, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ct = load i32, ptr %12, align 4, !tbaa !13
  %i.cu = icmp slt i32 %i.ct, %i.ac
  br i1 %i.cu, label %bb.g, label %bb.j

end_hunk_0
