Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/generate_geocoding_data?download=true
inline.NumInlined: 2644
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4i18n12phonenumbers13ParsePrefixesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4absl7debian39btree_mapIiS6_St4lessIiESaISt4pairIKiS6_EEEE:bb.a
  %i.ay = call i32 @isspace(i32 noundef %i.ax) #32
  %.not25 = icmp eq i32 %i.ay, 0
  br i1 %.not25, label %.critedge.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0119.0165, i64 1 ; 2 uses
  %.not145 = icmp eq ptr %i.az, %i.at
  br i1 %.not145, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !155

.critedge.loopexit:                               ; preds = %bb.m, %.lr.ph
  %.sroa.0119.0.lcssa.ph = phi ptr [ %.sroa.0119.0165, %.lr.ph ], [ %scevgep186, %bb.m ] ; 2 uses
  %.pre = ptrtoaddr ptr %.sroa.0119.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.l
  %.sroa.0119.0.lcssa187.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.m, %bb.l ]
  %.sroa.0119.0.lcssa = phi ptr [ %.sroa.0119.0.lcssa.ph, %.critedge.loopexit ], [ %i.l, %bb.l ] ; 14 uses
  %i.ba = sub i64 %.sroa.0119.0.lcssa187.pre-phi, %.sroa.08.0.in.sroa.speculated.i.i.i144185
  %scevgep188 = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i144, i64 %i.ba ; 2 uses
  %.not146257 = icmp eq ptr %i.at, %.sroa.0119.0.lcssa
  br i1 %.not146257, label %.critedge2, label %.lr.ph259

bb.n:                                             ; preds = %.lr.ph259
  %.not146 = icmp eq ptr %i.bb, %.sroa.0119.0.lcssa
  br i1 %.not146, label %.critedge2, label %.lr.ph259, !llvm.loop !156

.lr.ph259:                                        ; preds = %.critedge, %bb.n
  %.sroa.0110.0258 = phi ptr [ %i.bb, %bb.n ], [ %i.at, %.critedge ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0110.0258, i64 -1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !26
  %i.bd = sext i8 %i.bc to i32
  %i.be = call i32 @isspace(i32 noundef %i.bd) #32
  %.not26 = icmp eq i32 %i.be, 0
  br i1 %.not26, label %..critedge2_crit_edge260, label %bb.n, !llvm.loop !156

..critedge2_crit_edge260:                         ; preds = %.lr.ph259
  br label %.critedge2, !llvm.loop !156

.critedge2:                                       ; preds = %bb.n, %..critedge2_crit_edge260, %.critedge
  %.sroa.0110.0.lcssa = phi ptr [ %scevgep188, %.critedge ], [ %.sroa.0110.0258, %..critedge2_crit_edge260 ], [ %scevgep188, %bb.n ] ; 6 uses
  %i.bf = icmp eq ptr %.sroa.0119.0.lcssa, %.sroa.0110.0.lcssa
  br i1 %i.bf, label %.backedge, label %bb.o

bb.o:                                             ; preds = %.critedge2
  %i.bg = load i8, ptr %.sroa.0119.0.lcssa, align 1, !tbaa !26
  %i.bh = icmp eq i8 %i.bg, 35
  br i1 %i.bh, label %.backedge, label %bb.p

.backedge:                                        ; preds = %._crit_edge.i.i.i30, %.critedge2, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50
  %i.bi = call ptr @fgets(ptr noundef nonnull %i.l, i32 noundef 2048, ptr noundef nonnull %i.k)
  %.not22 = icmp eq ptr %i.bi, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph.i.i.i.backedge

bb.p:                                             ; preds = %bb.o
  %i.bj = ptrtoint ptr %.sroa.0110.0.lcssa to i64 ; 5 uses
  %i.bk = ptrtoint ptr %.sroa.0119.0.lcssa to i64 ; 4 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = ashr i64 %i.bl, 2                       ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i41, label %._crit_edge.i.i.i30

.lr.ph.i.i.i41:                                   ; preds = %bb.p
  %i.bo = and i64 %i.bl, -4
  %scevgep.i.i.i42 = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %i.bo ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i41
  %.052.i.i.i43 = phi i64 [ %i.bm, %.lr.ph.i.i.i41 ], [ %i.cb, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i44 = phi ptr [ %.sroa.0119.0.lcssa, %.lr.ph.i.i.i41 ], [ %i.ca, %bb.u ] ; 9 uses
  %i.bp = load i8, ptr %.sroa.032.051.i.i.i44, align 1, !tbaa !26
  %i.bq = icmp eq i8 %i.bp, 124
  br i1 %i.bq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26
  %i.bt = icmp eq i8 %i.bs, 124
  br i1 %i.bt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !26
  %i.bw = icmp eq i8 %i.bv, 124
  br i1 %i.bw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !26
  %i.bz = icmp eq i8 %i.by, 124
  br i1 %i.bz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 4
  %i.cb = add nsw i64 %.052.i.i.i43, -1
  %i.cc = icmp sgt i64 %.052.i.i.i43, 1
  br i1 %i.cc, label %bb.q, label %._crit_edge.loopexit.i.i.i45, !llvm.loop !157

._crit_edge.loopexit.i.i.i45:                     ; preds = %bb.u
  %.pre59.i.i.i46 = ptrtoint ptr %scevgep.i.i.i42 to i64
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %._crit_edge.loopexit.i.i.i45, %bb.p
  %.pre-phi.i.i.i31 = phi i64 [ %.pre59.i.i.i46, %._crit_edge.loopexit.i.i.i45 ], [ %i.bk, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i32 = phi ptr [ %scevgep.i.i.i42, %._crit_edge.loopexit.i.i.i45 ], [ %.sroa.0119.0.lcssa, %bb.p ] ; 5 uses
  %i.cd = sub i64 %i.bj, %.pre-phi.i.i.i31
  switch i64 %i.cd, label %.backedge [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i38
    i64 1, label %._crit_edge._crit_edge57.i.i.i33
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i30
  %i.ce = load i8, ptr %.sroa.032.0.lcssa.i.i.i32, align 1, !tbaa !26
  %i.cf = icmp eq i8 %i.ce, 124
  br i1 %i.cf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i32, i64 1
  br label %._crit_edge._crit_edge.i.i.i38

._crit_edge._crit_edge.i.i.i38:                   ; preds = %._crit_edge.i.i.i30, %bb.w
  %.sroa.032.1.i.i.i40 = phi ptr [ %i.cg, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i32, %._crit_edge.i.i.i30 ] ; 3 uses
  %i.ch = load i8, ptr %.sroa.032.1.i.i.i40, align 1, !tbaa !26
  %i.ci = icmp eq i8 %i.ch, 124
  br i1 %i.ci, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i38
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i40, i64 1
  br label %._crit_edge._crit_edge57.i.i.i33

._crit_edge._crit_edge57.i.i.i33:                 ; preds = %._crit_edge.i.i.i30, %bb.x
  %.sroa.032.2.i.i.i35 = phi ptr [ %i.cj, %bb.x ], [ %.sroa.032.0.lcssa.i.i.i32, %._crit_edge.i.i.i30 ] ; 2 uses
  %i.ck = load i8, ptr %.sroa.032.2.i.i.i35, align 1, !tbaa !26
  %i.cl = icmp eq i8 %i.ck, 124
  %spec.select.i.i.i36 = select i1 %i.cl, ptr %.sroa.032.2.i.i.i35, ptr %.sroa.0110.0.lcssa
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit: ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241: ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243: ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i44, i64 1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50: ; preds = %bb.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243, %._crit_edge._crit_edge57.i.i.i33, %._crit_edge._crit_edge.i.i.i38, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i37 = phi ptr [ %.sroa.032.1.i.i.i40, %._crit_edge._crit_edge.i.i.i38 ], [ %spec.select.i.i.i36, %._crit_edge._crit_edge57.i.i.i33 ], [ %.sroa.032.0.lcssa.i.i.i32, %bb.v ], [ %i.cm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit ], [ %i.co, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit243 ], [ %i.cn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50.loopexit.split.loop.exit241 ], [ %.sroa.032.051.i.i.i44, %bb.q ] ; 5 uses
  %i.cp = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i37, %.sroa.0110.0.lcssa
  br i1 %i.cp, label %.backedge, label %bb.y

bb.y:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcET_S7_S7_RKT0_.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.t, ptr %5, align 8, !tbaa !30
  store i64 0, ptr %i.u, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cq = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i37 to i64 ; 4 uses
  %i.cr = sub i64 %i.cq, %i.bk                    ; 10 uses
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !31
  %i.cs = icmp ugt i64 %i.cr, 15
  br i1 %i.cs, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.ct = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ct, ptr %5, align 8, !tbaa !25
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  store i64 %i.cu, ptr %i.t, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.y
  %i.cv = phi i64 [ %i.cu, %.noexc ], [ %i.cr, %bb.y ]
  %i.cw = phi ptr [ %i.ct, %.noexc ], [ %i.t, %bb.y ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %.sroa.0119.0.lcssa, %.sroa.08.0.in.sroa.speculated.i.i.i37
  br i1 %.not5.i.i.i, label %bb.z, label %iter.check293

iter.check293:                                    ; preds = %._crit_edge.i.i
  %i.cx = ptrtoaddr ptr %i.cw to i64
  %min.iters.check277 = icmp ult i64 %i.cr, 8
  %i.cy = sub i64 %i.bk, %i.cx
  %diff.check276 = icmp ugt i64 %i.cy, -32
  %or.cond = select i1 %min.iters.check277, i1 true, i1 %diff.check276
  br i1 %or.cond, label %.lr.ph.i.i.i51.preheader, label %vector.main.loop.iter.check278

vector.main.loop.iter.check278:                   ; preds = %iter.check293
  %min.iters.check279 = icmp ult i64 %i.cr, 32
  br i1 %min.iters.check279, label %vec.epilog.ph297, label %vector.ph280

vector.ph280:                                     ; preds = %vector.main.loop.iter.check278
  %i.cz = and i64 %i.cr, 24
  %n.vec281 = and i64 %i.cr, -32                  ; 5 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 %n.vec281
  %i.db = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %n.vec281
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 3 uses
  %next.gep284 = getelementptr i8, ptr %i.cw, i64 %index283 ; 2 uses
  %next.gep285 = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %index283 ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep285, i64 16
  %wide.load286 = load <16 x i8>, ptr %next.gep285, align 1, !tbaa !26
  %wide.load287 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !26
  %i.dd = getelementptr i8, ptr %next.gep284, i64 16
  store <16 x i8> %wide.load286, ptr %next.gep284, align 1, !tbaa !26
  store <16 x i8> %wide.load287, ptr %i.dd, align 1, !tbaa !26
  %index.next288 = add nuw i64 %index283, 32      ; 2 uses
  %i.de = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.de, label %middle.block289, label %vector.body282, !llvm.loop !158

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.cr, %n.vec281
  br i1 %cmp.n290, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check295

vec.epilog.iter.check295:                         ; preds = %middle.block289
  %min.epilog.iters.check296 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check296, label %.lr.ph.i.i.i51.preheader, label %vec.epilog.ph297, !prof !59

vec.epilog.ph297:                                 ; preds = %vector.main.loop.iter.check278, %vec.epilog.iter.check295
  %vec.epilog.resume.val291 = phi i64 [ %n.vec281, %vec.epilog.iter.check295 ], [ 0, %vector.main.loop.iter.check278 ]
  %n.vec298 = and i64 %i.cr, -8                   ; 4 uses
  %i.df = getelementptr i8, ptr %i.cw, i64 %n.vec298
  %i.dg = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %n.vec298
  br label %vec.epilog.vector.body299

vec.epilog.vector.body299:                        ; preds = %vec.epilog.vector.body299, %vec.epilog.ph297
  %index300 = phi i64 [ %vec.epilog.resume.val291, %vec.epilog.ph297 ], [ %index.next304, %vec.epilog.vector.body299 ] ; 3 uses
  %next.gep301 = getelementptr i8, ptr %i.cw, i64 %index300
  %next.gep302 = getelementptr i8, ptr %.sroa.0119.0.lcssa, i64 %index300
  %wide.load303 = load <8 x i8>, ptr %next.gep302, align 1, !tbaa !26
  store <8 x i8> %wide.load303, ptr %next.gep301, align 1, !tbaa !26
  %index.next304 = add nuw i64 %index300, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next304, %n.vec298
  br i1 %i.dh, label %vec.epilog.middle.block305, label %vec.epilog.vector.body299, !llvm.loop !159

vec.epilog.middle.block305:                       ; preds = %vec.epilog.vector.body299
  %cmp.n306 = icmp eq i64 %i.cr, %n.vec298
  br i1 %cmp.n306, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i51.preheader

.lr.ph.i.i.i51.preheader:                         ; preds = %iter.check293, %vec.epilog.iter.check295, %vec.epilog.middle.block305
  %.07.i.i.i.ph = phi ptr [ %i.cw, %iter.check293 ], [ %i.da, %vec.epilog.iter.check295 ], [ %i.df, %vec.epilog.middle.block305 ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %.sroa.0119.0.lcssa, %iter.check293 ], [ %i.db, %vec.epilog.iter.check295 ], [ %i.dg, %vec.epilog.middle.block305 ] ; 3 uses
  %.sroa.02.06.i.i.i.ph314 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.di = sub i64 %i.cq, %.sroa.02.06.i.i.i.ph314
  %xtraiter = and i64 %i.di, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i51.prol

.lr.ph.i.i.i51.prol:                              ; preds = %.lr.ph.i.i.i51.preheader, %.lr.ph.i.i.i51.prol
  %.07.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i.i51.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i51.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i.i51.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i51.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i51.prol ], [ 0, %.lr.ph.i.i.i51.preheader ]
  %i.dj = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1, !tbaa !26
  store i8 %i.dj, ptr %.07.i.i.i.prol, align 1, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i51.prol.loopexit, label %.lr.ph.i.i.i51.prol, !llvm.loop !160

.lr.ph.i.i.i51.prol.loopexit:                     ; preds = %.lr.ph.i.i.i51.prol, %.lr.ph.i.i.i51.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i51.preheader ], [ %i.dl, %.lr.ph.i.i.i51.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i51.preheader ], [ %i.dk, %.lr.ph.i.i.i51.prol ]
  %i.dm = sub i64 %.sroa.02.06.i.i.i.ph314, %i.cq
  %i.dn = icmp ugt i64 %i.dm, -8
  br i1 %i.dn, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %.lr.ph.i.i.i51.prol.loopexit, %.lr.ph.i.i.i51
  %.07.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i51 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i51.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i51 ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i51.prol.loopexit ] ; 9 uses
  %i.do = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !26
  store i8 %i.do, ptr %.07.i.i.i, align 1, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !26
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.dt = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !26
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.dw = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !26
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !26
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.ea = load i8, ptr %i.dy, align 1, !tbaa !26
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !26
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.ec = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !26
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !26
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.ef = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !26
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !26
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.ei = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 7
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !26
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !26
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.ek, %.sroa.08.0.in.sroa.speculated.i.i.i37
  br i1 %.not.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i51, !llvm.loop !161

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i51.prol.loopexit, %.lr.ph.i.i.i51, %vec.epilog.middle.block305, %middle.block289
  %.pre16.i.i = load i64, ptr %i.b, align 8, !tbaa !31
  %.pre17.i.i = load ptr, ptr %5, align 8, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.em = phi ptr [ %.pre17.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.cw, %._crit_edge.i.i ]
  %i.en = phi i64 [ %.pre16.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.cv, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.en, ptr %i.u, align 8, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i8 0, ptr %i.eo, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ep = load ptr, ptr %3, align 8, !tbaa !25    ; 6 uses
  %i.eq = icmp eq ptr %i.ep, %i.o
  %i.er = load ptr, ptr %5, align 8, !tbaa !25    ; 5 uses
  %i.es = icmp eq ptr %i.er, %i.t                 ; 2 uses
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.z
  br i1 %i.es, label %bb.aa, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.z
  br i1 %i.es, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.et = load i64, ptr %i.u, align 8, !tbaa !29  ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  switch i64 %i.et, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !26
  store i8 %i.ev, ptr %i.ep, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.er, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ew = load i64, ptr %i.u, align 8, !tbaa !29  ; 2 uses
  store i64 %i.ew, ptr %i.p, align 8, !tbaa !29
  %i.ex = load ptr, ptr %3, align 8, !tbaa !25
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.er, ptr %3, align 8, !tbaa !25
  %i.ez = load <2 x i64>, ptr %i.u, align 8, !tbaa !26
  store <2 x i64> %i.ez, ptr %i.p, align 8, !tbaa !26
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fa = load i64, ptr %i.o, align 8, !tbaa !26
  store ptr %i.er, ptr %3, align 8, !tbaa !25
  %i.fb = load <2 x i64>, ptr %i.u, align 8, !tbaa !26
  store <2 x i64> %i.fb, ptr %i.p, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ep, ptr %5, align 8, !tbaa !25
  store i64 %i.fa, ptr %i.t, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %5, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ad, %bb.ae
  %i.fc = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ep, %bb.ad ], [ %i.t, %bb.ae ]
  store i64 0, ptr %i.u, align 8, !tbaa !29
  store i8 0, ptr %i.fc, align 1, !tbaa !26
  %i.fd = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.t
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ff = load i64, ptr %i.t, align 8, !tbaa !26
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.fh = invoke noundef zeroext i1 @_ZN4i18n12phonenumbers8StrToIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.c)
          to label %bb.af unwind label %bb.j

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.fh, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %.noexc.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i37, i64 1 ; 8 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !30
  store i64 0, ptr %i.w, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %i.bj, %i.fk                    ; 10 uses
  store i64 %i.fl, ptr %i.a, align 8, !tbaa !31
  %i.fm = icmp ugt i64 %i.fl, 15
  br i1 %i.fm, label %.noexc.i61, label %._crit_edge.i.i52

.noexc.i61:                                       ; preds = %bb.ah
  %i.fn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc62 unwind label %bb.av  ; 2 uses

.noexc62:                                         ; preds = %.noexc.i61
  store ptr %i.fn, ptr %6, align 8, !tbaa !25
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  store i64 %i.fo, ptr %i.v, align 8, !tbaa !26
  br label %._crit_edge.i.i52

._crit_edge.i.i52:                                ; preds = %.noexc62, %bb.ah
  %i.fp = phi i64 [ %i.fo, %.noexc62 ], [ %i.fl, %bb.ah ]
  %i.fq = phi ptr [ %i.fn, %.noexc62 ], [ %i.v, %bb.ah ] ; 8 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %.not5.i.i.i53 = icmp eq ptr %i.fj, %.sroa.0110.0.lcssa
  br i1 %.not5.i.i.i53, label %bb.ai, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i52
  %min.iters.check = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i54.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fs = sub i64 %i.fr, %i.cq
  %i.ft = add i64 %i.fs, -2
  %diff.check = icmp ult i64 %i.ft, 31
  br i1 %diff.check, label %.lr.ph.i.i.i54.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check262 = icmp ult i64 %i.fl, 32
  br i1 %min.iters.check262, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fu = and i64 %i.fl, 24
  %n.vec = and i64 %i.fl, -32                     ; 5 uses
  %i.fv = getelementptr i8, ptr %i.fq, i64 %n.vec
  %i.fw = getelementptr i8, ptr %i.fj, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.fq, i64 %index ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.fj, i64 %index ; 2 uses
  %i.fx = getelementptr i8, ptr %next.gep263, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep263, align 1, !tbaa !26
  %wide.load264 = load <16 x i8>, ptr %i.fx, align 1, !tbaa !26
  %i.fy = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load264, ptr %i.fy, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fl, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i54.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec266 = and i64 %i.fl, -8                   ; 4 uses
  %i.ga = getelementptr i8, ptr %i.fq, i64 %n.vec266
  %i.gb = getelementptr i8, ptr %i.fj, i64 %n.vec266
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index267 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next271, %vec.epilog.vector.body ] ; 3 uses
  %next.gep268 = getelementptr i8, ptr %i.fq, i64 %index267
  %next.gep269 = getelementptr i8, ptr %i.fj, i64 %index267
  %wide.load270 = load <8 x i8>, ptr %next.gep269, align 1, !tbaa !26
  store <8 x i8> %wide.load270, ptr %next.gep268, align 1, !tbaa !26
  %index.next271 = add nuw i64 %index267, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n272 = icmp eq i64 %i.fl, %n.vec266
  br i1 %cmp.n272, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58, label %.lr.ph.i.i.i54.preheader

.lr.ph.i.i.i54.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i55.ph = phi ptr [ %i.fq, %iter.check ], [ %i.fq, %vector.memcheck ], [ %i.fv, %vec.epilog.iter.check ], [ %i.ga, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.06.i.i.i56.ph = phi ptr [ %i.fj, %iter.check ], [ %i.fj, %vector.memcheck ], [ %i.fw, %vec.epilog.iter.check ], [ %i.gb, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.06.i.i.i56.ph315 = ptrtoaddr ptr %.sroa.02.06.i.i.i56.ph to i64 ; 2 uses
  %i.gd = sub i64 %i.bj, %.sroa.02.06.i.i.i56.ph315
  %xtraiter316 = and i64 %i.gd, 7                 ; 2 uses
  %lcmp.mod317.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %.lr.ph.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i54.prol

.lr.ph.i.i.i54.prol:                              ; preds = %.lr.ph.i.i.i54.preheader, %.lr.ph.i.i.i54.prol
  %.07.i.i.i55.prol = phi ptr [ %i.gg, %.lr.ph.i.i.i54.prol ], [ %.07.i.i.i55.ph, %.lr.ph.i.i.i54.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i56.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i54.prol ], [ %.sroa.02.06.i.i.i56.ph, %.lr.ph.i.i.i54.preheader ] ; 2 uses
  %prol.iter318 = phi i64 [ %prol.iter318.next, %.lr.ph.i.i.i54.prol ], [ 0, %.lr.ph.i.i.i54.preheader ]
  %i.ge = load i8, ptr %.sroa.02.06.i.i.i56.prol, align 1, !tbaa !26
  store i8 %i.ge, ptr %.07.i.i.i55.prol, align 1, !tbaa !26
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56.prol, i64 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.07.i.i.i55.prol, i64 1 ; 2 uses
  %prol.iter318.next = add i64 %prol.iter318, 1   ; 2 uses
  %prol.iter318.cmp.not = icmp eq i64 %prol.iter318.next, %xtraiter316
  br i1 %prol.iter318.cmp.not, label %.lr.ph.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i54.prol, !llvm.loop !164

.lr.ph.i.i.i54.prol.loopexit:                     ; preds = %.lr.ph.i.i.i54.prol, %.lr.ph.i.i.i54.preheader
  %.07.i.i.i55.unr = phi ptr [ %.07.i.i.i55.ph, %.lr.ph.i.i.i54.preheader ], [ %i.gg, %.lr.ph.i.i.i54.prol ]
  %.sroa.02.06.i.i.i56.unr = phi ptr [ %.sroa.02.06.i.i.i56.ph, %.lr.ph.i.i.i54.preheader ], [ %i.gf, %.lr.ph.i.i.i54.prol ]
  %i.gh = sub i64 %.sroa.02.06.i.i.i56.ph315, %i.bj
  %i.gi = icmp ugt i64 %i.gh, -8
  br i1 %i.gi, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %.lr.ph.i.i.i54.prol.loopexit, %.lr.ph.i.i.i54
  %.07.i.i.i55 = phi ptr [ %i.hg, %.lr.ph.i.i.i54 ], [ %.07.i.i.i55.unr, %.lr.ph.i.i.i54.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i56 = phi ptr [ %i.hf, %.lr.ph.i.i.i54 ], [ %.sroa.02.06.i.i.i56.unr, %.lr.ph.i.i.i54.prol.loopexit ] ; 9 uses
  %i.gj = load i8, ptr %.sroa.02.06.i.i.i56, align 1, !tbaa !26
  store i8 %i.gj, ptr %.07.i.i.i55, align 1, !tbaa !26
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 1
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !26
  store i8 %i.gm, ptr %i.gl, align 1, !tbaa !26
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 2
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !26
  store i8 %i.gp, ptr %i.go, align 1, !tbaa !26
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 3
  %i.gr = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 3
  %i.gs = load i8, ptr %i.gq, align 1, !tbaa !26
  store i8 %i.gs, ptr %i.gr, align 1, !tbaa !26
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 4
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !26
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !26
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 5
  %i.gx = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 5
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !26
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !26
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 6
  %i.ha = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 6
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !26
  store i8 %i.hb, ptr %i.ha, align 1, !tbaa !26
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 7
  %i.hd = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 7
  %i.he = load i8, ptr %i.hc, align 1, !tbaa !26
  store i8 %i.he, ptr %i.hd, align 1, !tbaa !26
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i56, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.07.i.i.i55, i64 8
  %.not.i.i.i57.7 = icmp eq ptr %i.hf, %.sroa.0110.0.lcssa
  br i1 %.not.i.i.i57.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58, label %.lr.ph.i.i.i54, !llvm.loop !165

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58: ; preds = %.lr.ph.i.i.i54.prol.loopexit, %.lr.ph.i.i.i54, %vec.epilog.middle.block, %middle.block
  %.pre16.i.i59 = load i64, ptr %i.a, align 8, !tbaa !31
  %.pre17.i.i60 = load ptr, ptr %6, align 8, !tbaa !25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58, %._crit_edge.i.i52
  %i.hh = phi ptr [ %.pre17.i.i60, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58 ], [ %i.fq, %._crit_edge.i.i52 ]
  %i.hi = phi i64 [ %.pre16.i.i59, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i58 ], [ %i.fp, %._crit_edge.i.i52 ] ; 2 uses
  store i64 %i.hi, ptr %i.w, align 8, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  store i8 0, ptr %i.hj, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN4absl7debian318container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE16try_emplace_implIRSE_JEEESD_INS1_14btree_iteratorINS1_10btree_nodeISH_EERSF_PSF_EEbEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.88") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc65 unwind label %bb.aw

.noexc65:                                         ; preds = %bb.ai
  %i.hk = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i64, label %bb.aj, label %bb.ak, !prof !62

bb.aj:                                            ; preds = %.noexc65
  call void @llvm.trap() #33
  unreachable

bb.ak:                                            ; preds = %.noexc65
  %i.hl = load i32, ptr %i.x, align 8, !tbaa !63  ; 3 uses
  %.not1.i.i.i = icmp slt i32 %i.hl, 0
  br i1 %.not1.i.i.i, label %bb.al, label %bb.am, !prof !62

bb.al:                                            ; preds = %bb.ak
  call void @llvm.trap() #33
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.hm = getelementptr i8, ptr %i.hk, i64 10
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !26
  %i.ho = zext i8 %i.hn to i32
  %i.hp = icmp samesign ult i32 %i.hl, %i.ho
  br i1 %i.hp, label %bb.ao, label %bb.an, !prof !64

bb.an:                                            ; preds = %bb.am
  call void @llvm.trap() #33
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.hq = zext nneg i32 %i.hl to i64
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.hq ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !25 ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 40 ; 4 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  %i.hw = load ptr, ptr %6, align 8, !tbaa !25    ; 6 uses
  %i.hx = icmp eq ptr %i.hw, %i.v                 ; 2 uses
  br i1 %i.hv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71: ; preds = %bb.ao
  br i1 %i.hx, label %bb.ap, label %.thread.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66: ; preds = %bb.ao
  br i1 %i.hx, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  %i.hy = load i64, ptr %i.w, align 8, !tbaa !29  ; 3 uses
  %i.hz = icmp ult i64 %i.hy, 16
  call void @llvm.assume(i1 %i.hz)
  %.not21.i = icmp eq ptr %6, %i.hs
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73, label %bb.aq, !prof !62

bb.aq:                                            ; preds = %bb.ap
  switch i64 %i.hy, label %bb.as [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69
    i64 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !26
  store i8 %i.ia, ptr %i.ht, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr align 1 %i.hw, i64 %i.hy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ib = load i64, ptr %i.w, align 8, !tbaa !29  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !29
  %i.id = load ptr, ptr %i.hs, align 8, !tbaa !25
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ib
  store i8 0, ptr %i.ie, align 1, !tbaa !26
  %.pre.i70 = load ptr, ptr %6, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

.thread.i72:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  %i.if = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store ptr %i.hw, ptr %i.hs, align 8, !tbaa !25
  %i.ig = load i64, ptr %i.w, align 8, !tbaa !29
  store i64 %i.ig, ptr %i.if, align 8, !tbaa !29
  %i.ih = load i64, ptr %i.v, align 8, !tbaa !26
  store i64 %i.ih, ptr %i.hu, align 8, !tbaa !26
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66
  %i.ii = load i64, ptr %i.hu, align 8, !tbaa !26
  store ptr %i.hw, ptr %i.hs, align 8, !tbaa !25
  %i.ij = load i64, ptr %i.w, align 8, !tbaa !29
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !29
  %i.il = load i64, ptr %i.v, align 8, !tbaa !26
  store i64 %i.il, ptr %i.hu, align 8, !tbaa !26
  %.not.i68 = icmp eq ptr %i.ht, null
  br i1 %.not.i68, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67
  store ptr %i.ht, ptr %6, align 8, !tbaa !25
  store i64 %i.ii, ptr %i.v, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67, %.thread.i72
  store ptr %i.v, ptr %6, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73: ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69, %bb.at, %bb.au
  %i.im = phi ptr [ %.pre.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69 ], [ %i.ht, %bb.at ], [ %i.v, %bb.au ], [ %i.hw, %bb.ap ]
  store i64 0, ptr %i.w, align 8, !tbaa !29
  store i8 0, ptr %i.im, align 1, !tbaa !26
  %i.in = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.v
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73
  %i.ip = load i64, ptr %i.v, align 8, !tbaa !26
  %i.iq = add i64 %i.ip, 1
end_hunk_0
begin_hunk_1_@_ZN4i18n12phonenumbers4MainEiPPKc:bb.a
  %i.q = load i64, ptr %i.i, align 8, !tbaa !26
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %0, 2
  br i1 %i.s, label %.noexc.i30, label %._crit_edge.i.i36

.noexc.i30:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i64 27, ptr %i.f, align 8, !tbaa !31
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !25
  %i.v = load i64, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.u, ptr noundef nonnull align 1 dereferenceable(27) @.str.51, i64 27, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !29
  %i.x = load ptr, ptr %3, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.z = call noundef i32 @_ZN4i18n12phonenumbers9PrintHelpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %.noexc.i30
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %.noexc.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.aw

._crit_edge.i.i36:                                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !29
  store i8 0, ptr %i.ae, align 8, !tbaa !26
  %i.ag = icmp samesign ugt i32 %0, 3
  br i1 %i.ag, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.c:                                             ; preds = %._crit_edge.i.i36
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !312 ; 2 uses
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #28
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.ai, i64 noundef %i.aj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c, %._crit_edge.i.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !312 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !30
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.55) #30
          to label %.noexc43 unwind label %bb.ad

.noexc43:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !31
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i42, label %._crit_edge.i.i41

.noexc.i42:                                       ; preds = %bb.f
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc44 unwind label %bb.ad  ; 2 uses

.noexc44:                                         ; preds = %.noexc.i42
  store ptr %i.as, ptr %5, align 8, !tbaa !25
  %i.at = load i64, ptr %i.e, align 8, !tbaa !31
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !26
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %.noexc44, %bb.f
  %i.au = phi ptr [ %i.as, %.noexc44 ], [ %i.ao, %bb.f ] ; 2 uses
  switch i64 %i.aq, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i41
  %i.av = load i8, ptr %i.an, align 1, !tbaa !26
  store i8 %i.av, ptr %i.au, align 1, !tbaa !26
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.an, i64 %i.aq, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i41
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !29
  %i.ay = load ptr, ptr %5, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !312 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !30
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.55) #30
          to label %.noexc48 unwind label %bb.ae

.noexc48:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.be, ptr %i.d, align 8, !tbaa !31
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %.noexc.i47, label %._crit_edge.i.i46

.noexc.i47:                                       ; preds = %bb.k
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc49 unwind label %bb.ae  ; 2 uses

.noexc49:                                         ; preds = %.noexc.i47
  store ptr %i.bg, ptr %6, align 8, !tbaa !25
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !31
  store i64 %i.bh, ptr %i.bc, align 8, !tbaa !26
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %.noexc49, %bb.k
  %i.bi = phi ptr [ %i.bg, %.noexc49 ], [ %i.bc, %bb.k ] ; 2 uses
  switch i64 %i.be, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i46
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !26
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !26
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %i.bb, i64 %i.be, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i46
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !29
  %i.bm = load ptr, ptr %6, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.bo = load ptr, ptr %6, align 8, !tbaa !25    ; 44 uses
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !29 ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %.not6.i = icmp samesign eq i64 %i.bp, 0
  br i1 %.not6.i, label %._crit_edge.i.i51.thread, label %iter.check

iter.check:                                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check163 = icmp ult i64 %i.bp, 32
  br i1 %min.iters.check163, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bp, 24
  %n.vec = and i64 %i.bp, -32                     ; 4 uses
  %i.bs = getelementptr i8, ptr %i.bo, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue257, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue257 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %index ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep164 = getelementptr i8, ptr %i.bt, i64 1
  %i.bu = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep165 = getelementptr i8, ptr %i.bu, i64 2
  %i.bv = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep166 = getelementptr i8, ptr %i.bv, i64 3
  %i.bw = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep167 = getelementptr i8, ptr %i.bw, i64 4
  %i.bx = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep168 = getelementptr i8, ptr %i.bx, i64 5
  %i.by = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep169 = getelementptr i8, ptr %i.by, i64 6
  %i.bz = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep170 = getelementptr i8, ptr %i.bz, i64 7
  %i.ca = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep171 = getelementptr i8, ptr %i.ca, i64 8
  %i.cb = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep172 = getelementptr i8, ptr %i.cb, i64 9
  %i.cc = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep173 = getelementptr i8, ptr %i.cc, i64 10
  %i.cd = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep174 = getelementptr i8, ptr %i.cd, i64 11
  %i.ce = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep175 = getelementptr i8, ptr %i.ce, i64 12
  %i.cf = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep176 = getelementptr i8, ptr %i.cf, i64 13
  %i.cg = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep177 = getelementptr i8, ptr %i.cg, i64 14
  %i.ch = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep178 = getelementptr i8, ptr %i.ch, i64 15
  %i.ci = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep179 = getelementptr i8, ptr %i.ci, i64 16
  %i.cj = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep180 = getelementptr i8, ptr %i.cj, i64 17
  %i.ck = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep181 = getelementptr i8, ptr %i.ck, i64 18
  %i.cl = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep182 = getelementptr i8, ptr %i.cl, i64 19
  %i.cm = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep183 = getelementptr i8, ptr %i.cm, i64 20
  %i.cn = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep184 = getelementptr i8, ptr %i.cn, i64 21
  %i.co = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep185 = getelementptr i8, ptr %i.co, i64 22
  %i.cp = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep186 = getelementptr i8, ptr %i.cp, i64 23
  %i.cq = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep187 = getelementptr i8, ptr %i.cq, i64 24
  %i.cr = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep188 = getelementptr i8, ptr %i.cr, i64 25
  %i.cs = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep189 = getelementptr i8, ptr %i.cs, i64 26
  %i.ct = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep190 = getelementptr i8, ptr %i.ct, i64 27
  %i.cu = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep191 = getelementptr i8, ptr %i.cu, i64 28
  %i.cv = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep192 = getelementptr i8, ptr %i.cv, i64 29
  %i.cw = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep193 = getelementptr i8, ptr %i.cw, i64 30
  %i.cx = getelementptr i8, ptr %i.bo, i64 %index
  %next.gep194 = getelementptr i8, ptr %i.cx, i64 31
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %wide.load195 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !26
  %i.cz = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.da = icmp eq <16 x i8> %wide.load195, splat (i8 92) ; 16 uses
  %i.db = extractelement <16 x i1> %i.cz, i64 0
  br i1 %i.db, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !26
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dc = extractelement <16 x i1> %i.cz, i64 1
  br i1 %i.dc, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue
  store i8 47, ptr %next.gep164, align 1, !tbaa !26
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue
  %i.dd = extractelement <16 x i1> %i.cz, i64 2
  br i1 %i.dd, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  store i8 47, ptr %next.gep165, align 1, !tbaa !26
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.de = extractelement <16 x i1> %i.cz, i64 3
  br i1 %i.de, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  store i8 47, ptr %next.gep166, align 1, !tbaa !26
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.df = extractelement <16 x i1> %i.cz, i64 4
  br i1 %i.df, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  store i8 47, ptr %next.gep167, align 1, !tbaa !26
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.dg = extractelement <16 x i1> %i.cz, i64 5
  br i1 %i.dg, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  store i8 47, ptr %next.gep168, align 1, !tbaa !26
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.dh = extractelement <16 x i1> %i.cz, i64 6
  br i1 %i.dh, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  store i8 47, ptr %next.gep169, align 1, !tbaa !26
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.di = extractelement <16 x i1> %i.cz, i64 7
  br i1 %i.di, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  store i8 47, ptr %next.gep170, align 1, !tbaa !26
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.dj = extractelement <16 x i1> %i.cz, i64 8
  br i1 %i.dj, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  store i8 47, ptr %next.gep171, align 1, !tbaa !26
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.dk = extractelement <16 x i1> %i.cz, i64 9
  br i1 %i.dk, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  store i8 47, ptr %next.gep172, align 1, !tbaa !26
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.dl = extractelement <16 x i1> %i.cz, i64 10
  br i1 %i.dl, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  store i8 47, ptr %next.gep173, align 1, !tbaa !26
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.dm = extractelement <16 x i1> %i.cz, i64 11
  br i1 %i.dm, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  store i8 47, ptr %next.gep174, align 1, !tbaa !26
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.dn = extractelement <16 x i1> %i.cz, i64 12
  br i1 %i.dn, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  store i8 47, ptr %next.gep175, align 1, !tbaa !26
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.do = extractelement <16 x i1> %i.cz, i64 13
  br i1 %i.do, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  store i8 47, ptr %next.gep176, align 1, !tbaa !26
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.dp = extractelement <16 x i1> %i.cz, i64 14
  br i1 %i.dp, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue221
  store i8 47, ptr %next.gep177, align 1, !tbaa !26
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue221
  %i.dq = extractelement <16 x i1> %i.cz, i64 15
  br i1 %i.dq, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  store i8 47, ptr %next.gep178, align 1, !tbaa !26
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %i.dr = extractelement <16 x i1> %i.da, i64 0
  br i1 %i.dr, label %pred.store.if226, label %pred.store.continue227

end_hunk_1
