Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_abf?download=true
inline.NumInlined: 3756
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN14colvarbias_abf6updateEv:bb.a
_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i258: ; preds = %bb.df
  %i.amo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amj) #27
          to label %.noexc261 unwind label %bb.dp ; 5 uses

.noexc261:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i258
  store ptr %i.amo, ptr %13, align 8, !tbaa !26
  %i.amp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store ptr %i.amo, ptr %i.amp, align 8, !tbaa !225
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.amj ; 4 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.amq, ptr %i.amr, align 8, !tbaa !224
  %i.ams = icmp samesign ugt i64 %i.amj, 8
  br i1 %i.ams, label %bb.dg, label %bb.dh, !prof !240

bb.dg:                                            ; preds = %.noexc261
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.amo, ptr align 8 %.sroa.0279.0536, i64 %i.amj, i1 false)
  br label %bb.dj

bb.dh:                                            ; preds = %.noexc261
  %i.amt = icmp eq i64 %i.amj, 8
  br i1 %i.amt, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.amu = load double, ptr %.sroa.0279.0536, align 8, !tbaa !53
  store double %i.amu, ptr %i.amo, align 8, !tbaa !53
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %.thread301
  %i.amv = phi ptr [ %i.amr, %bb.dg ], [ %i.amr, %bb.dh ], [ %i.amr, %bb.di ], [ %i.amm, %.thread301 ] ; 2 uses
  %i.amw = phi ptr [ %i.amq, %bb.dg ], [ %i.amq, %bb.dh ], [ %i.amq, %bb.di ], [ %i.aml, %.thread301 ]
  %i.amx = phi ptr [ %i.amp, %bb.dg ], [ %i.amp, %bb.dh ], [ %i.amp, %bb.di ], [ %i.amk, %.thread301 ]
  store ptr %i.amw, ptr %i.amx, align 8, !tbaa !225
  %i.amy = invoke noundef zeroext i1 @_ZN11UIestimator11UIestimator6updateExSt6vectorIdSaIdEES3_(ptr noundef nonnull align 8 dereferenceable(1402) %i.alm, i64 noundef %i.alp, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13)
          to label %bb.dk unwind label %bb.dq     ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.amz = load ptr, ptr %13, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i263 = icmp eq ptr %i.amz, null
  br i1 %.not.i.i.i263, label %_ZNSt6vectorIdSaIdEED2Ev.exit264, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ana = load ptr, ptr %i.amv, align 8, !tbaa !224
  %i.anb = ptrtoint ptr %i.ana to i64
  %i.anc = ptrtoint ptr %i.amz to i64
  %i.and = sub i64 %i.anb, %i.anc
  call void @_ZdlPvm(ptr noundef nonnull %i.amz, i64 noundef %i.and) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit264

_ZNSt6vectorIdSaIdEED2Ev.exit264:                 ; preds = %bb.dk, %bb.dl
  %i.ane = load ptr, ptr %12, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i265 = icmp eq ptr %i.ane, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorIdSaIdEED2Ev.exit266, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit264
  %i.anf = load ptr, ptr %i.ame, align 8, !tbaa !224
  %i.ang = ptrtoint ptr %i.anf to i64
  %i.anh = ptrtoint ptr %i.ane to i64
  %i.ani = sub i64 %i.ang, %i.anh
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef %i.ani) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit266

_ZNSt6vectorIdSaIdEED2Ev.exit266:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit264, %bb.dm
  %.not.i.i.i267 = icmp eq ptr %.sroa.0279.0536, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorIdSaIdEED2Ev.exit268, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit266
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0536, i64 noundef %i.amj) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit268

_ZNSt6vectorIdSaIdEED2Ev.exit268:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit266, %bb.dn
  %.not.i.i.i269 = icmp eq ptr %.sroa.0288.0517524534, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorIdSaIdEED2Ev.exit270, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit268
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0288.0517524534, i64 noundef %i.als) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit270

bb.dp:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i258, %.noexc.i.i259
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit272

bb.dq:                                            ; preds = %bb.dj
  %i.ank = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anl = load ptr, ptr %13, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i271 = icmp eq ptr %i.anl, null
  br i1 %.not.i.i.i271, label %_ZNSt6vectorIdSaIdEED2Ev.exit272, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.anm = load ptr, ptr %i.amv, align 8, !tbaa !224
  %i.ann = ptrtoint ptr %i.anm to i64
  %i.ano = ptrtoint ptr %i.anl to i64
  %i.anp = sub i64 %i.ann, %i.ano
  call void @_ZdlPvm(ptr noundef nonnull %i.anl, i64 noundef %i.anp) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit272

_ZNSt6vectorIdSaIdEED2Ev.exit272:                 ; preds = %bb.dr, %bb.dq, %bb.dp
  %.pn57 = phi { ptr, i32 } [ %i.anj, %bb.dp ], [ %i.ank, %bb.dq ], [ %i.ank, %bb.dr ] ; 2 uses
  %i.anq = load ptr, ptr %12, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i273 = icmp eq ptr %i.anq, null
  br i1 %.not.i.i.i273, label %_ZNSt6vectorIdSaIdEED2Ev.exit274, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit272
  %i.anr = load ptr, ptr %i.ame, align 8, !tbaa !224
  %i.ans = ptrtoint ptr %i.anr to i64
  %i.ant = ptrtoint ptr %i.anq to i64
  %i.anu = sub i64 %i.ans, %i.ant
  call void @_ZdlPvm(ptr noundef nonnull %i.anq, i64 noundef %i.anu) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit274

_ZNSt6vectorIdSaIdEED2Ev.exit274:                 ; preds = %.loopexit.split-lp, %bb.ds, %_ZNSt6vectorIdSaIdEED2Ev.exit272
  %.pn59 = phi { ptr, i32 } [ %.pn57, %bb.ds ], [ %.pn57, %_ZNSt6vectorIdSaIdEED2Ev.exit272 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %.sroa.0279.0536, null
  br i1 %.not.i.i.i275, label %_ZNSt6vectorIdSaIdEED2Ev.exit276, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit274
  %.pn59549 = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.pn59, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.sroa.14295.0514525531548 = phi ptr [ %i.akh, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.14295.0514525532, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.sroa.0288.0517524533547 = phi ptr [ %i.akc, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.0288.0517524534, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.sroa.0279.0535546 = phi ptr [ %i.akk, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.0279.0536, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ] ; 2 uses
  %.sroa.14.0537545 = phi ptr [ %i.akp, %_ZNSt6vectorIdSaIdEED2Ev.exit274.thread ], [ %.sroa.14.0538, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %i.anv = ptrtoint ptr %.sroa.14.0537545 to i64
  %i.anw = ptrtoint ptr %.sroa.0279.0535546 to i64
  %i.anx = sub i64 %i.anv, %i.anw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0279.0535546, i64 noundef %i.anx) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit276

_ZNSt6vectorIdSaIdEED2Ev.exit276:                 ; preds = %bb.dt, %_ZNSt6vectorIdSaIdEED2Ev.exit274
  %.sroa.0288.0515 = phi ptr [ %.sroa.0288.0517524533547, %bb.dt ], [ %.sroa.0288.0517524534, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ] ; 2 uses
  %.sroa.14295.0512 = phi ptr [ %.sroa.14295.0514525531548, %bb.dt ], [ %.sroa.14295.0514525532, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ]
  %.pn59.pn = phi { ptr, i32 } [ %.pn59549, %bb.dt ], [ %.pn59, %_ZNSt6vectorIdSaIdEED2Ev.exit274 ] ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %.sroa.0288.0515, null
  br i1 %.not.i.i.i277, label %common.resume, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit276
  %.pn59.pn556 = phi { ptr, i32 } [ %i.all, %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread ], [ %.pn59.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit276 ]
  %.sroa.14295.0512555 = phi ptr [ %i.akh, %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread ], [ %.sroa.14295.0512, %_ZNSt6vectorIdSaIdEED2Ev.exit276 ]
  %.sroa.0288.0515554 = phi ptr [ %i.akc, %_ZNSt6vectorIdSaIdEED2Ev.exit276.thread ], [ %.sroa.0288.0515, %_ZNSt6vectorIdSaIdEED2Ev.exit276 ] ; 2 uses
  %i.any = ptrtoint ptr %.sroa.14295.0512555 to i64
  %i.anz = ptrtoint ptr %.sroa.0288.0515554 to i64
  %i.aoa = sub i64 %i.any, %i.anz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0288.0515554, i64 noundef %i.aoa) #26
  br label %common.resume

_ZNSt6vectorIdSaIdEED2Ev.exit270:                 ; preds = %bb.do, %_ZNSt6vectorIdSaIdEED2Ev.exit268, %bb.cu
  %i.aob = load ptr, ptr %0, align 8, !tbaa !125
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  %i.aod = load ptr, ptr %i.aoc, align 8
  %i.aoe = call noundef i32 %i.aod(ptr noundef nonnull align 8 dereferenceable(2232) %0, ptr noundef null)
  ret i32 %i.aoe
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN14colvarbias_abf11calc_energyEPKSt6vectorI11colvarvalueSaIS1_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2232) initializes((248, 256)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 10 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !241
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 8
  %i.j = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !190  ; 8 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 320 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129, !noalias !62 ; 7 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951   ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %.noexc.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25, !noalias !242
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i

_ZNK11colvar_gridIdE9new_indexEv.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.p = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #27, !noalias !242 ; 7 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.p, i1 false), !tbaa !54, !noalias !242
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !129, !noalias !247 ; 5 uses
  %.not.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !23, !noalias !247 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23, !noalias !247 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26, !noalias !247 ; 2 uses
  %min.iters.check = icmp eq i64 %.pre.i, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %.pre.i, -2                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.x = or disjoint i64 %index, 1                ; 2 uses
  %i.y = getelementptr inbounds nuw [168 x i8], ptr %i.s, i64 %index
  %i.z = getelementptr inbounds nuw [168 x i8], ptr %i.s, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !36, !noalias !247
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !36, !noalias !247
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
  %i.ao = load double, ptr %i.am, align 8, !tbaa !36, !noalias !247
  %i.ap = load double, ptr %i.an, align 8, !tbaa !36, !noalias !247
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1
  %i.as = fsub <2 x double> %i.af, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ai
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !53, !noalias !247
  %i.au = fdiv <2 x double> %i.as, %wide.load
  %i.av = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.au)
  %i.aw = fptosi <2 x double> %i.av to <2 x i32>
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  store <2 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !54, !noalias !247
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i = phi i64 [ %i.bn, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.az = getelementptr inbounds nuw [168 x i8], ptr %i.s, i64 %.07.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !36, !noalias !247
  %sext.i = shl i64 %.07.i, 32
  %i.bc = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.bd = getelementptr inbounds nuw [168 x i8], ptr %i.u, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !36, !noalias !247
  %i.bg = fsub double %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bc
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !53, !noalias !247
  %i.bj = fdiv double %i.bg, %i.bi
  %i.bk = tail call noundef double @llvm.floor.f64(double %i.bj)
  %i.bl = fptosi double %i.bk to i32
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.07.i
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !54, !noalias !247
  %i.bn = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %.pre.i
  br i1 %exitcond.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph, !llvm.loop !249

bb.e:                                             ; preds = %bb.c
  br i1 %i.o, label %.noexc.i.i43, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33

.noexc.i.i43:                                     ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #25, !noalias !250
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33: ; preds = %bb.e
  %.not.i.i.i.i.i.i34 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i34, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i35

_ZNK11colvar_gridIdE9new_indexEv.exit.i35:        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33
  %i.bo = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #27, !noalias !250 ; 5 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bp, i8 0, i64 %i.bo, i1 false), !tbaa !54, !noalias !250
  %.pre.i36 = load i64, ptr %i.m, align 8, !tbaa !129, !noalias !255 ; 2 uses
  %.not.i37 = icmp eq i64 %.pre.i36, 0
  br i1 %.not.i37, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i35
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 536
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !20, !noalias !255
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14, !noalias !255
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !23, !noalias !255
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26, !noalias !255
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i38
  %.07.i39 = phi i64 [ 0, %.lr.ph.i38 ], [ %i.cy, %bb.f ] ; 5 uses
  %i.bz = trunc i64 %.07.i39 to i32
  %sext.i40 = shl i64 %.07.i39, 32
  %i.ca = ashr exact i64 %sext.i40, 32            ; 4 uses
  %i.cb = sdiv i32 %i.bz, 64
  %.sext.i.i = sext i32 %i.cb to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.sext.i.i
  %i.cd = and i64 %i.ca, -9223372036854775745
  %i.ce = icmp ugt i64 %i.cd, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ce, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cc, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.cf = and i64 %.07.i39, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !32, !noalias !255
  %i.ci = and i64 %i.cg, %i.ch
  %.not.i.i = icmp eq i64 %i.ci, 0
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ca
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34, !noalias !255
  %i.cl = select i1 %.not.i.i, i64 680, i64 512
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !36, !noalias !255
  %i.co = getelementptr inbounds nuw [168 x i8], ptr %i.bw, i64 %i.ca
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !36, !noalias !255
  %i.cr = fsub double %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !53, !noalias !255
  %i.cu = fdiv double %i.cr, %i.ct
  %i.cv = tail call noundef double @llvm.floor.f64(double %i.cu)
  %i.cw = fptosi double %i.cv to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.07.i39
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !54, !noalias !255
  %i.cy = add nuw i64 %.07.i39, 1                 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.cy, %.pre.i36
  br i1 %exitcond.not.i41, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %bb.f, !llvm.loop !256

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit: ; preds = %bb.f, %scalar.ph, %middle.block, %_ZNK11colvar_gridIdE9new_indexEv.exit.i35, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33, %_ZNK11colvar_gridIdE9new_indexEv.exit.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.sroa.14.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33 ], [ %i.r, %_ZNK11colvar_gridIdE9new_indexEv.exit.i ], [ %i.r, %middle.block ], [ %i.bq, %_ZNK11colvar_gridIdE9new_indexEv.exit.i35 ], [ %i.r, %scalar.ph ], [ %i.bq, %bb.f ] ; 2 uses
  %.sroa.079.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i33 ], [ %i.q, %_ZNK11colvar_gridIdE9new_indexEv.exit.i ], [ %i.q, %middle.block ], [ %i.bp, %_ZNK11colvar_gridIdE9new_indexEv.exit.i35 ], [ %i.q, %scalar.ph ], [ %i.bp, %bb.f ] ; 12 uses
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !190 ; 4 uses
  %i.da = invoke noundef double @_ZNK18colvar_grid_scalar13minimum_valueEv(ptr noundef nonnull align 8 dereferenceable(760) %i.cz)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 456
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !257 ; 5 uses
  %.not.i.i44 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i44, label %.noexc48, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 464
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !26 ; 2 uses
  %min.iters.check115 = icmp ult i64 %i.dc, 4
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i.i
  %n.vec117 = and i64 %i.dc, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index119 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load120 = load <2 x double>, ptr %i.df, align 8, !tbaa !53
  %wide.load121 = load <2 x double>, ptr %i.dg, align 8, !tbaa !53
  %i.dh = fsub <2 x double> %wide.load120, %broadcast.splat
  %i.di = fsub <2 x double> %wide.load121, %broadcast.splat
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !53
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !53
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.dj, label %middle.block123, label %vector.body118, !llvm.loop !258

middle.block123:                                  ; preds = %vector.body118
  %cmp.n124 = icmp eq i64 %i.dc, %n.vec117
  br i1 %cmp.n124, label %.noexc48, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %.lr.ph.i.i, %middle.block123
  %.04.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec117, %middle.block123 ]
  br label %scalar.ph114

scalar.ph114:                                     ; preds = %scalar.ph114.preheader, %scalar.ph114
  %.04.i.i = phi i64 [ %i.dn, %scalar.ph114 ], [ %.04.i.i.ph, %scalar.ph114.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.04.i.i ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !53
  %i.dm = fsub double %i.dl, %i.da
  store double %i.dm, ptr %i.dk, align 8, !tbaa !53
  %i.dn = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dn, %i.dc
  br i1 %exitcond.not.i.i, label %.noexc48, label %scalar.ph114, !llvm.loop !259

.noexc48:                                         ; preds = %scalar.ph114, %middle.block123, %.noexc
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 697
  store i8 1, ptr %i.do, align 1, !tbaa !260
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !190 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 320
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !129 ; 5 uses
  %.not30.i = icmp eq i64 %i.dr, 0
  br i1 %.not30.i, label %bb.o, label %.lr.ph.i45
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!49 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!50 = !{!"_ZTSSt6vectorIiSaIiEE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !30, i64 0}
!53 = !{!39, !39, i64 0}
!54 = !{!6, !6, i64 0}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSN10colvardeps13feature_stateE", !13, i64 0}
!58 = !{!59, !60, i64 1}
!59 = !{!"_ZTSN10colvardeps13feature_stateE", !60, i64 0, !60, i64 1, !6, i64 4, !50, i64 8}
!60 = !{!"bool", !7, i64 0}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!66, !33, i64 2064}
!66 = !{!"_ZTS14colvarbias_abf", !67, i64 0, !79, i64 312, !60, i64 336, !60, i64 337, !60, i64 338, !33, i64 344, !33, i64 352, !77, i64 360, !60, i64 368, !33, i64 376, !84, i64 384, !60, i64 1792, !60, i64 1793, !6, i64 1796, !6, i64 1800, !39, i64 1808, !6, i64 1816, !39, i64 1824, !60, i64 1832, !43, i64 1840, !50, i64 1864, !50, i64 1888, !50, i64 1912, !28, i64 1936, !104, i64 1944, !107, i64 1960, !108, i64 1976, !104, i64 1992, !107, i64 2008, !104, i64 2024, !108, i64 2040, !60, i64 2056, !33, i64 2064, !77, i64 2072, !111, i64 2080, !107, i64 2088, !111, i64 2104, !107, i64 2112, !104, i64 2128, !107, i64 2144, !117, i64 2160, !104, i64 2168, !107, i64 2184, !104, i64 2200, !108, i64 2216}
!67 = !{!"_ZTS10colvarbias", !68, i64 8, !68, i64 40, !68, i64 72, !6, i64 104, !33, i64 112, !68, i64 120, !71, i64 152, !74, i64 176, !74, i64 200, !74, i64 224, !39, i64 248, !60, i64 256, !60, i64 257, !77, i64 264, !60, i64 272, !78, i64 280, !50, i64 288}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !69, i64 0, !33, i64 8, !7, i64 16}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!70 = !{!"p1 omnipotent char", !13, i64 0}
!71 = !{!"_ZTSSt6vectorIP6colvarSaIS1_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIP6colvarSaIS1_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIP6colvarSaIS1_EE12_Vector_implE", !10, i64 0}
!74 = !{!"_ZTSSt6vectorI11colvarvalueSaIS0_EE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseI11colvarvalueSaIS0_EE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE12_Vector_implE", !24, i64 0}
!77 = !{!"long long", !7, i64 0}
!78 = !{!"p1 _ZTS18colvar_grid_scalar", !13, i64 0}
!79 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!84 = !{!"_ZTSN11UIestimator11UIestimatorE", !85, i64 0, !85, i64 24, !90, i64 48, !91, i64 208, !6, i64 376, !43, i64 384, !43, i64 408, !43, i64 432, !43, i64 456, !68, i64 480, !6, i64 512, !60, i64 516, !79, i64 520, !39, i64 544, !97, i64 552, !90, i64 712, !103, i64 872, !97, i64 1032, !90, i64 1192, !85, i64 1352, !85, i64 1376, !60, i64 1400, !60, i64 1401}
!85 = !{!"_ZTSSt6vectorIN11UIestimator8n_vectorIdEESaIS2_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIN11UIestimator8n_vectorIdEESaIS2_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN11UIestimator8n_vectorIdEESaIS2_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN11UIestimator8n_vectorIdEESaIS2_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN11UIestimator8n_vectorIdEE", !13, i64 0}
!90 = !{!"_ZTSN11UIestimator8n_vectorIiEE", !43, i64 0, !43, i64 24, !43, i64 48, !6, i64 72, !50, i64 80, !6, i64 104, !50, i64 112, !50, i64 136}
!91 = !{!"_ZTSN11UIestimator8n_matrixE", !43, i64 0, !43, i64 24, !43, i64 48, !6, i64 72, !50, i64 80, !6, i64 104, !6, i64 108, !6, i64 112, !92, i64 120, !50, i64 144}
!92 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !13, i64 0}
!97 = !{!"_ZTSN11UIestimator8n_vectorISt6vectorIdSaIdEEEE", !43, i64 0, !43, i64 24, !43, i64 48, !6, i64 72, !50, i64 80, !6, i64 104, !98, i64 112, !50, i64 136}
!98 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !99, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !101, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !13, i64 0}
!103 = !{!"_ZTSN11UIestimator8n_vectorIdEE", !43, i64 0, !43, i64 24, !43, i64 48, !6, i64 72, !50, i64 80, !6, i64 104, !43, i64 112, !50, i64 136}
!104 = !{!"_ZTSSt10shared_ptrI20colvar_grid_gradientE", !105, i64 0}
!105 = !{!"_ZTSSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE", !106, i64 0, !18, i64 8}
!106 = !{!"p1 _ZTS20colvar_grid_gradient", !13, i64 0}
!107 = !{!"_ZTSSt10shared_ptrI17colvar_grid_countE", !16, i64 0}
!108 = !{!"_ZTSSt10shared_ptrI20colvargrid_integrateE", !109, i64 0}
!109 = !{!"_ZTSSt12__shared_ptrI20colvargrid_integrateLN9__gnu_cxx12_Lock_policyE2EE", !110, i64 0, !18, i64 8}
!110 = !{!"p1 _ZTS20colvargrid_integrate", !13, i64 0}
!111 = !{!"_ZTSSt10unique_ptrI20colvar_grid_gradientSt14default_deleteIS0_EE", !112, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_dataI20colvar_grid_gradientSt14default_deleteIS0_ELb1ELb1EE", !113, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_implI20colvar_grid_gradientSt14default_deleteIS0_EE", !114, i64 0}
!114 = !{!"_ZTSSt5tupleIJP20colvar_grid_gradientSt14default_deleteIS0_EEE", !115, i64 0}
!115 = !{!"_ZTSSt11_Tuple_implILm0EJP20colvar_grid_gradientSt14default_deleteIS0_EEE", !116, i64 0}
!116 = !{!"_ZTSSt10_Head_baseILm0EP20colvar_grid_gradientLb0EE", !106, i64 0}
!117 = !{!"_ZTSSt10unique_ptrI20colvargrid_integrateSt14default_deleteIS0_EE", !118, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_dataI20colvargrid_integrateSt14default_deleteIS0_ELb1ELb1EE", !119, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_implI20colvargrid_integrateSt14default_deleteIS0_EE", !120, i64 0}
!120 = !{!"_ZTSSt5tupleIJP20colvargrid_integrateSt14default_deleteIS0_EEE", !121, i64 0}
!121 = !{!"_ZTSSt11_Tuple_implILm0EJP20colvargrid_integrateSt14default_deleteIS0_EEE", !122, i64 0}
!122 = !{!"_ZTSSt10_Head_baseILm0EP20colvargrid_integrateLb0EE", !110, i64 0}
!123 = !{!66, !77, i64 2072}
!124 = !{!77, !77, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"vtable pointer", !8, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"p1 _ZTS11colvarproxy", !13, i64 0}
!129 = !{!130, !33, i64 0}
!130 = !{!"_ZTS18colvar_grid_params", !33, i64 0, !50, i64 8, !50, i64 32, !74, i64 56, !74, i64 80, !43, i64 104}
!131 = distinct !{!131, !64}
!132 = !{!66, !28, i64 1936}
!133 = distinct !{!133, !64}
!134 = !{!105, !106, i64 0}
!135 = !{!136, !33, i64 448}
!136 = !{!"_ZTS11colvar_gridIdE", !137, i64 0, !130, i64 320, !33, i64 448, !33, i64 456, !43, i64 464, !163, i64 488, !71, i64 512, !167, i64 536, !167, i64 576, !167, i64 616, !167, i64 656, !60, i64 696, !60, i64 697}
!137 = !{!"_ZTS11colvarparse", !138, i64 0, !68, i64 104, !68, i64 136, !151, i64 168, !157, i64 192, !160, i64 240, !160, i64 264, !68, i64 288}
!138 = !{!"_ZTS12colvarparams", !139, i64 8, !148, i64 56}
!139 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !140, i64 0}
!140 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !141, i64 0}
!141 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !142, i64 0, !144, i64 8}
!142 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !143, i64 0}
!143 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!144 = !{!"_ZTSSt15_Rb_tree_header", !145, i64 0, !33, i64 32}
!145 = !{!"_ZTSSt18_Rb_tree_node_base", !146, i64 0, !147, i64 8, !147, i64 16, !147, i64 24}
!146 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!147 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!148 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK11colvarvalueSt4lessIS5_ESaISt4pairIKS5_S8_EEE", !149, i64 0}
!149 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !150, i64 0}
!150 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !142, i64 0, !144, i64 8}
!151 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !152, i64 0}
!152 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !153, i64 0}
!153 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !154, i64 0}
!154 = !{!"_ZTSNSt8__detail17_List_node_headerE", !155, i64 0, !33, i64 16}
!155 = !{!"_ZTSNSt8__detail15_List_node_baseE", !156, i64 0, !156, i64 8}
!156 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !13, i64 0}
!157 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11colvarparse12key_set_modeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !158, i64 0}
!158 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !159, i64 0}
!159 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !142, i64 0, !144, i64 8}
!160 = !{!"_ZTSNSt7__cxx114listImSaImEEE", !161, i64 0}
!161 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !162, i64 0}
!162 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !154, i64 0}
!163 = !{!"_ZTSSt6vectorImSaImEE", !164, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseImSaImEE", !165, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !166, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!167 = !{!"_ZTSSt6vectorIbSaIbEE", !168, i64 0}
!168 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !169, i64 0}
!169 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !170, i64 0}
!170 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !171, i64 0, !171, i64 16, !22, i64 32}
!171 = !{!"_ZTSSt13_Bit_iterator", !21, i64 0}
!172 = !{!173}
!173 = distinct !{!173, !174}
!174 = distinct !{!174, !"LVerDomain"}
!175 = !{!176}
!176 = distinct !{!176, !174}
!177 = distinct !{!177, !64, !178, !179}
!178 = !{!"llvm.loop.isvectorized", i32 1}
!179 = !{!"llvm.loop.unroll.runtime.disable"}
!180 = distinct !{!180, !181}
!181 = !{!"llvm.loop.unroll.disable"}
!182 = distinct !{!182, !64, !178}
!183 = distinct !{!183, !64}
!184 = distinct !{!184, !181}
!185 = distinct !{!185, !64}
!186 = distinct !{!186, !64}
!187 = distinct !{!187, !181}
!188 = !{!166, !22, i64 0}
!189 = !{!66, !60, i64 338}
!190 = !{!109, !110, i64 0}
!191 = distinct !{!191, !64}
!192 = !{!193}
!193 = distinct !{!193, !194}
!194 = distinct !{!194, !"LVerDomain"}
!195 = !{!196}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !64, !178, !179}
!198 = distinct !{!198, !181}
!199 = distinct !{!199, !64, !178}
!200 = distinct !{!200, !181}
!201 = distinct !{!201, !181}
!202 = !{!66, !6, i64 1796}
!203 = !{!66, !6, i64 1800}
!204 = !{!69, !70, i64 0}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!207 = distinct !{!207, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!208 = !{!68, !70, i64 0}
!209 = !{!68, !33, i64 8}
!210 = !{!7, !7, i64 0}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!213 = distinct !{!213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!216 = distinct !{!216, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!219 = distinct !{!219, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!222 = distinct !{!222, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!223 = distinct !{!223, !64}
!224 = !{!27, !28, i64 16}
!225 = !{!27, !28, i64 8}
!226 = distinct !{!226, !181}
!227 = distinct !{!227, !64}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!230 = distinct !{!230, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!231 = !{!232, !229}
!232 = distinct !{!232, !233, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!233 = distinct !{!233, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!236 = distinct !{!236, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!237 = !{!66, !60, i64 1792}
!238 = distinct !{!238, !64}
!239 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!240 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!241 = !{!67, !39, i64 248}
!242 = !{!243, !245}
!243 = distinct !{!243, !244, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!244 = distinct !{!244, !"_ZNK11colvar_gridIdE9new_indexEv"}
!245 = distinct !{!245, !246, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE: argument 0"}
!246 = distinct !{!246, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE"}
!247 = !{!245}
!248 = distinct !{!248, !64, !178, !179}
!249 = distinct !{!249, !64, !179, !178}
!250 = !{!251, !253}
!251 = distinct !{!251, !252, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!252 = distinct !{!252, !"_ZNK11colvar_gridIdE9new_indexEv"}
!253 = distinct !{!253, !254, !"_ZNK11colvar_gridIdE17get_colvars_indexEv: argument 0"}
!254 = distinct !{!254, !"_ZNK11colvar_gridIdE17get_colvars_indexEv"}
!255 = !{!253}
!256 = distinct !{!256, !64}
!257 = !{!136, !33, i64 456}
!258 = distinct !{!258, !64, !178, !179}
!259 = distinct !{!259, !64, !179, !178}
!260 = !{!136, !60, i64 697}
!261 = distinct !{!261, !64}
!262 = distinct !{!262, !181}
!263 = !{!30, !31, i64 16}
!264 = !{!30, !31, i64 8}
!265 = distinct !{!265, !64}
!266 = !{!267, !33, i64 456}
!267 = !{!"_ZTS11colvar_gridImE", !137, i64 0, !130, i64 320, !33, i64 448, !33, i64 456, !163, i64 464, !163, i64 488, !71, i64 512, !167, i64 536, !167, i64 576, !167, i64 616, !167, i64 656, !60, i64 696, !60, i64 697}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!270 = distinct !{!270, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!271 = !{!66, !60, i64 2056}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!274 = distinct !{!274, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!275 = !{!276, !277, i64 0}
!276 = !{!"_ZTSSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EE", !277, i64 0, !18, i64 8}
!277 = !{!"p1 _ZTS18colvar_grid_params", !13, i64 0}
!278 = !{!18, !19, i64 0}
!279 = !{!280, !6, i64 8}
!280 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!281 = !{!280, !6, i64 12}
!282 = distinct !{ptr @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!283 = !{!13, !13, i64 0}
!284 = distinct !{ptr @_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!285 = !{!110, !110, i64 0}
!286 = distinct !{null, null, null}
!287 = distinct !{ptr @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!288 = !{!106, !106, i64 0}
!289 = !{!166, !22, i64 8}
!290 = distinct !{!290, !64, !178, !179}
!291 = distinct !{!291, !181}
!292 = distinct !{!292, !64, !178}
!293 = distinct !{!293, !64, !178, !179}
!294 = distinct !{!294, !181}
!295 = distinct !{!295, !64, !178}
!296 = !{!267, !60, i64 697}
!297 = distinct !{!297, !64}
!298 = distinct !{!298, !64, !178, !179}
!299 = distinct !{!299, !181}
!300 = distinct !{!300, !64, !178}
!301 = distinct !{!301, !64, !178, !179}
!302 = distinct !{!302, !181}
!303 = distinct !{!303, !64, !178}
!304 = distinct !{!304, !64}
!305 = distinct !{!305, !64, !178, !179}
!306 = distinct !{!306, !181}
!307 = distinct !{!307, !64, !178}
!308 = distinct !{!308, !64, !178, !179}
!309 = distinct !{!309, !181}
!310 = distinct !{!310, !64, !178}
!311 = distinct !{!311, !64, !178, !179}
!312 = distinct !{!312, !181}
!313 = distinct !{!313, !64, !178}
!314 = distinct !{!314, !64, !178, !179}
!315 = distinct !{!315, !181}
!316 = distinct !{!316, !64, !178}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!319 = distinct !{!319, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!320 = distinct !{!320, !64, !178, !179}
!321 = distinct !{!321, !64, !179, !178}
!322 = distinct !{!322, !64, !178, !179}
!323 = distinct !{!323, !64, !179, !178}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!326 = distinct !{!326, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!327 = !{!328, !39, i64 72}
!328 = !{!"_ZTS18colvarproxy_system", !68, i64 8, !39, i64 40, !39, i64 48, !60, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !6, i64 88, !39, i64 96, !39, i64 104, !60, i64 112, !329, i64 116, !40, i64 120, !40, i64 144, !40, i64 168, !40, i64 192, !40, i64 216, !40, i64 240}
!329 = !{!"_ZTSN18colvarproxy_system15Boundaries_typeE", !7, i64 0}
!330 = !{!331, !60, i64 1136}
!331 = !{!"_ZTS11colvarproxy", !328, i64 0, !332, i64 264, !338, i64 464, !339, i64 656, !340, i64 776, !343, i64 800, !344, i64 824, !346, i64 848, !347, i64 864, !356, i64 1088, !60, i64 1096, !68, i64 1104, !60, i64 1136, !60, i64 1137, !60, i64 1138, !6, i64 1140, !33, i64 1144, !68, i64 1152, !13, i64 1184}
!332 = !{!"_ZTS17colvarproxy_atoms", !50, i64 8, !163, i64 32, !43, i64 56, !43, i64 80, !333, i64 104, !333, i64 128, !333, i64 152, !39, i64 176, !39, i64 184, !6, i64 192, !60, i64 196, !60, i64 197, !60, i64 198}
!333 = !{!"_ZTSSt6vectorIN12colvarmodule7rvectorESaIS1_EE", !334, i64 0}
!334 = !{!"_ZTSSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE", !335, i64 0}
!335 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE12_Vector_implE", !336, i64 0}
!336 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE17_Vector_impl_dataE", !337, i64 0, !337, i64 8, !337, i64 16}
!337 = !{!"p1 _ZTSN12colvarmodule7rvectorE", !13, i64 0}
!338 = !{!"_ZTS23colvarproxy_atom_groups", !50, i64 8, !163, i64 32, !43, i64 56, !43, i64 80, !333, i64 104, !333, i64 128, !333, i64 152, !39, i64 176, !39, i64 184}
!339 = !{!"_ZTS19colvarproxy_volmaps", !50, i64 8, !163, i64 32, !43, i64 56, !43, i64 80, !39, i64 104, !39, i64 112}
!340 = !{!"_ZTS15colvarproxy_smp", !341, i64 8, !342, i64 16}
!341 = !{!"p1 _ZTS10omp_lock_t", !13, i64 0}
!342 = !{!"_ZTSN15colvarproxy_smp10smp_mode_tE", !7, i64 0}
!343 = !{!"_ZTS20colvarproxy_replicas", !13, i64 8, !6, i64 16, !6, i64 20}
!344 = !{!"_ZTS18colvarproxy_script", !345, i64 8, !60, i64 16}
!345 = !{!"p1 _ZTS12colvarscript", !13, i64 0}
!346 = !{!"_ZTS15colvarproxy_tcl", !13, i64 8}
!347 = !{!"_ZTS14colvarproxy_io", !68, i64 8, !68, i64 40, !68, i64 72, !6, i64 104, !348, i64 112, !351, i64 160, !352, i64 168, !355, i64 216}
!348 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSiSt4lessIS5_ESaISt4pairIKS5_S6_EEE", !349, i64 0}
!349 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSiESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !350, i64 0}
!350 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSiESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !142, i64 0, !144, i64 8}
!351 = !{!"p1 _ZTSSi", !13, i64 0}
!352 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSoSt4lessIS5_ESaISt4pairIKS5_S6_EEE", !353, i64 0}
!353 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !354, i64 0}
!354 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !142, i64 0, !144, i64 8}
!355 = !{!"p1 _ZTSSo", !13, i64 0}
!356 = !{!"p1 _ZTS12colvarmodule", !13, i64 0}
!357 = !{!60, !60, i64 0}
!358 = !{!66, !60, i64 337}
!359 = !{!66, !33, i64 344}
!360 = !{!66, !33, i64 352}
!361 = !{!82, !83, i64 0}
!362 = !{!82, !83, i64 8}
!363 = distinct !{!363, !64}
!364 = !{!82, !83, i64 16}
!365 = !{!66, !77, i64 360}
!366 = !{!66, !33, i64 376}
!367 = !{!67, !33, i64 112}
!368 = !{!369, !6, i64 40}
!369 = !{!"_ZTS10colvardeps", !68, i64 8, !6, i64 40, !370, i64 48, !373, i64 72, !373, i64 96}
!370 = !{!"_ZTSSt6vectorIN10colvardeps13feature_stateESaIS1_EE", !371, i64 0}
!371 = !{!"_ZTSSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE", !372, i64 0}
!372 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE12_Vector_implE", !56, i64 0}
!373 = !{!"_ZTSSt6vectorIP10colvardepsSaIS1_EE", !374, i64 0}
!374 = !{!"_ZTSSt12_Vector_baseIP10colvardepsSaIS1_EE", !375, i64 0}
!375 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE12_Vector_implE", !376, i64 0}
!376 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE17_Vector_impl_dataE", !377, i64 0, !377, i64 8, !377, i64 16}
!377 = !{!"p2 _ZTS10colvardeps", !12, i64 0}
!378 = !{!37, !38, i64 0}
!379 = distinct !{!379, !64}
!380 = !{!66, !60, i64 336}
!381 = distinct !{!381, !64}
!382 = !{!66, !60, i64 1832}
!383 = !{!66, !60, i64 1793}
!384 = distinct !{null, null, null}
!385 = distinct !{!385, !64}
!386 = !{ptr @_ZN14colvarbias_abfD1Ev}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!389 = distinct !{!389, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!390 = !{!391, !388}
!391 = distinct !{!391, !392, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!392 = distinct !{!392, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!395 = distinct !{!395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!396 = !{!397, !394}
!397 = distinct !{!397, !398, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!398 = distinct !{!398, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!399 = !{ptr @_ZN14colvarbias_abfD0Ev, ptr @_ZN14colvarbias_abfD1Ev}
!400 = !{ptr @_ZN14colvarbias_abfD0Ev}
!401 = !{!101, !102, i64 0}
!402 = !{!101, !102, i64 8}
!403 = distinct !{!403, !64}
!404 = !{!101, !102, i64 16}
!405 = !{!95, !96, i64 0}
!406 = !{!95, !96, i64 8}
!407 = distinct !{!407, !64}
!408 = !{!95, !96, i64 16}
!409 = !{!88, !89, i64 0}
!410 = !{!88, !89, i64 8}
!411 = distinct !{!411, !64}
!412 = !{!88, !89, i64 16}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!415 = distinct !{!415, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!416 = distinct !{null, null, null}
!417 = !{!418, !17, i64 16}
!418 = !{!"_ZTSSt15_Sp_counted_ptrIP17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EE", !280, i64 0, !17, i64 16}
!419 = !{!17, !17, i64 0}
!420 = distinct !{null, null, null}
!421 = !{!422, !106, i64 16}
!422 = !{!"_ZTSSt15_Sp_counted_ptrIP20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE", !280, i64 0, !106, i64 16}
!423 = distinct !{null, null}
!424 = !{!21, !6, i64 8}
!425 = distinct !{!425, !64}
!426 = distinct !{!426, !64}
!427 = distinct !{null, null, null}
!428 = !{!429, !110, i64 16}
!429 = !{!"_ZTSSt15_Sp_counted_ptrIP20colvargrid_integrateLN9__gnu_cxx12_Lock_policyE2EE", !280, i64 0, !110, i64 16}
!430 = distinct !{null, null, null}
!431 = distinct !{null, null, null}
!432 = distinct !{null, null, null}
!433 = distinct !{null, null, null}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!436 = distinct !{!436, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!437 = !{!438, !435}
!438 = distinct !{!438, !439, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!439 = distinct !{!439, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!442 = distinct !{!442, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!443 = !{!444, !441}
!444 = distinct !{!444, !445, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!445 = distinct !{!445, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!448 = distinct !{!448, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!449 = !{!450, !447}
end_hunk_1
