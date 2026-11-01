Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_abf?download=true
inline.NumInlined: 3756
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN14colvarbias_abf6updateEv:bb.a
_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i258: ; preds = %bb.df
  %i.ams = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amn) #27
          to label %.noexc261 unwind label %bb.dp ; 5 uses

.noexc261:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i258
  store ptr %i.ams, ptr %13, align 8, !tbaa !57
  %i.amt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store ptr %i.ams, ptr %i.amt, align 8, !tbaa !211
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.amn ; 4 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.amu, ptr %i.amv, align 8, !tbaa !210
  %i.amw = icmp samesign ugt i64 %i.amn, 8
  br i1 %i.amw, label %bb.dg, label %bb.dh, !prof !214

bb.dg:                                            ; preds = %.noexc261
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ams, ptr align 8 %.sroa.0279.0540, i64 %i.amn, i1 false)
  br label %bb.dj

bb.dh:                                            ; preds = %.noexc261
  %i.amx = icmp eq i64 %i.amn, 8
  br i1 %i.amx, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.amy = load double, ptr %.sroa.0279.0540, align 8, !tbaa !82
  store double %i.amy, ptr %i.ams, align 8, !tbaa !82
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %.thread301
  %i.amz = phi ptr [ %i.amv, %bb.dg ], [ %i.amv, %bb.dh ], [ %i.amv, %bb.di ], [ %i.amq, %.thread301 ] ; 2 uses
  %i.ana = phi ptr [ %i.amu, %bb.dg ], [ %i.amu, %bb.dh ], [ %i.amu, %bb.di ], [ %i.amp, %.thread301 ]
  %i.anb = phi ptr [ %i.amt, %bb.dg ], [ %i.amt, %bb.dh ], [ %i.amt, %bb.di ], [ %i.amo, %.thread301 ]
  store ptr %i.ana, ptr %i.anb, align 8, !tbaa !211
  %i.anc = invoke noundef zeroext i1 @_ZN11UIestimator11UIestimator6updateExSt6vectorIdSaIdEES3_(ptr noundef nonnull align 8 dereferenceable(1402) %i.alq, i64 noundef %i.alt, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13)
          to label %bb.dk unwind label %bb.dq     ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.and = load ptr, ptr %13, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i263 = icmp eq ptr %i.and, null
  br i1 %.not.i.i.i263, label %_ZNSt6vectorIdSaIdEED2Ev.exit264, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ane = load ptr, ptr %i.amz, align 8, !tbaa !210
  %i.anf = ptrtoint ptr %i.ane to i64
  %i.ang = ptrtoint ptr %i.and to i64
  %i.anh = sub i64 %i.anf, %i.ang
  call void @_ZdlPvm(ptr noundef nonnull %i.and, i64 noundef %i.anh) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit264

_ZNSt6vectorIdSaIdEED2Ev.exit264:                 ; preds = %bb.dk, %bb.dl
  %i.ani = load ptr, ptr %12, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i265 = icmp eq ptr %i.ani, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorIdSaIdEED2Ev.exit266, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit264
  %i.anj = load ptr, ptr %i.ami, align 8, !tbaa !210
  %i.ank = ptrtoint ptr %i.anj to i64
  %i.anl = ptrtoint ptr %i.ani to i64
  %i.anm = sub i64 %i.ank, %i.anl
  call void @_ZdlPvm(ptr noundef nonnull %i.ani, i64 noundef %i.anm) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit266

_ZNSt6vectorIdSaIdEED2Ev.exit266:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit264, %bb.dm
  %.not.i.i.i267 = icmp eq ptr %.sroa.0279.0540, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorIdSaIdEED2Ev.exit268, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit266
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0540, i64 noundef %i.amn) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit268

_ZNSt6vectorIdSaIdEED2Ev.exit268:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit266, %bb.dn
  %.not.i.i.i269 = icmp eq ptr %.sroa.0288.0518525537, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorIdSaIdEED2Ev.exit270, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit268
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0288.0518525537, i64 noundef %i.alw) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit270

bb.dp:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i258, %.noexc.i.i259
  %i.ann = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit272

bb.dq:                                            ; preds = %bb.dj
  %i.ano = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anp = load ptr, ptr %13, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i271 = icmp eq ptr %i.anp, null
  br i1 %.not.i.i.i271, label %_ZNSt6vectorIdSaIdEED2Ev.exit272, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.anq = load ptr, ptr %i.amz, align 8, !tbaa !210
  %i.anr = ptrtoint ptr %i.anq to i64
  %i.ans = ptrtoint ptr %i.anp to i64
  %i.ant = sub i64 %i.anr, %i.ans
  call void @_ZdlPvm(ptr noundef nonnull %i.anp, i64 noundef %i.ant) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit272

_ZNSt6vectorIdSaIdEED2Ev.exit272:                 ; preds = %bb.dr, %bb.dq, %bb.dp
  %.pn57 = phi { ptr, i32 } [ %i.ann, %bb.dp ], [ %i.ano, %bb.dq ], [ %i.ano, %bb.dr ] ; 2 uses
  %i.anu = load ptr, ptr %12, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i273 = icmp eq ptr %i.anu, null
  br i1 %.not.i.i.i273, label %_ZNSt6vectorIdSaIdEED2Ev.exit274, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit272
  %i.anv = load ptr, ptr %i.ami, align 8, !tbaa !210
  %i.anw = ptrtoint ptr %i.anv to i64
  %i.anx = ptrtoint ptr %i.anu to i64
  %i.any = sub i64 %i.anw, %i.anx
  call void @_ZdlPvm(ptr noundef nonnull %i.anu, i64 noundef %i.any) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit274

_ZNSt6vectorIdSaIdEED2Ev.exit274:                 ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ds, %_ZNSt6vectorIdSaIdEED2Ev.exit272
  %.pn59 = phi { ptr, i32 } [ %.pn57, %bb.ds ], [ %.pn57, %_ZNSt6vectorIdSaIdEED2Ev.exit272 ], [ %lpad.loopexit.split-lp347, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %.sroa.0279.0540, null
  br i1 %.not.i.i.i275, label %_ZNSt6vectorIdSaIdEED2Ev.exit276, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit274
  %.pn59554 = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.pn59, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.sroa.14295.0515526532553 = phi ptr [ %i.akl, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.14295.0515526534, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.sroa.0288.0518525535552 = phi ptr [ %i.akg, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.0288.0518525537, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.sroa.0279.0538551 = phi ptr [ %i.ako, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.0279.0540, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ] ; 2 uses
  %.sroa.14.0541550 = phi ptr [ %i.akt, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.14.0543, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %i.anz = ptrtoint ptr %.sroa.14.0541550 to i64
  %i.aoa = ptrtoint ptr %.sroa.0279.0538551 to i64
  %i.aob = sub i64 %i.anz, %i.aoa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0538551, i64 noundef %i.aob) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit276

_ZNSt6vectorIdSaIdEED2Ev.exit276:                 ; preds = %bb.dt, %_ZNSt6vectorIdSaIdEED2Ev.exit274
  %.sroa.0288.0516 = phi ptr [ %.sroa.0288.0518525535552, %bb.dt ], [ %.sroa.0288.0518525537, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ] ; 2 uses
  %.sroa.14295.0513 = phi ptr [ %.sroa.14295.0515526532553, %bb.dt ], [ %.sroa.14295.0515526534, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.pn59.pn = phi { ptr, i32 } [ %.pn59554, %bb.dt ], [ %.pn59, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ] ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %.sroa.0288.0516, null
  br i1 %.not.i.i.i277, label %common.resume, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit276
  %.pn59.pn561 = phi { ptr, i32 } [ %i.alp, %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread ], [ %.pn59.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit276 ]
  %.sroa.14295.0513560 = phi ptr [ %i.akl, %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread ], [ %.sroa.14295.0513, %_ZNSt6vectorIdSaIdEED2Ev.exit276 ]
  %.sroa.0288.0516559 = phi ptr [ %i.akg, %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread ], [ %.sroa.0288.0516, %_ZNSt6vectorIdSaIdEED2Ev.exit276 ] ; 2 uses
  %i.aoc = ptrtoint ptr %.sroa.14295.0513560 to i64
  %i.aod = ptrtoint ptr %.sroa.0288.0516559 to i64
  %i.aoe = sub i64 %i.aoc, %i.aod
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0288.0516559, i64 noundef %i.aoe) #26
  br label %common.resume

_ZNSt6vectorIdSaIdEED2Ev.exit270:                 ; preds = %bb.do, %_ZNSt6vectorIdSaIdEED2Ev.exit268, %bb.cu
  %i.aof = load ptr, ptr %0, align 8, !tbaa !154
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8
  %i.aoi = call noundef i32 %i.aoh(ptr noundef nonnull align 8 dereferenceable(2232) %0, ptr noundef null)
  ret i32 %i.aoi
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN14colvarbias_abf11calc_energyEPKSt6vectorI11colvarvalueSaIS1_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2232) initializes((248, 256)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 10 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !375
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 8
  %i.j = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !203  ; 8 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 320 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !158, !noalias !91 ; 7 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951   ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %.noexc.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25, !noalias !376
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i

_ZNK11colvar_gridIdE9new_indexEv.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.p = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #27, !noalias !376 ; 7 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.p, i1 false), !tbaa !83, !noalias !376
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !158, !noalias !377 ; 6 uses
  %.not.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !54, !noalias !377 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54, !noalias !377 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57, !noalias !377 ; 2 uses
  %min.iters.check = icmp ne i64 %.pre.i, 1
  %.not125 = icmp ult i64 %.pre.i, 2147483649
  %or.cond126 = and i1 %min.iters.check, %.not125
  br i1 %or.cond126, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %.pre.i, 4294967294            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.x = or disjoint i64 %index, 1                ; 2 uses
  %i.y = getelementptr inbounds nuw [168 x i8], ptr %i.s, i64 %index
  %i.z = getelementptr inbounds nuw [168 x i8], ptr %i.s, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !81, !noalias !377
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !81, !noalias !377
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = shl i64 %index, 32
  %i.ah = shl i64 %i.x, 32
  %i.ai = ashr exact i64 %i.ag, 32                ; 2 uses
  %i.aj = ashr exact i64 %i.ah, 32
  %i.ak = getelementptr inbounds nuw [168 x i8], ptr %i.u, i64 %i.ai
  %i.al = getelementptr inbounds nuw [168 x i8], ptr %i.u, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load double, ptr %i.am, align 8, !tbaa !81, !noalias !377
  %i.ap = load double, ptr %i.an, align 8, !tbaa !81, !noalias !377
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1
  %i.as = fsub <2 x double> %i.af, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ai
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !82, !noalias !377
  %i.au = fdiv <2 x double> %i.as, %wide.load
  %i.av = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.au)
  %i.aw = fptosi <2 x double> %i.av to <2 x i32>
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  store <2 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !83, !noalias !377
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !363

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i = phi i64 [ %i.bo, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.az = getelementptr inbounds nuw [168 x i8], ptr %i.s, i64 %.07.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !81, !noalias !377
  %i.bc = shl i64 %.07.i, 32
  %i.bd = ashr exact i64 %i.bc, 32                ; 2 uses
  %i.be = getelementptr inbounds nuw [168 x i8], ptr %i.u, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !81, !noalias !377
  %i.bh = fsub double %i.bb, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bd
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !82, !noalias !377
  %i.bk = fdiv double %i.bh, %i.bj
  %i.bl = tail call noundef double @llvm.floor.f64(double %i.bk)
  %i.bm = fptosi double %i.bl to i32
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.07.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !83, !noalias !377
  %i.bo = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %.pre.i
  br i1 %exitcond.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph, !llvm.loop !364

bb.e:                                             ; preds = %bb.c
  br i1 %i.o, label %.noexc.i.i42, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33

.noexc.i.i42:                                     ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25, !noalias !378
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33: ; preds = %bb.e
  %.not.i.i.i.i.i.i34 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i34, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i35

_ZNK11colvar_gridIdE9new_indexEv.exit.i35:        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33
  %i.bp = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #27, !noalias !378 ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bq, i8 0, i64 %i.bp, i1 false), !tbaa !83, !noalias !378
  %.pre.i36 = load i64, ptr %i.m, align 8, !tbaa !158, !noalias !379 ; 2 uses
  %.not.i37 = icmp eq i64 %.pre.i36, 0
  br i1 %.not.i37, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 536
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51, !noalias !379
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43, !noalias !379
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54, !noalias !379
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57, !noalias !379
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i38
  %.07.i39 = phi i64 [ 0, %.lr.ph.i38 ], [ %i.cz, %bb.f ] ; 5 uses
  %i.ca = trunc i64 %.07.i39 to i32
  %sext.i = shl i64 %.07.i39, 32
  %i.cb = ashr exact i64 %sext.i, 32              ; 4 uses
  %i.cc = sdiv i32 %i.ca, 64
  %.sext.i.i = sext i32 %i.cc to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %.sext.i.i
  %i.ce = and i64 %i.cb, -9223372036854775745
  %i.cf = icmp ugt i64 %i.ce, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.cf, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cd, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.cg = and i64 %.07.i39, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !62, !noalias !379
  %i.cj = and i64 %i.ch, %i.ci
  %.not.i.i = icmp eq i64 %i.cj, 0
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cb
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !64, !noalias !379
  %i.cm = select i1 %.not.i.i, i64 680, i64 512
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !81, !noalias !379
  %i.cp = getelementptr inbounds nuw [168 x i8], ptr %i.bx, i64 %i.cb
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !81, !noalias !379
  %i.cs = fsub double %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !82, !noalias !379
  %i.cv = fdiv double %i.cs, %i.cu
  %i.cw = tail call noundef double @llvm.floor.f64(double %i.cv)
  %i.cx = fptosi double %i.cw to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.07.i39
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !83, !noalias !379
  %i.cz = add nuw i64 %.07.i39, 1                 ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %i.cz, %.pre.i36
  br i1 %exitcond.not.i40, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %bb.f, !llvm.loop !369

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit: ; preds = %bb.f, %scalar.ph, %middle.block, %_ZNK11colvar_gridIdE9new_indexEv.exit.i35, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33, %_ZNK11colvar_gridIdE9new_indexEv.exit.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.sroa.14.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33 ], [ %i.r, %_ZNK11colvar_gridIdE9new_indexEv.exit.i ], [ %i.r, %middle.block ], [ %i.br, %_ZNK11colvar_gridIdE9new_indexEv.exit.i35 ], [ %i.r, %scalar.ph ], [ %i.br, %bb.f ] ; 2 uses
  %.sroa.078.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33 ], [ %i.q, %_ZNK11colvar_gridIdE9new_indexEv.exit.i ], [ %i.q, %middle.block ], [ %i.bq, %_ZNK11colvar_gridIdE9new_indexEv.exit.i35 ], [ %i.q, %scalar.ph ], [ %i.bq, %bb.f ] ; 12 uses
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !203 ; 4 uses
  %i.db = invoke noundef double @_ZNK18colvar_grid_scalar13minimum_valueEv(ptr noundef nonnull align 8 dereferenceable(760) %i.da)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 456
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !215 ; 5 uses
  %.not.i.i43 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i43, label %.noexc47, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 464
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57 ; 2 uses
  %min.iters.check114 = icmp ult i64 %i.dd, 4
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.lr.ph.i.i
  %n.vec116 = and i64 %i.dd, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next121, %vector.body117 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index118 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %wide.load119 = load <2 x double>, ptr %i.dg, align 8, !tbaa !82
  %wide.load120 = load <2 x double>, ptr %i.dh, align 8, !tbaa !82
  %i.di = fsub <2 x double> %wide.load119, %broadcast.splat
  %i.dj = fsub <2 x double> %wide.load120, %broadcast.splat
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !82
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !82
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.dk, label %middle.block122, label %vector.body117, !llvm.loop !370

middle.block122:                                  ; preds = %vector.body117
  %cmp.n123 = icmp eq i64 %i.dd, %n.vec116
  br i1 %cmp.n123, label %.noexc47, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %.lr.ph.i.i, %middle.block122
  %.04.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec116, %middle.block122 ]
  br label %scalar.ph113

scalar.ph113:                                     ; preds = %scalar.ph113.preheader, %scalar.ph113
  %.04.i.i = phi i64 [ %i.do, %scalar.ph113 ], [ %.04.i.i.ph, %scalar.ph113.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.04.i.i ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !82
  %i.dn = fsub double %i.dm, %i.db
  store double %i.dn, ptr %i.dl, align 8, !tbaa !82
  %i.do = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.do, %i.dd
  br i1 %exitcond.not.i.i, label %.noexc47, label %scalar.ph113, !llvm.loop !371

.noexc47:                                         ; preds = %scalar.ph113, %middle.block122, %.noexc
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 697
  store i8 1, ptr %i.dp, align 1, !tbaa !216
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !203 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 320
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !158 ; 5 uses
  %.not30.i = icmp eq i64 %i.ds, 0
  br i1 %.not30.i, label %bb.o, label %.lr.ph.i44
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!164 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !38, i64 0}
!165 = !{!"_ZTSSt18_Rb_tree_node_base", !163, i64 0, !164, i64 8, !164, i64 16, !164, i64 24}
!166 = !{!"_ZTSSt15_Rb_tree_header", !165, i64 0, !61, i64 32}
!167 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !162, i64 0, !166, i64 8}
!168 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !167, i64 0}
!169 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !168, i64 0}
!170 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !162, i64 0, !166, i64 8}
!171 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !170, i64 0}
!172 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK11colvarvalueSt4lessIS5_ESaISt4pairIKS5_S8_EEE", !171, i64 0}
!173 = !{!"_ZTS12colvarparams", !169, i64 8, !172, i64 56}
!174 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !38, i64 0}
!175 = !{!"_ZTSNSt8__detail15_List_node_baseE", !174, i64 0, !174, i64 8}
!176 = !{!"_ZTSNSt8__detail17_List_node_headerE", !175, i64 0, !61, i64 16}
!177 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !176, i64 0}
!178 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !177, i64 0}
!179 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !178, i64 0}
!180 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !162, i64 0, !166, i64 8}
!181 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !180, i64 0}
!182 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11colvarparse12key_set_modeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !181, i64 0}
!183 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !176, i64 0}
!184 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !183, i64 0}
!185 = !{!"_ZTSNSt7__cxx114listImSaImEEE", !184, i64 0}
!186 = !{!"_ZTS11colvarparse", !173, i64 0, !95, i64 104, !95, i64 136, !179, i64 168, !182, i64 192, !185, i64 240, !185, i64 264, !95, i64 288}
!187 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!188 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !187, i64 0}
!189 = !{!"_ZTSSt12_Vector_baseImSaImEE", !188, i64 0}
!190 = !{!"_ZTSSt6vectorImSaImEE", !189, i64 0}
!191 = !{!"_ZTSSt13_Bit_iterator", !50, i64 0}
!192 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !191, i64 0, !191, i64 16, !49, i64 32}
!193 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !192, i64 0}
!194 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !193, i64 0}
!195 = !{!"_ZTSSt6vectorIbSaIbEE", !194, i64 0}
!196 = !{!"_ZTS11colvar_gridIdE", !186, i64 0, !157, i64 320, !61, i64 448, !61, i64 456, !71, i64 464, !190, i64 488, !98, i64 512, !195, i64 536, !195, i64 576, !195, i64 616, !195, i64 656, !87, i64 696, !87, i64 697}
!197 = !{!196, !61, i64 448}
!198 = !{!"llvm.loop.isvectorized", i32 1}
!199 = !{!"llvm.loop.unroll.runtime.disable"}
!200 = !{!"llvm.loop.unroll.disable"}
!201 = !{!187, !49, i64 0}
!202 = !{!149, !87, i64 338}
!203 = !{!135, !134, i64 0}
!204 = !{!149, !35, i64 1796}
!205 = !{!149, !35, i64 1800}
!206 = !{!94, !93, i64 0}
!207 = !{!95, !93, i64 0}
!208 = !{!95, !61, i64 8}
!209 = !{!34, !34, i64 0}
!210 = !{!56, !55, i64 16}
!211 = !{!56, !55, i64 8}
!212 = !{!149, !87, i64 1792}
!213 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!214 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!215 = !{!196, !61, i64 456}
!216 = !{!196, !87, i64 697}
!217 = !{!59, !58, i64 16}
!218 = !{!59, !58, i64 8}
!219 = !{!"_ZTS11colvar_gridImE", !186, i64 0, !157, i64 320, !61, i64 448, !61, i64 456, !190, i64 464, !190, i64 488, !98, i64 512, !195, i64 536, !195, i64 576, !195, i64 616, !195, i64 656, !87, i64 696, !87, i64 697}
!220 = !{!149, !87, i64 2056}
!221 = !{!"p1 _ZTS18colvar_grid_params", !38, i64 0}
!222 = !{!"_ZTSSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EE", !221, i64 0, !46, i64 8}
!223 = !{!222, !221, i64 0}
!224 = !{!46, !45, i64 0}
!225 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 8, !35, i64 12}
!226 = !{!225, !35, i64 8}
!227 = !{!225, !35, i64 12}
!228 = !{!38, !38, i64 0}
!229 = !{!134, !134, i64 0}
!230 = !{!130, !130, i64 0}
!231 = !{!187, !49, i64 8}
!232 = !{!219, !87, i64 697}
!233 = !{!"_ZTSN18colvarproxy_system15Boundaries_typeE", !34, i64 0}
!234 = !{!"_ZTS18colvarproxy_system", !95, i64 8, !66, i64 40, !66, i64 48, !87, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !35, i64 88, !66, i64 96, !66, i64 104, !87, i64 112, !233, i64 116, !67, i64 120, !67, i64 144, !67, i64 168, !67, i64 192, !67, i64 216, !67, i64 240}
!235 = !{!234, !66, i64 72}
!236 = !{!"p1 _ZTSSo", !38, i64 0}
!237 = !{!149, !61, i64 344}
!238 = !{!149, !61, i64 352}
!239 = !{!106, !105, i64 0}
!240 = !{!106, !105, i64 8}
!241 = !{!106, !105, i64 16}
!242 = !{!149, !102, i64 360}
!243 = !{!149, !61, i64 376}
!244 = !{!80, !65, i64 0}
!245 = !{!149, !87, i64 1832}
!246 = !{!149, !87, i64 1793}
!247 = !{ptr @_ZN14colvarbias_abfD1Ev}
!248 = !{ptr @_ZN14colvarbias_abfD0Ev, ptr @_ZN14colvarbias_abfD1Ev}
!249 = !{ptr @_ZN14colvarbias_abfD0Ev}
!250 = !{!123, !122, i64 0}
!251 = !{!123, !122, i64 8}
!252 = !{!123, !122, i64 16}
!253 = !{!117, !116, i64 0}
!254 = !{!117, !116, i64 8}
!255 = !{!117, !116, i64 16}
!256 = !{!111, !110, i64 0}
!257 = !{!111, !110, i64 8}
!258 = !{!111, !110, i64 16}
!259 = !{!"_ZTSSt15_Sp_counted_ptrIP17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EE", !225, i64 0, !44, i64 16}
!260 = !{!259, !44, i64 16}
!261 = !{!"_ZTSSt15_Sp_counted_ptrIP20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE", !225, i64 0, !130, i64 16}
!262 = !{!261, !130, i64 16}
!263 = !{!50, !35, i64 8}
!264 = !{!"_ZTSSt15_Sp_counted_ptrIP20colvargrid_integrateLN9__gnu_cxx12_Lock_policyE2EE", !225, i64 0, !134, i64 16}
!265 = !{!264, !134, i64 16}
!266 = !{!129, !87, i64 516}
!267 = !{!129, !66, i64 544}
!268 = !{!129, !35, i64 376}
!269 = !{!129, !87, i64 1400}
!270 = !{!129, !87, i64 1401}
!271 = !{!55, !55, i64 0}
!272 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!273 = !{!127, !35, i64 72}
!274 = !{!115, !35, i64 72}
!275 = !{!105, !105, i64 0}
!276 = !{!115, !35, i64 104}
!277 = !{!121, !35, i64 72}
!278 = !{!127, !35, i64 104}
!279 = !{!128, !35, i64 72}
!280 = !{!128, !35, i64 104}
!281 = !{!58, !58, i64 0}
!282 = !{!121, !35, i64 108}
!283 = !{!116, !116, i64 0}
!284 = !{!122, !122, i64 0}
!285 = !{!"_ZTSSt13_Ios_Fmtflags", !34, i64 0}
!286 = !{!"_ZTSSt12_Ios_Iostate", !34, i64 0}
!287 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !38, i64 0}
!288 = !{!"_ZTSNSt8ios_base6_WordsE", !38, i64 0, !61, i64 8}
!289 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !38, i64 0}
!290 = !{!"p1 _ZTSNSt6locale5_ImplE", !38, i64 0}
!291 = !{!"_ZTSSt6locale", !290, i64 0}
!292 = !{!"_ZTSSt8ios_base", !61, i64 8, !61, i64 16, !285, i64 24, !286, i64 28, !286, i64 32, !287, i64 40, !288, i64 48, !34, i64 64, !35, i64 192, !289, i64 200, !291, i64 208}
!293 = !{!292, !286, i64 32}
!294 = !{!110, !110, i64 0}
!295 = !{!219, !61, i64 448}
!296 = !{!234, !66, i64 64}
!297 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !38, i64 0}
!298 = !{!"p1 _ZTSSt5ctypeIcE", !38, i64 0}
!299 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !38, i64 0}
!300 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !38, i64 0}
!301 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !292, i64 0, !236, i64 216, !34, i64 224, !87, i64 225, !297, i64 232, !298, i64 240, !299, i64 248, !300, i64 256}
!302 = !{!301, !298, i64 240}
!303 = !{!"_ZTSNSt6locale5facetE", !35, i64 8}
!304 = !{!"p1 _ZTS15__locale_struct", !38, i64 0}
!305 = !{!"p1 short", !38, i64 0}
!306 = !{!"_ZTSSt5ctypeIcE", !303, i64 0, !304, i64 16, !87, i64 24, !58, i64 32, !58, i64 40, !305, i64 48, !34, i64 56, !34, i64 57, !34, i64 313, !34, i64 569}
!307 = !{!306, !34, i64 56}
!308 = distinct !{!308, !92}
!309 = distinct !{!309, i1 false, !"LVerDomain"}
!310 = distinct !{!310, !309}
!311 = distinct !{!311, !309}
!312 = distinct !{!312, !92, !198, !199}
!313 = distinct !{!313, !200}
!314 = distinct !{!314, !92, !198}
!315 = distinct !{!315, !200}
!316 = distinct !{!316, !92}
!317 = distinct !{!317, !200}
!318 = distinct !{!318, !92}
!319 = distinct !{!319, i1 false, !"LVerDomain"}
!320 = distinct !{!320, !319}
!321 = distinct !{!321, !319}
!322 = distinct !{!322, !92, !198, !199}
!323 = distinct !{!323, !200}
!324 = distinct !{!324, !92, !198}
!325 = distinct !{!325, !200}
!326 = distinct !{!326, !200}
!327 = distinct !{!327, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!328 = distinct !{!328, !327, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!329 = distinct !{!329, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!330 = distinct !{!330, !329, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!331 = distinct !{!331, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!332 = distinct !{!332, !331, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!333 = distinct !{!333, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!334 = distinct !{!334, !333, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!335 = distinct !{!335, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!336 = distinct !{!336, !335, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!337 = distinct !{!337, !92}
!338 = distinct !{!338, !200}
!339 = distinct !{!339, !92}
!340 = distinct !{!340, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!341 = distinct !{!341, !340, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!342 = distinct !{!342, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!343 = distinct !{!343, !342, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!344 = distinct !{!344, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!345 = distinct !{!345, !344, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!346 = distinct !{!346, !92}
!347 = !{!310}
!348 = !{!311}
!349 = !{!320}
!350 = !{!321}
!351 = !{!328}
!352 = !{!330}
!353 = !{!332}
!354 = !{!334}
!355 = !{!336}
!356 = !{!341}
!357 = !{!343, !341}
!358 = !{!345}
!359 = distinct !{!359, i1 true, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE"}
!360 = distinct !{!360, !359, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE: argument 0"}
!361 = distinct !{!361, i1 true, !"_ZNK11colvar_gridIdE9new_indexEv"}
!362 = distinct !{!362, !361, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!363 = distinct !{!363, !92, !198, !199}
!364 = distinct !{!364, !92, !198}
!365 = distinct !{!365, i1 true, !"_ZNK11colvar_gridIdE17get_colvars_indexEv"}
!366 = distinct !{!366, !365, !"_ZNK11colvar_gridIdE17get_colvars_indexEv: argument 0"}
!367 = distinct !{!367, i1 true, !"_ZNK11colvar_gridIdE9new_indexEv"}
!368 = distinct !{!368, !367, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!369 = distinct !{!369, !92}
!370 = distinct !{!370, !92, !198, !199}
!371 = distinct !{!371, !92, !199, !198}
!372 = distinct !{!372, !92}
!373 = distinct !{!373, !200}
!374 = distinct !{!374, !92}
!375 = !{!104, !66, i64 248}
!376 = !{!362, !360}
!377 = !{!360}
!378 = !{!368, !366}
!379 = !{!366}
!380 = !{!219, !61, i64 456}
!381 = distinct !{!381, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!382 = distinct !{!382, !381, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!383 = !{!382}
!384 = distinct !{!384, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!385 = distinct !{!385, !384, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!386 = distinct !{!386, !92, !198, !199}
!387 = distinct !{!387, !200}
!388 = distinct !{!388, !92, !198}
!389 = distinct !{!389, !92, !198, !199}
!390 = distinct !{!390, !200}
!391 = distinct !{!391, !92, !198}
!392 = distinct !{!392, !92}
!393 = distinct !{!393, !92, !198, !199}
!394 = distinct !{!394, !200}
!395 = distinct !{!395, !92, !198}
!396 = distinct !{!396, !92, !198, !199}
!397 = distinct !{!397, !200}
!398 = distinct !{!398, !92, !198}
!399 = distinct !{!399, !92}
!400 = distinct !{!400, !92, !198, !199}
!401 = distinct !{!401, !200}
!402 = distinct !{!402, !92, !198}
!403 = distinct !{!403, !92, !198, !199}
!404 = distinct !{!404, !200}
!405 = distinct !{!405, !92, !198}
!406 = distinct !{!406, !92, !198, !199}
!407 = distinct !{!407, !200}
!408 = distinct !{!408, !92, !198}
!409 = distinct !{!409, !92, !198, !199}
!410 = distinct !{!410, !200}
!411 = distinct !{!411, !92, !198}
!412 = distinct !{!412, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!413 = distinct !{!413, !412, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!414 = distinct !{!414, !92, !198, !199}
!415 = distinct !{!415, !92, !199, !198}
!416 = distinct !{!416, !92, !198, !199}
!417 = distinct !{!417, !92, !199, !198}
!418 = distinct !{!418, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!419 = distinct !{!419, !418, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!420 = !{!385}
!421 = !{!413}
!422 = !{!419}
!423 = distinct !{!423, !92}
!424 = distinct !{!424, !92}
!425 = distinct !{null, null, null}
!426 = distinct !{!426, !92}
!427 = !{!"p1 _ZTSN12colvarmodule7rvectorE", !38, i64 0}
!428 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE17_Vector_impl_dataE", !427, i64 0, !427, i64 8, !427, i64 16}
!429 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE12_Vector_implE", !428, i64 0}
!430 = !{!"_ZTSSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE", !429, i64 0}
!431 = !{!"_ZTSSt6vectorIN12colvarmodule7rvectorESaIS1_EE", !430, i64 0}
!432 = !{!"_ZTS17colvarproxy_atoms", !79, i64 8, !190, i64 32, !71, i64 56, !71, i64 80, !431, i64 104, !431, i64 128, !431, i64 152, !66, i64 176, !66, i64 184, !35, i64 192, !87, i64 196, !87, i64 197, !87, i64 198}
!433 = !{!"_ZTS23colvarproxy_atom_groups", !79, i64 8, !190, i64 32, !71, i64 56, !71, i64 80, !431, i64 104, !431, i64 128, !431, i64 152, !66, i64 176, !66, i64 184}
!434 = !{!"_ZTS19colvarproxy_volmaps", !79, i64 8, !190, i64 32, !71, i64 56, !71, i64 80, !66, i64 104, !66, i64 112}
!435 = !{!"p1 _ZTS10omp_lock_t", !38, i64 0}
!436 = !{!"_ZTSN15colvarproxy_smp10smp_mode_tE", !34, i64 0}
!437 = !{!"_ZTS15colvarproxy_smp", !435, i64 8, !436, i64 16}
!438 = !{!"_ZTS20colvarproxy_replicas", !38, i64 8, !35, i64 16, !35, i64 20}
!439 = !{!"p1 _ZTS12colvarscript", !38, i64 0}
!440 = !{!"_ZTS18colvarproxy_script", !439, i64 8, !87, i64 16}
!441 = !{!"_ZTS15colvarproxy_tcl", !38, i64 8}
!442 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSiESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !162, i64 0, !166, i64 8}
!443 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSiESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !442, i64 0}
!444 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSiSt4lessIS5_ESaISt4pairIKS5_S6_EEE", !443, i64 0}
!445 = !{!"p1 _ZTSSi", !38, i64 0}
!446 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !162, i64 0, !166, i64 8}
!447 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !446, i64 0}
!448 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSoSt4lessIS5_ESaISt4pairIKS5_S6_EEE", !447, i64 0}
!449 = !{!"_ZTS14colvarproxy_io", !95, i64 8, !95, i64 40, !95, i64 72, !35, i64 104, !444, i64 112, !445, i64 160, !448, i64 168, !236, i64 216}
!450 = !{!"p1 _ZTS12colvarmodule", !38, i64 0}
!451 = !{!"_ZTS11colvarproxy", !234, i64 0, !432, i64 264, !433, i64 464, !434, i64 656, !437, i64 776, !438, i64 800, !440, i64 824, !441, i64 848, !449, i64 864, !450, i64 1088, !87, i64 1096, !95, i64 1104, !87, i64 1136, !87, i64 1137, !87, i64 1138, !35, i64 1140, !61, i64 1144, !95, i64 1152, !38, i64 1184}
!452 = !{!451, !87, i64 1136}
!453 = !{!87, !87, i64 0}
!454 = !{!149, !87, i64 337}
!455 = !{!104, !61, i64 112}
!456 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE12_Vector_implE", !85, i64 0}
!457 = !{!"_ZTSSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE", !456, i64 0}
!458 = !{!"_ZTSSt6vectorIN10colvardeps13feature_stateESaIS1_EE", !457, i64 0}
!459 = !{!"p2 _ZTS10colvardeps", !39, i64 0}
!460 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE17_Vector_impl_dataE", !459, i64 0, !459, i64 8, !459, i64 16}
!461 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE12_Vector_implE", !460, i64 0}
!462 = !{!"_ZTSSt12_Vector_baseIP10colvardepsSaIS1_EE", !461, i64 0}
!463 = !{!"_ZTSSt6vectorIP10colvardepsSaIS1_EE", !462, i64 0}
!464 = !{!"_ZTS10colvardeps", !95, i64 8, !35, i64 40, !458, i64 48, !463, i64 72, !463, i64 96}
!465 = !{!464, !35, i64 40}
!466 = !{!149, !87, i64 336}
!467 = distinct !{!467, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!468 = distinct !{!468, !467, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!469 = distinct !{!469, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!470 = distinct !{!470, !469, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!471 = distinct !{!471, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!472 = distinct !{!472, !471, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!473 = distinct !{!473, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!474 = distinct !{!474, !473, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!475 = !{!468}
!476 = !{!470, !468}
!477 = !{!472}
!478 = !{!474, !472}
!479 = distinct !{!479, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!480 = distinct !{!480, !479, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!481 = !{!480}
!482 = distinct !{null, null, null}
!483 = !{!44, !44, i64 0}
!484 = distinct !{null, null, null}
!485 = distinct !{!485, !92}
!486 = distinct !{!486, !92}
!487 = distinct !{null, null, null}
!488 = distinct !{null, null, null}
!489 = distinct !{null, null, null}
!490 = distinct !{null, null, null}
!491 = distinct !{!491, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!492 = distinct !{!492, !491, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!493 = distinct !{!493, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!494 = distinct !{!494, !493, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!495 = distinct !{!495, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!496 = distinct !{!496, !495, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!497 = distinct !{!497, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!498 = distinct !{!498, !497, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!499 = distinct !{!499, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!500 = distinct !{!500, !499, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!501 = distinct !{!501, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!502 = distinct !{!502, !501, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!503 = distinct !{!503, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!504 = distinct !{!504, !503, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!505 = distinct !{!505, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!506 = distinct !{!506, !505, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!507 = distinct !{!507, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!508 = distinct !{!508, !507, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!509 = distinct !{!509, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!510 = distinct !{!510, !509, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!511 = distinct !{!511, !92}
!512 = distinct !{!512, i1 true, !"_ZNK11colvar_gridIdE9new_indexEv"}
!513 = distinct !{!513, !512, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!514 = distinct !{!514, !92}
!515 = distinct !{!515, !200}
!516 = distinct !{!516, !92}
!517 = !{!492}
!518 = !{!494, !492}
!519 = !{!496}
!520 = !{!498, !496}
!521 = !{!500}
!522 = !{!502, !500}
!523 = !{!504}
!524 = !{!506, !504}
!525 = !{!508}
!526 = !{!510, !508}
!527 = !{!513}
!528 = distinct !{!528, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!529 = distinct !{!529, !528, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!530 = distinct !{!530, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!531 = distinct !{!531, !530, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!532 = distinct !{!532, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!533 = distinct !{!533, !532, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!534 = distinct !{!534, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!535 = distinct !{!535, !534, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!536 = distinct !{!536, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!537 = distinct !{!537, !536, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!538 = !{!529}
!539 = !{!531, !529}
!540 = !{!533}
!541 = !{!535}
!542 = !{!537}
!543 = distinct !{!543, !92}
!544 = distinct !{!544, !92, !198, !199}
!545 = distinct !{!545, !200}
!546 = distinct !{!546, !92, !198}
!547 = distinct !{!547, !92, !198, !199}
!548 = distinct !{!548, !92, !199, !198}
!549 = distinct !{!549, !92}
!550 = distinct !{!550, !92, !198, !199}
!551 = distinct !{!551, !92, !199, !198}
!552 = distinct !{!552, !92}
!553 = distinct !{!553, !92}
!554 = !{!129, !35, i64 512}
!555 = distinct !{!555, !92, !198, !199}
!556 = distinct !{!556, !92, !199, !198}
!557 = distinct !{!557, !92, !198, !199}
!558 = distinct !{!558, !92, !199, !198}
!559 = distinct !{!559, !92, !198, !199}
!560 = distinct !{!560, !92, !199, !198}
!561 = distinct !{!561, !92, !198, !199}
!562 = distinct !{!562, !92, !199, !198}
!563 = distinct !{null}
!564 = distinct !{!564, !92}
end_hunk_1
