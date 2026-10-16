Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ExprDefEq?download=true
inline.NumInlined: 14717
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@l_Lean_Meta_isAbstractedUnassignedMVar:bb.a

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.084) #12
  br label %lean_dec_ref_known.exit157

lean_dec_ref_known.exit157:                       ; preds = %lean_dec.exit.i152, %bb.ax, %bb.ay, %bb.az
  %i.bu = tail call ptr @l_Lean_MVarId_isReadOnlyOrSyntheticOpaque(ptr noundef %i.bf, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12 ; 12 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = and i64 %i.bv, 1
  %.not.i158 = icmp eq i64 %i.bw, 0               ; 2 uses
  br i1 %.not.i158, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %lean_dec_ref_known.exit157
  %i.bx = lshr i64 %i.bv, 1
  %i.by = trunc i64 %i.bx to i32
  br label %lean_obj_tag.exit161

bb.bb:                                            ; preds = %lean_dec_ref_known.exit157
  %i.bz = getelementptr i8, ptr %i.bu, i64 4
  %.val.i160 = load i32, ptr %i.bz, align 4
  %i.ca = lshr i32 %.val.i160, 24
  br label %lean_obj_tag.exit161

lean_obj_tag.exit161:                             ; preds = %bb.ba, %bb.bb
  %.0.i159 = phi i32 [ %i.by, %bb.ba ], [ %i.ca, %bb.bb ]
  %i.cb = icmp eq i32 %.0.i159, 0
  br i1 %i.cb, label %bb.bc, label %bb.db

bb.bc:                                            ; preds = %lean_obj_tag.exit161
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 12 uses
  %.val126 = load i32, ptr %i.bu, align 8, !tbaa !11
  %i.ce = icmp eq i32 %.val126, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.cd to i64               ; 4 uses
  br i1 %i.ce, label %lean_dec.exit108, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cf = and i64 %.pre, 1
  %.not.i92 = icmp eq i64 %i.cf, 0
  br i1 %.not.i92, label %bb.be, label %lean_inc.exit93

bb.be:                                            ; preds = %bb.bd
  %.val.i.i162 = load i32, ptr %i.cd, align 4, !tbaa !11 ; 3 uses
  %i.cg = icmp sgt i32 %.val.i.i162, 0
  br i1 %i.cg, label %bb.bf, label %bb.bg, !prof !17

bb.bf:                                            ; preds = %bb.be
  %i.ch = add nuw i32 %.val.i.i162, 1
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !11
  br label %lean_inc.exit93

bb.bg:                                            ; preds = %bb.be
  %.not.i.i163 = icmp eq i32 %.val.i.i162, 0
  br i1 %.not.i.i163, label %lean_inc.exit93, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ci = atomicrmw sub ptr %i.cd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit93

lean_inc.exit93:                                  ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd
  br i1 %.not.i158, label %bb.bi, label %lean_dec.exit108

bb.bi:                                            ; preds = %lean_inc.exit93
  %i.cj = load i32, ptr %i.bu, align 8, !tbaa !11 ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.bj, label %bb.bk, !prof !17

bb.bj:                                            ; preds = %bb.bi
  %i.cl = add nsw i32 %i.cj, -1
  store i32 %i.cl, ptr %i.bu, align 8, !tbaa !11
  br label %lean_dec.exit108

bb.bk:                                            ; preds = %bb.bi
  %.not.i109 = icmp eq i32 %i.cj, 0
  br i1 %.not.i109, label %lean_dec.exit108, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #12
  br label %lean_dec.exit108

lean_dec.exit108:                                 ; preds = %bb.bc, %lean_inc.exit93, %bb.bj, %bb.bk, %bb.bl
  %.087 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bl ], [ inttoptr (i64 1 to ptr), %lean_inc.exit93 ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bk ], [ %i.bu, %bb.bc ] ; 4 uses
  %i.cm = and i64 %.pre, 510
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.bm, label %bb.cp

bb.bm:                                            ; preds = %lean_dec.exit108
  %i.co = ptrtoint ptr %.087 to i64
  %i.cp = and i64 %i.co, 1
  %.not.i165 = icmp eq i64 %i.cp, 0
  br i1 %.not.i165, label %bb.bn, label %lean_del_object.exit

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_free_object(ptr noundef nonnull %.087) #12
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bm, %bb.bn
  %i.cq = tail call ptr @l_Lean_MVarId_isAssigned___at___00Lean_Meta_isAbstractedUnassignedMVar_spec__0___redArg(ptr noundef %i.bf, ptr noundef %2) ; 5 uses
  br i1 %.not.i144, label %bb.bo, label %lean_dec.exit106

bb.bo:                                            ; preds = %lean_del_object.exit
  %i.cr = load i32, ptr %i.bf, align 4, !tbaa !11 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bp, label %bb.bq, !prof !17

bb.bp:                                            ; preds = %bb.bo
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.bf, align 4, !tbaa !11
  br label %lean_dec.exit106

bb.bq:                                            ; preds = %bb.bo
  %.not.i110 = icmp eq i32 %i.cr, 0
  br i1 %.not.i110, label %lean_dec.exit106, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bf) #12
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %bb.br, %bb.bq, %bb.bp, %lean_del_object.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !15 ; 7 uses
  %.val = load i32, ptr %i.cq, align 8, !tbaa !11 ; 4 uses
  %i.cw = icmp eq i32 %.val, 1                    ; 3 uses
  %.pre173 = ptrtoint ptr %i.cv to i64            ; 2 uses
  %.pre175 = and i64 %.pre173, 1                  ; 2 uses
  br i1 %i.cw, label %lean_dec.exit104, label %bb.bs

bb.bs:                                            ; preds = %lean_dec.exit106
  %.not.i = icmp eq i64 %.pre175, 0
  br i1 %.not.i, label %bb.bt, label %lean_inc.exit

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i166 = load i32, ptr %i.cv, align 4, !tbaa !11 ; 3 uses
  %i.cx = icmp sgt i32 %.val.i.i166, 0
  br i1 %i.cx, label %bb.bu, label %bb.bv, !prof !17

bb.bu:                                            ; preds = %bb.bt
  %i.cy = add nuw i32 %.val.i.i166, 1
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !11
  br label %lean_inc.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i167 = icmp eq i32 %.val.i.i166, 0
  br i1 %.not.i.i167, label %lean_inc.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cz = atomicrmw sub ptr %i.cv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.da = icmp sgt i32 %.val, 1
  br i1 %i.da, label %bb.bx, label %bb.by, !prof !17

bb.bx:                                            ; preds = %lean_inc.exit
  %i.db = add nsw i32 %.val, -1
  store i32 %i.db, ptr %i.cq, align 8, !tbaa !11
  br label %lean_dec.exit104

bb.by:                                            ; preds = %lean_inc.exit
  %.not.i112 = icmp eq i32 %.val, 0
  br i1 %.not.i112, label %lean_dec.exit104, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cq) #12
  br label %lean_dec.exit104

lean_dec.exit104:                                 ; preds = %lean_dec.exit106, %bb.bx, %bb.by, %bb.bz
  %.090 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bz ], [ %i.cq, %lean_dec.exit106 ], [ inttoptr (i64 1 to ptr), %bb.bx ], [ inttoptr (i64 1 to ptr), %bb.by ] ; 4 uses
  %.not.i101 = icmp eq i64 %.pre175, 0
  br i1 %.not.i101, label %bb.ca, label %lean_dec.exit102

bb.ca:                                            ; preds = %lean_dec.exit104
  %i.dc = load i32, ptr %i.cv, align 4, !tbaa !11 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.cb, label %bb.cc, !prof !17

bb.cb:                                            ; preds = %bb.ca
  %i.de = add nsw i32 %i.dc, -1
  store i32 %i.de, ptr %i.cv, align 4, !tbaa !11
  br label %lean_dec.exit102

bb.cc:                                            ; preds = %bb.ca
  %.not.i114 = icmp eq i32 %i.dc, 0
  br i1 %.not.i114, label %lean_dec.exit102, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #12
  br label %lean_dec.exit102

lean_dec.exit102:                                 ; preds = %bb.cd, %bb.cc, %bb.cb, %lean_dec.exit104
  %i.df = and i64 %.pre173, 510
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %lean_dec.exit102
  %i.dh = and i64 %.pre, 1
  %.not.i99 = icmp eq i64 %i.dh, 0
  br i1 %.not.i99, label %bb.cf, label %lean_dec.exit100

bb.cf:                                            ; preds = %bb.ce
  %i.di = load i32, ptr %i.cd, align 512, !tbaa !11 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.cg, label %bb.ch, !prof !17

bb.cg:                                            ; preds = %bb.cf
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %i.cd, align 512, !tbaa !11
  br label %lean_dec.exit100

bb.ch:                                            ; preds = %bb.cf
  %.not.i116 = icmp eq i32 %i.di, 0
  br i1 %.not.i116, label %lean_dec.exit100, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #12
  br label %lean_dec.exit100

lean_dec.exit100:                                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce
  br i1 %i.cw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %lean_dec.exit100
  %i.dl = getelementptr inbounds nuw i8, ptr %.090, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dl, align 8, !tbaa !15
  br label %lean_dec.exit

bb.ck:                                            ; preds = %lean_dec.exit100
  %i.dm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.dn, align 8, !tbaa !15
  br label %lean_dec.exit

bb.cl:                                            ; preds = %lean_dec.exit102
  br i1 %i.cw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.do = getelementptr inbounds nuw i8, ptr %.090, i64 8
  store ptr %i.cd, ptr %i.do, align 8, !tbaa !15
  br label %lean_dec.exit

bb.cn:                                            ; preds = %bb.cl
  tail call void @lean_inc_heartbeat() #12
  %i.dp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.co, label %lean_alloc_ctor.exit

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.cn
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 1, ptr %i.dp, align 4, !tbaa !11
  store i32 65552, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.cd, ptr %i.ds, align 8, !tbaa !15
  br label %lean_dec.exit

bb.cp:                                            ; preds = %lean_dec.exit108
  %i.dt = and i64 %.pre, 1
  %.not.i97 = icmp eq i64 %i.dt, 0
  br i1 %.not.i97, label %bb.cq, label %lean_dec.exit98

bb.cq:                                            ; preds = %bb.cp
  %i.du = load i32, ptr %i.cd, align 4, !tbaa !11 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.cr, label %bb.cs, !prof !17

bb.cr:                                            ; preds = %bb.cq
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.cd, align 4, !tbaa !11
  br label %lean_dec.exit98

bb.cs:                                            ; preds = %bb.cq
  %.not.i118 = icmp eq i32 %i.du, 0
  br i1 %.not.i118, label %lean_dec.exit98, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #12
  br label %lean_dec.exit98

lean_dec.exit98:                                  ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i144, label %bb.cu, label %lean_dec.exit96

bb.cu:                                            ; preds = %lean_dec.exit98
  %i.dx = load i32, ptr %i.bf, align 4, !tbaa !11 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.cv, label %bb.cw, !prof !17

bb.cv:                                            ; preds = %bb.cu
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.bf, align 4, !tbaa !11
  br label %lean_dec.exit96

bb.cw:                                            ; preds = %bb.cu
  %.not.i120 = icmp eq i32 %i.dx, 0
  br i1 %.not.i120, label %lean_dec.exit96, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bf) #12
  br label %lean_dec.exit96

lean_dec.exit96:                                  ; preds = %bb.cx, %bb.cw, %bb.cv, %lean_dec.exit98
  br i1 %i.ce, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %lean_dec.exit96
  %i.ea = getelementptr inbounds nuw i8, ptr %.087, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ea, align 8, !tbaa !15
  br label %lean_dec.exit

bb.cz:                                            ; preds = %lean_dec.exit96
  tail call void @lean_inc_heartbeat() #12
  %i.eb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.da, label %lean_alloc_ctor.exit169

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit169:                          ; preds = %bb.cz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 1, ptr %i.eb, align 4, !tbaa !11
  store i32 65552, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ee, align 8, !tbaa !15
  br label %lean_dec.exit

bb.db:                                            ; preds = %lean_obj_tag.exit161
  br i1 %.not.i144, label %bb.dc, label %lean_dec.exit

bb.dc:                                            ; preds = %bb.db
  %i.ef = load i32, ptr %i.bf, align 4, !tbaa !11 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.dd, label %bb.de, !prof !17

bb.dd:                                            ; preds = %bb.dc
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %i.bf, align 4, !tbaa !11
  br label %lean_dec.exit

bb.de:                                            ; preds = %bb.dc
  %.not.i122 = icmp eq i32 %i.ef, 0
  br i1 %.not.i122, label %lean_dec.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bf) #12
  br label %lean_dec.exit

bb.dg:                                            ; preds = %lean_obj_tag.exit
  %i.ei = load i32, ptr %.084, align 4, !tbaa !11 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.dh, label %bb.di, !prof !17

bb.dh:                                            ; preds = %bb.dg
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %.084, align 4, !tbaa !11
  br label %lean_dec_ref.exit125

bb.di:                                            ; preds = %bb.dg
  %.not.i124 = icmp eq i32 %i.ei, 0
  br i1 %.not.i124, label %lean_dec_ref.exit125, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.084) #12
  br label %lean_dec_ref.exit125

lean_dec_ref.exit125:                             ; preds = %bb.dh, %bb.di, %bb.dj
  tail call void @lean_inc_heartbeat() #12
  %i.el = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.dk, label %lean_alloc_ctor.exit170

bb.dk:                                            ; preds = %lean_dec_ref.exit125
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit170:                          ; preds = %lean_dec_ref.exit125
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 1, ptr %i.el, align 4, !tbaa !11
  store i32 65552, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.eo, align 8, !tbaa !15
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.db, %bb.dd, %bb.de, %bb.df, %lean_alloc_ctor.exit169, %bb.cy, %bb.cj, %bb.ck, %bb.cm, %lean_alloc_ctor.exit, %lean_alloc_ctor.exit170
  %.6 = phi ptr [ %i.el, %lean_alloc_ctor.exit170 ], [ %i.eb, %lean_alloc_ctor.exit169 ], [ %i.dp, %lean_alloc_ctor.exit ], [ %i.dm, %bb.ck ], [ %.090, %bb.cj ], [ %.090, %bb.cm ], [ %.087, %bb.cy ], [ %i.bu, %bb.df ], [ %i.bu, %bb.de ], [ %i.bu, %bb.dd ], [ %i.bu, %bb.db ]
  ret ptr %.6
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lean_dec_ref_known(ptr noundef %0, i32 noundef range(i32 0, 15) %1) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !tbaa !11    ; 4 uses
  %i.a = icmp eq i32 %.val, 1
  br i1 %i.a, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %lean_dec.exit, %.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #12
end_hunk_0
begin_hunk_1_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0:bb.a

bb.cj:                                            ; preds = %lean_dec_ref.exit377
  %.val.i.i412 = load i32, ptr %i.fq, align 4, !tbaa !11 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i412, 0
  br i1 %i.ft, label %bb.ck, label %bb.cl, !prof !17

bb.ck:                                            ; preds = %bb.cj
  %i.fu = add nuw i32 %.val.i.i412, 1
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !11
  br label %lean_inc.exit289

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i413 = icmp eq i32 %.val.i.i412, 0
  br i1 %.not.i.i413, label %lean_inc.exit289, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fv = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit289

lean_inc.exit289:                                 ; preds = %bb.cm, %bb.cl, %bb.ck, %lean_dec_ref.exit377
  %.val.i.i415 = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.fw = icmp sgt i32 %.val.i.i415, 0
  br i1 %i.fw, label %bb.cn, label %bb.co, !prof !17

bb.cn:                                            ; preds = %lean_inc.exit289
  %i.fx = add nuw i32 %.val.i.i415, 1
  store i32 %i.fx, ptr %3, align 4, !tbaa !11
  br label %lean_inc_ref.exit417

bb.co:                                            ; preds = %lean_inc.exit289
  %.not.i.i416 = icmp eq i32 %.val.i.i415, 0
  br i1 %.not.i.i416, label %lean_inc_ref.exit417, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fy = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit417

lean_inc_ref.exit417:                             ; preds = %bb.cn, %bb.co, %bb.cp
  %i.fz = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %3, ptr noundef %i.fq, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12) #12 ; 14 uses
  %i.ga = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gb = and i64 %i.ga, 1
  %.not.i418 = icmp eq i64 %i.gb, 0               ; 3 uses
  br i1 %.not.i418, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %lean_inc_ref.exit417
  %i.gc = lshr i64 %i.ga, 1
  %i.gd = trunc i64 %i.gc to i32
  br label %lean_obj_tag.exit421

bb.cr:                                            ; preds = %lean_inc_ref.exit417
  %i.ge = getelementptr i8, ptr %i.fz, i64 4
  %.val.i420 = load i32, ptr %i.ge, align 4
  %i.gf = lshr i32 %.val.i420, 24
  br label %lean_obj_tag.exit421

lean_obj_tag.exit421:                             ; preds = %bb.cq, %bb.cr
  %.0.i419 = phi i32 [ %i.gd, %bb.cq ], [ %i.gf, %bb.cr ]
  %i.gg = icmp eq i32 %.0.i419, 0
  br i1 %i.gg, label %bb.cs, label %bb.gk

bb.cs:                                            ; preds = %lean_obj_tag.exit421
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !15 ; 19 uses
  %.val381 = load i32, ptr %i.fz, align 8, !tbaa !11
  %i.gj = icmp eq i32 %.val381, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.gi to i64               ; 7 uses
  br i1 %i.gj, label %lean_dec.exit316, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gk = and i64 %.pre, 1
  %.not.i286 = icmp eq i64 %i.gk, 0
  br i1 %.not.i286, label %bb.cu, label %lean_inc.exit287

bb.cu:                                            ; preds = %bb.ct
  %.val.i.i422 = load i32, ptr %i.gi, align 4, !tbaa !11 ; 3 uses
  %i.gl = icmp sgt i32 %.val.i.i422, 0
  br i1 %i.gl, label %bb.cv, label %bb.cw, !prof !17

bb.cv:                                            ; preds = %bb.cu
  %i.gm = add nuw i32 %.val.i.i422, 1
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !11
  br label %lean_inc.exit287

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i423 = icmp eq i32 %.val.i.i422, 0
  br i1 %.not.i.i423, label %lean_inc.exit287, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gn = atomicrmw sub ptr %i.gi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit287

lean_inc.exit287:                                 ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct
  br i1 %.not.i418, label %bb.cy, label %lean_dec.exit316

bb.cy:                                            ; preds = %lean_inc.exit287
  %i.go = load i32, ptr %i.fz, align 8, !tbaa !11 ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.cz, label %bb.da, !prof !17

bb.cz:                                            ; preds = %bb.cy
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.fz, align 8, !tbaa !11
  br label %lean_dec.exit316

bb.da:                                            ; preds = %bb.cy
  %.not.i332 = icmp eq i32 %i.go, 0
  br i1 %.not.i332, label %lean_dec.exit316, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fz) #12
  br label %lean_dec.exit316

lean_dec.exit316:                                 ; preds = %bb.cs, %lean_inc.exit287, %bb.cz, %bb.da, %bb.db
  %.0255 = phi ptr [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %lean_inc.exit287 ], [ inttoptr (i64 1 to ptr), %bb.cz ], [ inttoptr (i64 1 to ptr), %bb.da ], [ %i.fz, %bb.cs ] ; 3 uses
  %i.gr = and i64 %.pre, 510
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.dc, label %bb.fv

bb.dc:                                            ; preds = %lean_dec.exit316
  %i.gt = ptrtoint ptr %.0255 to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i425 = icmp eq i64 %i.gu, 0
  br i1 %.not.i425, label %bb.dd, label %lean_del_object.exit

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_free_object(ptr noundef nonnull %.0255) #12
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.dc, %bb.dd
  %i.gv = load i32, ptr %4, align 4, !tbaa !11    ; 3 uses
  %i.gw = icmp sgt i32 %i.gv, 1
  br i1 %i.gw, label %bb.de, label %bb.df, !prof !17

bb.de:                                            ; preds = %lean_del_object.exit
  %i.gx = add nsw i32 %i.gv, -1
  store i32 %i.gx, ptr %4, align 4, !tbaa !11
  br label %lean_dec_ref.exit367

bb.df:                                            ; preds = %lean_del_object.exit
  %.not.i366 = icmp eq i32 %i.gv, 0
  br i1 %.not.i366, label %lean_dec_ref.exit367, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #12
  br label %lean_dec_ref.exit367

lean_dec_ref.exit367:                             ; preds = %bb.de, %bb.df, %bb.dg
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !16
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.dh, label %bb.dt

bb.dh:                                            ; preds = %lean_dec_ref.exit367
  %i.hc = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.hd = icmp sgt i32 %i.hc, 1
  br i1 %i.hd, label %bb.di, label %bb.dj, !prof !17

bb.di:                                            ; preds = %bb.dh
  %i.he = add nsw i32 %i.hc, -1
  store i32 %i.he, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit365

bb.dj:                                            ; preds = %bb.dh
  %.not.i364 = icmp eq i32 %i.hc, 0
  br i1 %.not.i364, label %lean_dec_ref.exit365, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec_ref.exit365

lean_dec_ref.exit365:                             ; preds = %bb.di, %bb.dj, %bb.dk
  %i.hf = and i64 %i.fm, 1
  %.not.i313 = icmp eq i64 %i.hf, 0
  br i1 %.not.i313, label %bb.dl, label %lean_dec.exit314

bb.dl:                                            ; preds = %lean_dec_ref.exit365
  %i.hg = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.dm, label %bb.dn, !prof !17

bb.dm:                                            ; preds = %bb.dl
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit314

bb.dn:                                            ; preds = %bb.dl
  %.not.i334 = icmp eq i32 %i.hg, 0
  br i1 %.not.i334, label %lean_dec.exit314, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec.exit314

lean_dec.exit314:                                 ; preds = %bb.do, %bb.dn, %bb.dm, %lean_dec_ref.exit365
  %i.hj = and i64 %.pre, 1
  %.not.i311 = icmp eq i64 %i.hj, 0
  br i1 %.not.i311, label %bb.dp, label %bb.ce

bb.dp:                                            ; preds = %lean_dec.exit314
  %i.hk = load i32, ptr %i.gi, align 512, !tbaa !11 ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.dq, label %bb.dr, !prof !17

bb.dq:                                            ; preds = %bb.dp
  %i.hm = add nsw i32 %i.hk, -1
  store i32 %i.hm, ptr %i.gi, align 512, !tbaa !11
  br label %bb.ce

bb.dr:                                            ; preds = %bb.dp
  %.not.i336 = icmp eq i32 %i.hk, 0
  br i1 %.not.i336, label %bb.ce, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gi) #12
  br label %bb.ce

bb.dt:                                            ; preds = %lean_dec_ref.exit367
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.ho = load atomic i32, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__5_once seq_cst, align 4, !tbaa !19
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.du, label %bb.dv, !prof !17

bb.du:                                            ; preds = %bb.dt
  %i.hq = load ptr, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__5, align 8, !tbaa !15
  br label %lean_obj_once.exit427

bb.dv:                                            ; preds = %bb.dt
  %i.hr = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__5, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__5_once, ptr noundef nonnull @_init_l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__5) #12
  br label %lean_obj_once.exit427

lean_obj_once.exit427:                            ; preds = %bb.du, %bb.dv
  %.0.i426 = phi ptr [ %i.hq, %bb.du ], [ %i.hr, %bb.dv ]
  %i.hs = tail call zeroext i8 @l___private_Lean_Util_Trace_0__Lean_checkTraceOption_go(ptr noundef %i.hn, ptr noundef nonnull %i.gy, ptr noundef %.0.i426) #12
  %i.ht = icmp eq i8 %i.hs, 0
  br i1 %i.ht, label %bb.dw, label %bb.ei

bb.dw:                                            ; preds = %lean_obj_once.exit427
  %i.hu = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 1
  br i1 %i.hv, label %bb.dx, label %bb.dy, !prof !17

bb.dx:                                            ; preds = %bb.dw
  %i.hw = add nsw i32 %i.hu, -1
  store i32 %i.hw, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit363

bb.dy:                                            ; preds = %bb.dw
  %.not.i362 = icmp eq i32 %i.hu, 0
  br i1 %.not.i362, label %lean_dec_ref.exit363, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec_ref.exit363

lean_dec_ref.exit363:                             ; preds = %bb.dx, %bb.dy, %bb.dz
  %i.hx = and i64 %i.fm, 1
  %.not.i309 = icmp eq i64 %i.hx, 0
  br i1 %.not.i309, label %bb.ea, label %lean_dec.exit310

bb.ea:                                            ; preds = %lean_dec_ref.exit363
  %i.hy = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 1
  br i1 %i.hz, label %bb.eb, label %bb.ec, !prof !17

bb.eb:                                            ; preds = %bb.ea
  %i.ia = add nsw i32 %i.hy, -1
  store i32 %i.ia, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit310

bb.ec:                                            ; preds = %bb.ea
  %.not.i338 = icmp eq i32 %i.hy, 0
  br i1 %.not.i338, label %lean_dec.exit310, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec.exit310

lean_dec.exit310:                                 ; preds = %bb.ed, %bb.ec, %bb.eb, %lean_dec_ref.exit363
  %i.ib = and i64 %.pre, 1
  %.not.i307 = icmp eq i64 %i.ib, 0
  br i1 %.not.i307, label %bb.ee, label %bb.ce

bb.ee:                                            ; preds = %lean_dec.exit310
  %i.ic = load i32, ptr %i.gi, align 512, !tbaa !11 ; 3 uses
  %i.id = icmp sgt i32 %i.ic, 1
  br i1 %i.id, label %bb.ef, label %bb.eg, !prof !17

bb.ef:                                            ; preds = %bb.ee
  %i.ie = add nsw i32 %i.ic, -1
  store i32 %i.ie, ptr %i.gi, align 512, !tbaa !11
  br label %bb.ce

bb.eg:                                            ; preds = %bb.ee
  %.not.i340 = icmp eq i32 %i.ic, 0
  br i1 %.not.i340, label %bb.ce, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gi) #12
  br label %bb.ce

bb.ei:                                            ; preds = %lean_obj_once.exit427
  %i.if = load atomic i32, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__7_once seq_cst, align 4, !tbaa !19
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.ej, label %bb.ek, !prof !17

bb.ej:                                            ; preds = %bb.ei
  %i.ih = load ptr, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__7, align 8, !tbaa !15
  br label %lean_obj_once.exit429

bb.ek:                                            ; preds = %bb.ei
  %i.ii = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__7, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__7_once, ptr noundef nonnull @_init_l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__7) #12
  br label %lean_obj_once.exit429

lean_obj_once.exit429:                            ; preds = %bb.ej, %bb.ek
  %.0.i428 = phi ptr [ %i.ih, %bb.ej ], [ %i.ii, %bb.ek ]
  %i.ij = tail call ptr @l_Nat_reprFast(ptr noundef %2) #12
  tail call void @lean_inc_heartbeat() #12
  %i.ik = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.el, label %lean_alloc_ctor.exit430

bb.el:                                            ; preds = %lean_obj_once.exit429
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit430:                          ; preds = %lean_obj_once.exit429
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store i32 1, ptr %i.ik, align 4, !tbaa !11
  store i32 50397200, ptr %i.im, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.ij, ptr %i.in, align 8, !tbaa !15
  %i.io = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.ik) #12
  tail call void @lean_inc_heartbeat() #12
  %i.ip = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #12 ; 6 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.em, label %lean_alloc_ctor.exit431

bb.em:                                            ; preds = %lean_alloc_ctor.exit430
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit431:                          ; preds = %lean_alloc_ctor.exit430
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store i32 1, ptr %i.ip, align 4, !tbaa !11
  store i32 117571608, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %.0.i428, ptr %i.is, align 8, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store ptr %i.io, ptr %i.it, align 8, !tbaa !15
  %i.iu = load atomic i32, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__9_once seq_cst, align 4, !tbaa !19
  %i.iv = icmp eq i32 %i.iu, 1
  br i1 %i.iv, label %bb.en, label %bb.eo, !prof !17

bb.en:                                            ; preds = %lean_alloc_ctor.exit431
  %i.iw = load ptr, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__9, align 8, !tbaa !15
  br label %lean_obj_once.exit433

bb.eo:                                            ; preds = %lean_alloc_ctor.exit431
  %i.ix = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__9, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__9_once, ptr noundef nonnull @_init_l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__9) #12
  br label %lean_obj_once.exit433

lean_obj_once.exit433:                            ; preds = %bb.en, %bb.eo
  %.0.i432 = phi ptr [ %i.iw, %bb.en ], [ %i.ix, %bb.eo ]
  tail call void @lean_inc_heartbeat() #12
  %i.iy = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #12 ; 6 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.ep, label %lean_alloc_ctor.exit434

bb.ep:                                            ; preds = %lean_obj_once.exit433
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit434:                          ; preds = %lean_obj_once.exit433
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 1, ptr %i.iy, align 4, !tbaa !11
  store i32 117571608, ptr %i.ja, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %i.ip, ptr %i.jb, align 8, !tbaa !15
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %.0.i432, ptr %i.jc, align 8, !tbaa !15
  %i.jd = tail call ptr @l_Lean_indentExpr(ptr noundef nonnull %3) #12
  tail call void @lean_inc_heartbeat() #12
  %i.je = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #12 ; 6 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.eq, label %lean_alloc_ctor.exit435

bb.eq:                                            ; preds = %lean_alloc_ctor.exit434
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit435:                          ; preds = %lean_alloc_ctor.exit434
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 1, ptr %i.je, align 4, !tbaa !11
  store i32 117571608, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %i.iy, ptr %i.jh, align 8, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %i.jd, ptr %i.ji, align 8, !tbaa !15
  %i.jj = load atomic i32, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__11_once seq_cst, align 4, !tbaa !19
  %i.jk = icmp eq i32 %i.jj, 1
  br i1 %i.jk, label %bb.er, label %bb.es, !prof !17

bb.er:                                            ; preds = %lean_alloc_ctor.exit435
  %i.jl = load ptr, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__11, align 8, !tbaa !15
  br label %lean_obj_once.exit437

bb.es:                                            ; preds = %lean_alloc_ctor.exit435
  %i.jm = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__11, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__11_once, ptr noundef nonnull @_init_l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__11) #12
  br label %lean_obj_once.exit437

lean_obj_once.exit437:                            ; preds = %bb.er, %bb.es
  %.0.i436 = phi ptr [ %i.jl, %bb.er ], [ %i.jm, %bb.es ]
  tail call void @lean_inc_heartbeat() #12
  %i.jn = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #12 ; 6 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.et, label %lean_alloc_ctor.exit438

bb.et:                                            ; preds = %lean_obj_once.exit437
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit438:                          ; preds = %lean_obj_once.exit437
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  store i32 1, ptr %i.jn, align 4, !tbaa !11
  store i32 117571608, ptr %i.jp, align 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.je, ptr %i.jq, align 8, !tbaa !15
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr %.0.i436, ptr %i.jr, align 8, !tbaa !15
  br i1 %.not.i288, label %bb.eu, label %lean_inc.exit285

bb.eu:                                            ; preds = %lean_alloc_ctor.exit438
  %.val.i.i439 = load i32, ptr %i.fq, align 4, !tbaa !11 ; 3 uses
  %i.js = icmp sgt i32 %.val.i.i439, 0
  br i1 %i.js, label %bb.ev, label %bb.ew, !prof !17

bb.ev:                                            ; preds = %bb.eu
  %i.jt = add nuw i32 %.val.i.i439, 1
  store i32 %i.jt, ptr %i.fq, align 4, !tbaa !11
  br label %lean_inc.exit285

bb.ew:                                            ; preds = %bb.eu
  %.not.i.i440 = icmp eq i32 %.val.i.i439, 0
  br i1 %.not.i.i440, label %lean_inc.exit285, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ju = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit285

lean_inc.exit285:                                 ; preds = %bb.ex, %bb.ew, %bb.ev, %lean_alloc_ctor.exit438
  %i.jv = tail call ptr @l_Lean_indentExpr(ptr noundef %i.fq) #12
  tail call void @lean_inc_heartbeat() #12
  %i.jw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #12 ; 6 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.ey, label %lean_alloc_ctor.exit442

bb.ey:                                            ; preds = %lean_inc.exit285
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit442:                          ; preds = %lean_inc.exit285
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  store i32 1, ptr %i.jw, align 4, !tbaa !11
  store i32 117571608, ptr %i.jy, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr %i.jn, ptr %i.jz, align 8, !tbaa !15
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store ptr %i.jv, ptr %i.ka, align 8, !tbaa !15
  %i.kb = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__0(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__2___redArg___lam__0___closed__2_value, ptr noundef nonnull %i.jw, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12) ; 9 uses
  %i.kc = ptrtoint ptr %i.kb to i64               ; 2 uses
  %i.kd = and i64 %i.kc, 1
  %.not.i443 = icmp eq i64 %i.kd, 0               ; 2 uses
  br i1 %.not.i443, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %lean_alloc_ctor.exit442
  %i.ke = lshr i64 %i.kc, 1
  %i.kf = trunc i64 %i.ke to i32
  br label %lean_obj_tag.exit446

bb.fa:                                            ; preds = %lean_alloc_ctor.exit442
  %i.kg = getelementptr i8, ptr %i.kb, i64 4
  %.val.i445 = load i32, ptr %i.kg, align 4
  %i.kh = lshr i32 %.val.i445, 24
  br label %lean_obj_tag.exit446

lean_obj_tag.exit446:                             ; preds = %bb.ez, %bb.fa
  %.0.i444 = phi i32 [ %i.kf, %bb.ez ], [ %i.kh, %bb.fa ]
  %i.ki = icmp eq i32 %.0.i444, 0
  br i1 %i.ki, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %lean_obj_tag.exit446
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.kb, i32 noundef 1)
  %i.kj = and i64 %.pre, 1
  %.not.i305 = icmp eq i64 %i.kj, 0
  br i1 %.not.i305, label %bb.fc, label %bb.ce

bb.fc:                                            ; preds = %bb.fb
  %i.kk = load i32, ptr %i.gi, align 512, !tbaa !11 ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, 1
  br i1 %i.kl, label %bb.fd, label %bb.fe, !prof !17

bb.fd:                                            ; preds = %bb.fc
  %i.km = add nsw i32 %i.kk, -1
  store i32 %i.km, ptr %i.gi, align 512, !tbaa !11
  br label %bb.ce

bb.fe:                                            ; preds = %bb.fc
  %.not.i342 = icmp eq i32 %i.kk, 0
  br i1 %.not.i342, label %bb.ce, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gi) #12
  br label %bb.ce

bb.fg:                                            ; preds = %lean_obj_tag.exit446
  %i.kn = and i64 %.pre, 1
  %.not.i303 = icmp eq i64 %i.kn, 0
  br i1 %.not.i303, label %bb.fh, label %lean_dec.exit304

bb.fh:                                            ; preds = %bb.fg
  %i.ko = load i32, ptr %i.gi, align 512, !tbaa !11 ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.fi, label %bb.fj, !prof !17

bb.fi:                                            ; preds = %bb.fh
  %i.kq = add nsw i32 %i.ko, -1
  store i32 %i.kq, ptr %i.gi, align 512, !tbaa !11
  br label %lean_dec.exit304

bb.fj:                                            ; preds = %bb.fh
  %.not.i344 = icmp eq i32 %i.ko, 0
  br i1 %.not.i344, label %lean_dec.exit304, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gi) #12
  br label %lean_dec.exit304

lean_dec.exit304:                                 ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fg
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !15 ; 5 uses
  %.val380 = load i32, ptr %i.kb, align 8, !tbaa !11
  %i.kt = icmp eq i32 %.val380, 1
  br i1 %i.kt, label %lean_dec_ref.exit373, label %bb.fl

bb.fl:                                            ; preds = %lean_dec.exit304
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = and i64 %i.ku, 1
  %.not.i282 = icmp eq i64 %i.kv, 0
  br i1 %.not.i282, label %bb.fm, label %lean_inc.exit283

bb.fm:                                            ; preds = %bb.fl
  %.val.i.i447 = load i32, ptr %i.ks, align 4, !tbaa !11 ; 3 uses
  %i.kw = icmp sgt i32 %.val.i.i447, 0
  br i1 %i.kw, label %bb.fn, label %bb.fo, !prof !17

bb.fn:                                            ; preds = %bb.fm
  %i.kx = add nuw i32 %.val.i.i447, 1
  store i32 %i.kx, ptr %i.ks, align 4, !tbaa !11
  br label %lean_inc.exit283

bb.fo:                                            ; preds = %bb.fm
  %.not.i.i448 = icmp eq i32 %.val.i.i447, 0
  br i1 %.not.i.i448, label %lean_inc.exit283, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ky = atomicrmw sub ptr %i.ks, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit283

lean_inc.exit283:                                 ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fl
  br i1 %.not.i443, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %lean_inc.exit283
  %i.kz = load i32, ptr %i.kb, align 8, !tbaa !11 ; 3 uses
  %i.la = icmp sgt i32 %i.kz, 1
  br i1 %i.la, label %bb.fr, label %bb.fs, !prof !17

bb.fr:                                            ; preds = %bb.fq
  %i.lb = add nsw i32 %i.kz, -1
  store i32 %i.lb, ptr %i.kb, align 8, !tbaa !11
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fq
  %.not.i346 = icmp eq i32 %i.kz, 0
  br i1 %.not.i346, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kb) #12
  br label %bb.fu

bb.fu:                                            ; preds = %lean_inc.exit283, %bb.fr, %bb.fs, %bb.ft
  %i.lc = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec_ref.exit373.sink.split

bb.fv:                                            ; preds = %lean_dec.exit316
  %i.ld = and i64 %.pre, 1
  %.not.i299 = icmp eq i64 %i.ld, 0
  br i1 %.not.i299, label %bb.fw, label %lean_dec.exit300

bb.fw:                                            ; preds = %bb.fv
  %i.le = load i32, ptr %i.gi, align 4, !tbaa !11 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.fx, label %bb.fy, !prof !17

bb.fx:                                            ; preds = %bb.fw
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.gi, align 4, !tbaa !11
  br label %lean_dec.exit300

bb.fy:                                            ; preds = %bb.fw
  %.not.i348 = icmp eq i32 %i.le, 0
  br i1 %.not.i348, label %lean_dec.exit300, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gi) #12
  br label %lean_dec.exit300

lean_dec.exit300:                                 ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fv
  %i.lh = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.li = icmp sgt i32 %i.lh, 1
  br i1 %i.li, label %bb.ga, label %bb.gb, !prof !17

bb.ga:                                            ; preds = %lean_dec.exit300
  %i.lj = add nsw i32 %i.lh, -1
  store i32 %i.lj, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit361

bb.gb:                                            ; preds = %lean_dec.exit300
  %.not.i360 = icmp eq i32 %i.lh, 0
  br i1 %.not.i360, label %lean_dec_ref.exit361, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec_ref.exit361

lean_dec_ref.exit361:                             ; preds = %bb.ga, %bb.gb, %bb.gc
  %i.lk = and i64 %i.fm, 1
  %.not.i297 = icmp eq i64 %i.lk, 0
  br i1 %.not.i297, label %bb.gd, label %lean_dec.exit298

bb.gd:                                            ; preds = %lean_dec_ref.exit361
  %i.ll = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, 1
  br i1 %i.lm, label %bb.ge, label %bb.gf, !prof !17

bb.ge:                                            ; preds = %bb.gd
  %i.ln = add nsw i32 %i.ll, -1
  store i32 %i.ln, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit298

bb.gf:                                            ; preds = %bb.gd
  %.not.i350 = icmp eq i32 %i.ll, 0
  br i1 %.not.i350, label %lean_dec.exit298, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec.exit298

lean_dec.exit298:                                 ; preds = %bb.gg, %bb.gf, %bb.ge, %lean_dec_ref.exit361
  tail call void @lean_inc_heartbeat() #12
  %i.lo = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 6 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.gh, label %lean_alloc_ctor.exit450

bb.gh:                                            ; preds = %lean_dec.exit298
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit450:                          ; preds = %lean_dec.exit298
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 1, ptr %i.lo, align 4, !tbaa !11
  store i32 16842768, ptr %i.lq, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %4, ptr %i.lr, align 8, !tbaa !15
  br i1 %i.gj, label %lean_dec_ref.exit373.sink.split, label %bb.gi

bb.gi:                                            ; preds = %lean_alloc_ctor.exit450
  tail call void @lean_inc_heartbeat() #12
  %i.ls = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 4 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %bb.gj, label %lean_alloc_ctor.exit451

bb.gj:                                            ; preds = %bb.gi
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit451:                          ; preds = %bb.gi
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i32 1, ptr %i.ls, align 4, !tbaa !11
  store i32 65552, ptr %i.lu, align 4
  br label %lean_dec_ref.exit373.sink.split

bb.gk:                                            ; preds = %lean_obj_tag.exit421
  %i.lv = load i32, ptr %4, align 4, !tbaa !11    ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, 1
  br i1 %i.lw, label %bb.gl, label %bb.gm, !prof !17

bb.gl:                                            ; preds = %bb.gk
  %i.lx = add nsw i32 %i.lv, -1
  store i32 %i.lx, ptr %4, align 4, !tbaa !11
  br label %lean_dec_ref.exit359

bb.gm:                                            ; preds = %bb.gk
  %.not.i358 = icmp eq i32 %i.lv, 0
  br i1 %.not.i358, label %lean_dec_ref.exit359, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #12
  br label %lean_dec_ref.exit359

lean_dec_ref.exit359:                             ; preds = %bb.gl, %bb.gm, %bb.gn
  %i.ly = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.go, label %bb.gp, !prof !17

bb.go:                                            ; preds = %lean_dec_ref.exit359
  %i.ma = add nsw i32 %i.ly, -1
  store i32 %i.ma, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit357

bb.gp:                                            ; preds = %lean_dec_ref.exit359
  %.not.i356 = icmp eq i32 %i.ly, 0
  br i1 %.not.i356, label %lean_dec_ref.exit357, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec_ref.exit357

end_hunk_1
begin_hunk_2_@l_Lean_Meta_checkpointDefEq___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct_go_spec__3:bb.a
  %i.lx = add nsw i32 %i.lv, -1
  store i32 %i.lx, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit542

bb.hj:                                            ; preds = %bb.hh
  %.not.i598 = icmp eq i32 %i.lv, 0
  br i1 %.not.i598, label %lean_dec.exit542, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit542

lean_dec.exit542:                                 ; preds = %bb.hk, %bb.hj, %bb.hi, %lean_del_object.exit783
  %.val661 = load i32, ptr %i.lj, align 4, !tbaa !11 ; 4 uses
  %i.ly = icmp eq i32 %.val661, 1
  br i1 %i.ly, label %bb.hl, label %bb.hq

bb.hl:                                            ; preds = %lean_dec.exit542
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !15 ; 4 uses
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = and i64 %i.mb, 1
  %.not.i539 = icmp eq i64 %i.mc, 0
  br i1 %.not.i539, label %bb.hm, label %bb.hv

bb.hm:                                            ; preds = %bb.hl
  %i.md = load i32, ptr %i.ma, align 4, !tbaa !11 ; 3 uses
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %bb.hn, label %bb.ho, !prof !17

bb.hn:                                            ; preds = %bb.hm
  %i.mf = add nsw i32 %i.md, -1
  store i32 %i.mf, ptr %i.ma, align 4, !tbaa !11
  br label %bb.hv

bb.ho:                                            ; preds = %bb.hm
  %.not.i600 = icmp eq i32 %i.md, 0
  br i1 %.not.i600, label %bb.hv, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ma) #12
  br label %bb.hv

bb.hq:                                            ; preds = %lean_dec.exit542
  br i1 %.not.i778, label %bb.hr, label %bb.hw

bb.hr:                                            ; preds = %bb.hq
  %i.mg = icmp sgt i32 %.val661, 1
  br i1 %i.mg, label %bb.hs, label %bb.ht, !prof !17

bb.hs:                                            ; preds = %bb.hr
  %i.mh = add nsw i32 %.val661, -1
  store i32 %i.mh, ptr %i.lj, align 4, !tbaa !11
  br label %bb.hw

bb.ht:                                            ; preds = %bb.hr
  %.not.i602 = icmp eq i32 %.val661, 0
  br i1 %.not.i602, label %bb.hw, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lj) #12
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hl, %bb.hn, %bb.ho, %bb.hp
  store ptr inttoptr (i64 1 to ptr), ptr %i.lz, align 8, !tbaa !15
  br label %lean_dec.exit560

bb.hw:                                            ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  %i.mi = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.mj, align 8, !tbaa !15
  br label %lean_dec.exit560

bb.hx:                                            ; preds = %lean_obj_tag.exit781
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !15 ; 5 uses
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = and i64 %i.mm, 1
  %.not.i464 = icmp eq i64 %i.mn, 0
  br i1 %.not.i464, label %bb.hy, label %lean_inc.exit465

bb.hy:                                            ; preds = %bb.hx
  %.val.i.i784 = load i32, ptr %i.ml, align 4, !tbaa !11 ; 3 uses
  %i.mo = icmp sgt i32 %.val.i.i784, 0
  br i1 %i.mo, label %bb.hz, label %bb.ia, !prof !17

bb.hz:                                            ; preds = %bb.hy
  %i.mp = add nuw i32 %.val.i.i784, 1
  store i32 %i.mp, ptr %i.ml, align 4, !tbaa !11
  br label %lean_inc.exit465

bb.ia:                                            ; preds = %bb.hy
  %.not.i.i785 = icmp eq i32 %.val.i.i784, 0
  br i1 %.not.i.i785, label %lean_inc.exit465, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.mq = atomicrmw sub ptr %i.ml, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit465

lean_inc.exit465:                                 ; preds = %bb.ib, %bb.ia, %bb.hz, %bb.hx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.lj, i32 noundef 1)
  br label %bb.ca

bb.ic:                                            ; preds = %lean_dec.exit548
  %i.mr = tail call ptr @l_Lean_Meta_processPostponed(i8 noundef zeroext %10, i8 noundef zeroext 0, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) #12 ; 13 uses
  %i.ms = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mt = and i64 %i.ms, 1
  %.not.i787 = icmp eq i64 %i.mt, 0               ; 2 uses
  br i1 %.not.i787, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.mu = lshr i64 %i.ms, 1
  %i.mv = trunc i64 %i.mu to i32
  br label %lean_obj_tag.exit790

bb.ie:                                            ; preds = %bb.ic
  %i.mw = getelementptr i8, ptr %i.mr, i64 4
  %.val.i789 = load i32, ptr %i.mw, align 4
  %i.mx = lshr i32 %.val.i789, 24
  br label %lean_obj_tag.exit790

lean_obj_tag.exit790:                             ; preds = %bb.id, %bb.ie
  %.0.i788 = phi i32 [ %i.mv, %bb.id ], [ %i.mx, %bb.ie ]
  %i.my = icmp eq i32 %.0.i788, 0
  br i1 %i.my, label %bb.if, label %bb.lp

bb.if:                                            ; preds = %lean_obj_tag.exit790
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !15 ; 8 uses
  %.val660 = load i32, ptr %i.mr, align 8, !tbaa !11
  %i.nb = icmp eq i32 %.val660, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.na to i64               ; 3 uses
  br i1 %i.nb, label %lean_dec.exit536, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.nc = and i64 %.pre, 1
  %.not.i462 = icmp eq i64 %i.nc, 0
  br i1 %.not.i462, label %bb.ih, label %lean_inc.exit463

bb.ih:                                            ; preds = %bb.ig
  %.val.i.i791 = load i32, ptr %i.na, align 4, !tbaa !11 ; 3 uses
  %i.nd = icmp sgt i32 %.val.i.i791, 0
  br i1 %i.nd, label %bb.ii, label %bb.ij, !prof !17

bb.ii:                                            ; preds = %bb.ih
  %i.ne = add nuw i32 %.val.i.i791, 1
  store i32 %i.ne, ptr %i.na, align 4, !tbaa !11
  br label %lean_inc.exit463

bb.ij:                                            ; preds = %bb.ih
  %.not.i.i792 = icmp eq i32 %.val.i.i791, 0
  br i1 %.not.i.i792, label %lean_inc.exit463, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.nf = atomicrmw sub ptr %i.na, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit463

lean_inc.exit463:                                 ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ig
  br i1 %.not.i787, label %bb.il, label %lean_dec.exit536

bb.il:                                            ; preds = %lean_inc.exit463
  %i.ng = load i32, ptr %i.mr, align 8, !tbaa !11 ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, 1
  br i1 %i.nh, label %bb.im, label %bb.in, !prof !17

bb.im:                                            ; preds = %bb.il
  %i.ni = add nsw i32 %i.ng, -1
  store i32 %i.ni, ptr %i.mr, align 8, !tbaa !11
  br label %lean_dec.exit536

bb.in:                                            ; preds = %bb.il
  %.not.i604 = icmp eq i32 %i.ng, 0
  br i1 %.not.i604, label %lean_dec.exit536, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mr) #12
  br label %lean_dec.exit536

lean_dec.exit536:                                 ; preds = %bb.if, %lean_inc.exit463, %bb.im, %bb.in, %bb.io
  %.0412 = phi ptr [ inttoptr (i64 1 to ptr), %bb.io ], [ inttoptr (i64 1 to ptr), %lean_inc.exit463 ], [ inttoptr (i64 1 to ptr), %bb.im ], [ inttoptr (i64 1 to ptr), %bb.in ], [ %i.mr, %bb.if ] ; 3 uses
  %i.nj = and i64 %.pre, 510
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %bb.ip, label %bb.jx

bb.ip:                                            ; preds = %lean_dec.exit536
  %i.nl = ptrtoint ptr %.0412 to i64
  %i.nm = and i64 %i.nl, 1
  %.not.i794 = icmp eq i64 %i.nm, 0
  br i1 %.not.i794, label %bb.iq, label %lean_del_object.exit795

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_free_object(ptr noundef nonnull %.0412) #12
  br label %lean_del_object.exit795

lean_del_object.exit795:                          ; preds = %bb.ip, %bb.iq
  %i.nn = and i64 %.pre, 1
  %.not.i533 = icmp eq i64 %i.nn, 0
  br i1 %.not.i533, label %bb.ir, label %lean_dec.exit534

bb.ir:                                            ; preds = %lean_del_object.exit795
  %i.no = load i32, ptr %i.na, align 512, !tbaa !11 ; 3 uses
  %i.np = icmp sgt i32 %i.no, 1
  br i1 %i.np, label %bb.is, label %bb.it, !prof !17

bb.is:                                            ; preds = %bb.ir
  %i.nq = add nsw i32 %i.no, -1
  store i32 %i.nq, ptr %i.na, align 512, !tbaa !11
  br label %lean_dec.exit534

bb.it:                                            ; preds = %bb.ir
  %.not.i606 = icmp eq i32 %i.no, 0
  br i1 %.not.i606, label %lean_dec.exit534, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.na) #12
  br label %lean_dec.exit534

lean_dec.exit534:                                 ; preds = %bb.iu, %bb.it, %bb.is, %lean_del_object.exit795
  br i1 %.not.i476, label %bb.iv, label %lean_dec.exit532

bb.iv:                                            ; preds = %lean_dec.exit534
  %i.nr = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.ns = icmp sgt i32 %i.nr, 1
  br i1 %i.ns, label %bb.iw, label %bb.ix, !prof !17

bb.iw:                                            ; preds = %bb.iv
  %i.nt = add nsw i32 %i.nr, -1
  store i32 %i.nt, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit532

bb.ix:                                            ; preds = %bb.iv
  %.not.i608 = icmp eq i32 %i.nr, 0
  br i1 %.not.i608, label %lean_dec.exit532, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit532

lean_dec.exit532:                                 ; preds = %bb.iy, %bb.ix, %bb.iw, %lean_dec.exit534
  %i.nu = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %12, ptr noundef %14) #12 ; 9 uses
  %i.nv = ptrtoint ptr %i.nu to i64               ; 2 uses
  %i.nw = and i64 %i.nv, 1
  %.not.i796 = icmp eq i64 %i.nw, 0               ; 2 uses
  br i1 %.not.i796, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %lean_dec.exit532
  %i.nx = lshr i64 %i.nv, 1
  %i.ny = trunc i64 %i.nx to i32
  br label %lean_obj_tag.exit799

bb.ja:                                            ; preds = %lean_dec.exit532
  %i.nz = getelementptr i8, ptr %i.nu, i64 4
  %.val.i798 = load i32, ptr %i.nz, align 4
  %i.oa = lshr i32 %.val.i798, 24
  br label %lean_obj_tag.exit799

lean_obj_tag.exit799:                             ; preds = %bb.iz, %bb.ja
  %.0.i797 = phi i32 [ %i.ny, %bb.iz ], [ %i.oa, %bb.ja ]
  %i.ob = icmp eq i32 %.0.i797, 0
  br i1 %i.ob, label %bb.jb, label %bb.js

bb.jb:                                            ; preds = %lean_obj_tag.exit799
  %i.oc = ptrtoint ptr %.0391 to i64
  %i.od = and i64 %i.oc, 1
  %.not.i800 = icmp eq i64 %i.od, 0
  br i1 %.not.i800, label %bb.jc, label %lean_del_object.exit801

bb.jc:                                            ; preds = %bb.jb
  tail call void @lean_free_object(ptr noundef nonnull %.0391) #12
  br label %lean_del_object.exit801

lean_del_object.exit801:                          ; preds = %bb.jb, %bb.jc
  %i.oe = ptrtoint ptr %i.j to i64
  %i.of = and i64 %i.oe, 1
  %.not.i529 = icmp eq i64 %i.of, 0
  br i1 %.not.i529, label %bb.jd, label %lean_dec.exit530

bb.jd:                                            ; preds = %lean_del_object.exit801
  %i.og = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.oh = icmp sgt i32 %i.og, 1
  br i1 %i.oh, label %bb.je, label %bb.jf, !prof !17

bb.je:                                            ; preds = %bb.jd
  %i.oi = add nsw i32 %i.og, -1
  store i32 %i.oi, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit530

bb.jf:                                            ; preds = %bb.jd
  %.not.i610 = icmp eq i32 %i.og, 0
  br i1 %.not.i610, label %lean_dec.exit530, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit530

lean_dec.exit530:                                 ; preds = %bb.jg, %bb.jf, %bb.je, %lean_del_object.exit801
  %.val659 = load i32, ptr %i.nu, align 4, !tbaa !11 ; 4 uses
  %i.oj = icmp eq i32 %.val659, 1
  br i1 %i.oj, label %bb.jh, label %bb.jm

bb.jh:                                            ; preds = %lean_dec.exit530
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !15 ; 4 uses
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = and i64 %i.om, 1
  %.not.i527 = icmp eq i64 %i.on, 0
  br i1 %.not.i527, label %bb.ji, label %bb.jr

bb.ji:                                            ; preds = %bb.jh
  %i.oo = load i32, ptr %i.ol, align 4, !tbaa !11 ; 3 uses
  %i.op = icmp sgt i32 %i.oo, 1
  br i1 %i.op, label %bb.jj, label %bb.jk, !prof !17

bb.jj:                                            ; preds = %bb.ji
  %i.oq = add nsw i32 %i.oo, -1
  store i32 %i.oq, ptr %i.ol, align 4, !tbaa !11
  br label %bb.jr

bb.jk:                                            ; preds = %bb.ji
  %.not.i612 = icmp eq i32 %i.oo, 0
  br i1 %.not.i612, label %bb.jr, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ol) #12
  br label %bb.jr

bb.jm:                                            ; preds = %lean_dec.exit530
  br i1 %.not.i796, label %bb.jn, label %lean_dec.exit528

bb.jn:                                            ; preds = %bb.jm
  %i.or = icmp sgt i32 %.val659, 1
  br i1 %i.or, label %bb.jo, label %bb.jp, !prof !17

bb.jo:                                            ; preds = %bb.jn
  %i.os = add nsw i32 %.val659, -1
  store i32 %i.os, ptr %i.nu, align 4, !tbaa !11
  br label %lean_dec.exit528

bb.jp:                                            ; preds = %bb.jn
  %.not.i614 = icmp eq i32 %.val659, 0
  br i1 %.not.i614, label %lean_dec.exit528, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nu) #12
  br label %lean_dec.exit528

bb.jr:                                            ; preds = %bb.jh, %bb.jj, %bb.jk, %bb.jl
  store ptr inttoptr (i64 1 to ptr), ptr %i.ok, align 8, !tbaa !15
  br label %lean_dec.exit560

lean_dec.exit528:                                 ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jm
  %i.ot = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ou, align 8, !tbaa !15
  br label %lean_dec.exit560

bb.js:                                            ; preds = %lean_obj_tag.exit799
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !15 ; 5 uses
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = and i64 %i.ox, 1
  %.not.i460 = icmp eq i64 %i.oy, 0
  br i1 %.not.i460, label %bb.jt, label %lean_inc.exit461

bb.jt:                                            ; preds = %bb.js
  %.val.i.i802 = load i32, ptr %i.ow, align 4, !tbaa !11 ; 3 uses
  %i.oz = icmp sgt i32 %.val.i.i802, 0
  br i1 %i.oz, label %bb.ju, label %bb.jv, !prof !17

bb.ju:                                            ; preds = %bb.jt
  %i.pa = add nuw i32 %.val.i.i802, 1
  store i32 %i.pa, ptr %i.ow, align 4, !tbaa !11
  br label %lean_inc.exit461

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i803 = icmp eq i32 %.val.i.i802, 0
  br i1 %.not.i.i803, label %lean_inc.exit461, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.pb = atomicrmw sub ptr %i.ow, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit461

lean_inc.exit461:                                 ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.js
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.nu, i32 noundef 1)
  br label %bb.ca

bb.jx:                                            ; preds = %lean_dec.exit536
  %i.pc = ptrtoint ptr %.0391 to i64
  %i.pd = and i64 %i.pc, 1
  %.not.i805 = icmp eq i64 %i.pd, 0
  br i1 %.not.i805, label %bb.jy, label %lean_del_object.exit806

bb.jy:                                            ; preds = %bb.jx
  tail call void @lean_free_object(ptr noundef nonnull %.0391) #12
  br label %lean_del_object.exit806

lean_del_object.exit806:                          ; preds = %bb.jx, %bb.jy
  %i.pe = ptrtoint ptr %i.j to i64
  %i.pf = and i64 %i.pe, 1
  %.not.i523 = icmp eq i64 %i.pf, 0
  br i1 %.not.i523, label %bb.jz, label %lean_dec.exit524

bb.jz:                                            ; preds = %lean_del_object.exit806
  %i.pg = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.ph = icmp sgt i32 %i.pg, 1
  br i1 %i.ph, label %bb.ka, label %bb.kb, !prof !17

end_hunk_2
begin_hunk_3_@l_Lean_Meta_isEtaUnassignedMVar:bb.a

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec_ref_known.exit161

lean_dec_ref_known.exit161:                       ; preds = %lean_dec.exit.i156, %bb.y, %bb.z, %bb.aa
  %i.ap = tail call ptr @l_Lean_MVarId_isReadOnlyOrSyntheticOpaque(ptr noundef %i.aa, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12 ; 12 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %.not.i162 = icmp eq i64 %i.ar, 0               ; 2 uses
  br i1 %.not.i162, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %lean_dec_ref_known.exit161
  %i.as = lshr i64 %i.aq, 1
  %i.at = trunc i64 %i.as to i32
  br label %lean_obj_tag.exit165

bb.ac:                                            ; preds = %lean_dec_ref_known.exit161
  %i.au = getelementptr i8, ptr %i.ap, i64 4
  %.val.i164 = load i32, ptr %i.au, align 4
  %i.av = lshr i32 %.val.i164, 24
  br label %lean_obj_tag.exit165

lean_obj_tag.exit165:                             ; preds = %bb.ab, %bb.ac
  %.0.i163 = phi i32 [ %i.at, %bb.ab ], [ %i.av, %bb.ac ]
  %i.aw = icmp eq i32 %.0.i163, 0
  br i1 %i.aw, label %bb.ad, label %bb.cb

bb.ad:                                            ; preds = %lean_obj_tag.exit165
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 12 uses
  %.val140 = load i32, ptr %i.ap, align 8, !tbaa !11
  %i.az = icmp eq i32 %.val140, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.ay to i64               ; 4 uses
  br i1 %i.az, label %lean_dec.exit120, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ba = and i64 %.pre, 1
  %.not.i98 = icmp eq i64 %i.ba, 0
  br i1 %.not.i98, label %bb.af, label %lean_inc.exit99

bb.af:                                            ; preds = %bb.ae
  %.val.i.i166 = load i32, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i166, 0
  br i1 %i.bb, label %bb.ag, label %bb.ah, !prof !17

bb.ag:                                            ; preds = %bb.af
  %i.bc = add nuw i32 %.val.i.i166, 1
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !11
  br label %lean_inc.exit99

bb.ah:                                            ; preds = %bb.af
  %.not.i.i167 = icmp eq i32 %.val.i.i166, 0
  br i1 %.not.i.i167, label %lean_inc.exit99, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bd = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit99

lean_inc.exit99:                                  ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  br i1 %.not.i162, label %bb.aj, label %lean_dec.exit120

bb.aj:                                            ; preds = %lean_inc.exit99
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !11 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.ak, label %bb.al, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.ap, align 8, !tbaa !11
  br label %lean_dec.exit120

bb.al:                                            ; preds = %bb.aj
  %.not.i121 = icmp eq i32 %i.be, 0
  br i1 %.not.i121, label %lean_dec.exit120, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #12
  br label %lean_dec.exit120

lean_dec.exit120:                                 ; preds = %bb.ad, %lean_inc.exit99, %bb.ak, %bb.al, %bb.am
  %.097 = phi ptr [ inttoptr (i64 1 to ptr), %bb.am ], [ inttoptr (i64 1 to ptr), %lean_inc.exit99 ], [ inttoptr (i64 1 to ptr), %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.al ], [ %i.ap, %bb.ad ] ; 4 uses
  %i.bh = and i64 %.pre, 510
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.an, label %bb.bp

bb.an:                                            ; preds = %lean_dec.exit120
  %i.bj = ptrtoint ptr %.097 to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i169 = icmp eq i64 %i.bk, 0
  br i1 %.not.i169, label %bb.ao, label %lean_del_object.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_free_object(ptr noundef nonnull %.097) #12
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.an, %bb.ao
  %i.bl = tail call ptr @l_Lean_MVarId_isAssigned___at___00Lean_Meta_isAbstractedUnassignedMVar_spec__0___redArg(ptr noundef %i.aa, ptr noundef %2) ; 5 uses
  br i1 %.not.i148, label %bb.ap, label %lean_dec.exit118

bb.ap:                                            ; preds = %lean_del_object.exit
  %i.bm = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.aq, label %bb.ar, !prof !17

bb.aq:                                            ; preds = %bb.ap
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.aa, align 4, !tbaa !11
  br label %lean_dec.exit118

bb.ar:                                            ; preds = %bb.ap
  %.not.i122 = icmp eq i32 %i.bm, 0
  br i1 %.not.i122, label %lean_dec.exit118, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #12
  br label %lean_dec.exit118

lean_dec.exit118:                                 ; preds = %bb.as, %bb.ar, %bb.aq, %lean_del_object.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 7 uses
  %.val = load i32, ptr %i.bl, align 8, !tbaa !11 ; 4 uses
  %i.br = icmp eq i32 %.val, 1                    ; 3 uses
  %.pre175 = ptrtoint ptr %i.bq to i64            ; 2 uses
  %.pre177 = and i64 %.pre175, 1                  ; 2 uses
  br i1 %i.br, label %lean_dec.exit116, label %bb.at

bb.at:                                            ; preds = %lean_dec.exit118
  %.not.i = icmp eq i64 %.pre177, 0
  br i1 %.not.i, label %bb.au, label %lean_inc.exit

bb.au:                                            ; preds = %bb.at
  %.val.i.i170 = load i32, ptr %i.bq, align 4, !tbaa !11 ; 3 uses
  %i.bs = icmp sgt i32 %.val.i.i170, 0
  br i1 %i.bs, label %bb.av, label %bb.aw, !prof !17

bb.av:                                            ; preds = %bb.au
  %i.bt = add nuw i32 %.val.i.i170, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !11
  br label %lean_inc.exit

bb.aw:                                            ; preds = %bb.au
  %.not.i.i171 = icmp eq i32 %.val.i.i170, 0
  br i1 %.not.i.i171, label %lean_inc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bu = atomicrmw sub ptr %i.bq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.at, %bb.av, %bb.aw, %bb.ax
  %i.bv = icmp sgt i32 %.val, 1
  br i1 %i.bv, label %bb.ay, label %bb.az, !prof !17

bb.ay:                                            ; preds = %lean_inc.exit
  %i.bw = add nsw i32 %.val, -1
  store i32 %i.bw, ptr %i.bl, align 8, !tbaa !11
  br label %lean_dec.exit116

bb.az:                                            ; preds = %lean_inc.exit
  %.not.i124 = icmp eq i32 %.val, 0
  br i1 %.not.i124, label %lean_dec.exit116, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #12
  br label %lean_dec.exit116

lean_dec.exit116:                                 ; preds = %lean_dec.exit118, %bb.ay, %bb.az, %bb.ba
  %.095 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ba ], [ %i.bl, %lean_dec.exit118 ], [ inttoptr (i64 1 to ptr), %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.az ] ; 4 uses
  %.not.i113 = icmp eq i64 %.pre177, 0
  br i1 %.not.i113, label %bb.bb, label %lean_dec.exit114

bb.bb:                                            ; preds = %lean_dec.exit116
  %i.bx = load i32, ptr %i.bq, align 4, !tbaa !11 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.bc, label %bb.bd, !prof !17

bb.bc:                                            ; preds = %bb.bb
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %i.bq, align 4, !tbaa !11
  br label %lean_dec.exit114

bb.bd:                                            ; preds = %bb.bb
  %.not.i126 = icmp eq i32 %i.bx, 0
  br i1 %.not.i126, label %lean_dec.exit114, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #12
  br label %lean_dec.exit114

lean_dec.exit114:                                 ; preds = %bb.be, %bb.bd, %bb.bc, %lean_dec.exit116
  %i.ca = and i64 %.pre175, 510
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %lean_dec.exit114
  %i.cc = and i64 %.pre, 1
  %.not.i111 = icmp eq i64 %i.cc, 0
  br i1 %.not.i111, label %bb.bg, label %lean_dec.exit112

bb.bg:                                            ; preds = %bb.bf
  %i.cd = load i32, ptr %i.ay, align 512, !tbaa !11 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.bh, label %bb.bi, !prof !17

bb.bh:                                            ; preds = %bb.bg
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.ay, align 512, !tbaa !11
  br label %lean_dec.exit112

bb.bi:                                            ; preds = %bb.bg
  %.not.i128 = icmp eq i32 %i.cd, 0
  br i1 %.not.i128, label %lean_dec.exit112, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #12
  br label %lean_dec.exit112

lean_dec.exit112:                                 ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  br i1 %i.br, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %lean_dec.exit112
  %i.cg = getelementptr inbounds nuw i8, ptr %.095, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.cg, align 8, !tbaa !15
  br label %lean_dec.exit106

bb.bl:                                            ; preds = %lean_dec.exit112
  %i.ch = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ci, align 8, !tbaa !15
  br label %lean_dec.exit106

bb.bm:                                            ; preds = %lean_dec.exit114
  br i1 %i.br, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.cj = getelementptr inbounds nuw i8, ptr %.095, i64 8
  store ptr %i.ay, ptr %i.cj, align 8, !tbaa !15
  br label %lean_dec.exit106

bb.bo:                                            ; preds = %bb.bm
  %i.ck = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ay, ptr %i.cl, align 8, !tbaa !15
  br label %lean_dec.exit106

bb.bp:                                            ; preds = %lean_dec.exit120
  %i.cm = and i64 %.pre, 1
  %.not.i109 = icmp eq i64 %i.cm, 0
  br i1 %.not.i109, label %bb.bq, label %lean_dec.exit110

bb.bq:                                            ; preds = %bb.bp
  %i.cn = load i32, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.br, label %bb.bs, !prof !17

bb.br:                                            ; preds = %bb.bq
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.ay, align 4, !tbaa !11
  br label %lean_dec.exit110

bb.bs:                                            ; preds = %bb.bq
  %.not.i130 = icmp eq i32 %i.cn, 0
  br i1 %.not.i130, label %lean_dec.exit110, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #12
  br label %lean_dec.exit110

lean_dec.exit110:                                 ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  br i1 %.not.i148, label %bb.bu, label %lean_dec.exit108

bb.bu:                                            ; preds = %lean_dec.exit110
  %i.cq = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.bv, label %bb.bw, !prof !17

bb.bv:                                            ; preds = %bb.bu
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.aa, align 4, !tbaa !11
  br label %lean_dec.exit108

bb.bw:                                            ; preds = %bb.bu
  %.not.i132 = icmp eq i32 %i.cq, 0
  br i1 %.not.i132, label %lean_dec.exit108, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #12
  br label %lean_dec.exit108

lean_dec.exit108:                                 ; preds = %bb.bx, %bb.bw, %bb.bv, %lean_dec.exit110
  br i1 %i.az, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %lean_dec.exit108
  %i.ct = getelementptr inbounds nuw i8, ptr %.097, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ct, align 8, !tbaa !15
  br label %lean_dec.exit106

bb.bz:                                            ; preds = %lean_dec.exit108
  tail call void @lean_inc_heartbeat() #12
  %i.cu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ca, label %lean_alloc_ctor.exit

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bz
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 1, ptr %i.cu, align 4, !tbaa !11
  store i32 65552, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cx, align 8, !tbaa !15
  br label %lean_dec.exit106

bb.cb:                                            ; preds = %lean_obj_tag.exit165
  br i1 %.not.i148, label %bb.cc, label %lean_dec.exit106

bb.cc:                                            ; preds = %bb.cb
  %i.cy = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.cd, label %bb.ce, !prof !17

bb.cd:                                            ; preds = %bb.cc
  %i.da = add nsw i32 %i.cy, -1
  store i32 %i.da, ptr %i.aa, align 4, !tbaa !11
  br label %lean_dec.exit106

bb.ce:                                            ; preds = %bb.cc
  %.not.i134 = icmp eq i32 %i.cy, 0
  br i1 %.not.i134, label %lean_dec.exit106, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #12
  br label %lean_dec.exit106

bb.cg:                                            ; preds = %lean_obj_tag.exit147
  %i.db = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.ch, label %bb.ci, !prof !17

bb.ch:                                            ; preds = %bb.cg
  %i.dd = add nsw i32 %i.db, -1
  store i32 %i.dd, ptr %i.i, align 4, !tbaa !11
  br label %lean_dec.exit

bb.ci:                                            ; preds = %bb.cg
  %.not.i136 = icmp eq i32 %i.db, 0
  br i1 %.not.i136, label %lean_dec.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec.exit

bb.ck:                                            ; preds = %lean_obj_tag.exit
  %i.de = load i32, ptr %i.a, align 4, !tbaa !11  ; 3 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.cl, label %bb.cm, !prof !17

bb.cl:                                            ; preds = %bb.ck
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.a, align 4, !tbaa !11
  br label %lean_dec.exit

bb.cm:                                            ; preds = %bb.ck
  %.not.i138 = icmp eq i32 %i.de, 0
  br i1 %.not.i138, label %lean_dec.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit147.thread, %lean_obj_tag.exit.thread, %bb.cj, %bb.ci, %bb.ch, %bb.cl, %bb.cm, %bb.cn
  tail call void @lean_inc_heartbeat() #12
  %i.dh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.co, label %lean_alloc_ctor.exit173

bb.co:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit173:                          ; preds = %lean_dec.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 1, ptr %i.dh, align 4, !tbaa !11
  store i32 65552, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dk, align 8, !tbaa !15
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.by, %lean_alloc_ctor.exit, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %lean_alloc_ctor.exit173
  %.7 = phi ptr [ %i.dh, %lean_alloc_ctor.exit173 ], [ %i.ap, %bb.cb ], [ %i.cu, %lean_alloc_ctor.exit ], [ %i.ck, %bb.bo ], [ %i.ch, %bb.bl ], [ %.095, %bb.bk ], [ %.095, %bb.bn ], [ %.097, %bb.by ], [ %i.ap, %bb.cf ], [ %i.ap, %bb.ce ], [ %i.ap, %bb.cd ]
  ret ptr %.7
}

declare ptr @l_Lean_Expr_etaExpanded_x3f(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_isEtaUnassignedMVar___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_isEtaUnassignedMVar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_checkTypesAndAssign___lam__1:bb.a
  br i1 %i.xb, label %bb.oh, label %bb.oi, !prof !17

bb.oh:                                            ; preds = %bb.og
  %i.xc = add nuw i32 %.val.i.i2527, 1
  store i32 %i.xc, ptr %i.ai, align 4, !tbaa !11
  br label %lean_inc.exit1996

bb.oi:                                            ; preds = %bb.og
  %.not.i.i2528 = icmp eq i32 %.val.i.i2527, 0
  br i1 %.not.i.i2528, label %lean_inc.exit1996, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.xd = atomicrmw sub ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1996

lean_inc.exit1996:                                ; preds = %bb.oj, %bb.oi, %bb.oh, %lean_inc.exit1998
  %i.xe = tail call ptr @lean_is_expr_def_eq(ptr noundef %i.ai, ptr noundef %i.bv, ptr noundef nonnull %.01924, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) ; 8 uses
  %i.xf = ptrtoint ptr %i.xe to i64               ; 2 uses
  %i.xg = and i64 %i.xf, 1
  %.not.i2530 = icmp eq i64 %i.xg, 0
  br i1 %.not.i2530, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %lean_inc.exit1996
  %i.xh = lshr i64 %i.xf, 1
  %i.xi = trunc i64 %i.xh to i32
  br label %lean_obj_tag.exit2533

bb.ol:                                            ; preds = %lean_inc.exit1996
  %i.xj = getelementptr i8, ptr %i.xe, i64 4
  %.val.i2532 = load i32, ptr %i.xj, align 4
  %i.xk = lshr i32 %.val.i2532, 24
  br label %lean_obj_tag.exit2533

lean_obj_tag.exit2533:                            ; preds = %bb.ok, %bb.ol
  %.0.i2531 = phi i32 [ %i.xi, %bb.ok ], [ %i.xk, %bb.ol ]
  %i.xl = icmp eq i32 %.0.i2531, 0
  br i1 %i.xl, label %bb.om, label %bb.si

bb.om:                                            ; preds = %lean_obj_tag.exit2533
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !15 ; 15 uses
  %i.xo = ptrtoint ptr %i.xn to i64               ; 3 uses
  %i.xp = and i64 %i.xo, 1
  %.not.i1993 = icmp eq i64 %i.xp, 0              ; 3 uses
  br i1 %.not.i1993, label %bb.on, label %lean_inc.exit1994.thread

bb.on:                                            ; preds = %bb.om
  %.val.i.i2534 = load i32, ptr %i.xn, align 4, !tbaa !11 ; 3 uses
  %i.xq = icmp sgt i32 %.val.i.i2534, 0
  br i1 %i.xq, label %bb.oo, label %bb.op, !prof !17

bb.oo:                                            ; preds = %bb.on
  %i.xr = add nuw i32 %.val.i.i2534, 1
  store i32 %i.xr, ptr %i.xn, align 4, !tbaa !11
  br label %lean_inc.exit1994

bb.op:                                            ; preds = %bb.on
  %.not.i.i2535 = icmp eq i32 %.val.i.i2534, 0
  br i1 %.not.i.i2535, label %lean_inc.exit1994, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.xs = atomicrmw sub ptr %i.xn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1994

lean_inc.exit1994:                                ; preds = %bb.oq, %bb.op, %bb.oo
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.xe, i32 noundef 1)
  %i.xt = and i64 %i.xo, 510
  %i.xu = icmp eq i64 %i.xt, 0
  br i1 %i.xu, label %bb.or, label %bb.rf

lean_inc.exit1994.thread:                         ; preds = %bb.om
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.xe, i32 noundef 1)
  %i.xv = and i64 %i.xo, 510
  %i.xw = icmp eq i64 %i.xv, 0
  br i1 %i.xw, label %bb.or, label %lean_dec.exit2097

bb.or:                                            ; preds = %lean_inc.exit1994.thread, %lean_inc.exit1994
  %i.xx = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.xy = icmp sgt i32 %i.xx, 1
  br i1 %i.xy, label %bb.os, label %bb.ot, !prof !17

bb.os:                                            ; preds = %bb.or
  %i.xz = add nsw i32 %i.xx, -1
  store i32 %i.xz, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit2300

bb.ot:                                            ; preds = %bb.or
  %.not.i2299 = icmp eq i32 %i.xx, 0
  br i1 %.not.i2299, label %lean_dec_ref.exit2300, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit2300

lean_dec_ref.exit2300:                            ; preds = %bb.os, %bb.ot, %bb.ou
  %i.ya = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.yb = icmp sgt i32 %i.ya, 1
  br i1 %i.yb, label %bb.ov, label %bb.ow, !prof !17

bb.ov:                                            ; preds = %lean_dec_ref.exit2300
  %i.yc = add nsw i32 %i.ya, -1
  store i32 %i.yc, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit2298

bb.ow:                                            ; preds = %lean_dec_ref.exit2300
  %.not.i2297 = icmp eq i32 %i.ya, 0
  br i1 %.not.i2297, label %lean_dec_ref.exit2298, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit2298

lean_dec_ref.exit2298:                            ; preds = %bb.ov, %bb.ow, %bb.ox
  %i.yd = tail call ptr @l_Lean_isDiagnosticsEnabled___redArg(ptr noundef nonnull %7) #12 ; 12 uses
  %i.ye = ptrtoint ptr %i.yd to i64               ; 2 uses
  %i.yf = and i64 %i.ye, 1
  %.not.i2537 = icmp eq i64 %i.yf, 0              ; 2 uses
  br i1 %.not.i2537, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %lean_dec_ref.exit2298
  %i.yg = lshr i64 %i.ye, 1
  %i.yh = trunc i64 %i.yg to i32
  br label %lean_obj_tag.exit2540

bb.oz:                                            ; preds = %lean_dec_ref.exit2298
  %i.yi = getelementptr i8, ptr %i.yd, i64 4
  %.val.i2539 = load i32, ptr %i.yi, align 4
  %i.yj = lshr i32 %.val.i2539, 24
  br label %lean_obj_tag.exit2540

lean_obj_tag.exit2540:                            ; preds = %bb.oy, %bb.oz
  %.0.i2538 = phi i32 [ %i.yh, %bb.oy ], [ %i.yj, %bb.oz ]
  %i.yk = icmp eq i32 %.0.i2538, 0
  br i1 %i.yk, label %bb.pa, label %bb.qp

bb.pa:                                            ; preds = %lean_obj_tag.exit2540
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !15 ; 10 uses
  %.val2349 = load i32, ptr %i.yd, align 8, !tbaa !11
  %i.yn = icmp eq i32 %.val2349, 1                ; 2 uses
  %.pre = ptrtoint ptr %i.ym to i64               ; 5 uses
  br i1 %i.yn, label %lean_dec.exit2115, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.yo = and i64 %.pre, 1
  %.not.i1991 = icmp eq i64 %i.yo, 0
  br i1 %.not.i1991, label %bb.pc, label %lean_inc.exit1992

bb.pc:                                            ; preds = %bb.pb
  %.val.i.i2541 = load i32, ptr %i.ym, align 4, !tbaa !11 ; 3 uses
  %i.yp = icmp sgt i32 %.val.i.i2541, 0
  br i1 %i.yp, label %bb.pd, label %bb.pe, !prof !17

bb.pd:                                            ; preds = %bb.pc
  %i.yq = add nuw i32 %.val.i.i2541, 1
  store i32 %i.yq, ptr %i.ym, align 4, !tbaa !11
  br label %lean_inc.exit1992

bb.pe:                                            ; preds = %bb.pc
  %.not.i.i2542 = icmp eq i32 %.val.i.i2541, 0
  br i1 %.not.i.i2542, label %lean_inc.exit1992, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.yr = atomicrmw sub ptr %i.ym, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1992

lean_inc.exit1992:                                ; preds = %bb.pf, %bb.pe, %bb.pd, %bb.pb
  br i1 %.not.i2537, label %bb.pg, label %lean_dec.exit2115

bb.pg:                                            ; preds = %lean_inc.exit1992
  %i.ys = load i32, ptr %i.yd, align 8, !tbaa !11 ; 3 uses
  %i.yt = icmp sgt i32 %i.ys, 1
  br i1 %i.yt, label %bb.ph, label %bb.pi, !prof !17

bb.ph:                                            ; preds = %bb.pg
  %i.yu = add nsw i32 %i.ys, -1
  store i32 %i.yu, ptr %i.yd, align 8, !tbaa !11
  br label %lean_dec.exit2115

bb.pi:                                            ; preds = %bb.pg
  %.not.i2195 = icmp eq i32 %i.ys, 0
  br i1 %.not.i2195, label %lean_dec.exit2115, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.yd) #12
  br label %lean_dec.exit2115

lean_dec.exit2115:                                ; preds = %bb.pa, %lean_inc.exit1992, %bb.ph, %bb.pi, %bb.pj
  %.01573 = phi ptr [ inttoptr (i64 1 to ptr), %bb.pj ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1992 ], [ inttoptr (i64 1 to ptr), %bb.ph ], [ inttoptr (i64 1 to ptr), %bb.pi ], [ %i.yd, %bb.pa ] ; 4 uses
  %i.yv = lshr i64 %.pre, 1
  %i.yw = and i64 %.pre, 510
  %i.yx = icmp eq i64 %i.yw, 0
  br i1 %i.yx, label %bb.pk, label %bb.qc

bb.pk:                                            ; preds = %lean_dec.exit2115
  %i.yy = and i64 %.pre, 1
  %.not.i2112 = icmp eq i64 %i.yy, 0
  br i1 %.not.i2112, label %bb.pl, label %lean_dec.exit2113

bb.pl:                                            ; preds = %bb.pk
  %i.yz = load i32, ptr %i.ym, align 512, !tbaa !11 ; 3 uses
  %i.za = icmp sgt i32 %i.yz, 1
  br i1 %i.za, label %bb.pm, label %bb.pn, !prof !17

bb.pm:                                            ; preds = %bb.pl
  %i.zb = add nsw i32 %i.yz, -1
  store i32 %i.zb, ptr %i.ym, align 512, !tbaa !11
  br label %lean_dec.exit2113

bb.pn:                                            ; preds = %bb.pl
  %.not.i2197 = icmp eq i32 %i.yz, 0
  br i1 %.not.i2197, label %lean_dec.exit2113, label %bb.po

bb.po:                                            ; preds = %bb.pn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ym) #12
  br label %lean_dec.exit2113

lean_dec.exit2113:                                ; preds = %bb.po, %bb.pn, %bb.pm, %bb.pk
  %i.zc = load i32, ptr %.01924, align 4, !tbaa !11 ; 3 uses
  %i.zd = icmp sgt i32 %i.zc, 1
  br i1 %i.zd, label %bb.pp, label %bb.pq, !prof !17

bb.pp:                                            ; preds = %lean_dec.exit2113
  %i.ze = add nsw i32 %i.zc, -1
  store i32 %i.ze, ptr %.01924, align 4, !tbaa !11
  br label %lean_dec_ref.exit2296

bb.pq:                                            ; preds = %lean_dec.exit2113
  %.not.i2295 = icmp eq i32 %i.zc, 0
  br i1 %.not.i2295, label %lean_dec_ref.exit2296, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01924) #12
  br label %lean_dec_ref.exit2296

lean_dec_ref.exit2296:                            ; preds = %bb.pp, %bb.pq, %bb.pr
  br i1 %.not.i2049, label %bb.ps, label %lean_dec.exit2111

bb.ps:                                            ; preds = %lean_dec_ref.exit2296
  %i.zf = load i32, ptr %i.bv, align 4, !tbaa !11 ; 3 uses
  %i.zg = icmp sgt i32 %i.zf, 1
  br i1 %i.zg, label %bb.pt, label %bb.pu, !prof !17

bb.pt:                                            ; preds = %bb.ps
  %i.zh = add nsw i32 %i.zf, -1
  store i32 %i.zh, ptr %i.bv, align 4, !tbaa !11
  br label %lean_dec.exit2111

bb.pu:                                            ; preds = %bb.ps
  %.not.i2199 = icmp eq i32 %i.zf, 0
  br i1 %.not.i2199, label %lean_dec.exit2111, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #12
  br label %lean_dec.exit2111

lean_dec.exit2111:                                ; preds = %bb.pv, %bb.pu, %bb.pt, %lean_dec_ref.exit2296
  br i1 %.not.i2055, label %bb.pw, label %lean_dec.exit2109

bb.pw:                                            ; preds = %lean_dec.exit2111
  %i.zi = load i32, ptr %i.ai, align 4, !tbaa !11 ; 3 uses
  %i.zj = icmp sgt i32 %i.zi, 1
  br i1 %i.zj, label %bb.px, label %bb.py, !prof !17

bb.px:                                            ; preds = %bb.pw
  %i.zk = add nsw i32 %i.zi, -1
  store i32 %i.zk, ptr %i.ai, align 4, !tbaa !11
  br label %lean_dec.exit2109

bb.py:                                            ; preds = %bb.pw
  %.not.i2201 = icmp eq i32 %i.zi, 0
  br i1 %.not.i2201, label %lean_dec.exit2109, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #12
  br label %lean_dec.exit2109

lean_dec.exit2109:                                ; preds = %bb.pz, %bb.py, %bb.px, %lean_dec.exit2111
  br i1 %i.yn, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %lean_dec.exit2109
  %i.zl = getelementptr inbounds nuw i8, ptr %.01573, i64 8
  store ptr %i.xn, ptr %i.zl, align 8, !tbaa !15
  br label %lean_dec.exit2073

bb.qb:                                            ; preds = %lean_dec.exit2109
  %i.zm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  store ptr %i.xn, ptr %i.zn, align 8, !tbaa !15
  br label %lean_dec.exit2073

bb.qc:                                            ; preds = %lean_dec.exit2115
  %i.zo = ptrtoint ptr %.01573 to i64
  %i.zp = and i64 %i.zo, 1
  %.not.i2544 = icmp eq i64 %i.zp, 0
  br i1 %.not.i2544, label %bb.qd, label %lean_del_object.exit

bb.qd:                                            ; preds = %bb.qc
  tail call void @lean_free_object(ptr noundef nonnull %.01573) #12
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.qc, %bb.qd
  %i.zq = tail call ptr @l_Lean_Meta_Context_config(ptr noundef nonnull %.01924) #12 ; 4 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 17
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !16  ; 2 uses
  %i.zt = load i32, ptr %i.zq, align 4, !tbaa !11 ; 3 uses
  %i.zu = icmp sgt i32 %i.zt, 1
  br i1 %i.zu, label %bb.qe, label %bb.qf, !prof !17

bb.qe:                                            ; preds = %lean_del_object.exit
  %i.zv = add nsw i32 %i.zt, -1
  store i32 %i.zv, ptr %i.zq, align 4, !tbaa !11
  br label %lean_dec_ref.exit2294

bb.qf:                                            ; preds = %lean_del_object.exit
  %.not.i2293 = icmp eq i32 %i.zt, 0
  br i1 %.not.i2293, label %lean_dec_ref.exit2294, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.zq) #12
  br label %lean_dec_ref.exit2294

lean_dec_ref.exit2294:                            ; preds = %bb.qe, %bb.qf, %bb.qg
  %i.zw = tail call zeroext i8 @l_Lean_Meta_TransparencyMode_lt(i8 noundef zeroext %i.zs, i8 noundef zeroext 1) #12
  %i.zx = icmp eq i8 %i.zw, 0
  br i1 %.not.i1993, label %bb.qh, label %lean_dec.exit2107

bb.qh:                                            ; preds = %lean_dec_ref.exit2294
  %i.zy = load i32, ptr %i.xn, align 4, !tbaa !11 ; 3 uses
  %i.zz = icmp sgt i32 %i.zy, 1
  br i1 %i.zz, label %bb.qi, label %bb.qj, !prof !17

bb.qi:                                            ; preds = %bb.qh
  %i.aaa = add nsw i32 %i.zy, -1
  store i32 %i.aaa, ptr %i.xn, align 4, !tbaa !11
  br label %lean_dec.exit2107

bb.qj:                                            ; preds = %bb.qh
  %.not.i2203 = icmp eq i32 %i.zy, 0
  br i1 %.not.i2203, label %lean_dec.exit2107, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xn) #12
  br label %lean_dec.exit2107

lean_dec.exit2107:                                ; preds = %bb.qk, %bb.qj, %bb.qi, %lean_dec_ref.exit2294
  %i.aab = and i64 %.pre, 1
  %.not.i2104 = icmp eq i64 %i.aab, 0
  br i1 %.not.i2104, label %bb.ql, label %bb.hu

bb.ql:                                            ; preds = %lean_dec.exit2107
  %i.aac = load i32, ptr %i.ym, align 4, !tbaa !11 ; 3 uses
  %i.aad = icmp sgt i32 %i.aac, 1
  br i1 %i.aad, label %bb.qm, label %bb.qn, !prof !17

bb.qm:                                            ; preds = %bb.ql
  %i.aae = add nsw i32 %i.aac, -1
  store i32 %i.aae, ptr %i.ym, align 4, !tbaa !11
  br label %bb.hu

bb.qn:                                            ; preds = %bb.ql
  %.not.i2205 = icmp eq i32 %i.aac, 0
  br i1 %.not.i2205, label %bb.hu, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ym) #12
  br label %bb.hu

bb.qp:                                            ; preds = %lean_obj_tag.exit2540
  br i1 %.not.i1993, label %bb.qq, label %lean_dec.exit2103

bb.qq:                                            ; preds = %bb.qp
  %i.aaf = load i32, ptr %i.xn, align 4, !tbaa !11 ; 3 uses
  %i.aag = icmp sgt i32 %i.aaf, 1
  br i1 %i.aag, label %bb.qr, label %bb.qs, !prof !17

bb.qr:                                            ; preds = %bb.qq
  %i.aah = add nsw i32 %i.aaf, -1
  store i32 %i.aah, ptr %i.xn, align 4, !tbaa !11
  br label %lean_dec.exit2103

bb.qs:                                            ; preds = %bb.qq
  %.not.i2207 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i2207, label %lean_dec.exit2103, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xn) #12
  br label %lean_dec.exit2103

lean_dec.exit2103:                                ; preds = %bb.qt, %bb.qs, %bb.qr, %bb.qp
  %i.aai = load i32, ptr %.01924, align 4, !tbaa !11 ; 3 uses
  %i.aaj = icmp sgt i32 %i.aai, 1
  br i1 %i.aaj, label %bb.qu, label %bb.qv, !prof !17

bb.qu:                                            ; preds = %lean_dec.exit2103
  %i.aak = add nsw i32 %i.aai, -1
  store i32 %i.aak, ptr %.01924, align 4, !tbaa !11
  br label %lean_dec_ref.exit2292

bb.qv:                                            ; preds = %lean_dec.exit2103
  %.not.i2291 = icmp eq i32 %i.aai, 0
  br i1 %.not.i2291, label %lean_dec_ref.exit2292, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01924) #12
  br label %lean_dec_ref.exit2292

end_hunk_4
begin_hunk_5_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_mkLambdaFVarsWithLetDeps_addLetDeps_spec__0___boxed:bb.a
  store i32 %i.f, ptr %11, align 4, !tbaa !11
  br label %lean_dec.exit23

bb.d:                                             ; preds = %bb.b
  %.not.i24 = icmp eq i32 %i.d, 0
  br i1 %.not.i24, label %lean_dec.exit23, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #12
  br label %lean_dec.exit23

lean_dec.exit23:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %10, align 4, !tbaa !11    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_dec.exit23
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %10, align 4, !tbaa !11
  br label %lean_dec_ref.exit36

bb.g:                                             ; preds = %lean_dec.exit23
  %.not.i35 = icmp eq i32 %i.g, 0
  br i1 %.not.i35, label %lean_dec_ref.exit36, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #12
  br label %lean_dec_ref.exit36

lean_dec_ref.exit36:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %9 to i64
  %i.k = and i64 %i.j, 1
  %.not.i20 = icmp eq i64 %i.k, 0
  br i1 %.not.i20, label %bb.i, label %lean_dec.exit21

bb.i:                                             ; preds = %lean_dec_ref.exit36
  %i.l = load i32, ptr %9, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %9, align 4, !tbaa !11
  br label %lean_dec.exit21

bb.k:                                             ; preds = %bb.i
  %.not.i25 = icmp eq i32 %i.l, 0
  br i1 %.not.i25, label %lean_dec.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #12
  br label %lean_dec.exit21

lean_dec.exit21:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit36
  %i.o = load i32, ptr %8, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %lean_dec.exit21
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %8, align 4, !tbaa !11
  br label %lean_dec_ref.exit34

bb.n:                                             ; preds = %lean_dec.exit21
  %.not.i33 = icmp eq i32 %i.o, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #12
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %lean_dec_ref.exit34
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit32

bb.q:                                             ; preds = %lean_dec_ref.exit34
  %.not.i31 = icmp eq i32 %i.r, 0
  br i1 %.not.i31, label %lean_dec_ref.exit32, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit32

lean_dec_ref.exit32:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.u = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.s, label %bb.t, !prof !17

bb.s:                                             ; preds = %lean_dec_ref.exit32
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit30

bb.t:                                             ; preds = %lean_dec_ref.exit32
  %.not.i29 = icmp eq i32 %i.u, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.s, %bb.t, %bb.u
  %i.x = ptrtoint ptr %0 to i64
  %i.y = and i64 %i.x, 1
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.v, label %lean_dec.exit

bb.v:                                             ; preds = %lean_dec_ref.exit30
  %i.z = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.w, label %bb.x, !prof !17

bb.w:                                             ; preds = %bb.v
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.x:                                             ; preds = %bb.v
  %.not.i27 = icmp eq i32 %i.z, 0
  br i1 %.not.i27, label %lean_dec.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.y, %bb.x, %bb.w, %lean_dec_ref.exit30
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_mkLambdaFVarsWithLetDeps(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_mkLambdaFVarsWithLetDeps_hasLetDeclsInBetween___redArg(ptr noundef %0, ptr noundef %2) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 13 uses
  %.val235 = load i32, ptr %i.a, align 8, !tbaa !11
  %i.d = icmp eq i32 %.val235, 1                  ; 3 uses
  %.pre = ptrtoint ptr %i.c to i64                ; 6 uses
  br i1 %i.d, label %lean_dec.exit209, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.pre, 1
  %.not.i189 = icmp eq i64 %i.e, 0
  br i1 %.not.i189, label %bb.c, label %lean_inc.exit190

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i, 1
  store i32 %i.g, ptr %i.c, align 4, !tbaa !11
  br label %lean_inc.exit190

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit190, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit190

lean_inc.exit190:                                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.i = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !17

bb.g:                                             ; preds = %lean_inc.exit190
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  br label %lean_dec.exit209

bb.h:                                             ; preds = %lean_inc.exit190
  %.not.i210 = icmp eq i32 %i.i, 0
  br i1 %.not.i210, label %lean_dec.exit209, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #12
  br label %lean_dec.exit209

lean_dec.exit209:                                 ; preds = %bb.a, %bb.g, %bb.h, %bb.i
  %.0167 = phi ptr [ inttoptr (i64 1 to ptr), %bb.i ], [ %i.a, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.g ], [ inttoptr (i64 1 to ptr), %bb.h ] ; 10 uses
  %i.l = lshr i64 %.pre, 1
  %i.m = and i64 %.pre, 510
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.at

bb.j:                                             ; preds = %lean_dec.exit209
  %i.o = and i64 %.pre, 1
  %.not.i206 = icmp eq i64 %i.o, 0
  br i1 %.not.i206, label %bb.k, label %lean_dec.exit207

bb.k:                                             ; preds = %bb.j
  %i.p = load i32, ptr %i.c, align 512, !tbaa !11 ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.l, label %bb.m, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.c, align 512, !tbaa !11
  br label %lean_dec.exit207

bb.m:                                             ; preds = %bb.k
  %.not.i211 = icmp eq i32 %i.p, 0
  br i1 %.not.i211, label %lean_dec.exit207, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #12
  br label %lean_dec.exit207

lean_dec.exit207:                                 ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.s = tail call ptr @l_Lean_Meta_mkLambdaFVars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12 ; 14 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %.not.i236 = icmp eq i64 %i.u, 0                ; 3 uses
  br i1 %.not.i236, label %bb.p, label %bb.o

bb.o:                                             ; preds = %lean_dec.exit207
  %i.v = lshr i64 %i.t, 1
  %i.w = trunc i64 %i.v to i32
  br label %lean_obj_tag.exit

bb.p:                                             ; preds = %lean_dec.exit207
  %i.x = getelementptr i8, ptr %i.s, i64 4
  %.val.i = load i32, ptr %i.x, align 4
  %i.y = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.o, %bb.p
  %.0.i = phi i32 [ %i.w, %bb.o ], [ %i.y, %bb.p ]
  %i.z = icmp eq i32 %.0.i, 0
  br i1 %i.z, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %lean_obj_tag.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 5 uses
  %.val234 = load i32, ptr %i.s, align 8, !tbaa !11
  %i.ac = icmp eq i32 %.val234, 1                 ; 2 uses
  br i1 %i.ac, label %lean_dec.exit205, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i187 = icmp eq i64 %i.ae, 0
  br i1 %.not.i187, label %bb.s, label %lean_inc.exit188

bb.s:                                             ; preds = %bb.r
  %.val.i.i237 = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i237, 0
  br i1 %i.af, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.ag = add nuw i32 %.val.i.i237, 1
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !11
  br label %lean_inc.exit188

bb.u:                                             ; preds = %bb.s
  %.not.i.i238 = icmp eq i32 %.val.i.i237, 0
  br i1 %.not.i.i238, label %lean_inc.exit188, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = atomicrmw sub ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit188

lean_inc.exit188:                                 ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  br i1 %.not.i236, label %bb.w, label %lean_dec.exit205

bb.w:                                             ; preds = %lean_inc.exit188
  %i.ai = load i32, ptr %i.s, align 8, !tbaa !11  ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.x, label %bb.y, !prof !17

bb.x:                                             ; preds = %bb.w
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.s, align 8, !tbaa !11
  br label %lean_dec.exit205

bb.y:                                             ; preds = %bb.w
  %.not.i213 = icmp eq i32 %i.ai, 0
  br i1 %.not.i213, label %lean_dec.exit205, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #12
  br label %lean_dec.exit205

lean_dec.exit205:                                 ; preds = %lean_inc.exit188, %bb.x, %bb.y, %bb.z, %bb.q
  %.0178 = phi ptr [ %i.s, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %bb.y ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 1 to ptr), %lean_inc.exit188 ]
  br i1 %i.d, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %lean_dec.exit205
  %i.al = getelementptr inbounds nuw i8, ptr %.0167, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 16777215
  %i.ao = or disjoint i32 %i.an, 16777216
  store i32 %i.ao, ptr %i.al, align 4
  br label %bb.ad

bb.ab:                                            ; preds = %lean_dec.exit205
  tail call void @lean_inc_heartbeat() #12
  %i.ap = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.ac, label %lean_alloc_ctor.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ab
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 1, ptr %i.ap, align 4, !tbaa !11
  store i32 16842768, ptr %i.ar, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %lean_alloc_ctor.exit, %bb.aa
  %.sink308 = phi ptr [ %i.ap, %lean_alloc_ctor.exit ], [ %.0167, %bb.aa ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sink308, i64 8
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !15
  br i1 %i.ac, label %lean_dec.exit203.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_inc_heartbeat() #12
  %i.at = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.af, label %lean_dec.exit203.sink.split.sink.split

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

bb.ag:                                            ; preds = %lean_obj_tag.exit
  %i.av = ptrtoint ptr %.0167 to i64
  %i.aw = and i64 %i.av, 1
  %.not.i241 = icmp eq i64 %i.aw, 0
  br i1 %.not.i241, label %bb.ah, label %lean_del_object.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_free_object(ptr noundef nonnull %.0167) #12
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ag, %bb.ah
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 5 uses
  %.val233 = load i32, ptr %i.s, align 8, !tbaa !11
  %i.az = icmp eq i32 %.val233, 1
  br i1 %i.az, label %lean_dec.exit203, label %bb.ai

bb.ai:                                            ; preds = %lean_del_object.exit
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = and i64 %i.ba, 1
  %.not.i185 = icmp eq i64 %i.bb, 0
  br i1 %.not.i185, label %bb.aj, label %lean_inc.exit186

bb.aj:                                            ; preds = %bb.ai
  %.val.i.i242 = load i32, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.bc = icmp sgt i32 %.val.i.i242, 0
  br i1 %i.bc, label %bb.ak, label %bb.al, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.bd = add nuw i32 %.val.i.i242, 1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !11
  br label %lean_inc.exit186

bb.al:                                            ; preds = %bb.aj
  %.not.i.i243 = icmp eq i32 %.val.i.i242, 0
  br i1 %.not.i.i243, label %lean_inc.exit186, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.be = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit186

lean_inc.exit186:                                 ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  br i1 %.not.i236, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %lean_inc.exit186
  %i.bf = load i32, ptr %i.s, align 8, !tbaa !11  ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ao, label %bb.ap, !prof !17

bb.ao:                                            ; preds = %bb.an
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.s, align 8, !tbaa !11
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %.not.i215 = icmp eq i32 %i.bf, 0
  br i1 %.not.i215, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #12
  br label %bb.ar

bb.ar:                                            ; preds = %lean_inc.exit186, %bb.ao, %bb.ap, %bb.aq
  tail call void @lean_inc_heartbeat() #12
  %i.bi = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.as, label %lean_dec.exit203.sink.split.sink.split

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable
end_hunk_5
begin_hunk_6_@l_Lean_Meta_checkpointDefEq___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_processAssignmentFOApprox_loop_spec__0:bb.a

lean_inc.exit441:                                 ; preds = %bb.em, %bb.el, %bb.ek, %bb.ei
  %.val.i669 = load i32, ptr %i.hn, align 8, !tbaa !11 ; 4 uses
  %i.ic = icmp eq i32 %.val.i669, 1
  br i1 %i.ic, label %.preheader.i671, label %bb.er

.preheader.i671:                                  ; preds = %lean_inc.exit441
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !15 ; 4 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = and i64 %i.ie, 1
  %.not.i.i673 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i673, label %bb.en, label %lean_dec.exit.i674

bb.en:                                            ; preds = %.preheader.i671
  %i.ig = load i32, ptr %i.id, align 4, !tbaa !11 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.eo, label %bb.ep, !prof !17

bb.eo:                                            ; preds = %bb.en
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.id, align 4, !tbaa !11
  br label %lean_dec.exit.i674

bb.ep:                                            ; preds = %bb.en
  %.not.i7.i678 = icmp eq i32 %i.ig, 0
  br i1 %.not.i7.i678, label %lean_dec.exit.i674, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.id) #12
  br label %lean_dec.exit.i674

lean_dec.exit.i674:                               ; preds = %bb.eq, %bb.ep, %bb.eo, %.preheader.i671
  tail call void @lean_free_object(ptr noundef nonnull %i.hn) #12
  br label %lean_dec_ref_known.exit679

bb.er:                                            ; preds = %lean_inc.exit441
  %i.ij = icmp sgt i32 %.val.i669, 1
  br i1 %i.ij, label %bb.es, label %bb.et, !prof !17

bb.es:                                            ; preds = %bb.er
  %i.ik = add nsw i32 %.val.i669, -1
  store i32 %i.ik, ptr %i.hn, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit679

bb.et:                                            ; preds = %bb.er
  %.not.i8.i670 = icmp eq i32 %.val.i669, 0
  br i1 %.not.i8.i670, label %lean_dec_ref_known.exit679, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hn) #12
  br label %lean_dec_ref_known.exit679

lean_dec_ref_known.exit679:                       ; preds = %lean_dec.exit.i674, %bb.es, %bb.et, %bb.eu
  %i.il = and i64 %i.hx, 510
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.ev, label %bb.gc

bb.ev:                                            ; preds = %lean_dec_ref_known.exit679
  br i1 %.not.i442, label %bb.ew, label %lean_dec.exit508

bb.ew:                                            ; preds = %bb.ev
  %i.in = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.io = icmp sgt i32 %i.in, 1
  br i1 %i.io, label %bb.ex, label %bb.ey, !prof !17

bb.ex:                                            ; preds = %bb.ew
  %i.ip = add nsw i32 %i.in, -1
  store i32 %i.ip, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit508

bb.ey:                                            ; preds = %bb.ew
  %.not.i544 = icmp eq i32 %i.in, 0
  br i1 %.not.i544, label %lean_dec.exit508, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit508

lean_dec.exit508:                                 ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %i.iq = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %5, ptr noundef %7) #12 ; 9 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.is = and i64 %i.ir, 1
  %.not.i680 = icmp eq i64 %i.is, 0               ; 2 uses
  br i1 %.not.i680, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %lean_dec.exit508
  %i.it = lshr i64 %i.ir, 1
  %i.iu = trunc i64 %i.it to i32
  br label %lean_obj_tag.exit683

bb.fb:                                            ; preds = %lean_dec.exit508
  %i.iv = getelementptr i8, ptr %i.iq, i64 4
  %.val.i682 = load i32, ptr %i.iv, align 4
  %i.iw = lshr i32 %.val.i682, 24
  br label %lean_obj_tag.exit683

lean_obj_tag.exit683:                             ; preds = %bb.fa, %bb.fb
  %.0.i681 = phi i32 [ %i.iu, %bb.fa ], [ %i.iw, %bb.fb ]
  %i.ix = icmp eq i32 %.0.i681, 0
  br i1 %i.ix, label %bb.fc, label %bb.ft

bb.fc:                                            ; preds = %lean_obj_tag.exit683
  %i.iy = ptrtoint ptr %.0363 to i64
  %i.iz = and i64 %i.iy, 1
  %.not.i684 = icmp eq i64 %i.iz, 0
  br i1 %.not.i684, label %bb.fd, label %lean_del_object.exit685

bb.fd:                                            ; preds = %bb.fc
  tail call void @lean_free_object(ptr noundef nonnull %.0363) #12
  br label %lean_del_object.exit685

lean_del_object.exit685:                          ; preds = %bb.fc, %bb.fd
  %i.ja = ptrtoint ptr %i.j to i64
  %i.jb = and i64 %i.ja, 1
  %.not.i505 = icmp eq i64 %i.jb, 0
  br i1 %.not.i505, label %bb.fe, label %lean_dec.exit506

bb.fe:                                            ; preds = %lean_del_object.exit685
  %i.jc = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.ff, label %bb.fg, !prof !17

bb.ff:                                            ; preds = %bb.fe
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit506

bb.fg:                                            ; preds = %bb.fe
  %.not.i546 = icmp eq i32 %i.jc, 0
  br i1 %.not.i546, label %lean_dec.exit506, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit506

lean_dec.exit506:                                 ; preds = %bb.fh, %bb.fg, %bb.ff, %lean_del_object.exit685
  %.val602 = load i32, ptr %i.iq, align 4, !tbaa !11 ; 4 uses
  %i.jf = icmp eq i32 %.val602, 1
  br i1 %i.jf, label %bb.fi, label %bb.fn

bb.fi:                                            ; preds = %lean_dec.exit506
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !15 ; 4 uses
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = and i64 %i.ji, 1
  %.not.i503 = icmp eq i64 %i.jj, 0
  br i1 %.not.i503, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  %i.jk = load i32, ptr %i.jh, align 4, !tbaa !11 ; 3 uses
  %i.jl = icmp sgt i32 %i.jk, 1
  br i1 %i.jl, label %bb.fk, label %bb.fl, !prof !17

bb.fk:                                            ; preds = %bb.fj
  %i.jm = add nsw i32 %i.jk, -1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !11
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fj
  %.not.i548 = icmp eq i32 %i.jk, 0
  br i1 %.not.i548, label %bb.fs, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jh) #12
  br label %bb.fs

bb.fn:                                            ; preds = %lean_dec.exit506
  br i1 %.not.i680, label %bb.fo, label %lean_dec.exit504

bb.fo:                                            ; preds = %bb.fn
  %i.jn = icmp sgt i32 %.val602, 1
  br i1 %i.jn, label %bb.fp, label %bb.fq, !prof !17

bb.fp:                                            ; preds = %bb.fo
  %i.jo = add nsw i32 %.val602, -1
  store i32 %i.jo, ptr %i.iq, align 4, !tbaa !11
  br label %lean_dec.exit504

bb.fq:                                            ; preds = %bb.fo
  %.not.i550 = icmp eq i32 %.val602, 0
  br i1 %.not.i550, label %lean_dec.exit504, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iq) #12
  br label %lean_dec.exit504

bb.fs:                                            ; preds = %bb.fi, %bb.fk, %bb.fl, %bb.fm
  store ptr %i.hw, ptr %i.jg, align 8, !tbaa !15
  br label %lean_dec.exit516

lean_dec.exit504:                                 ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fn
  %i.jp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %i.hw, ptr %i.jq, align 8, !tbaa !15
  br label %lean_dec.exit516

bb.ft:                                            ; preds = %lean_obj_tag.exit683
  br i1 %.not.i440, label %bb.fu, label %lean_dec.exit500

bb.fu:                                            ; preds = %bb.ft
  %i.jr = load i32, ptr %i.hw, align 512, !tbaa !11 ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.fv, label %bb.fw, !prof !17

bb.fv:                                            ; preds = %bb.fu
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %i.hw, align 512, !tbaa !11
  br label %lean_dec.exit500

bb.fw:                                            ; preds = %bb.fu
  %.not.i552 = icmp eq i32 %i.jr, 0
  br i1 %.not.i552, label %lean_dec.exit500, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #12
  br label %lean_dec.exit500

lean_dec.exit500:                                 ; preds = %bb.fx, %bb.fw, %bb.fv, %bb.ft
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !15 ; 5 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %.not.i438 = icmp eq i64 %i.jx, 0
  br i1 %.not.i438, label %bb.fy, label %lean_inc.exit439

bb.fy:                                            ; preds = %lean_dec.exit500
  %.val.i.i686 = load i32, ptr %i.jv, align 4, !tbaa !11 ; 3 uses
  %i.jy = icmp sgt i32 %.val.i.i686, 0
  br i1 %i.jy, label %bb.fz, label %bb.ga, !prof !17

bb.fz:                                            ; preds = %bb.fy
  %i.jz = add nuw i32 %.val.i.i686, 1
  store i32 %i.jz, ptr %i.jv, align 4, !tbaa !11
  br label %lean_inc.exit439

bb.ga:                                            ; preds = %bb.fy
  %.not.i.i687 = icmp eq i32 %.val.i.i686, 0
  br i1 %.not.i.i687, label %lean_inc.exit439, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ka = atomicrmw sub ptr %i.jv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit439

lean_inc.exit439:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_dec.exit500
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.iq, i32 noundef 1)
  br label %lean_dec_ref_known.exit751.thread

bb.gc:                                            ; preds = %lean_dec_ref_known.exit679
  br i1 %.not.i440, label %bb.gd, label %lean_dec.exit498

bb.gd:                                            ; preds = %bb.gc
  %i.kb = load i32, ptr %i.hw, align 4, !tbaa !11 ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 1
  br i1 %i.kc, label %bb.ge, label %bb.gf, !prof !17

bb.ge:                                            ; preds = %bb.gd
  %i.kd = add nsw i32 %i.kb, -1
  store i32 %i.kd, ptr %i.hw, align 4, !tbaa !11
  br label %lean_dec.exit498

bb.gf:                                            ; preds = %bb.gd
  %.not.i554 = icmp eq i32 %i.kb, 0
  br i1 %.not.i554, label %lean_dec.exit498, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #12
  br label %lean_dec.exit498

lean_dec.exit498:                                 ; preds = %bb.gg, %bb.gf, %bb.ge, %bb.gc
  %i.ke = tail call ptr @l_Lean_Meta_processPostponed(i8 noundef zeroext %3, i8 noundef zeroext 0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12 ; 13 uses
  %i.kf = ptrtoint ptr %i.ke to i64               ; 2 uses
  %i.kg = and i64 %i.kf, 1
  %.not.i689 = icmp eq i64 %i.kg, 0               ; 2 uses
  br i1 %.not.i689, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %lean_dec.exit498
  %i.kh = lshr i64 %i.kf, 1
  %i.ki = trunc i64 %i.kh to i32
  br label %lean_obj_tag.exit692

bb.gi:                                            ; preds = %lean_dec.exit498
  %i.kj = getelementptr i8, ptr %i.ke, i64 4
  %.val.i691 = load i32, ptr %i.kj, align 4
  %i.kk = lshr i32 %.val.i691, 24
  br label %lean_obj_tag.exit692

lean_obj_tag.exit692:                             ; preds = %bb.gh, %bb.gi
  %.0.i690 = phi i32 [ %i.ki, %bb.gh ], [ %i.kk, %bb.gi ]
  %i.kl = icmp eq i32 %.0.i690, 0
  br i1 %i.kl, label %bb.gj, label %bb.jt

bb.gj:                                            ; preds = %lean_obj_tag.exit692
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !15 ; 8 uses
  %.val601 = load i32, ptr %i.ke, align 8, !tbaa !11
  %i.ko = icmp eq i32 %.val601, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.kn to i64               ; 3 uses
  br i1 %i.ko, label %lean_dec.exit496, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.kp = and i64 %.pre, 1
  %.not.i436 = icmp eq i64 %i.kp, 0
  br i1 %.not.i436, label %bb.gl, label %lean_inc.exit437

bb.gl:                                            ; preds = %bb.gk
  %.val.i.i693 = load i32, ptr %i.kn, align 4, !tbaa !11 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i693, 0
  br i1 %i.kq, label %bb.gm, label %bb.gn, !prof !17

bb.gm:                                            ; preds = %bb.gl
  %i.kr = add nuw i32 %.val.i.i693, 1
  store i32 %i.kr, ptr %i.kn, align 4, !tbaa !11
  br label %lean_inc.exit437

bb.gn:                                            ; preds = %bb.gl
  %.not.i.i694 = icmp eq i32 %.val.i.i693, 0
  br i1 %.not.i.i694, label %lean_inc.exit437, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ks = atomicrmw sub ptr %i.kn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit437

lean_inc.exit437:                                 ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gk
  br i1 %.not.i689, label %bb.gp, label %lean_dec.exit496

bb.gp:                                            ; preds = %lean_inc.exit437
  %i.kt = load i32, ptr %i.ke, align 8, !tbaa !11 ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, 1
  br i1 %i.ku, label %bb.gq, label %bb.gr, !prof !17

bb.gq:                                            ; preds = %bb.gp
  %i.kv = add nsw i32 %i.kt, -1
  store i32 %i.kv, ptr %i.ke, align 8, !tbaa !11
  br label %lean_dec.exit496

bb.gr:                                            ; preds = %bb.gp
  %.not.i556 = icmp eq i32 %i.kt, 0
  br i1 %.not.i556, label %lean_dec.exit496, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ke) #12
  br label %lean_dec.exit496

lean_dec.exit496:                                 ; preds = %bb.gj, %lean_inc.exit437, %bb.gq, %bb.gr, %bb.gs
  %.0385 = phi ptr [ inttoptr (i64 1 to ptr), %bb.gs ], [ inttoptr (i64 1 to ptr), %lean_inc.exit437 ], [ inttoptr (i64 1 to ptr), %bb.gq ], [ inttoptr (i64 1 to ptr), %bb.gr ], [ %i.ke, %bb.gj ] ; 3 uses
  %i.kw = and i64 %.pre, 510
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %bb.gt, label %bb.ib

bb.gt:                                            ; preds = %lean_dec.exit496
  %i.ky = ptrtoint ptr %.0385 to i64
  %i.kz = and i64 %i.ky, 1
  %.not.i696 = icmp eq i64 %i.kz, 0
  br i1 %.not.i696, label %bb.gu, label %lean_del_object.exit697

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_free_object(ptr noundef nonnull %.0385) #12
  br label %lean_del_object.exit697

lean_del_object.exit697:                          ; preds = %bb.gt, %bb.gu
  %i.la = and i64 %.pre, 1
  %.not.i493 = icmp eq i64 %i.la, 0
  br i1 %.not.i493, label %bb.gv, label %lean_dec.exit494

bb.gv:                                            ; preds = %lean_del_object.exit697
  %i.lb = load i32, ptr %i.kn, align 512, !tbaa !11 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 1
  br i1 %i.lc, label %bb.gw, label %bb.gx, !prof !17

bb.gw:                                            ; preds = %bb.gv
  %i.ld = add nsw i32 %i.lb, -1
  store i32 %i.ld, ptr %i.kn, align 512, !tbaa !11
  br label %lean_dec.exit494

bb.gx:                                            ; preds = %bb.gv
  %.not.i558 = icmp eq i32 %i.lb, 0
  br i1 %.not.i558, label %lean_dec.exit494, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kn) #12
  br label %lean_dec.exit494

lean_dec.exit494:                                 ; preds = %bb.gy, %bb.gx, %bb.gw, %lean_del_object.exit697
  br i1 %.not.i442, label %bb.gz, label %lean_dec.exit492

bb.gz:                                            ; preds = %lean_dec.exit494
  %i.le = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.ha, label %bb.hb, !prof !17

bb.ha:                                            ; preds = %bb.gz
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit492

bb.hb:                                            ; preds = %bb.gz
  %.not.i560 = icmp eq i32 %i.le, 0
  br i1 %.not.i560, label %lean_dec.exit492, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit492

lean_dec.exit492:                                 ; preds = %bb.hc, %bb.hb, %bb.ha, %lean_dec.exit494
  %i.lh = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %5, ptr noundef %7) #12 ; 9 uses
  %i.li = ptrtoint ptr %i.lh to i64               ; 2 uses
  %i.lj = and i64 %i.li, 1
  %.not.i698 = icmp eq i64 %i.lj, 0               ; 2 uses
  br i1 %.not.i698, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %lean_dec.exit492
  %i.lk = lshr i64 %i.li, 1
  %i.ll = trunc i64 %i.lk to i32
  br label %lean_obj_tag.exit701

bb.he:                                            ; preds = %lean_dec.exit492
  %i.lm = getelementptr i8, ptr %i.lh, i64 4
  %.val.i700 = load i32, ptr %i.lm, align 4
  %i.ln = lshr i32 %.val.i700, 24
  br label %lean_obj_tag.exit701

lean_obj_tag.exit701:                             ; preds = %bb.hd, %bb.he
  %.0.i699 = phi i32 [ %i.ll, %bb.hd ], [ %i.ln, %bb.he ]
  %i.lo = icmp eq i32 %.0.i699, 0
  br i1 %i.lo, label %bb.hf, label %bb.hw

bb.hf:                                            ; preds = %lean_obj_tag.exit701
  %i.lp = ptrtoint ptr %.0363 to i64
  %i.lq = and i64 %i.lp, 1
  %.not.i702 = icmp eq i64 %i.lq, 0
  br i1 %.not.i702, label %bb.hg, label %lean_del_object.exit703

bb.hg:                                            ; preds = %bb.hf
  tail call void @lean_free_object(ptr noundef nonnull %.0363) #12
  br label %lean_del_object.exit703

lean_del_object.exit703:                          ; preds = %bb.hf, %bb.hg
  %i.lr = ptrtoint ptr %i.j to i64
  %i.ls = and i64 %i.lr, 1
  %.not.i489 = icmp eq i64 %i.ls, 0
  br i1 %.not.i489, label %bb.hh, label %lean_dec.exit490

bb.hh:                                            ; preds = %lean_del_object.exit703
  %i.lt = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %bb.hi, label %bb.hj, !prof !17

bb.hi:                                            ; preds = %bb.hh
  %i.lv = add nsw i32 %i.lt, -1
  store i32 %i.lv, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit490

bb.hj:                                            ; preds = %bb.hh
  %.not.i562 = icmp eq i32 %i.lt, 0
  br i1 %.not.i562, label %lean_dec.exit490, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit490

lean_dec.exit490:                                 ; preds = %bb.hk, %bb.hj, %bb.hi, %lean_del_object.exit703
  %.val600 = load i32, ptr %i.lh, align 4, !tbaa !11 ; 4 uses
  %i.lw = icmp eq i32 %.val600, 1
  br i1 %i.lw, label %bb.hl, label %bb.hq

bb.hl:                                            ; preds = %lean_dec.exit490
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !15 ; 4 uses
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, 1
  %.not.i487 = icmp eq i64 %i.ma, 0
  br i1 %.not.i487, label %bb.hm, label %bb.hv

bb.hm:                                            ; preds = %bb.hl
  %i.mb = load i32, ptr %i.ly, align 4, !tbaa !11 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.hn, label %bb.ho, !prof !17

bb.hn:                                            ; preds = %bb.hm
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.ly, align 4, !tbaa !11
  br label %bb.hv

bb.ho:                                            ; preds = %bb.hm
  %.not.i564 = icmp eq i32 %i.mb, 0
  br i1 %.not.i564, label %bb.hv, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ly) #12
  br label %bb.hv

bb.hq:                                            ; preds = %lean_dec.exit490
  br i1 %.not.i698, label %bb.hr, label %lean_dec.exit488

bb.hr:                                            ; preds = %bb.hq
  %i.me = icmp sgt i32 %.val600, 1
  br i1 %i.me, label %bb.hs, label %bb.ht, !prof !17

bb.hs:                                            ; preds = %bb.hr
  %i.mf = add nsw i32 %.val600, -1
  store i32 %i.mf, ptr %i.lh, align 4, !tbaa !11
  br label %lean_dec.exit488

bb.ht:                                            ; preds = %bb.hr
  %.not.i566 = icmp eq i32 %.val600, 0
  br i1 %.not.i566, label %lean_dec.exit488, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lh) #12
  br label %lean_dec.exit488

bb.hv:                                            ; preds = %bb.hl, %bb.hn, %bb.ho, %bb.hp
  store ptr inttoptr (i64 1 to ptr), ptr %i.lx, align 8, !tbaa !15
  br label %lean_dec.exit516

lean_dec.exit488:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  %i.mg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.mh, align 8, !tbaa !15
  br label %lean_dec.exit516

bb.hw:                                            ; preds = %lean_obj_tag.exit701
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !15 ; 5 uses
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = and i64 %i.mk, 1
  %.not.i434 = icmp eq i64 %i.ml, 0
  br i1 %.not.i434, label %bb.hx, label %lean_inc.exit435

bb.hx:                                            ; preds = %bb.hw
  %.val.i.i704 = load i32, ptr %i.mj, align 4, !tbaa !11 ; 3 uses
  %i.mm = icmp sgt i32 %.val.i.i704, 0
  br i1 %i.mm, label %bb.hy, label %bb.hz, !prof !17

bb.hy:                                            ; preds = %bb.hx
  %i.mn = add nuw i32 %.val.i.i704, 1
  store i32 %i.mn, ptr %i.mj, align 4, !tbaa !11
  br label %lean_inc.exit435

bb.hz:                                            ; preds = %bb.hx
  %.not.i.i705 = icmp eq i32 %.val.i.i704, 0
  br i1 %.not.i.i705, label %lean_inc.exit435, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.mo = atomicrmw sub ptr %i.mj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit435

lean_inc.exit435:                                 ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.lh, i32 noundef 1)
  br label %lean_dec_ref_known.exit751.thread

bb.ib:                                            ; preds = %lean_dec.exit496
  %i.mp = ptrtoint ptr %.0363 to i64
  %i.mq = and i64 %i.mp, 1
  %.not.i707 = icmp eq i64 %i.mq, 0
  br i1 %.not.i707, label %bb.ic, label %lean_del_object.exit708

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_free_object(ptr noundef nonnull %.0363) #12
  br label %lean_del_object.exit708

lean_del_object.exit708:                          ; preds = %bb.ib, %bb.ic
  %i.mr = ptrtoint ptr %i.j to i64
  %i.ms = and i64 %i.mr, 1
  %.not.i483 = icmp eq i64 %i.ms, 0
  br i1 %.not.i483, label %bb.id, label %lean_dec.exit484

bb.id:                                            ; preds = %lean_del_object.exit708
  %i.mt = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ie, label %bb.if, !prof !17

end_hunk_6
begin_hunk_7_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_processAssignmentFOApprox_loop:bb.a
  br label %lean_dec.exit269

bb.ci:                                            ; preds = %bb.cg
  %.not.i273 = icmp eq i32 %i.ej, 0
  br i1 %.not.i273, label %lean_dec.exit269, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #12
  br label %lean_dec.exit269

lean_dec.exit269:                                 ; preds = %bb.ca, %lean_inc.exit256, %bb.ch, %bb.ci, %bb.cj
  %.0211 = phi ptr [ inttoptr (i64 1 to ptr), %bb.cj ], [ inttoptr (i64 1 to ptr), %lean_inc.exit256 ], [ inttoptr (i64 1 to ptr), %bb.ch ], [ inttoptr (i64 1 to ptr), %bb.ci ], [ %i.du, %bb.ca ] ; 4 uses
  %i.em = and i64 %.pre, 510
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.ck, label %bb.ey

bb.ck:                                            ; preds = %lean_dec.exit269
  %i.eo = ptrtoint ptr %.0211 to i64
  %i.ep = and i64 %i.eo, 1
  %.not.i357 = icmp eq i64 %i.ep, 0
  br i1 %.not.i357, label %bb.cl, label %lean_del_object.exit

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_free_object(ptr noundef nonnull %.0211) #12
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ck, %bb.cl
  %i.eq = tail call ptr @l_Lean_Meta_unfoldDefinition_x3f(ptr noundef nonnull %i.dn, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) #12 ; 14 uses
  %i.er = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.es = and i64 %i.er, 1
  %.not.i358 = icmp eq i64 %i.es, 0               ; 3 uses
  br i1 %.not.i358, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %lean_del_object.exit
  %i.et = lshr i64 %i.er, 1
  %i.eu = trunc i64 %i.et to i32
  br label %lean_obj_tag.exit361

bb.cn:                                            ; preds = %lean_del_object.exit
  %i.ev = getelementptr i8, ptr %i.eq, i64 4
  %.val.i360 = load i32, ptr %i.ev, align 4
  %i.ew = lshr i32 %.val.i360, 24
  br label %lean_obj_tag.exit361

lean_obj_tag.exit361:                             ; preds = %bb.cm, %bb.cn
  %.0.i359 = phi i32 [ %i.eu, %bb.cm ], [ %i.ew, %bb.cn ]
  %i.ex = icmp eq i32 %.0.i359, 0
  br i1 %i.ex, label %bb.co, label %bb.ec

bb.co:                                            ; preds = %lean_obj_tag.exit361
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !15 ; 10 uses
  %.val319 = load i32, ptr %i.eq, align 8, !tbaa !11
  %i.fa = icmp eq i32 %.val319, 1                 ; 2 uses
  %.pre500 = ptrtoint ptr %i.ez to i64            ; 2 uses
  %.pre502 = and i64 %.pre500, 1                  ; 2 uses
  br i1 %i.fa, label %lean_dec.exit267, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not.i253 = icmp eq i64 %.pre502, 0
  br i1 %.not.i253, label %bb.cq, label %lean_inc.exit254

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i362 = load i32, ptr %i.ez, align 4, !tbaa !11 ; 3 uses
  %i.fb = icmp sgt i32 %.val.i.i362, 0
  br i1 %i.fb, label %bb.cr, label %bb.cs, !prof !17

bb.cr:                                            ; preds = %bb.cq
  %i.fc = add nuw i32 %.val.i.i362, 1
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !11
  br label %lean_inc.exit254

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i363 = icmp eq i32 %.val.i.i362, 0
  br i1 %.not.i.i363, label %lean_inc.exit254, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fd = atomicrmw sub ptr %i.ez, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit254

lean_inc.exit254:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i358, label %bb.cu, label %lean_dec.exit267

bb.cu:                                            ; preds = %lean_inc.exit254
  %i.fe = load i32, ptr %i.eq, align 8, !tbaa !11 ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, 1
  br i1 %i.ff, label %bb.cv, label %bb.cw, !prof !17

bb.cv:                                            ; preds = %bb.cu
  %i.fg = add nsw i32 %i.fe, -1
  store i32 %i.fg, ptr %i.eq, align 8, !tbaa !11
  br label %lean_dec.exit267

bb.cw:                                            ; preds = %bb.cu
  %.not.i275 = icmp eq i32 %i.fe, 0
  br i1 %.not.i275, label %lean_dec.exit267, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eq) #12
  br label %lean_dec.exit267

lean_dec.exit267:                                 ; preds = %bb.co, %lean_inc.exit254, %bb.cv, %bb.cw, %bb.cx
  %.0209 = phi ptr [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %lean_inc.exit254 ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ %i.eq, %bb.co ] ; 4 uses
  %.not.i365 = icmp eq i64 %.pre502, 0
  br i1 %.not.i365, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %lean_dec.exit267
  %i.fh = lshr i64 %.pre500, 1
  %i.fi = trunc i64 %i.fh to i32
  br label %lean_obj_tag.exit368

bb.cz:                                            ; preds = %lean_dec.exit267
  %i.fj = getelementptr i8, ptr %i.ez, i64 4
  %.val.i367 = load i32, ptr %i.fj, align 4
  %i.fk = lshr i32 %.val.i367, 24
  br label %lean_obj_tag.exit368

lean_obj_tag.exit368:                             ; preds = %bb.cy, %bb.cz
  %.0.i366 = phi i32 [ %i.fi, %bb.cy ], [ %i.fk, %bb.cz ]
  %i.fl = icmp eq i32 %.0.i366, 0
  br i1 %i.fl, label %bb.da, label %bb.dk

bb.da:                                            ; preds = %lean_obj_tag.exit368
  %i.fm = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %bb.db, label %bb.dc, !prof !17

bb.db:                                            ; preds = %bb.da
  %i.fo = add nsw i32 %i.fm, -1
  store i32 %i.fo, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit304

bb.dc:                                            ; preds = %bb.da
  %.not.i303 = icmp eq i32 %i.fm, 0
  br i1 %.not.i303, label %lean_dec_ref.exit304, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit304

lean_dec_ref.exit304:                             ; preds = %bb.db, %bb.dc, %bb.dd
  %i.fp = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 1
  br i1 %i.fq, label %bb.de, label %bb.df, !prof !17

bb.de:                                            ; preds = %lean_dec_ref.exit304
  %i.fr = add nsw i32 %i.fp, -1
  store i32 %i.fr, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit302

bb.df:                                            ; preds = %lean_dec_ref.exit304
  %.not.i301 = icmp eq i32 %i.fp, 0
  br i1 %.not.i301, label %lean_dec_ref.exit302, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit302

lean_dec_ref.exit302:                             ; preds = %bb.de, %bb.df, %bb.dg
  br i1 %i.fa, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %lean_dec_ref.exit302
  %i.fs = getelementptr inbounds nuw i8, ptr %.0209, i64 8
  store ptr %i.ed, ptr %i.fs, align 8, !tbaa !15
  br label %bb.fz

bb.di:                                            ; preds = %lean_dec_ref.exit302
  tail call void @lean_inc_heartbeat() #12
  %i.ft = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.dj, label %lean_alloc_ctor.exit369

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit369:                          ; preds = %bb.di
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 1, ptr %i.ft, align 4, !tbaa !11
  store i32 65552, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.ed, ptr %i.fw, align 8, !tbaa !15
  br label %bb.fz

bb.dk:                                            ; preds = %lean_obj_tag.exit368
  %i.fx = ptrtoint ptr %.0209 to i64
  %i.fy = and i64 %i.fx, 1
  %.not.i370 = icmp eq i64 %i.fy, 0
  br i1 %.not.i370, label %bb.dl, label %lean_del_object.exit371

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_free_object(ptr noundef nonnull %.0209) #12
  br label %lean_del_object.exit371

lean_del_object.exit371:                          ; preds = %bb.dk, %bb.dl
  %i.fz = and i64 %.pre, 1
  %.not.i264 = icmp eq i64 %i.fz, 0
  br i1 %.not.i264, label %bb.dm, label %lean_dec.exit265

bb.dm:                                            ; preds = %lean_del_object.exit371
  %i.ga = load i32, ptr %i.ed, align 512, !tbaa !11 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %bb.dn, label %bb.do, !prof !17

bb.dn:                                            ; preds = %bb.dm
  %i.gc = add nsw i32 %i.ga, -1
  store i32 %i.gc, ptr %i.ed, align 512, !tbaa !11
  br label %lean_dec.exit265

bb.do:                                            ; preds = %bb.dm
  %.not.i277 = icmp eq i32 %i.ga, 0
  br i1 %.not.i277, label %lean_dec.exit265, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ed) #12
  br label %lean_dec.exit265

lean_dec.exit265:                                 ; preds = %bb.dp, %bb.do, %bb.dn, %lean_del_object.exit371
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !15 ; 5 uses
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = and i64 %i.gf, 1
  %.not.i251 = icmp eq i64 %i.gg, 0
  br i1 %.not.i251, label %bb.dq, label %lean_inc.exit252

bb.dq:                                            ; preds = %lean_dec.exit265
  %.val.i.i372 = load i32, ptr %i.ge, align 4, !tbaa !11 ; 3 uses
  %i.gh = icmp sgt i32 %.val.i.i372, 0
  br i1 %i.gh, label %bb.dr, label %bb.ds, !prof !17

bb.dr:                                            ; preds = %bb.dq
  %i.gi = add nuw i32 %.val.i.i372, 1
  store i32 %i.gi, ptr %i.ge, align 4, !tbaa !11
  br label %lean_inc.exit252

bb.ds:                                            ; preds = %bb.dq
  %.not.i.i373 = icmp eq i32 %.val.i.i372, 0
  br i1 %.not.i.i373, label %lean_inc.exit252, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.gj = atomicrmw sub ptr %i.ge, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit252

lean_inc.exit252:                                 ; preds = %bb.dt, %bb.ds, %bb.dr, %lean_dec.exit265
  %.val.i375 = load i32, ptr %i.ez, align 8, !tbaa !11 ; 4 uses
  %i.gk = icmp eq i32 %.val.i375, 1
  br i1 %i.gk, label %.preheader.i377, label %bb.dy

.preheader.i377:                                  ; preds = %lean_inc.exit252
  %i.gl = load ptr, ptr %i.gd, align 8, !tbaa !15 ; 4 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = and i64 %i.gm, 1
  %.not.i.i379 = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i379, label %bb.du, label %lean_dec.exit.i380

bb.du:                                            ; preds = %.preheader.i377
  %i.go = load i32, ptr %i.gl, align 4, !tbaa !11 ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.dv, label %bb.dw, !prof !17

bb.dv:                                            ; preds = %bb.du
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !11
  br label %lean_dec.exit.i380

bb.dw:                                            ; preds = %bb.du
  %.not.i7.i384 = icmp eq i32 %i.go, 0
  br i1 %.not.i7.i384, label %lean_dec.exit.i380, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gl) #12
  br label %lean_dec.exit.i380

lean_dec.exit.i380:                               ; preds = %bb.dx, %bb.dw, %bb.dv, %.preheader.i377
  tail call void @lean_free_object(ptr noundef nonnull %i.ez) #12
  br label %lean_dec_ref_known.exit.backedge

bb.dy:                                            ; preds = %lean_inc.exit252
  %i.gr = icmp sgt i32 %.val.i375, 1
  br i1 %i.gr, label %bb.dz, label %bb.ea, !prof !17

bb.dz:                                            ; preds = %bb.dy
  %i.gs = add nsw i32 %.val.i375, -1
  store i32 %i.gs, ptr %i.ez, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit.backedge

bb.ea:                                            ; preds = %bb.dy
  %.not.i8.i376 = icmp eq i32 %.val.i375, 0
  br i1 %.not.i8.i376, label %lean_dec_ref_known.exit.backedge, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ez) #12
  br label %lean_dec_ref_known.exit.backedge

lean_dec_ref_known.exit.backedge:                 ; preds = %bb.eb, %bb.ea, %bb.dz, %lean_dec.exit.i380
  br label %lean_dec_ref_known.exit

bb.ec:                                            ; preds = %lean_obj_tag.exit361
  %i.gt = and i64 %.pre, 1
  %.not.i262 = icmp eq i64 %i.gt, 0
  br i1 %.not.i262, label %bb.ed, label %lean_dec.exit263

bb.ed:                                            ; preds = %bb.ec
  %i.gu = load i32, ptr %i.ed, align 4, !tbaa !11 ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.ee, label %bb.ef, !prof !17

bb.ee:                                            ; preds = %bb.ed
  %i.gw = add nsw i32 %i.gu, -1
  store i32 %i.gw, ptr %i.ed, align 4, !tbaa !11
  br label %lean_dec.exit263

bb.ef:                                            ; preds = %bb.ed
  %.not.i279 = icmp eq i32 %i.gu, 0
  br i1 %.not.i279, label %lean_dec.exit263, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ed) #12
  br label %lean_dec.exit263

lean_dec.exit263:                                 ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ec
  %i.gx = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.eh, label %bb.ei, !prof !17

bb.eh:                                            ; preds = %lean_dec.exit263
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit300

bb.ei:                                            ; preds = %lean_dec.exit263
  %.not.i299 = icmp eq i32 %i.gx, 0
  br i1 %.not.i299, label %lean_dec_ref.exit300, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit300

lean_dec_ref.exit300:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.ha = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 1
  br i1 %i.hb, label %bb.ek, label %bb.el, !prof !17

bb.ek:                                            ; preds = %lean_dec_ref.exit300
  %i.hc = add nsw i32 %i.ha, -1
  store i32 %i.hc, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit298

bb.el:                                            ; preds = %lean_dec_ref.exit300
  %.not.i297 = icmp eq i32 %i.ha, 0
  br i1 %.not.i297, label %lean_dec_ref.exit298, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit298

lean_dec_ref.exit298:                             ; preds = %bb.ek, %bb.el, %bb.em
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !15 ; 5 uses
  %.val = load i32, ptr %i.eq, align 8, !tbaa !11
  %i.hf = icmp eq i32 %.val, 1
  br i1 %i.hf, label %bb.fz, label %bb.en

bb.en:                                            ; preds = %lean_dec_ref.exit298
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = and i64 %i.hg, 1
  %.not.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i, label %bb.eo, label %lean_inc.exit

bb.eo:                                            ; preds = %bb.en
  %.val.i.i386 = load i32, ptr %i.he, align 4, !tbaa !11 ; 3 uses
  %i.hi = icmp sgt i32 %.val.i.i386, 0
  br i1 %i.hi, label %bb.ep, label %bb.eq, !prof !17

bb.ep:                                            ; preds = %bb.eo
  %i.hj = add nuw i32 %.val.i.i386, 1
  store i32 %i.hj, ptr %i.he, align 4, !tbaa !11
  br label %lean_inc.exit

bb.eq:                                            ; preds = %bb.eo
  %.not.i.i387 = icmp eq i32 %.val.i.i386, 0
  br i1 %.not.i.i387, label %lean_inc.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.hk = atomicrmw sub ptr %i.he, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.er, %bb.eq, %bb.ep, %bb.en
  br i1 %.not.i358, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %lean_inc.exit
  %i.hl = load i32, ptr %i.eq, align 8, !tbaa !11 ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %bb.et, label %bb.eu, !prof !17

bb.et:                                            ; preds = %bb.es
  %i.hn = add nsw i32 %i.hl, -1
  store i32 %i.hn, ptr %i.eq, align 8, !tbaa !11
  br label %bb.ew

bb.eu:                                            ; preds = %bb.es
  %.not.i281 = icmp eq i32 %i.hl, 0
  br i1 %.not.i281, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eq) #12
  br label %bb.ew
end_hunk_7
begin_hunk_8_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_processConstApprox_go:bb.a
  br label %lean_dec_ref.exit546

bb.am:                                            ; preds = %bb.ak
  %.not.i545 = icmp eq i32 %i.ce, 0
  br i1 %.not.i545, label %lean_dec_ref.exit546, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #12
  br label %lean_dec_ref.exit546

lean_dec_ref.exit546:                             ; preds = %bb.al, %bb.am, %bb.an
  %i.ch = load i32, ptr %5, align 4, !tbaa !11    ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.ao, label %bb.ap, !prof !17

bb.ao:                                            ; preds = %lean_dec_ref.exit546
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %5, align 4, !tbaa !11
  br label %lean_dec_ref.exit544

bb.ap:                                            ; preds = %lean_dec_ref.exit546
  %.not.i543 = icmp eq i32 %i.ch, 0
  br i1 %.not.i543, label %lean_dec_ref.exit544, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #12
  br label %lean_dec_ref.exit544

lean_dec_ref.exit544:                             ; preds = %bb.ao, %bb.ap, %bb.aq
  %i.ck = ptrtoint ptr %3 to i64
  %i.cl = and i64 %i.ck, 1
  %.not.i460 = icmp eq i64 %i.cl, 0
  br i1 %.not.i460, label %bb.ar, label %lean_dec.exit461

bb.ar:                                            ; preds = %lean_dec_ref.exit544
  %i.cm = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.as, label %bb.at, !prof !17

bb.as:                                            ; preds = %bb.ar
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit461

bb.at:                                            ; preds = %bb.ar
  %.not.i462 = icmp eq i32 %i.cm, 0
  br i1 %.not.i462, label %lean_dec.exit461, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec.exit461

lean_dec.exit461:                                 ; preds = %bb.au, %bb.at, %bb.as, %lean_dec_ref.exit544
  %i.cp = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.av, label %bb.aw, !prof !17

bb.av:                                            ; preds = %lean_dec.exit461
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit542

bb.aw:                                            ; preds = %lean_dec.exit461
  %.not.i541 = icmp eq i32 %i.cp, 0
  br i1 %.not.i541, label %lean_dec_ref.exit542, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit542

lean_dec_ref.exit542:                             ; preds = %bb.av, %bb.aw, %bb.ax
  %i.cs = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.ay, label %bb.az, !prof !17

bb.ay:                                            ; preds = %lean_dec_ref.exit542
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit540

bb.az:                                            ; preds = %lean_dec_ref.exit542
  %.not.i539 = icmp eq i32 %i.cs, 0
  br i1 %.not.i539, label %lean_dec_ref.exit540, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit540

lean_dec_ref.exit540:                             ; preds = %bb.ay, %bb.az, %bb.ba
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15 ; 5 uses
  %.val549 = load i32, ptr %i.bm, align 8, !tbaa !11
  %i.cx = icmp eq i32 %.val549, 1
  br i1 %i.cx, label %lean_dec_ref_known.exit, label %bb.bb

bb.bb:                                            ; preds = %lean_dec_ref.exit540
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i431 = icmp eq i64 %i.cz, 0
  br i1 %.not.i431, label %bb.bc, label %lean_inc.exit432

bb.bc:                                            ; preds = %bb.bb
  %.val.i.i572 = load i32, ptr %i.cw, align 4, !tbaa !11 ; 3 uses
  %i.da = icmp sgt i32 %.val.i.i572, 0
  br i1 %i.da, label %bb.bd, label %bb.be, !prof !17

bb.bd:                                            ; preds = %bb.bc
  %i.db = add nuw i32 %.val.i.i572, 1
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !11
  br label %lean_inc.exit432

bb.be:                                            ; preds = %bb.bc
  %.not.i.i573 = icmp eq i32 %.val.i.i572, 0
  br i1 %.not.i.i573, label %lean_inc.exit432, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dc = atomicrmw sub ptr %i.cw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit432

lean_inc.exit432:                                 ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  br i1 %.not.i568, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %lean_inc.exit432
  %i.dd = load i32, ptr %i.bm, align 8, !tbaa !11 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bh, label %bb.bi, !prof !17

bb.bh:                                            ; preds = %bb.bg
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.bm, align 8, !tbaa !11
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %.not.i463 = icmp eq i32 %i.dd, 0
  br i1 %.not.i463, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #12
  br label %bb.bk

bb.bk:                                            ; preds = %lean_inc.exit432, %bb.bh, %bb.bi, %bb.bj
  tail call void @lean_inc_heartbeat() #12
  %i.dg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.bl, label %lean_alloc_ctor.exit575

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit575:                          ; preds = %bb.bk
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 1, ptr %i.dg, align 4, !tbaa !11
  store i32 16842768, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.cw, ptr %i.dj, align 8, !tbaa !15
  br label %lean_dec_ref_known.exit

bb.bm:                                            ; preds = %bb.jd, %bb.iu, %lean_inc_ref.exit708, %bb.iy, %bb.ix, %bb.iw, %bb.jh, %bb.jg, %bb.jf
  %.pre-phi = phi i64 [ %i.mc, %bb.jd ], [ %i.mc, %bb.iu ], [ %.pre, %lean_inc_ref.exit708 ], [ %i.mc, %bb.iy ], [ %i.mc, %bb.ix ], [ %i.mc, %bb.iw ], [ %i.mc, %bb.jh ], [ %i.mc, %bb.jg ], [ %i.mc, %bb.jf ] ; 2 uses
  %.7354.ph = phi ptr [ %i.mb, %bb.jd ], [ %i.mb, %bb.iu ], [ %i.nb, %lean_inc_ref.exit708 ], [ %i.mb, %bb.iy ], [ %i.mb, %bb.ix ], [ %i.mb, %bb.iw ], [ %i.mb, %bb.jh ], [ %i.mb, %bb.jg ], [ %i.mb, %bb.jf ] ; 12 uses
  %i.dk = and i64 %.pre-phi, 1
  %.not.i576 = icmp eq i64 %i.dk, 0
  br i1 %.not.i576, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dl = lshr i64 %.pre-phi, 1
  %i.dm = trunc i64 %i.dl to i32
  br label %lean_obj_tag.exit579

bb.bo:                                            ; preds = %bb.bm
  %i.dn = getelementptr i8, ptr %.7354.ph, i64 4
  %.val.i578 = load i32, ptr %i.dn, align 4
  %i.do = lshr i32 %.val.i578, 24
  br label %lean_obj_tag.exit579

lean_obj_tag.exit579:                             ; preds = %bb.bn, %bb.bo
  %.0.i577 = phi i32 [ %i.dm, %bb.bn ], [ %i.do, %bb.bo ]
  %i.dp = icmp eq i32 %.0.i577, 0
  br i1 %i.dp, label %bb.bp, label %bb.cq

bb.bp:                                            ; preds = %lean_obj_tag.exit579
  %i.dq = getelementptr inbounds nuw i8, ptr %.7354.ph, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !15 ; 4 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 510
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.bq, label %bb.bz

bb.bq:                                            ; preds = %bb.bp
  %.val.i580 = load i32, ptr %.7354.ph, align 8, !tbaa !11 ; 4 uses
  %i.dv = icmp eq i32 %.val.i580, 1
  br i1 %i.dv, label %.preheader.i582, label %bb.bv

.preheader.i582:                                  ; preds = %bb.bq
  %i.dw = and i64 %i.ds, 1
  %.not.i.i584 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i584, label %bb.br, label %lean_dec.exit.i585

bb.br:                                            ; preds = %.preheader.i582
  %i.dx = load i32, ptr %i.dr, align 512, !tbaa !11 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.bs, label %bb.bt, !prof !17

bb.bs:                                            ; preds = %bb.br
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.dr, align 512, !tbaa !11
  br label %lean_dec.exit.i585

bb.bt:                                            ; preds = %bb.br
  %.not.i7.i589 = icmp eq i32 %i.dx, 0
  br i1 %.not.i7.i589, label %lean_dec.exit.i585, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dr) #12
  br label %lean_dec.exit.i585

lean_dec.exit.i585:                               ; preds = %bb.bu, %bb.bt, %bb.bs, %.preheader.i582
  tail call void @lean_free_object(ptr noundef nonnull %.7354.ph) #12
  br label %lean_dec_ref_known.exit590

bb.bv:                                            ; preds = %bb.bq
  %i.ea = icmp sgt i32 %.val.i580, 1
  br i1 %i.ea, label %bb.bw, label %bb.bx, !prof !17

bb.bw:                                            ; preds = %bb.bv
  %i.eb = add nsw i32 %.val.i580, -1
  store i32 %i.eb, ptr %.7354.ph, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit590

bb.bx:                                            ; preds = %bb.bv
  %.not.i8.i581 = icmp eq i32 %.val.i580, 0
  br i1 %.not.i8.i581, label %lean_dec_ref_known.exit590, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.7354.ph) #12
  br label %lean_dec_ref_known.exit590

lean_dec_ref_known.exit590:                       ; preds = %lean_dec.exit.i585, %bb.bw, %bb.bx, %bb.by
  %i.ec = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_processConstApprox_go_cont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10)
  br label %lean_dec_ref_known.exit

bb.bz:                                            ; preds = %bb.bp
  %i.ed = load i32, ptr %6, align 4, !tbaa !11    ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %bb.ca, label %bb.cb, !prof !17

bb.ca:                                            ; preds = %bb.bz
  %i.ef = add nsw i32 %i.ed, -1
  store i32 %i.ef, ptr %6, align 4, !tbaa !11
  br label %lean_dec_ref.exit538

bb.cb:                                            ; preds = %bb.bz
  %.not.i537 = icmp eq i32 %i.ed, 0
  br i1 %.not.i537, label %lean_dec_ref.exit538, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #12
  br label %lean_dec_ref.exit538

lean_dec_ref.exit538:                             ; preds = %bb.ca, %bb.cb, %bb.cc
  %i.eg = load i32, ptr %5, align 8, !tbaa !11    ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.cd, label %bb.ce, !prof !17

bb.cd:                                            ; preds = %lean_dec_ref.exit538
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %5, align 8, !tbaa !11
  br label %lean_dec_ref.exit536

bb.ce:                                            ; preds = %lean_dec_ref.exit538
  %.not.i535 = icmp eq i32 %i.eg, 0
  br i1 %.not.i535, label %lean_dec_ref.exit536, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #12
  br label %lean_dec_ref.exit536

lean_dec_ref.exit536:                             ; preds = %bb.cd, %bb.ce, %bb.cf
  br i1 %.not.i427, label %bb.cg, label %lean_dec.exit457

bb.cg:                                            ; preds = %lean_dec_ref.exit536
  %i.ej = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.ch, label %bb.ci, !prof !17

bb.ch:                                            ; preds = %bb.cg
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit457

bb.ci:                                            ; preds = %bb.cg
  %.not.i465 = icmp eq i32 %i.ej, 0
  br i1 %.not.i465, label %lean_dec.exit457, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec.exit457

lean_dec.exit457:                                 ; preds = %bb.cj, %bb.ci, %bb.ch, %lean_dec_ref.exit536
  %i.em = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.ck, label %bb.cl, !prof !17

bb.ck:                                            ; preds = %lean_dec.exit457
  %i.eo = add nsw i32 %i.em, -1
  store i32 %i.eo, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit534

bb.cl:                                            ; preds = %lean_dec.exit457
  %.not.i533 = icmp eq i32 %i.em, 0
  br i1 %.not.i533, label %lean_dec_ref.exit534, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit534

lean_dec_ref.exit534:                             ; preds = %bb.ck, %bb.cl, %bb.cm
  %i.ep = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %bb.cn, label %bb.co, !prof !17

bb.cn:                                            ; preds = %lean_dec_ref.exit534
  %i.er = add nsw i32 %i.ep, -1
  store i32 %i.er, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.co:                                            ; preds = %lean_dec_ref.exit534
  %.not.i531 = icmp eq i32 %i.ep, 0
  br i1 %.not.i531, label %lean_dec_ref_known.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref_known.exit

bb.cq:                                            ; preds = %lean_obj_tag.exit579
  %i.es = load i32, ptr %6, align 4, !tbaa !11    ; 3 uses
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.cr, label %bb.cs, !prof !17

bb.cr:                                            ; preds = %bb.cq
  %i.eu = add nsw i32 %i.es, -1
  store i32 %i.eu, ptr %6, align 4, !tbaa !11
  br label %lean_dec_ref.exit530

bb.cs:                                            ; preds = %bb.cq
  %.not.i529 = icmp eq i32 %i.es, 0
  br i1 %.not.i529, label %lean_dec_ref.exit530, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #12
  br label %lean_dec_ref.exit530

lean_dec_ref.exit530:                             ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.ev = load i32, ptr %5, align 8, !tbaa !11    ; 3 uses
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.cu, label %bb.cv, !prof !17

bb.cu:                                            ; preds = %lean_dec_ref.exit530
  %i.ex = add nsw i32 %i.ev, -1
  store i32 %i.ex, ptr %5, align 8, !tbaa !11
  br label %lean_dec_ref.exit528

bb.cv:                                            ; preds = %lean_dec_ref.exit530
  %.not.i527 = icmp eq i32 %i.ev, 0
  br i1 %.not.i527, label %lean_dec_ref.exit528, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #12
  br label %lean_dec_ref.exit528

lean_dec_ref.exit528:                             ; preds = %bb.cu, %bb.cv, %bb.cw
  br i1 %.not.i427, label %bb.cx, label %lean_dec.exit455

bb.cx:                                            ; preds = %lean_dec_ref.exit528
  %i.ey = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %bb.cy, label %bb.cz, !prof !17

bb.cy:                                            ; preds = %bb.cx
  %i.fa = add nsw i32 %i.ey, -1
  store i32 %i.fa, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit455

bb.cz:                                            ; preds = %bb.cx
  %.not.i467 = icmp eq i32 %i.ey, 0
  br i1 %.not.i467, label %lean_dec.exit455, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec.exit455

lean_dec.exit455:                                 ; preds = %bb.da, %bb.cz, %bb.cy, %lean_dec_ref.exit528
  %i.fb = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.db, label %bb.dc, !prof !17

bb.db:                                            ; preds = %lean_dec.exit455
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit526

bb.dc:                                            ; preds = %lean_dec.exit455
  %.not.i525 = icmp eq i32 %i.fb, 0
  br i1 %.not.i525, label %lean_dec_ref.exit526, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
end_hunk_8
begin_hunk_9_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_processAssignment_x27:bb.a
  %.val.i.i191 = load i32, ptr %5, align 4, !tbaa !11 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i191, 0
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !17

bb.w:                                             ; preds = %bb.v
  %i.af = add nuw i32 %.val.i.i191, 1
  store i32 %i.af, ptr %5, align 4, !tbaa !11
  br label %lean_inc.exit130

bb.x:                                             ; preds = %bb.v
  %.not.i.i192 = icmp eq i32 %.val.i.i191, 0
  br i1 %.not.i.i192, label %lean_inc.exit130, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ag = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit130

lean_inc.exit130:                                 ; preds = %bb.y, %bb.x, %bb.w, %lean_del_object.exit
  %.val.i.i194 = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.ah = icmp sgt i32 %.val.i.i194, 0
  br i1 %i.ah, label %bb.z, label %bb.aa, !prof !17

bb.z:                                             ; preds = %lean_inc.exit130
  %i.ai = add nuw i32 %.val.i.i194, 1
  store i32 %i.ai, ptr %4, align 4, !tbaa !11
  br label %lean_inc_ref.exit196

bb.aa:                                            ; preds = %lean_inc.exit130
  %.not.i.i195 = icmp eq i32 %.val.i.i194, 0
  br i1 %.not.i.i195, label %lean_inc_ref.exit196, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aj = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit196

lean_inc_ref.exit196:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = ptrtoint ptr %3 to i64
  %i.al = and i64 %i.ak, 1
  %.not.i127 = icmp eq i64 %i.al, 0
  br i1 %.not.i127, label %bb.ac, label %lean_inc.exit128

bb.ac:                                            ; preds = %lean_inc_ref.exit196
  %.val.i.i197 = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i197, 0
  br i1 %i.am, label %bb.ad, label %bb.ae, !prof !17

bb.ad:                                            ; preds = %bb.ac
  %i.an = add nuw i32 %.val.i.i197, 1
  store i32 %i.an, ptr %3, align 4, !tbaa !11
  br label %lean_inc.exit128

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i198 = icmp eq i32 %.val.i.i197, 0
  br i1 %.not.i.i198, label %lean_inc.exit128, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ao = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit128

lean_inc.exit128:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %lean_inc_ref.exit196
  %.val.i.i200 = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.ap = icmp sgt i32 %.val.i.i200, 0
  br i1 %i.ap, label %bb.ag, label %bb.ah, !prof !17

bb.ag:                                            ; preds = %lean_inc.exit128
  %i.aq = add nuw i32 %.val.i.i200, 1
  store i32 %i.aq, ptr %2, align 4, !tbaa !11
  br label %lean_inc_ref.exit202

bb.ah:                                            ; preds = %lean_inc.exit128
  %.not.i.i201 = icmp eq i32 %.val.i.i200, 0
  br i1 %.not.i.i201, label %lean_inc_ref.exit202, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ar = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit202

lean_inc_ref.exit202:                             ; preds = %bb.ag, %bb.ah, %bb.ai
  %.val.i.i203 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.as = icmp sgt i32 %.val.i.i203, 0
  br i1 %i.as, label %bb.aj, label %bb.ak, !prof !17

bb.aj:                                            ; preds = %lean_inc_ref.exit202
  %i.at = add nuw i32 %.val.i.i203, 1
  store i32 %i.at, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit205

bb.ak:                                            ; preds = %lean_inc_ref.exit202
  %.not.i.i204 = icmp eq i32 %.val.i.i203, 0
  br i1 %.not.i.i204, label %lean_inc_ref.exit205, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.au = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit205

lean_inc_ref.exit205:                             ; preds = %bb.aj, %bb.ak, %bb.al
  %i.av = tail call ptr @lean_whnf(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #12 ; 14 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %.not.i206 = icmp eq i64 %i.ax, 0               ; 3 uses
  br i1 %.not.i206, label %bb.an, label %bb.am

bb.am:                                            ; preds = %lean_inc_ref.exit205
  %i.ay = lshr i64 %i.aw, 1
  %i.az = trunc i64 %i.ay to i32
  br label %lean_obj_tag.exit209

bb.an:                                            ; preds = %lean_inc_ref.exit205
  %i.ba = getelementptr i8, ptr %i.av, i64 4
  %.val.i208 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.val.i208, 24
  br label %lean_obj_tag.exit209

lean_obj_tag.exit209:                             ; preds = %bb.am, %bb.an
  %.0.i207 = phi i32 [ %i.az, %bb.am ], [ %i.bb, %bb.an ]
  %i.bc = icmp eq i32 %.0.i207, 0
  br i1 %i.bc, label %bb.ao, label %bb.cc

bb.ao:                                            ; preds = %lean_obj_tag.exit209
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !15 ; 15 uses
  %.val181 = load i32, ptr %i.av, align 8, !tbaa !11
  %i.bf = icmp eq i32 %.val181, 1                 ; 3 uses
  br i1 %i.bf, label %lean_dec.exit145, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = and i64 %i.bg, 1
  %.not.i125 = icmp eq i64 %i.bh, 0
  br i1 %.not.i125, label %bb.aq, label %lean_inc.exit126

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i210 = load i32, ptr %i.be, align 4, !tbaa !11 ; 3 uses
  %i.bi = icmp sgt i32 %.val.i.i210, 0
  br i1 %i.bi, label %bb.ar, label %bb.as, !prof !17

bb.ar:                                            ; preds = %bb.aq
  %i.bj = add nuw i32 %.val.i.i210, 1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !11
  br label %lean_inc.exit126

bb.as:                                            ; preds = %bb.aq
  %.not.i.i211 = icmp eq i32 %.val.i.i210, 0
  br i1 %.not.i.i211, label %lean_inc.exit126, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bk = atomicrmw sub ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit126

lean_inc.exit126:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  br i1 %.not.i206, label %bb.au, label %lean_dec.exit145

bb.au:                                            ; preds = %lean_inc.exit126
  %i.bl = load i32, ptr %i.av, align 8, !tbaa !11 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.av, label %bb.aw, !prof !17

bb.av:                                            ; preds = %bb.au
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.av, align 8, !tbaa !11
  br label %lean_dec.exit145

bb.aw:                                            ; preds = %bb.au
  %.not.i149 = icmp eq i32 %i.bl, 0
  br i1 %.not.i149, label %lean_dec.exit145, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #12
  br label %lean_dec.exit145

lean_dec.exit145:                                 ; preds = %lean_inc.exit126, %bb.av, %bb.aw, %bb.ax, %bb.ao
  %.0124 = phi ptr [ %i.av, %bb.ao ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ inttoptr (i64 1 to ptr), %bb.aw ], [ inttoptr (i64 1 to ptr), %bb.av ], [ inttoptr (i64 1 to ptr), %lean_inc.exit126 ] ; 6 uses
  %i.bo = tail call zeroext i8 @lean_expr_eqv(ptr noundef %i.be, ptr noundef nonnull %1) #12
  %i.bp = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.ay, label %bb.az, !prof !17

bb.ay:                                            ; preds = %lean_dec.exit145
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit180

bb.az:                                            ; preds = %lean_dec.exit145
  %.not.i179 = icmp eq i32 %i.bp, 0
  br i1 %.not.i179, label %lean_dec_ref.exit180, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit180

lean_dec_ref.exit180:                             ; preds = %bb.ay, %bb.az, %bb.ba
  %i.bs = icmp eq i8 %i.bo, 0
  br i1 %i.bs, label %bb.bb, label %bb.bs

bb.bb:                                            ; preds = %lean_dec_ref.exit180
  %i.bt = and i64 %.pre, 1
  %.not.i142 = icmp eq i64 %i.bt, 0
  br i1 %.not.i142, label %bb.bc, label %lean_dec.exit143

bb.bc:                                            ; preds = %bb.bb
  %i.bu = load i32, ptr %i.p, align 512, !tbaa !11 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.bd, label %bb.be, !prof !17

bb.bd:                                            ; preds = %bb.bc
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.p, align 512, !tbaa !11
  br label %lean_dec.exit143

bb.be:                                            ; preds = %bb.bc
  %.not.i151 = icmp eq i32 %i.bu, 0
  br i1 %.not.i151, label %lean_dec.exit143, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #12
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.bx = tail call zeroext i8 @lean_expr_eqv(ptr noundef nonnull %0, ptr noundef %i.be) #12
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %lean_dec.exit143
  %i.bz = ptrtoint ptr %.0124 to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i213 = icmp eq i64 %i.ca, 0
  br i1 %.not.i213, label %bb.bh, label %lean_del_object.exit214

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_free_object(ptr noundef nonnull %.0124) #12
  br label %lean_del_object.exit214

lean_del_object.exit214:                          ; preds = %bb.bg, %bb.bh
  %i.cb = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_processAssignment(ptr noundef nonnull %0, ptr noundef %i.be, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5)
  br label %lean_dec.exit135

bb.bi:                                            ; preds = %lean_dec.exit143
  %i.cc = ptrtoint ptr %i.be to i64
  %i.cd = and i64 %i.cc, 1
  %.not.i140 = icmp eq i64 %i.cd, 0
  br i1 %.not.i140, label %bb.bj, label %lean_dec.exit141

bb.bj:                                            ; preds = %bb.bi
  %i.ce = load i32, ptr %i.be, align 4, !tbaa !11 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %bb.bk, label %bb.bl, !prof !17

bb.bk:                                            ; preds = %bb.bj
  %i.cg = add nsw i32 %i.ce, -1
  store i32 %i.cg, ptr %i.be, align 4, !tbaa !11
  br label %lean_dec.exit141

bb.bl:                                            ; preds = %bb.bj
  %.not.i153 = icmp eq i32 %i.ce, 0
  br i1 %.not.i153, label %lean_dec.exit141, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #12
  br label %lean_dec.exit141

lean_dec.exit141:                                 ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.ch = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.bn, label %bb.bo, !prof !17

bb.bn:                                            ; preds = %lean_dec.exit141
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit178

bb.bo:                                            ; preds = %lean_dec.exit141
  %.not.i177 = icmp eq i32 %i.ch, 0
  br i1 %.not.i177, label %lean_dec_ref.exit178, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit178

lean_dec_ref.exit178:                             ; preds = %bb.bn, %bb.bo, %bb.bp
  br i1 %i.bf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %lean_dec_ref.exit178
  %i.ck = getelementptr inbounds nuw i8, ptr %.0124, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ck, align 8, !tbaa !15
  br label %lean_dec.exit135

bb.br:                                            ; preds = %lean_dec_ref.exit178
  %i.cl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.cm, align 8, !tbaa !15
  br label %lean_dec.exit135

bb.bs:                                            ; preds = %lean_dec_ref.exit180
  %i.cn = ptrtoint ptr %i.be to i64
  %i.co = and i64 %i.cn, 1
  %.not.i138 = icmp eq i64 %i.co, 0
  br i1 %.not.i138, label %bb.bt, label %lean_dec.exit139

bb.bt:                                            ; preds = %bb.bs
  %i.cp = load i32, ptr %i.be, align 4, !tbaa !11 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.bu, label %bb.bv, !prof !17

bb.bu:                                            ; preds = %bb.bt
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.be, align 4, !tbaa !11
  br label %lean_dec.exit139

bb.bv:                                            ; preds = %bb.bt
  %.not.i155 = icmp eq i32 %i.cp, 0
  br i1 %.not.i155, label %lean_dec.exit139, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #12
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %i.cs = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.bx, label %bb.by, !prof !17

bb.bx:                                            ; preds = %lean_dec.exit139
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit176

bb.by:                                            ; preds = %lean_dec.exit139
  %.not.i175 = icmp eq i32 %i.cs, 0
  br i1 %.not.i175, label %lean_dec_ref.exit176, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit176

lean_dec_ref.exit176:                             ; preds = %bb.bx, %bb.by, %bb.bz
  br i1 %i.bf, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %lean_dec_ref.exit176
  %i.cv = getelementptr inbounds nuw i8, ptr %.0124, i64 8
  store ptr %i.p, ptr %i.cv, align 8, !tbaa !15
  br label %lean_dec.exit135

bb.cb:                                            ; preds = %lean_dec_ref.exit176
  %i.cw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.p, ptr %i.cx, align 8, !tbaa !15
  br label %lean_dec.exit135

bb.cc:                                            ; preds = %lean_obj_tag.exit209
  %i.cy = and i64 %.pre, 1
  %.not.i136 = icmp eq i64 %i.cy, 0
  br i1 %.not.i136, label %bb.cd, label %lean_dec.exit137

bb.cd:                                            ; preds = %bb.cc
  %i.cz = load i32, ptr %i.p, align 512, !tbaa !11 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.ce, label %bb.cf, !prof !17

bb.ce:                                            ; preds = %bb.cd
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %i.p, align 512, !tbaa !11
  br label %lean_dec.exit137

bb.cf:                                            ; preds = %bb.cd
  %.not.i157 = icmp eq i32 %i.cz, 0
  br i1 %.not.i157, label %lean_dec.exit137, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #12
  br label %lean_dec.exit137

lean_dec.exit137:                                 ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %i.dc = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.ch, label %bb.ci, !prof !17

bb.ch:                                            ; preds = %lean_dec.exit137
  %i.de = add nsw i32 %i.dc, -1
  store i32 %i.de, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit174

bb.ci:                                            ; preds = %lean_dec.exit137
  %.not.i173 = icmp eq i32 %i.dc, 0
  br i1 %.not.i173, label %lean_dec_ref.exit174, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit174

lean_dec_ref.exit174:                             ; preds = %bb.ch, %bb.ci, %bb.cj
  %i.df = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.ck, label %bb.cl, !prof !17

bb.ck:                                            ; preds = %lean_dec_ref.exit174
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit172

bb.cl:                                            ; preds = %lean_dec_ref.exit174
  %.not.i171 = icmp eq i32 %i.df, 0
  br i1 %.not.i171, label %lean_dec_ref.exit172, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit172

lean_dec_ref.exit172:                             ; preds = %bb.ck, %bb.cl, %bb.cm
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !15 ; 5 uses
  %.val = load i32, ptr %i.av, align 8, !tbaa !11
  %i.dk = icmp eq i32 %.val, 1
  br i1 %i.dk, label %lean_dec.exit135, label %bb.cn

bb.cn:                                            ; preds = %lean_dec_ref.exit172
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = and i64 %i.dl, 1
  %.not.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i, label %bb.co, label %lean_inc.exit

bb.co:                                            ; preds = %bb.cn
  %.val.i.i215 = load i32, ptr %i.dj, align 4, !tbaa !11 ; 3 uses
  %i.dn = icmp sgt i32 %.val.i.i215, 0
  br i1 %i.dn, label %bb.cp, label %bb.cq, !prof !17

bb.cp:                                            ; preds = %bb.co
  %i.do = add nuw i32 %.val.i.i215, 1
  store i32 %i.do, ptr %i.dj, align 4, !tbaa !11
  br label %lean_inc.exit

bb.cq:                                            ; preds = %bb.co
  %.not.i.i216 = icmp eq i32 %.val.i.i215, 0
  br i1 %.not.i.i216, label %lean_inc.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.dp = atomicrmw sub ptr %i.dj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.cn
  br i1 %.not.i206, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %lean_inc.exit
  %i.dq = load i32, ptr %i.av, align 8, !tbaa !11 ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %bb.ct, label %bb.cu, !prof !17

bb.ct:                                            ; preds = %bb.cs
  %i.ds = add nsw i32 %i.dq, -1
  store i32 %i.ds, ptr %i.av, align 8, !tbaa !11
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs
  %.not.i159 = icmp eq i32 %i.dq, 0
  br i1 %.not.i159, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #12
  br label %bb.cw

bb.cw:                                            ; preds = %lean_inc.exit, %bb.ct, %bb.cu, %bb.cv
  tail call void @lean_inc_heartbeat() #12
  %i.dt = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.cx, label %lean_alloc_ctor.exit

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.cw
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 1, ptr %i.dt, align 4, !tbaa !11
  store i32 16842768, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dj, ptr %i.dw, align 8, !tbaa !15
  br label %lean_dec.exit135

bb.cy:                                            ; preds = %lean_dec.exit147
  %i.dx = and i64 %.pre, 1
  %.not.i133 = icmp eq i64 %i.dx, 0
  br i1 %.not.i133, label %bb.cz, label %lean_dec.exit

bb.cz:                                            ; preds = %bb.cy
  %i.dy = load i32, ptr %i.p, align 4, !tbaa !11  ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 1
  br i1 %i.dz, label %bb.da, label %bb.db, !prof !17

bb.da:                                            ; preds = %bb.cz
  %i.ea = add nsw i32 %i.dy, -1
  store i32 %i.ea, ptr %i.p, align 4, !tbaa !11
  br label %lean_dec.exit

bb.db:                                            ; preds = %bb.cz
  %.not.i161 = icmp eq i32 %i.dy, 0
  br i1 %.not.i161, label %lean_dec.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy
  %i.eb = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.dd, label %bb.de, !prof !17

bb.dd:                                            ; preds = %lean_dec.exit
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit170

bb.de:                                            ; preds = %lean_dec.exit
  %.not.i169 = icmp eq i32 %i.eb, 0
  br i1 %.not.i169, label %lean_dec_ref.exit170, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit170

lean_dec_ref.exit170:                             ; preds = %bb.dd, %bb.de, %bb.df
  %i.ee = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.dg, label %bb.dh, !prof !17

bb.dg:                                            ; preds = %lean_dec_ref.exit170
  %i.eg = add nsw i32 %i.ee, -1
  store i32 %i.eg, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit168

bb.dh:                                            ; preds = %lean_dec_ref.exit170
  %.not.i167 = icmp eq i32 %i.ee, 0
  br i1 %.not.i167, label %lean_dec_ref.exit168, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit168

lean_dec_ref.exit168:                             ; preds = %bb.dg, %bb.dh, %bb.di
  br i1 %i.q, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %lean_dec_ref.exit168
  %i.eh = getelementptr inbounds nuw i8, ptr %.0120, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.eh, align 8, !tbaa !15
  br label %lean_dec.exit135

bb.dk:                                            ; preds = %lean_dec_ref.exit168
  tail call void @lean_inc_heartbeat() #12
  %i.ei = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.dl, label %lean_alloc_ctor.exit218

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit218:                          ; preds = %bb.dk
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 1, ptr %i.ei, align 4, !tbaa !11
  store i32 65552, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.el, align 8, !tbaa !15
  br label %lean_dec.exit135
end_hunk_9
begin_hunk_10_@l_Lean_Meta_checkpointDefEq___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_tryHeuristic_spec__1:bb.a

lean_inc.exit466:                                 ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fq
  %.val.i723 = load i32, ptr %.1413, align 8, !tbaa !11 ; 4 uses
  %i.js = icmp eq i32 %.val.i723, 1
  br i1 %i.js, label %.preheader.i725, label %bb.fz

.preheader.i725:                                  ; preds = %lean_inc.exit466
  %i.jt = load ptr, ptr %i.jl, align 8, !tbaa !15 ; 4 uses
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = and i64 %i.ju, 1
  %.not.i.i727 = icmp eq i64 %i.jv, 0
  br i1 %.not.i.i727, label %bb.fv, label %lean_dec.exit.i728

bb.fv:                                            ; preds = %.preheader.i725
  %i.jw = load i32, ptr %i.jt, align 4, !tbaa !11 ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 1
  br i1 %i.jx, label %bb.fw, label %bb.fx, !prof !17

bb.fw:                                            ; preds = %bb.fv
  %i.jy = add nsw i32 %i.jw, -1
  store i32 %i.jy, ptr %i.jt, align 4, !tbaa !11
  br label %lean_dec.exit.i728

bb.fx:                                            ; preds = %bb.fv
  %.not.i7.i732 = icmp eq i32 %i.jw, 0
  br i1 %.not.i7.i732, label %lean_dec.exit.i728, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jt) #12
  br label %lean_dec.exit.i728

lean_dec.exit.i728:                               ; preds = %bb.fy, %bb.fx, %bb.fw, %.preheader.i725
  tail call void @lean_free_object(ptr noundef nonnull %.1413) #12
  br label %lean_dec_ref_known.exit733

bb.fz:                                            ; preds = %lean_inc.exit466
  %i.jz = icmp sgt i32 %.val.i723, 1
  br i1 %i.jz, label %bb.ga, label %bb.gb, !prof !17

bb.ga:                                            ; preds = %bb.fz
  %i.ka = add nsw i32 %.val.i723, -1
  store i32 %i.ka, ptr %.1413, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit733

bb.gb:                                            ; preds = %bb.fz
  %.not.i8.i724 = icmp eq i32 %.val.i723, 0
  br i1 %.not.i8.i724, label %lean_dec_ref_known.exit733, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1413) #12
  br label %lean_dec_ref_known.exit733

lean_dec_ref_known.exit733:                       ; preds = %lean_dec.exit.i728, %bb.ga, %bb.gb, %bb.gc
  %i.kb = and i64 %i.jn, 510
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.gd, label %bb.hk

bb.gd:                                            ; preds = %lean_dec_ref_known.exit733
  br i1 %.not.i469, label %bb.ge, label %lean_dec.exit535

bb.ge:                                            ; preds = %bb.gd
  %i.kd = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, 1
  br i1 %i.ke, label %bb.gf, label %bb.gg, !prof !17

bb.gf:                                            ; preds = %bb.ge
  %i.kf = add nsw i32 %i.kd, -1
  store i32 %i.kf, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit535

bb.gg:                                            ; preds = %bb.ge
  %.not.i575 = icmp eq i32 %i.kd, 0
  br i1 %.not.i575, label %lean_dec.exit535, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit535

lean_dec.exit535:                                 ; preds = %bb.gh, %bb.gg, %bb.gf, %bb.gd
  %i.kg = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %6, ptr noundef %8) #12 ; 9 uses
  %i.kh = ptrtoint ptr %i.kg to i64               ; 2 uses
  %i.ki = and i64 %i.kh, 1
  %.not.i734 = icmp eq i64 %i.ki, 0               ; 2 uses
  br i1 %.not.i734, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %lean_dec.exit535
  %i.kj = lshr i64 %i.kh, 1
  %i.kk = trunc i64 %i.kj to i32
  br label %lean_obj_tag.exit737

bb.gj:                                            ; preds = %lean_dec.exit535
  %i.kl = getelementptr i8, ptr %i.kg, i64 4
  %.val.i736 = load i32, ptr %i.kl, align 4
  %i.km = lshr i32 %.val.i736, 24
  br label %lean_obj_tag.exit737

lean_obj_tag.exit737:                             ; preds = %bb.gi, %bb.gj
  %.0.i735 = phi i32 [ %i.kk, %bb.gi ], [ %i.km, %bb.gj ]
  %i.kn = icmp eq i32 %.0.i735, 0
  br i1 %i.kn, label %bb.gk, label %bb.hb

bb.gk:                                            ; preds = %lean_obj_tag.exit737
  %i.ko = ptrtoint ptr %.0385 to i64
  %i.kp = and i64 %i.ko, 1
  %.not.i738 = icmp eq i64 %i.kp, 0
  br i1 %.not.i738, label %bb.gl, label %lean_del_object.exit739

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_free_object(ptr noundef nonnull %.0385) #12
  br label %lean_del_object.exit739

lean_del_object.exit739:                          ; preds = %bb.gk, %bb.gl
  %i.kq = ptrtoint ptr %i.j to i64
  %i.kr = and i64 %i.kq, 1
  %.not.i532 = icmp eq i64 %i.kr, 0
  br i1 %.not.i532, label %bb.gm, label %lean_dec.exit533

bb.gm:                                            ; preds = %lean_del_object.exit739
  %i.ks = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.kt = icmp sgt i32 %i.ks, 1
  br i1 %i.kt, label %bb.gn, label %bb.go, !prof !17

bb.gn:                                            ; preds = %bb.gm
  %i.ku = add nsw i32 %i.ks, -1
  store i32 %i.ku, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit533

bb.go:                                            ; preds = %bb.gm
  %.not.i577 = icmp eq i32 %i.ks, 0
  br i1 %.not.i577, label %lean_dec.exit533, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit533

lean_dec.exit533:                                 ; preds = %bb.gp, %bb.go, %bb.gn, %lean_del_object.exit739
  %.val635 = load i32, ptr %i.kg, align 4, !tbaa !11 ; 4 uses
  %i.kv = icmp eq i32 %.val635, 1
  br i1 %i.kv, label %bb.gq, label %bb.gv

bb.gq:                                            ; preds = %lean_dec.exit533
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !15 ; 4 uses
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = and i64 %i.ky, 1
  %.not.i530 = icmp eq i64 %i.kz, 0
  br i1 %.not.i530, label %bb.gr, label %bb.ha

bb.gr:                                            ; preds = %bb.gq
  %i.la = load i32, ptr %i.kx, align 4, !tbaa !11 ; 3 uses
  %i.lb = icmp sgt i32 %i.la, 1
  br i1 %i.lb, label %bb.gs, label %bb.gt, !prof !17

bb.gs:                                            ; preds = %bb.gr
  %i.lc = add nsw i32 %i.la, -1
  store i32 %i.lc, ptr %i.kx, align 4, !tbaa !11
  br label %bb.ha

bb.gt:                                            ; preds = %bb.gr
  %.not.i579 = icmp eq i32 %i.la, 0
  br i1 %.not.i579, label %bb.ha, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kx) #12
  br label %bb.ha

bb.gv:                                            ; preds = %lean_dec.exit533
  br i1 %.not.i734, label %bb.gw, label %lean_dec.exit531

bb.gw:                                            ; preds = %bb.gv
  %i.ld = icmp sgt i32 %.val635, 1
  br i1 %i.ld, label %bb.gx, label %bb.gy, !prof !17

bb.gx:                                            ; preds = %bb.gw
  %i.le = add nsw i32 %.val635, -1
  store i32 %i.le, ptr %i.kg, align 4, !tbaa !11
  br label %lean_dec.exit531

bb.gy:                                            ; preds = %bb.gw
  %.not.i581 = icmp eq i32 %.val635, 0
  br i1 %.not.i581, label %lean_dec.exit531, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kg) #12
  br label %lean_dec.exit531

bb.ha:                                            ; preds = %bb.gq, %bb.gs, %bb.gt, %bb.gu
  store ptr %i.jm, ptr %i.kw, align 8, !tbaa !15
  br label %lean_dec.exit545

lean_dec.exit531:                                 ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gv
  %i.lf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.jm, ptr %i.lg, align 8, !tbaa !15
  br label %lean_dec.exit545

bb.hb:                                            ; preds = %lean_obj_tag.exit737
  br i1 %.not.i465, label %bb.hc, label %lean_dec.exit527

bb.hc:                                            ; preds = %bb.hb
  %i.lh = load i32, ptr %i.jm, align 512, !tbaa !11 ; 3 uses
  %i.li = icmp sgt i32 %i.lh, 1
  br i1 %i.li, label %bb.hd, label %bb.he, !prof !17

bb.hd:                                            ; preds = %bb.hc
  %i.lj = add nsw i32 %i.lh, -1
  store i32 %i.lj, ptr %i.jm, align 512, !tbaa !11
  br label %lean_dec.exit527

bb.he:                                            ; preds = %bb.hc
  %.not.i583 = icmp eq i32 %i.lh, 0
  br i1 %.not.i583, label %lean_dec.exit527, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jm) #12
  br label %lean_dec.exit527

lean_dec.exit527:                                 ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hb
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !15 ; 5 uses
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = and i64 %i.lm, 1
  %.not.i463 = icmp eq i64 %i.ln, 0
  br i1 %.not.i463, label %bb.hg, label %lean_inc.exit464

bb.hg:                                            ; preds = %lean_dec.exit527
  %.val.i.i740 = load i32, ptr %i.ll, align 4, !tbaa !11 ; 3 uses
  %i.lo = icmp sgt i32 %.val.i.i740, 0
  br i1 %i.lo, label %bb.hh, label %bb.hi, !prof !17

bb.hh:                                            ; preds = %bb.hg
  %i.lp = add nuw i32 %.val.i.i740, 1
  store i32 %i.lp, ptr %i.ll, align 4, !tbaa !11
  br label %lean_inc.exit464

bb.hi:                                            ; preds = %bb.hg
  %.not.i.i741 = icmp eq i32 %.val.i.i740, 0
  br i1 %.not.i.i741, label %lean_inc.exit464, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.lq = atomicrmw sub ptr %i.ll, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit464

lean_inc.exit464:                                 ; preds = %bb.hj, %bb.hi, %bb.hh, %lean_dec.exit527
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kg, i32 noundef 1)
  br label %lean_dec_ref_known.exit805.thread

bb.hk:                                            ; preds = %lean_dec_ref_known.exit733
  br i1 %.not.i465, label %bb.hl, label %lean_dec.exit525

bb.hl:                                            ; preds = %bb.hk
  %i.lr = load i32, ptr %i.jm, align 4, !tbaa !11 ; 3 uses
  %i.ls = icmp sgt i32 %i.lr, 1
  br i1 %i.ls, label %bb.hm, label %bb.hn, !prof !17

bb.hm:                                            ; preds = %bb.hl
  %i.lt = add nsw i32 %i.lr, -1
  store i32 %i.lt, ptr %i.jm, align 4, !tbaa !11
  br label %lean_dec.exit525

bb.hn:                                            ; preds = %bb.hl
  %.not.i585 = icmp eq i32 %i.lr, 0
  br i1 %.not.i585, label %lean_dec.exit525, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jm) #12
  br label %lean_dec.exit525

lean_dec.exit525:                                 ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk
  %i.lu = tail call ptr @l_Lean_Meta_processPostponed(i8 noundef zeroext %4, i8 noundef zeroext 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #12 ; 13 uses
  %i.lv = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.lw = and i64 %i.lv, 1
  %.not.i743 = icmp eq i64 %i.lw, 0               ; 2 uses
  br i1 %.not.i743, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %lean_dec.exit525
  %i.lx = lshr i64 %i.lv, 1
  %i.ly = trunc i64 %i.lx to i32
  br label %lean_obj_tag.exit746

bb.hq:                                            ; preds = %lean_dec.exit525
  %i.lz = getelementptr i8, ptr %i.lu, i64 4
  %.val.i745 = load i32, ptr %i.lz, align 4
  %i.ma = lshr i32 %.val.i745, 24
  br label %lean_obj_tag.exit746

lean_obj_tag.exit746:                             ; preds = %bb.hp, %bb.hq
  %.0.i744 = phi i32 [ %i.ly, %bb.hp ], [ %i.ma, %bb.hq ]
  %i.mb = icmp eq i32 %.0.i744, 0
  br i1 %i.mb, label %bb.hr, label %bb.lb

bb.hr:                                            ; preds = %lean_obj_tag.exit746
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !15 ; 8 uses
  %.val634 = load i32, ptr %i.lu, align 8, !tbaa !11
  %i.me = icmp eq i32 %.val634, 1                 ; 2 uses
  %.pre841 = ptrtoint ptr %i.md to i64            ; 3 uses
  br i1 %i.me, label %lean_dec.exit523, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.mf = and i64 %.pre841, 1
  %.not.i461 = icmp eq i64 %i.mf, 0
  br i1 %.not.i461, label %bb.ht, label %lean_inc.exit462

bb.ht:                                            ; preds = %bb.hs
  %.val.i.i747 = load i32, ptr %i.md, align 4, !tbaa !11 ; 3 uses
  %i.mg = icmp sgt i32 %.val.i.i747, 0
  br i1 %i.mg, label %bb.hu, label %bb.hv, !prof !17

bb.hu:                                            ; preds = %bb.ht
  %i.mh = add nuw i32 %.val.i.i747, 1
  store i32 %i.mh, ptr %i.md, align 4, !tbaa !11
  br label %lean_inc.exit462

bb.hv:                                            ; preds = %bb.ht
  %.not.i.i748 = icmp eq i32 %.val.i.i747, 0
  br i1 %.not.i.i748, label %lean_inc.exit462, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.mi = atomicrmw sub ptr %i.md, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit462

lean_inc.exit462:                                 ; preds = %bb.hw, %bb.hv, %bb.hu, %bb.hs
  br i1 %.not.i743, label %bb.hx, label %lean_dec.exit523

bb.hx:                                            ; preds = %lean_inc.exit462
  %i.mj = load i32, ptr %i.lu, align 8, !tbaa !11 ; 3 uses
  %i.mk = icmp sgt i32 %i.mj, 1
  br i1 %i.mk, label %bb.hy, label %bb.hz, !prof !17

bb.hy:                                            ; preds = %bb.hx
  %i.ml = add nsw i32 %i.mj, -1
  store i32 %i.ml, ptr %i.lu, align 8, !tbaa !11
  br label %lean_dec.exit523

bb.hz:                                            ; preds = %bb.hx
  %.not.i587 = icmp eq i32 %i.mj, 0
  br i1 %.not.i587, label %lean_dec.exit523, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lu) #12
  br label %lean_dec.exit523

lean_dec.exit523:                                 ; preds = %bb.hr, %lean_inc.exit462, %bb.hy, %bb.hz, %bb.ia
  %.0407 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ia ], [ inttoptr (i64 1 to ptr), %lean_inc.exit462 ], [ inttoptr (i64 1 to ptr), %bb.hy ], [ inttoptr (i64 1 to ptr), %bb.hz ], [ %i.lu, %bb.hr ] ; 3 uses
  %i.mm = and i64 %.pre841, 510
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %bb.ib, label %bb.jj

bb.ib:                                            ; preds = %lean_dec.exit523
  %i.mo = ptrtoint ptr %.0407 to i64
  %i.mp = and i64 %i.mo, 1
  %.not.i750 = icmp eq i64 %i.mp, 0
  br i1 %.not.i750, label %bb.ic, label %lean_del_object.exit751

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_free_object(ptr noundef nonnull %.0407) #12
  br label %lean_del_object.exit751

lean_del_object.exit751:                          ; preds = %bb.ib, %bb.ic
  %i.mq = and i64 %.pre841, 1
  %.not.i520 = icmp eq i64 %i.mq, 0
  br i1 %.not.i520, label %bb.id, label %lean_dec.exit521

bb.id:                                            ; preds = %lean_del_object.exit751
  %i.mr = load i32, ptr %i.md, align 512, !tbaa !11 ; 3 uses
  %i.ms = icmp sgt i32 %i.mr, 1
  br i1 %i.ms, label %bb.ie, label %bb.if, !prof !17

bb.ie:                                            ; preds = %bb.id
  %i.mt = add nsw i32 %i.mr, -1
  store i32 %i.mt, ptr %i.md, align 512, !tbaa !11
  br label %lean_dec.exit521

bb.if:                                            ; preds = %bb.id
  %.not.i589 = icmp eq i32 %i.mr, 0
  br i1 %.not.i589, label %lean_dec.exit521, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.md) #12
  br label %lean_dec.exit521

lean_dec.exit521:                                 ; preds = %bb.ig, %bb.if, %bb.ie, %lean_del_object.exit751
  br i1 %.not.i469, label %bb.ih, label %lean_dec.exit519

bb.ih:                                            ; preds = %lean_dec.exit521
  %i.mu = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.mv = icmp sgt i32 %i.mu, 1
  br i1 %i.mv, label %bb.ii, label %bb.ij, !prof !17

bb.ii:                                            ; preds = %bb.ih
  %i.mw = add nsw i32 %i.mu, -1
  store i32 %i.mw, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit519

bb.ij:                                            ; preds = %bb.ih
  %.not.i591 = icmp eq i32 %i.mu, 0
  br i1 %.not.i591, label %lean_dec.exit519, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit519

lean_dec.exit519:                                 ; preds = %bb.ik, %bb.ij, %bb.ii, %lean_dec.exit521
  %i.mx = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %6, ptr noundef %8) #12 ; 9 uses
  %i.my = ptrtoint ptr %i.mx to i64               ; 2 uses
  %i.mz = and i64 %i.my, 1
  %.not.i752 = icmp eq i64 %i.mz, 0               ; 2 uses
  br i1 %.not.i752, label %bb.im, label %bb.il

bb.il:                                            ; preds = %lean_dec.exit519
  %i.na = lshr i64 %i.my, 1
  %i.nb = trunc i64 %i.na to i32
  br label %lean_obj_tag.exit755

bb.im:                                            ; preds = %lean_dec.exit519
  %i.nc = getelementptr i8, ptr %i.mx, i64 4
  %.val.i754 = load i32, ptr %i.nc, align 4
  %i.nd = lshr i32 %.val.i754, 24
  br label %lean_obj_tag.exit755

lean_obj_tag.exit755:                             ; preds = %bb.il, %bb.im
  %.0.i753 = phi i32 [ %i.nb, %bb.il ], [ %i.nd, %bb.im ]
  %i.ne = icmp eq i32 %.0.i753, 0
  br i1 %i.ne, label %bb.in, label %bb.je

bb.in:                                            ; preds = %lean_obj_tag.exit755
  %i.nf = ptrtoint ptr %.0385 to i64
  %i.ng = and i64 %i.nf, 1
  %.not.i756 = icmp eq i64 %i.ng, 0
  br i1 %.not.i756, label %bb.io, label %lean_del_object.exit757

bb.io:                                            ; preds = %bb.in
  tail call void @lean_free_object(ptr noundef nonnull %.0385) #12
  br label %lean_del_object.exit757

lean_del_object.exit757:                          ; preds = %bb.in, %bb.io
  %i.nh = ptrtoint ptr %i.j to i64
  %i.ni = and i64 %i.nh, 1
  %.not.i516 = icmp eq i64 %i.ni, 0
  br i1 %.not.i516, label %bb.ip, label %lean_dec.exit517

bb.ip:                                            ; preds = %lean_del_object.exit757
  %i.nj = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.nk = icmp sgt i32 %i.nj, 1
  br i1 %i.nk, label %bb.iq, label %bb.ir, !prof !17

bb.iq:                                            ; preds = %bb.ip
  %i.nl = add nsw i32 %i.nj, -1
  store i32 %i.nl, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit517

bb.ir:                                            ; preds = %bb.ip
  %.not.i593 = icmp eq i32 %i.nj, 0
  br i1 %.not.i593, label %lean_dec.exit517, label %bb.is

bb.is:                                            ; preds = %bb.ir
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit517

lean_dec.exit517:                                 ; preds = %bb.is, %bb.ir, %bb.iq, %lean_del_object.exit757
  %.val633 = load i32, ptr %i.mx, align 4, !tbaa !11 ; 4 uses
  %i.nm = icmp eq i32 %.val633, 1
  br i1 %i.nm, label %bb.it, label %bb.iy

bb.it:                                            ; preds = %lean_dec.exit517
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !15 ; 4 uses
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = and i64 %i.np, 1
  %.not.i514 = icmp eq i64 %i.nq, 0
  br i1 %.not.i514, label %bb.iu, label %bb.jd

bb.iu:                                            ; preds = %bb.it
  %i.nr = load i32, ptr %i.no, align 4, !tbaa !11 ; 3 uses
  %i.ns = icmp sgt i32 %i.nr, 1
  br i1 %i.ns, label %bb.iv, label %bb.iw, !prof !17

bb.iv:                                            ; preds = %bb.iu
  %i.nt = add nsw i32 %i.nr, -1
  store i32 %i.nt, ptr %i.no, align 4, !tbaa !11
  br label %bb.jd

bb.iw:                                            ; preds = %bb.iu
  %.not.i595 = icmp eq i32 %i.nr, 0
  br i1 %.not.i595, label %bb.jd, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.no) #12
  br label %bb.jd

bb.iy:                                            ; preds = %lean_dec.exit517
  br i1 %.not.i752, label %bb.iz, label %lean_dec.exit515

bb.iz:                                            ; preds = %bb.iy
  %i.nu = icmp sgt i32 %.val633, 1
  br i1 %i.nu, label %bb.ja, label %bb.jb, !prof !17

bb.ja:                                            ; preds = %bb.iz
  %i.nv = add nsw i32 %.val633, -1
  store i32 %i.nv, ptr %i.mx, align 4, !tbaa !11
  br label %lean_dec.exit515

bb.jb:                                            ; preds = %bb.iz
  %.not.i597 = icmp eq i32 %.val633, 0
  br i1 %.not.i597, label %lean_dec.exit515, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mx) #12
  br label %lean_dec.exit515

bb.jd:                                            ; preds = %bb.it, %bb.iv, %bb.iw, %bb.ix
  store ptr inttoptr (i64 1 to ptr), ptr %i.nn, align 8, !tbaa !15
  br label %lean_dec.exit545

lean_dec.exit515:                                 ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iy
  %i.nw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.nx, align 8, !tbaa !15
  br label %lean_dec.exit545

bb.je:                                            ; preds = %lean_obj_tag.exit755
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !15 ; 5 uses
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = and i64 %i.oa, 1
  %.not.i459 = icmp eq i64 %i.ob, 0
  br i1 %.not.i459, label %bb.jf, label %lean_inc.exit460

bb.jf:                                            ; preds = %bb.je
  %.val.i.i758 = load i32, ptr %i.nz, align 4, !tbaa !11 ; 3 uses
  %i.oc = icmp sgt i32 %.val.i.i758, 0
  br i1 %i.oc, label %bb.jg, label %bb.jh, !prof !17

bb.jg:                                            ; preds = %bb.jf
  %i.od = add nuw i32 %.val.i.i758, 1
  store i32 %i.od, ptr %i.nz, align 4, !tbaa !11
  br label %lean_inc.exit460

bb.jh:                                            ; preds = %bb.jf
  %.not.i.i759 = icmp eq i32 %.val.i.i758, 0
  br i1 %.not.i.i759, label %lean_inc.exit460, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.oe = atomicrmw sub ptr %i.nz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit460

lean_inc.exit460:                                 ; preds = %bb.ji, %bb.jh, %bb.jg, %bb.je
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.mx, i32 noundef 1)
  br label %lean_dec_ref_known.exit805.thread

bb.jj:                                            ; preds = %lean_dec.exit523
  %i.of = ptrtoint ptr %.0385 to i64
  %i.og = and i64 %i.of, 1
  %.not.i761 = icmp eq i64 %i.og, 0
  br i1 %.not.i761, label %bb.jk, label %lean_del_object.exit762

bb.jk:                                            ; preds = %bb.jj
  tail call void @lean_free_object(ptr noundef nonnull %.0385) #12
  br label %lean_del_object.exit762

lean_del_object.exit762:                          ; preds = %bb.jj, %bb.jk
  %i.oh = ptrtoint ptr %i.j to i64
  %i.oi = and i64 %i.oh, 1
  %.not.i510 = icmp eq i64 %i.oi, 0
  br i1 %.not.i510, label %bb.jl, label %lean_dec.exit511

bb.jl:                                            ; preds = %lean_del_object.exit762
  %i.oj = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.ok = icmp sgt i32 %i.oj, 1
  br i1 %i.ok, label %bb.jm, label %bb.jn, !prof !17

end_hunk_10
begin_hunk_11_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldBothDefEq:bb.a
lean_inc_ref.exit685:                             ; preds = %bb.hb, %bb.hc, %bb.hd
  %.val.i.i686 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.kc = icmp sgt i32 %.val.i.i686, 0
  br i1 %i.kc, label %bb.he, label %bb.hf, !prof !17

bb.he:                                            ; preds = %lean_inc_ref.exit685
  %i.kd = add nuw i32 %.val.i.i686, 1
  store i32 %i.kd, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit688

bb.hf:                                            ; preds = %lean_inc_ref.exit685
  %.not.i.i687 = icmp eq i32 %.val.i.i686, 0
  br i1 %.not.i.i687, label %lean_inc_ref.exit688, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ke = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit688

lean_inc_ref.exit688:                             ; preds = %bb.he, %bb.hf, %bb.hg
  %i.kf = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_tryHeuristic(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 14 uses
  %i.kg = ptrtoint ptr %i.kf to i64               ; 2 uses
  %i.kh = and i64 %i.kg, 1
  %.not.i689 = icmp eq i64 %i.kh, 0               ; 3 uses
  br i1 %.not.i689, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %lean_inc_ref.exit688
  %i.ki = lshr i64 %i.kg, 1
  %i.kj = trunc i64 %i.ki to i32
  br label %lean_obj_tag.exit692

bb.hi:                                            ; preds = %lean_inc_ref.exit688
  %i.kk = getelementptr i8, ptr %i.kf, i64 4
  %.val.i691 = load i32, ptr %i.kk, align 4
  %i.kl = lshr i32 %.val.i691, 24
  br label %lean_obj_tag.exit692

lean_obj_tag.exit692:                             ; preds = %bb.hh, %bb.hi
  %.0.i690 = phi i32 [ %i.kj, %bb.hh ], [ %i.kl, %bb.hi ]
  %i.km = icmp eq i32 %.0.i690, 0
  br i1 %i.km, label %bb.hj, label %bb.ny

bb.hj:                                            ; preds = %lean_obj_tag.exit692
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !15 ; 16 uses
  %.val565 = load i32, ptr %i.kf, align 8, !tbaa !11
  %i.kp = icmp eq i32 %.val565, 1                 ; 2 uses
  %.pre830 = ptrtoint ptr %i.ko to i64            ; 6 uses
  br i1 %i.kp, label %lean_dec.exit459, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.kq = and i64 %.pre830, 1
  %.not.i403 = icmp eq i64 %i.kq, 0
  br i1 %.not.i403, label %bb.hl, label %lean_inc.exit404

bb.hl:                                            ; preds = %bb.hk
  %.val.i.i693 = load i32, ptr %i.ko, align 4, !tbaa !11 ; 3 uses
  %i.kr = icmp sgt i32 %.val.i.i693, 0
  br i1 %i.kr, label %bb.hm, label %bb.hn, !prof !17

bb.hm:                                            ; preds = %bb.hl
  %i.ks = add nuw i32 %.val.i.i693, 1
  store i32 %i.ks, ptr %i.ko, align 4, !tbaa !11
  br label %lean_inc.exit404

bb.hn:                                            ; preds = %bb.hl
  %.not.i.i694 = icmp eq i32 %.val.i.i693, 0
  br i1 %.not.i.i694, label %lean_inc.exit404, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.kt = atomicrmw sub ptr %i.ko, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit404

lean_inc.exit404:                                 ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk
  br i1 %.not.i689, label %bb.hp, label %lean_dec.exit459

bb.hp:                                            ; preds = %lean_inc.exit404
  %i.ku = load i32, ptr %i.kf, align 8, !tbaa !11 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, 1
  br i1 %i.kv, label %bb.hq, label %bb.hr, !prof !17

bb.hq:                                            ; preds = %bb.hp
  %i.kw = add nsw i32 %i.ku, -1
  store i32 %i.kw, ptr %i.kf, align 8, !tbaa !11
  br label %lean_dec.exit459

bb.hr:                                            ; preds = %bb.hp
  %.not.i515 = icmp eq i32 %i.ku, 0
  br i1 %.not.i515, label %lean_dec.exit459, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kf) #12
  br label %lean_dec.exit459

lean_dec.exit459:                                 ; preds = %bb.hj, %lean_inc.exit404, %bb.hq, %bb.hr, %bb.hs
  %.0374 = phi ptr [ inttoptr (i64 1 to ptr), %bb.hs ], [ inttoptr (i64 1 to ptr), %lean_inc.exit404 ], [ inttoptr (i64 1 to ptr), %bb.hq ], [ inttoptr (i64 1 to ptr), %bb.hr ], [ %i.kf, %bb.hj ] ; 4 uses
  %i.kx = and i64 %.pre830, 510
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %bb.ht, label %bb.mp

bb.ht:                                            ; preds = %lean_dec.exit459
  %i.kz = ptrtoint ptr %.0374 to i64
  %i.la = and i64 %i.kz, 1
  %.not.i696 = icmp eq i64 %i.la, 0
  br i1 %.not.i696, label %bb.hu, label %lean_del_object.exit697

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_free_object(ptr noundef nonnull %.0374) #12
  br label %lean_del_object.exit697

lean_del_object.exit697:                          ; preds = %bb.ht, %bb.hu
  %.val.i.i698 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.lb = icmp sgt i32 %.val.i.i698, 0
  br i1 %i.lb, label %bb.hv, label %bb.hw, !prof !17

bb.hv:                                            ; preds = %lean_del_object.exit697
  %i.lc = add nuw i32 %.val.i.i698, 1
  store i32 %i.lc, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit700

bb.hw:                                            ; preds = %lean_del_object.exit697
  %.not.i.i699 = icmp eq i32 %.val.i.i698, 0
  br i1 %.not.i.i699, label %lean_inc_ref.exit700, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ld = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit700

lean_inc_ref.exit700:                             ; preds = %bb.hv, %bb.hw, %bb.hx
  %i.le = tail call ptr @l_Lean_Meta_unfoldDefinition_x3f(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12 ; 11 uses
  %i.lf = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lg = and i64 %i.lf, 1
  %.not.i701 = icmp eq i64 %i.lg, 0               ; 2 uses
  br i1 %.not.i701, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %lean_inc_ref.exit700
  %i.lh = lshr i64 %i.lf, 1
  %i.li = trunc i64 %i.lh to i32
  br label %lean_obj_tag.exit704

bb.hz:                                            ; preds = %lean_inc_ref.exit700
  %i.lj = getelementptr i8, ptr %i.le, i64 4
  %.val.i703 = load i32, ptr %i.lj, align 4
  %i.lk = lshr i32 %.val.i703, 24
  br label %lean_obj_tag.exit704

lean_obj_tag.exit704:                             ; preds = %bb.hy, %bb.hz
  %.0.i702 = phi i32 [ %i.li, %bb.hy ], [ %i.lk, %bb.hz ]
  %i.ll = icmp eq i32 %.0.i702, 0
  br i1 %i.ll, label %bb.ia, label %bb.lw

bb.ia:                                            ; preds = %lean_obj_tag.exit704
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !15 ; 7 uses
  %i.lo = ptrtoint ptr %i.ln to i64               ; 2 uses
  %i.lp = and i64 %i.lo, 1
  %.not.i401 = icmp eq i64 %i.lp, 0
  br i1 %.not.i401, label %bb.ib, label %bb.if

bb.ib:                                            ; preds = %bb.ia
  %.val.i.i705 = load i32, ptr %i.ln, align 4, !tbaa !11 ; 3 uses
  %i.lq = icmp sgt i32 %.val.i.i705, 0
  br i1 %i.lq, label %bb.ic, label %bb.id, !prof !17

bb.ic:                                            ; preds = %bb.ib
  %i.lr = add nuw i32 %.val.i.i705, 1
  store i32 %i.lr, ptr %i.ln, align 4, !tbaa !11
  br label %bb.ig

bb.id:                                            ; preds = %bb.ib
  %.not.i.i706 = icmp eq i32 %.val.i.i705, 0
  br i1 %.not.i.i706, label %bb.ig, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ls = atomicrmw sub ptr %i.ln, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.ig

bb.if:                                            ; preds = %bb.ia
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.le, i32 noundef 1)
  %i.lt = lshr i64 %i.lo, 1
  %i.lu = trunc i64 %i.lt to i32
  br label %lean_obj_tag.exit711

bb.ig:                                            ; preds = %bb.ie, %bb.id, %bb.ic
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.le, i32 noundef 1)
  %i.lv = getelementptr i8, ptr %i.ln, i64 4
  %.val.i710 = load i32, ptr %i.lv, align 4
  %i.lw = lshr i32 %.val.i710, 24
  br label %lean_obj_tag.exit711

lean_obj_tag.exit711:                             ; preds = %bb.if, %bb.ig
  %.0.i709 = phi i32 [ %i.lu, %bb.if ], [ %i.lw, %bb.ig ]
  %i.lx = icmp eq i32 %.0.i709, 0
  br i1 %i.lx, label %bb.ih, label %bb.kc

bb.ih:                                            ; preds = %lean_obj_tag.exit711
  %i.ly = and i64 %.pre830, 1
  %.not.i456 = icmp eq i64 %i.ly, 0
  br i1 %.not.i456, label %bb.ii, label %lean_dec.exit457

bb.ii:                                            ; preds = %bb.ih
  %i.lz = load i32, ptr %i.ko, align 512, !tbaa !11 ; 3 uses
  %i.ma = icmp sgt i32 %i.lz, 1
  br i1 %i.ma, label %bb.ij, label %bb.ik, !prof !17

bb.ij:                                            ; preds = %bb.ii
  %i.mb = add nsw i32 %i.lz, -1
  store i32 %i.mb, ptr %i.ko, align 512, !tbaa !11
  br label %lean_dec.exit457

bb.ik:                                            ; preds = %bb.ii
  %.not.i517 = icmp eq i32 %i.lz, 0
  br i1 %.not.i517, label %lean_dec.exit457, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ko) #12
  br label %lean_dec.exit457

lean_dec.exit457:                                 ; preds = %bb.il, %bb.ik, %bb.ij, %bb.ih
  %i.mc = tail call ptr @l_Lean_Meta_unfoldDefinition_x3f(ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12 ; 14 uses
  %i.md = ptrtoint ptr %i.mc to i64               ; 2 uses
  %i.me = and i64 %i.md, 1
  %.not.i712 = icmp eq i64 %i.me, 0               ; 3 uses
  br i1 %.not.i712, label %bb.in, label %bb.im

bb.im:                                            ; preds = %lean_dec.exit457
  %i.mf = lshr i64 %i.md, 1
  %i.mg = trunc i64 %i.mf to i32
  br label %lean_obj_tag.exit715

bb.in:                                            ; preds = %lean_dec.exit457
  %i.mh = getelementptr i8, ptr %i.mc, i64 4
  %.val.i714 = load i32, ptr %i.mh, align 4
  %i.mi = lshr i32 %.val.i714, 24
  br label %lean_obj_tag.exit715

lean_obj_tag.exit715:                             ; preds = %bb.im, %bb.in
  %.0.i713 = phi i32 [ %i.mg, %bb.im ], [ %i.mi, %bb.in ]
  %i.mj = icmp eq i32 %.0.i713, 0
  br i1 %i.mj, label %bb.io, label %bb.jn

bb.io:                                            ; preds = %lean_obj_tag.exit715
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !15 ; 7 uses
  %.val564 = load i32, ptr %i.mc, align 8, !tbaa !11
  %i.mm = icmp eq i32 %.val564, 1                 ; 2 uses
  %.pre832 = ptrtoint ptr %i.ml to i64            ; 2 uses
  %.pre834 = and i64 %.pre832, 1                  ; 2 uses
  br i1 %i.mm, label %lean_dec.exit455, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %.not.i399 = icmp eq i64 %.pre834, 0
  br i1 %.not.i399, label %bb.iq, label %lean_inc.exit400

bb.iq:                                            ; preds = %bb.ip
  %.val.i.i716 = load i32, ptr %i.ml, align 4, !tbaa !11 ; 3 uses
  %i.mn = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.mn, label %bb.ir, label %bb.is, !prof !17

bb.ir:                                            ; preds = %bb.iq
  %i.mo = add nuw i32 %.val.i.i716, 1
  store i32 %i.mo, ptr %i.ml, align 4, !tbaa !11
  br label %lean_inc.exit400

bb.is:                                            ; preds = %bb.iq
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc.exit400, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.mp = atomicrmw sub ptr %i.ml, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit400

lean_inc.exit400:                                 ; preds = %bb.it, %bb.is, %bb.ir, %bb.ip
  br i1 %.not.i712, label %bb.iu, label %lean_dec.exit455

bb.iu:                                            ; preds = %lean_inc.exit400
  %i.mq = load i32, ptr %i.mc, align 8, !tbaa !11 ; 3 uses
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %bb.iv, label %bb.iw, !prof !17

bb.iv:                                            ; preds = %bb.iu
  %i.ms = add nsw i32 %i.mq, -1
  store i32 %i.ms, ptr %i.mc, align 8, !tbaa !11
  br label %lean_dec.exit455

bb.iw:                                            ; preds = %bb.iu
  %.not.i519 = icmp eq i32 %i.mq, 0
  br i1 %.not.i519, label %lean_dec.exit455, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mc) #12
  br label %lean_dec.exit455

lean_dec.exit455:                                 ; preds = %bb.io, %lean_inc.exit400, %bb.iv, %bb.iw, %bb.ix
  %.0372 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ix ], [ inttoptr (i64 1 to ptr), %lean_inc.exit400 ], [ inttoptr (i64 1 to ptr), %bb.iv ], [ inttoptr (i64 1 to ptr), %bb.iw ], [ %i.mc, %bb.io ] ; 4 uses
  %.not.i719 = icmp eq i64 %.pre834, 0
  br i1 %.not.i719, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %lean_dec.exit455
  %i.mt = lshr i64 %.pre832, 1
  %i.mu = trunc i64 %i.mt to i32
  br label %lean_obj_tag.exit722

bb.iz:                                            ; preds = %lean_dec.exit455
  %i.mv = getelementptr i8, ptr %i.ml, i64 4
  %.val.i721 = load i32, ptr %i.mv, align 4
  %i.mw = lshr i32 %.val.i721, 24
  br label %lean_obj_tag.exit722

lean_obj_tag.exit722:                             ; preds = %bb.iy, %bb.iz
  %.0.i720 = phi i32 [ %i.mu, %bb.iy ], [ %i.mw, %bb.iz ]
  %i.mx = icmp eq i32 %.0.i720, 0
  br i1 %i.mx, label %bb.ja, label %bb.jh

bb.ja:                                            ; preds = %lean_obj_tag.exit722
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %1, i32 noundef 2)
  %i.my = ptrtoint ptr %0 to i64
  %i.mz = and i64 %i.my, 1
  %.not.i452 = icmp eq i64 %i.mz, 0
  br i1 %.not.i452, label %bb.jb, label %lean_dec.exit453

bb.jb:                                            ; preds = %bb.ja
  %i.na = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 1
  br i1 %i.nb, label %bb.jc, label %bb.jd, !prof !17

bb.jc:                                            ; preds = %bb.jb
  %i.nc = add nsw i32 %i.na, -1
  store i32 %i.nc, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit453

bb.jd:                                            ; preds = %bb.jb
  %.not.i521 = icmp eq i32 %i.na, 0
  br i1 %.not.i521, label %lean_dec.exit453, label %bb.je

bb.je:                                            ; preds = %bb.jd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit453

lean_dec.exit453:                                 ; preds = %bb.je, %bb.jd, %bb.jc, %bb.ja
  br i1 %i.mm, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %lean_dec.exit453
  %i.nd = getelementptr inbounds nuw i8, ptr %.0372, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.nd, align 8, !tbaa !15
  br label %lean_dec.exit485

bb.jg:                                            ; preds = %lean_dec.exit453
  %i.ne = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.nf, align 8, !tbaa !15
  br label %lean_dec.exit485

bb.jh:                                            ; preds = %lean_obj_tag.exit722
  %i.ng = ptrtoint ptr %.0372 to i64
  %i.nh = and i64 %i.ng, 1
  %.not.i723 = icmp eq i64 %i.nh, 0
  br i1 %.not.i723, label %bb.ji, label %lean_del_object.exit724

bb.ji:                                            ; preds = %bb.jh
  tail call void @lean_free_object(ptr noundef nonnull %.0372) #12
  br label %lean_del_object.exit724

lean_del_object.exit724:                          ; preds = %bb.jh, %bb.ji
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !15 ; 5 uses
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = and i64 %i.nk, 1
  %.not.i397 = icmp eq i64 %i.nl, 0
  br i1 %.not.i397, label %bb.jj, label %lean_inc.exit398

bb.jj:                                            ; preds = %lean_del_object.exit724
  %.val.i.i725 = load i32, ptr %i.nj, align 4, !tbaa !11 ; 3 uses
  %i.nm = icmp sgt i32 %.val.i.i725, 0
  br i1 %i.nm, label %bb.jk, label %bb.jl, !prof !17

bb.jk:                                            ; preds = %bb.jj
  %i.nn = add nuw i32 %.val.i.i725, 1
  store i32 %i.nn, ptr %i.nj, align 4, !tbaa !11
  br label %lean_inc.exit398

bb.jl:                                            ; preds = %bb.jj
  %.not.i.i726 = icmp eq i32 %.val.i.i725, 0
  br i1 %.not.i.i726, label %lean_inc.exit398, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.no = atomicrmw sub ptr %i.nj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit398

lean_inc.exit398:                                 ; preds = %bb.jm, %bb.jl, %bb.jk, %lean_del_object.exit724
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ml, i32 noundef 1)
  %i.np = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqRight(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.nj, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %lean_dec.exit485

bb.jn:                                            ; preds = %lean_obj_tag.exit715
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %1, i32 noundef 2)
  %i.nq = ptrtoint ptr %0 to i64
  %i.nr = and i64 %i.nq, 1
  %.not.i450 = icmp eq i64 %i.nr, 0
  br i1 %.not.i450, label %bb.jo, label %lean_dec.exit451

bb.jo:                                            ; preds = %bb.jn
  %i.ns = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.nt = icmp sgt i32 %i.ns, 1
  br i1 %i.nt, label %bb.jp, label %bb.jq, !prof !17

bb.jp:                                            ; preds = %bb.jo
  %i.nu = add nsw i32 %i.ns, -1
  store i32 %i.nu, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit451

bb.jq:                                            ; preds = %bb.jo
  %.not.i523 = icmp eq i32 %i.ns, 0
  br i1 %.not.i523, label %lean_dec.exit451, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit451

lean_dec.exit451:                                 ; preds = %bb.jr, %bb.jq, %bb.jp, %bb.jn
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !15 ; 5 uses
  %.val563 = load i32, ptr %i.mc, align 8, !tbaa !11
  %i.nx = icmp eq i32 %.val563, 1
  br i1 %i.nx, label %lean_dec.exit485, label %bb.js

bb.js:                                            ; preds = %lean_dec.exit451
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = and i64 %i.ny, 1
  %.not.i395 = icmp eq i64 %i.nz, 0
  br i1 %.not.i395, label %bb.jt, label %lean_inc.exit396

bb.jt:                                            ; preds = %bb.js
  %.val.i.i728 = load i32, ptr %i.nw, align 4, !tbaa !11 ; 3 uses
  %i.oa = icmp sgt i32 %.val.i.i728, 0
  br i1 %i.oa, label %bb.ju, label %bb.jv, !prof !17

bb.ju:                                            ; preds = %bb.jt
  %i.ob = add nuw i32 %.val.i.i728, 1
  store i32 %i.ob, ptr %i.nw, align 4, !tbaa !11
  br label %lean_inc.exit396

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i729 = icmp eq i32 %.val.i.i728, 0
  br i1 %.not.i.i729, label %lean_inc.exit396, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.oc = atomicrmw sub ptr %i.nw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit396

lean_inc.exit396:                                 ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.js
  br i1 %.not.i712, label %bb.jx, label %bb.kb

bb.jx:                                            ; preds = %lean_inc.exit396
  %i.od = load i32, ptr %i.mc, align 8, !tbaa !11 ; 3 uses
  %i.oe = icmp sgt i32 %i.od, 1
  br i1 %i.oe, label %bb.jy, label %bb.jz, !prof !17

bb.jy:                                            ; preds = %bb.jx
  %i.of = add nsw i32 %i.od, -1
  store i32 %i.of, ptr %i.mc, align 8, !tbaa !11
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jx
  %.not.i525 = icmp eq i32 %i.od, 0
  br i1 %.not.i525, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mc) #12
  br label %bb.kb

bb.kb:                                            ; preds = %lean_inc.exit396, %bb.jy, %bb.jz, %bb.ka
  %i.og = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store ptr %i.nw, ptr %i.oh, align 8, !tbaa !15
  br label %lean_dec.exit485

bb.kc:                                            ; preds = %lean_obj_tag.exit711
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %1, i32 noundef 2)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !15 ; 9 uses
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = and i64 %i.ok, 1
  %.not.i393 = icmp eq i64 %i.ol, 0               ; 2 uses
  br i1 %.not.i393, label %bb.kd, label %lean_inc.exit394

bb.kd:                                            ; preds = %bb.kc
  %.val.i.i731 = load i32, ptr %i.oj, align 4, !tbaa !11 ; 3 uses
  %i.om = icmp sgt i32 %.val.i.i731, 0
  br i1 %i.om, label %bb.ke, label %bb.kf, !prof !17

bb.ke:                                            ; preds = %bb.kd
  %i.on = add nuw i32 %.val.i.i731, 1
  store i32 %i.on, ptr %i.oj, align 4, !tbaa !11
  br label %lean_inc.exit394

bb.kf:                                            ; preds = %bb.kd
  %.not.i.i732 = icmp eq i32 %.val.i.i731, 0
  br i1 %.not.i.i732, label %lean_inc.exit394, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.oo = atomicrmw sub ptr %i.oj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit394

lean_inc.exit394:                                 ; preds = %bb.kg, %bb.kf, %bb.ke, %bb.kc
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ln, i32 noundef 1)
  %i.op = and i64 %.pre830, 1
  %.not.i446 = icmp eq i64 %i.op, 0
  br i1 %.not.i446, label %bb.kh, label %lean_dec.exit447

bb.kh:                                            ; preds = %lean_inc.exit394
  %i.oq = load i32, ptr %i.ko, align 512, !tbaa !11 ; 3 uses
  %i.or = icmp sgt i32 %i.oq, 1
  br i1 %i.or, label %bb.ki, label %bb.kj, !prof !17

bb.ki:                                            ; preds = %bb.kh
  %i.os = add nsw i32 %i.oq, -1
  store i32 %i.os, ptr %i.ko, align 512, !tbaa !11
  br label %lean_dec.exit447

bb.kj:                                            ; preds = %bb.kh
  %.not.i527 = icmp eq i32 %i.oq, 0
  br i1 %.not.i527, label %lean_dec.exit447, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ko) #12
  br label %lean_dec.exit447

lean_dec.exit447:                                 ; preds = %bb.kk, %bb.kj, %bb.ki, %lean_inc.exit394
  %.val.i.i734 = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.ot = icmp sgt i32 %.val.i.i734, 0
  br i1 %i.ot, label %bb.kl, label %bb.km, !prof !17

bb.kl:                                            ; preds = %lean_dec.exit447
  %i.ou = add nuw i32 %.val.i.i734, 1
  store i32 %i.ou, ptr %2, align 4, !tbaa !11
  br label %lean_inc_ref.exit736

bb.km:                                            ; preds = %lean_dec.exit447
  %.not.i.i735 = icmp eq i32 %.val.i.i734, 0
  br i1 %.not.i.i735, label %lean_inc_ref.exit736, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.ov = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit736

lean_inc_ref.exit736:                             ; preds = %bb.kl, %bb.km, %bb.kn
  %i.ow = tail call ptr @l_Lean_Meta_unfoldDefinition_x3f(ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12 ; 11 uses
  %i.ox = ptrtoint ptr %i.ow to i64               ; 2 uses
  %i.oy = and i64 %i.ox, 1
  %.not.i737 = icmp eq i64 %i.oy, 0               ; 2 uses
  br i1 %.not.i737, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %lean_inc_ref.exit736
  %i.oz = lshr i64 %i.ox, 1
  %i.pa = trunc i64 %i.oz to i32
  br label %lean_obj_tag.exit740

bb.kp:                                            ; preds = %lean_inc_ref.exit736
  %i.pb = getelementptr i8, ptr %i.ow, i64 4
  %.val.i739 = load i32, ptr %i.pb, align 4
  %i.pc = lshr i32 %.val.i739, 24
  br label %lean_obj_tag.exit740

lean_obj_tag.exit740:                             ; preds = %bb.ko, %bb.kp
  %.0.i738 = phi i32 [ %i.pa, %bb.ko ], [ %i.pc, %bb.kp ]
  %i.pd = icmp eq i32 %.0.i738, 0
  br i1 %i.pd, label %bb.kq, label %bb.ld

bb.kq:                                            ; preds = %lean_obj_tag.exit740
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !15 ; 7 uses
  %i.pg = ptrtoint ptr %i.pf to i64               ; 2 uses
  %i.ph = and i64 %i.pg, 1
  %.not.i391 = icmp eq i64 %i.ph, 0
  br i1 %.not.i391, label %bb.kr, label %bb.kv

bb.kr:                                            ; preds = %bb.kq
  %.val.i.i741 = load i32, ptr %i.pf, align 4, !tbaa !11 ; 3 uses
  %i.pi = icmp sgt i32 %.val.i.i741, 0
  br i1 %i.pi, label %bb.ks, label %bb.kt, !prof !17

bb.ks:                                            ; preds = %bb.kr
  %i.pj = add nuw i32 %.val.i.i741, 1
  store i32 %i.pj, ptr %i.pf, align 4, !tbaa !11
  br label %bb.kw

bb.kt:                                            ; preds = %bb.kr
  %.not.i.i742 = icmp eq i32 %.val.i.i741, 0
  br i1 %.not.i.i742, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.pk = atomicrmw sub ptr %i.pf, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ow, i32 noundef 1)
  %i.pl = lshr i64 %i.pg, 1
  %i.pm = trunc i64 %i.pl to i32
  br label %lean_obj_tag.exit747

bb.kw:                                            ; preds = %bb.ku, %bb.kt, %bb.ks
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ow, i32 noundef 1)
  %i.pn = getelementptr i8, ptr %i.pf, i64 4
  %.val.i746 = load i32, ptr %i.pn, align 4
  %i.po = lshr i32 %.val.i746, 24
  br label %lean_obj_tag.exit747

lean_obj_tag.exit747:                             ; preds = %bb.kv, %bb.kw
  %.0.i745 = phi i32 [ %i.pm, %bb.kv ], [ %i.po, %bb.kw ]
  %i.pp = icmp eq i32 %.0.i745, 0
  br i1 %i.pp, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %lean_obj_tag.exit747
  %i.pq = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqLeft(ptr noundef %0, ptr noundef %i.oj, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %lean_dec.exit485

bb.ky:                                            ; preds = %lean_obj_tag.exit747
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %2, i32 noundef 2)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !15 ; 5 uses
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = and i64 %i.pt, 1
  %.not.i389 = icmp eq i64 %i.pu, 0
  br i1 %.not.i389, label %bb.kz, label %lean_inc.exit390

bb.kz:                                            ; preds = %bb.ky
  %.val.i.i748 = load i32, ptr %i.ps, align 4, !tbaa !11 ; 3 uses
  %i.pv = icmp sgt i32 %.val.i.i748, 0
  br i1 %i.pv, label %bb.la, label %bb.lb, !prof !17

bb.la:                                            ; preds = %bb.kz
  %i.pw = add nuw i32 %.val.i.i748, 1
  store i32 %i.pw, ptr %i.ps, align 4, !tbaa !11
  br label %lean_inc.exit390

bb.lb:                                            ; preds = %bb.kz
  %.not.i.i749 = icmp eq i32 %.val.i.i748, 0
  br i1 %.not.i.i749, label %lean_inc.exit390, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.px = atomicrmw sub ptr %i.ps, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit390

lean_inc.exit390:                                 ; preds = %bb.lc, %bb.lb, %bb.la, %bb.ky
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.pf, i32 noundef 1)
  %i.py = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqLeftRight(ptr noundef %0, ptr noundef %i.oj, ptr noundef %i.ps, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %lean_dec.exit485

bb.ld:                                            ; preds = %lean_obj_tag.exit740
  br i1 %.not.i393, label %bb.le, label %lean_dec.exit445

bb.le:                                            ; preds = %bb.ld
  %i.pz = load i32, ptr %i.oj, align 4, !tbaa !11 ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, 1
  br i1 %i.qa, label %bb.lf, label %bb.lg, !prof !17

bb.lf:                                            ; preds = %bb.le
  %i.qb = add nsw i32 %i.pz, -1
  store i32 %i.qb, ptr %i.oj, align 4, !tbaa !11
  br label %lean_dec.exit445

bb.lg:                                            ; preds = %bb.le
  %.not.i529 = icmp eq i32 %i.pz, 0
  br i1 %.not.i529, label %lean_dec.exit445, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oj) #12
  br label %lean_dec.exit445

lean_dec.exit445:                                 ; preds = %bb.lh, %bb.lg, %bb.lf, %bb.ld
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %2, i32 noundef 2)
  %i.qc = ptrtoint ptr %0 to i64
  %i.qd = and i64 %i.qc, 1
  %.not.i442 = icmp eq i64 %i.qd, 0
  br i1 %.not.i442, label %bb.li, label %lean_dec.exit443

bb.li:                                            ; preds = %lean_dec.exit445
  %i.qe = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.qf = icmp sgt i32 %i.qe, 1
  br i1 %i.qf, label %bb.lj, label %bb.lk, !prof !17

bb.lj:                                            ; preds = %bb.li
  %i.qg = add nsw i32 %i.qe, -1
  store i32 %i.qg, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit443

bb.lk:                                            ; preds = %bb.li
  %.not.i531 = icmp eq i32 %i.qe, 0
  br i1 %.not.i531, label %lean_dec.exit443, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit443

lean_dec.exit443:                                 ; preds = %bb.ll, %bb.lk, %bb.lj, %lean_dec.exit445
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !15 ; 5 uses
  %.val562 = load i32, ptr %i.ow, align 8, !tbaa !11
  %i.qj = icmp eq i32 %.val562, 1
  br i1 %i.qj, label %lean_dec.exit485, label %bb.lm

bb.lm:                                            ; preds = %lean_dec.exit443
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = and i64 %i.qk, 1
  %.not.i387 = icmp eq i64 %i.ql, 0
  br i1 %.not.i387, label %bb.ln, label %lean_inc.exit388

bb.ln:                                            ; preds = %bb.lm
  %.val.i.i751 = load i32, ptr %i.qi, align 4, !tbaa !11 ; 3 uses
  %i.qm = icmp sgt i32 %.val.i.i751, 0
  br i1 %i.qm, label %bb.lo, label %bb.lp, !prof !17

bb.lo:                                            ; preds = %bb.ln
  %i.qn = add nuw i32 %.val.i.i751, 1
  store i32 %i.qn, ptr %i.qi, align 4, !tbaa !11
  br label %lean_inc.exit388

bb.lp:                                            ; preds = %bb.ln
  %.not.i.i752 = icmp eq i32 %.val.i.i751, 0
  br i1 %.not.i.i752, label %lean_inc.exit388, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.qo = atomicrmw sub ptr %i.qi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit388

lean_inc.exit388:                                 ; preds = %bb.lq, %bb.lp, %bb.lo, %bb.lm
  br i1 %.not.i737, label %bb.lr, label %bb.lv

bb.lr:                                            ; preds = %lean_inc.exit388
  %i.qp = load i32, ptr %i.ow, align 8, !tbaa !11 ; 3 uses
  %i.qq = icmp sgt i32 %i.qp, 1
  br i1 %i.qq, label %bb.ls, label %bb.lt, !prof !17

bb.ls:                                            ; preds = %bb.lr
  %i.qr = add nsw i32 %i.qp, -1
  store i32 %i.qr, ptr %i.ow, align 8, !tbaa !11
  br label %bb.lv

bb.lt:                                            ; preds = %bb.lr
  %.not.i533 = icmp eq i32 %i.qp, 0
  br i1 %.not.i533, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ow) #12
  br label %bb.lv

bb.lv:                                            ; preds = %lean_inc.exit388, %bb.ls, %bb.lt, %bb.lu
  %i.qs = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store ptr %i.qi, ptr %i.qt, align 8, !tbaa !15
  br label %lean_dec.exit485

bb.lw:                                            ; preds = %lean_obj_tag.exit704
  %i.qu = and i64 %.pre830, 1
  %.not.i438 = icmp eq i64 %i.qu, 0
  br i1 %.not.i438, label %bb.lx, label %lean_dec.exit439

bb.lx:                                            ; preds = %bb.lw
  %i.qv = load i32, ptr %i.ko, align 512, !tbaa !11 ; 3 uses
  %i.qw = icmp sgt i32 %i.qv, 1
  br i1 %i.qw, label %bb.ly, label %bb.lz, !prof !17

bb.ly:                                            ; preds = %bb.lx
  %i.qx = add nsw i32 %i.qv, -1
  store i32 %i.qx, ptr %i.ko, align 512, !tbaa !11
  br label %lean_dec.exit439

bb.lz:                                            ; preds = %bb.lx
  %.not.i535 = icmp eq i32 %i.qv, 0
  br i1 %.not.i535, label %lean_dec.exit439, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ko) #12
  br label %lean_dec.exit439

lean_dec.exit439:                                 ; preds = %bb.ma, %bb.lz, %bb.ly, %bb.lw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %2, i32 noundef 2)
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %1, i32 noundef 2)
  %i.qy = ptrtoint ptr %0 to i64
  %i.qz = and i64 %i.qy, 1
  %.not.i436 = icmp eq i64 %i.qz, 0
  br i1 %.not.i436, label %bb.mb, label %lean_dec.exit437

bb.mb:                                            ; preds = %lean_dec.exit439
  %i.ra = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.rb = icmp sgt i32 %i.ra, 1
  br i1 %i.rb, label %bb.mc, label %bb.md, !prof !17

bb.mc:                                            ; preds = %bb.mb
  %i.rc = add nsw i32 %i.ra, -1
  store i32 %i.rc, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit437

bb.md:                                            ; preds = %bb.mb
  %.not.i537 = icmp eq i32 %i.ra, 0
  br i1 %.not.i537, label %lean_dec.exit437, label %bb.me

bb.me:                                            ; preds = %bb.md
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit437

lean_dec.exit437:                                 ; preds = %bb.me, %bb.md, %bb.mc, %lean_dec.exit439
  %i.rd = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !15 ; 5 uses
  %.val561 = load i32, ptr %i.le, align 8, !tbaa !11
  %i.rf = icmp eq i32 %.val561, 1
  br i1 %i.rf, label %lean_dec.exit485, label %bb.mf

bb.mf:                                            ; preds = %lean_dec.exit437
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = and i64 %i.rg, 1
  %.not.i385 = icmp eq i64 %i.rh, 0
  br i1 %.not.i385, label %bb.mg, label %lean_inc.exit386

bb.mg:                                            ; preds = %bb.mf
  %.val.i.i754 = load i32, ptr %i.re, align 4, !tbaa !11 ; 3 uses
  %i.ri = icmp sgt i32 %.val.i.i754, 0
  br i1 %i.ri, label %bb.mh, label %bb.mi, !prof !17

bb.mh:                                            ; preds = %bb.mg
  %i.rj = add nuw i32 %.val.i.i754, 1
  store i32 %i.rj, ptr %i.re, align 4, !tbaa !11
  br label %lean_inc.exit386

bb.mi:                                            ; preds = %bb.mg
  %.not.i.i755 = icmp eq i32 %.val.i.i754, 0
  br i1 %.not.i.i755, label %lean_inc.exit386, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.rk = atomicrmw sub ptr %i.re, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit386

lean_inc.exit386:                                 ; preds = %bb.mj, %bb.mi, %bb.mh, %bb.mf
  br i1 %.not.i701, label %bb.mk, label %bb.mo

bb.mk:                                            ; preds = %lean_inc.exit386
  %i.rl = load i32, ptr %i.le, align 8, !tbaa !11 ; 3 uses
  %i.rm = icmp sgt i32 %i.rl, 1
  br i1 %i.rm, label %bb.ml, label %bb.mm, !prof !17

bb.ml:                                            ; preds = %bb.mk
  %i.rn = add nsw i32 %i.rl, -1
  store i32 %i.rn, ptr %i.le, align 8, !tbaa !11
  br label %bb.mo

bb.mm:                                            ; preds = %bb.mk
  %.not.i539 = icmp eq i32 %i.rl, 0
  br i1 %.not.i539, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.le) #12
  br label %bb.mo

bb.mo:                                            ; preds = %lean_inc.exit386, %bb.ml, %bb.mm, %bb.mn
  %i.ro = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  store ptr %i.re, ptr %i.rp, align 8, !tbaa !15
  br label %lean_dec.exit485

bb.mp:                                            ; preds = %lean_dec.exit459
  %i.rq = and i64 %.pre830, 1
  %.not.i432 = icmp eq i64 %i.rq, 0
  br i1 %.not.i432, label %bb.mq, label %lean_dec.exit433

bb.mq:                                            ; preds = %bb.mp
  %i.rr = load i32, ptr %i.ko, align 4, !tbaa !11 ; 3 uses
  %i.rs = icmp sgt i32 %i.rr, 1
  br i1 %i.rs, label %bb.mr, label %bb.ms, !prof !17

bb.mr:                                            ; preds = %bb.mq
  %i.rt = add nsw i32 %i.rr, -1
  store i32 %i.rt, ptr %i.ko, align 4, !tbaa !11
  br label %lean_dec.exit433

bb.ms:                                            ; preds = %bb.mq
  %.not.i541 = icmp eq i32 %i.rr, 0
  br i1 %.not.i541, label %lean_dec.exit433, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ko) #12
  br label %lean_dec.exit433

lean_dec.exit433:                                 ; preds = %bb.mt, %bb.ms, %bb.mr, %bb.mp
  %.val.i757 = load i32, ptr %2, align 4, !tbaa !11 ; 4 uses
  %i.ru = icmp eq i32 %.val.i757, 1
  br i1 %i.ru, label %.preheader.i759, label %bb.nc

.preheader.i759:                                  ; preds = %lean_dec.exit433
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !15 ; 4 uses
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = and i64 %i.rx, 1
  %.not.i.i761 = icmp eq i64 %i.ry, 0
  br i1 %.not.i.i761, label %bb.mu, label %lean_dec.exit.i762

bb.mu:                                            ; preds = %.preheader.i759
  %i.rz = load i32, ptr %i.rw, align 4, !tbaa !11 ; 3 uses
  %i.sa = icmp sgt i32 %i.rz, 1
  br i1 %i.sa, label %bb.mv, label %bb.mw, !prof !17

bb.mv:                                            ; preds = %bb.mu
  %i.sb = add nsw i32 %i.rz, -1
  store i32 %i.sb, ptr %i.rw, align 4, !tbaa !11
  br label %lean_dec.exit.i762

bb.mw:                                            ; preds = %bb.mu
  %.not.i7.i766 = icmp eq i32 %i.rz, 0
  br i1 %.not.i7.i766, label %lean_dec.exit.i762, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rw) #12
  br label %lean_dec.exit.i762

lean_dec.exit.i762:                               ; preds = %bb.mx, %bb.mw, %bb.mv, %.preheader.i759
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !15 ; 4 uses
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = and i64 %i.se, 1
  %.not.i.i761.1 = icmp eq i64 %i.sf, 0
  br i1 %.not.i.i761.1, label %bb.my, label %lean_dec.exit.i762.1

bb.my:                                            ; preds = %lean_dec.exit.i762
  %i.sg = load i32, ptr %i.sd, align 4, !tbaa !11 ; 3 uses
  %i.sh = icmp sgt i32 %i.sg, 1
  br i1 %i.sh, label %bb.nb, label %bb.mz, !prof !17

bb.mz:                                            ; preds = %bb.my
  %.not.i7.i766.1 = icmp eq i32 %i.sg, 0
  br i1 %.not.i7.i766.1, label %lean_dec.exit.i762.1, label %bb.na

bb.na:                                            ; preds = %bb.mz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sd) #12
  br label %lean_dec.exit.i762.1

bb.nb:                                            ; preds = %bb.my
  %i.si = add nsw i32 %i.sg, -1
  store i32 %i.si, ptr %i.sd, align 4, !tbaa !11
  br label %lean_dec.exit.i762.1

lean_dec.exit.i762.1:                             ; preds = %bb.nb, %bb.na, %bb.mz, %lean_dec.exit.i762
  tail call void @lean_free_object(ptr noundef nonnull %2) #12
  br label %lean_dec_ref_known.exit767

bb.nc:                                            ; preds = %lean_dec.exit433
  %i.sj = icmp sgt i32 %.val.i757, 1
  br i1 %i.sj, label %bb.nd, label %bb.ne, !prof !17

bb.nd:                                            ; preds = %bb.nc
  %i.sk = add nsw i32 %.val.i757, -1
  store i32 %i.sk, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit767

bb.ne:                                            ; preds = %bb.nc
  %.not.i8.i758 = icmp eq i32 %.val.i757, 0
  br i1 %.not.i8.i758, label %lean_dec_ref_known.exit767, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref_known.exit767

lean_dec_ref_known.exit767:                       ; preds = %lean_dec.exit.i762.1, %bb.nd, %bb.ne, %bb.nf
  %.val.i768 = load i32, ptr %1, align 4, !tbaa !11 ; 4 uses
  %i.sl = icmp eq i32 %.val.i768, 1
  br i1 %i.sl, label %.preheader.i770, label %bb.no

end_hunk_11
begin_hunk_12_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldReducibleDefEq:bb.a

bb.q:                                             ; preds = %.preheader.i
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !11 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !17

bb.r:                                             ; preds = %bb.q
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.s:                                             ; preds = %bb.q
  %.not.i7.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #12
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.o) #12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %lean_inc.exit269
  %i.ak = icmp sgt i32 %.val.i387, 1
  br i1 %i.ak, label %bb.v, label %bb.w, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.al = add nsw i32 %.val.i387, -1
  store i32 %i.al, ptr %i.o, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.w:                                             ; preds = %bb.u
  %.not.i8.i = icmp eq i32 %.val.i387, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #12
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.v, %bb.w, %bb.x
  %i.am = tail call ptr @l_Lean_ConstantInfo_name(ptr noundef %1) #12 ; 24 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i266 = icmp eq i64 %i.ao, 0               ; 7 uses
  br i1 %.not.i266, label %bb.y, label %lean_inc.exit267

bb.y:                                             ; preds = %lean_dec_ref_known.exit
  %.val.i.i389 = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.ap = icmp sgt i32 %.val.i.i389, 0
  br i1 %i.ap, label %bb.z, label %bb.aa, !prof !17

bb.z:                                             ; preds = %bb.y
  %i.aq = add nuw i32 %.val.i.i389, 1
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !11
  br label %lean_inc.exit267

bb.aa:                                            ; preds = %bb.y
  %.not.i.i390 = icmp eq i32 %.val.i.i389, 0
  br i1 %.not.i.i390, label %lean_inc.exit267, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = atomicrmw sub ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit267

lean_inc.exit267:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %lean_dec_ref_known.exit
  %i.as = tail call ptr @l_Lean_isReducible___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldReducibleDefEq_spec__0(ptr noundef %i.am, ptr poison, ptr poison, ptr poison, ptr noundef %7) ; 13 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = and i64 %i.at, 1
  %.not.i392 = icmp eq i64 %i.au, 0               ; 2 uses
  br i1 %.not.i392, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %lean_inc.exit267
  %i.av = lshr i64 %i.at, 1
  %i.aw = trunc i64 %i.av to i32
  br label %lean_obj_tag.exit395

bb.ad:                                            ; preds = %lean_inc.exit267
  %i.ax = getelementptr i8, ptr %i.as, i64 4
  %.val.i394 = load i32, ptr %i.ax, align 4
  %i.ay = lshr i32 %.val.i394, 24
  br label %lean_obj_tag.exit395

lean_obj_tag.exit395:                             ; preds = %bb.ac, %bb.ad
  %.0.i393 = phi i32 [ %i.aw, %bb.ac ], [ %i.ay, %bb.ad ]
  %i.az = icmp eq i32 %.0.i393, 0
  br i1 %i.az, label %bb.ae, label %bb.gd

bb.ae:                                            ; preds = %lean_obj_tag.exit395
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 13 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i264 = icmp eq i64 %i.bd, 0               ; 4 uses
  br i1 %.not.i264, label %bb.af, label %lean_inc.exit265

bb.af:                                            ; preds = %bb.ae
  %.val.i.i396 = load i32, ptr %i.bb, align 4, !tbaa !11 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i396, 0
  br i1 %i.be, label %bb.ag, label %bb.ah, !prof !17

bb.ag:                                            ; preds = %bb.af
  %i.bf = add nuw i32 %.val.i.i396, 1
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !11
  br label %lean_inc.exit265

bb.ah:                                            ; preds = %bb.af
  %.not.i.i397 = icmp eq i32 %.val.i.i396, 0
  br i1 %.not.i.i397, label %lean_inc.exit265, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = atomicrmw sub ptr %i.bb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit265

lean_inc.exit265:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %.val.i399 = load i32, ptr %i.as, align 8, !tbaa !11 ; 4 uses
  %i.bh = icmp eq i32 %.val.i399, 1
  br i1 %i.bh, label %.preheader.i401, label %bb.an

.preheader.i401:                                  ; preds = %lean_inc.exit265
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i.i403 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i403, label %bb.aj, label %lean_dec.exit.i404

bb.aj:                                            ; preds = %.preheader.i401
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !11 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.ak, label %bb.al, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !11
  br label %lean_dec.exit.i404

bb.al:                                            ; preds = %bb.aj
  %.not.i7.i408 = icmp eq i32 %i.bl, 0
  br i1 %.not.i7.i408, label %lean_dec.exit.i404, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #12
  br label %lean_dec.exit.i404

lean_dec.exit.i404:                               ; preds = %bb.am, %bb.al, %bb.ak, %.preheader.i401
  tail call void @lean_free_object(ptr noundef nonnull %i.as) #12
  br label %lean_dec_ref_known.exit409

bb.an:                                            ; preds = %lean_inc.exit265
  %i.bo = icmp sgt i32 %.val.i399, 1
  br i1 %i.bo, label %bb.ao, label %bb.ap, !prof !17

bb.ao:                                            ; preds = %bb.an
  %i.bp = add nsw i32 %.val.i399, -1
  store i32 %i.bp, ptr %i.as, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit409

bb.ap:                                            ; preds = %bb.an
  %.not.i8.i400 = icmp eq i32 %.val.i399, 0
  br i1 %.not.i8.i400, label %lean_dec_ref_known.exit409, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #12
  br label %lean_dec_ref_known.exit409

lean_dec_ref_known.exit409:                       ; preds = %lean_dec.exit.i404, %bb.ao, %bb.ap, %bb.aq
  %i.bq = and i64 %i.y, 510
  %.not = icmp eq i64 %i.bq, 0                    ; 2 uses
  br i1 %.not, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %lean_dec_ref_known.exit409
  br i1 %.not.i270, label %bb.as, label %lean_dec.exit308

bb.as:                                            ; preds = %bb.ar
  %i.br = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.at, label %bb.au, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !11
  br label %lean_dec.exit308

bb.au:                                            ; preds = %bb.as
  %.not.i315 = icmp eq i32 %i.br, 0
  br i1 %.not.i315, label %lean_dec.exit308, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec.exit308

bb.aw:                                            ; preds = %lean_dec_ref_known.exit409
  %i.bu = and i64 %i.bc, 510
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not.i264, label %bb.ay, label %lean_dec.exit312

bb.ay:                                            ; preds = %bb.ax
  %i.bw = load i32, ptr %i.bb, align 512, !tbaa !11 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.az, label %bb.ba, !prof !17

bb.az:                                            ; preds = %bb.ay
  %i.by = add nsw i32 %i.bw, -1
  store i32 %i.by, ptr %i.bb, align 512, !tbaa !11
  br label %lean_dec.exit312

bb.ba:                                            ; preds = %bb.ay
  %.not.i316 = icmp eq i32 %i.bw, 0
  br i1 %.not.i316, label %lean_dec.exit312, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #12
  br label %lean_dec.exit312

lean_dec.exit312:                                 ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  br i1 %.not.i266, label %bb.bc, label %lean_dec.exit310

bb.bc:                                            ; preds = %lean_dec.exit312
  %i.bz = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.bd, label %bb.be, !prof !17

bb.bd:                                            ; preds = %bb.bc
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.am, align 4, !tbaa !11
  br label %lean_dec.exit310

bb.be:                                            ; preds = %bb.bc
  %.not.i318 = icmp eq i32 %i.bz, 0
  br i1 %.not.i318, label %lean_dec.exit310, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #12
  br label %lean_dec.exit310

lean_dec.exit310:                                 ; preds = %bb.bf, %bb.be, %bb.bd, %lean_dec.exit312
  br i1 %.not.i268, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %lean_dec.exit310
  %i.cc = load i32, ptr %i.x, align 4, !tbaa !11  ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.bh, label %bb.bi, !prof !17

bb.bh:                                            ; preds = %bb.bg
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %i.x, align 4, !tbaa !11
  br label %bb.bp

bb.bi:                                            ; preds = %bb.bg
  %.not.i320 = icmp eq i32 %i.cc, 0
  br i1 %.not.i320, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #12
  br label %bb.bp

bb.bk:                                            ; preds = %bb.aw
  br i1 %.not.i270, label %bb.bl, label %lean_dec.exit308

bb.bl:                                            ; preds = %bb.bk
  %i.cf = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.bm, label %bb.bn, !prof !17

bb.bm:                                            ; preds = %bb.bl
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %i.i, align 4, !tbaa !11
  br label %lean_dec.exit308

bb.bn:                                            ; preds = %bb.bl
  %.not.i322 = icmp eq i32 %i.cf, 0
  br i1 %.not.i322, label %lean_dec.exit308, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec.exit308

bb.bp:                                            ; preds = %lean_dec.exit310, %bb.bj, %bb.bi, %bb.bh
  %.val.i.i410 = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i410, 0
  br i1 %i.ci, label %bb.bq, label %bb.br, !prof !17

bb.bq:                                            ; preds = %bb.bp
  %i.cj = add nuw i32 %.val.i.i410, 1
  store i32 %i.cj, ptr %2, align 4, !tbaa !11
  br label %lean_inc_ref.exit412

bb.br:                                            ; preds = %bb.bp
  %.not.i.i411 = icmp eq i32 %.val.i.i410, 0
  br i1 %.not.i.i411, label %lean_inc_ref.exit412, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ck = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit412

lean_inc_ref.exit412:                             ; preds = %bb.bq, %bb.br, %bb.bs
  %i.cl = tail call ptr @l_Lean_Meta_unfoldDefinition_x3f(ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12 ; 11 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i413 = icmp eq i64 %i.cn, 0               ; 2 uses
  br i1 %.not.i413, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %lean_inc_ref.exit412
  %i.co = lshr i64 %i.cm, 1
  %i.cp = trunc i64 %i.co to i32
  br label %lean_obj_tag.exit416

bb.bu:                                            ; preds = %lean_inc_ref.exit412
  %i.cq = getelementptr i8, ptr %i.cl, i64 4
  %.val.i415 = load i32, ptr %i.cq, align 4
  %i.cr = lshr i32 %.val.i415, 24
  br label %lean_obj_tag.exit416

lean_obj_tag.exit416:                             ; preds = %bb.bt, %bb.bu
  %.0.i414 = phi i32 [ %i.cp, %bb.bt ], [ %i.cr, %bb.bu ]
  %i.cs = icmp eq i32 %.0.i414, 0
  br i1 %i.cs, label %bb.bv, label %bb.cp

bb.bv:                                            ; preds = %lean_obj_tag.exit416
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15 ; 7 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not.i262 = icmp eq i64 %i.cw, 0
  br i1 %.not.i262, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i417 = load i32, ptr %i.cu, align 4, !tbaa !11 ; 3 uses
  %i.cx = icmp sgt i32 %.val.i.i417, 0
  br i1 %i.cx, label %bb.bx, label %bb.by, !prof !17

bb.bx:                                            ; preds = %bb.bw
  %i.cy = add nuw i32 %.val.i.i417, 1
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !11
  br label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %.not.i.i418 = icmp eq i32 %.val.i.i417, 0
  br i1 %.not.i.i418, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.cz = atomicrmw sub ptr %i.cu, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bv
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cl, i32 noundef 1)
  %i.da = lshr i64 %i.cv, 1
  %i.db = trunc i64 %i.da to i32
  br label %lean_obj_tag.exit423

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cl, i32 noundef 1)
  %i.dc = getelementptr i8, ptr %i.cu, i64 4
  %.val.i422 = load i32, ptr %i.dc, align 4
  %i.dd = lshr i32 %.val.i422, 24
  br label %lean_obj_tag.exit423

lean_obj_tag.exit423:                             ; preds = %bb.ca, %bb.cb
  %.0.i421 = phi i32 [ %i.db, %bb.ca ], [ %i.dd, %bb.cb ]
  %i.de = icmp eq i32 %.0.i421, 0
  br i1 %i.de, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %lean_obj_tag.exit423
  br i1 %.not.i270, label %bb.cd, label %lean_dec.exit304

bb.cd:                                            ; preds = %bb.cc
  %i.df = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.ce, label %bb.cf, !prof !17

bb.ce:                                            ; preds = %bb.cd
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %i.i, align 4, !tbaa !11
  br label %lean_dec.exit304

bb.cf:                                            ; preds = %bb.cd
  %.not.i324 = icmp eq i32 %i.df, 0
  br i1 %.not.i324, label %lean_dec.exit304, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec.exit304

lean_dec.exit304:                                 ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %i.di = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldDefEq(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %lean_dec.exit300

bb.ch:                                            ; preds = %lean_obj_tag.exit423
  %i.dj = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.ci, label %bb.cj, !prof !17

bb.ci:                                            ; preds = %bb.ch
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit377

bb.cj:                                            ; preds = %bb.ch
  %.not.i376 = icmp eq i32 %i.dj, 0
  br i1 %.not.i376, label %lean_dec_ref.exit377, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit377
end_hunk_12
begin_hunk_13_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqMVarSelf:lean_nat_eq.exit
  br i1 %i.ag, label %bb.s, label %bb.t, !prof !17

bb.s:                                             ; preds = %bb.r
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.q, align 8, !tbaa !11
  br label %lean_dec.exit277

bb.t:                                             ; preds = %bb.r
  %.not.i278 = icmp eq i32 %i.af, 0
  br i1 %.not.i278, label %lean_dec.exit277, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #12
  br label %lean_dec.exit277

lean_dec.exit277:                                 ; preds = %bb.l, %lean_inc.exit254, %bb.s, %bb.t, %bb.u
  %.0230 = phi ptr [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %lean_inc.exit254 ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.t ], [ %i.q, %bb.l ] ; 4 uses
  %i.ai = and i64 %.pre, 510
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.ge

bb.v:                                             ; preds = %lean_dec.exit277
  %i.ak = ptrtoint ptr %.0230 to i64
  %i.al = and i64 %i.ak, 1
  %.not.i346 = icmp eq i64 %i.al, 0
  br i1 %.not.i346, label %bb.w, label %lean_del_object.exit

bb.w:                                             ; preds = %bb.v
  tail call void @lean_free_object(ptr noundef nonnull %.0230) #12
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.v, %bb.w
  %.val.i.i347 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i347, 0
  br i1 %i.am, label %bb.x, label %bb.y, !prof !17

bb.x:                                             ; preds = %lean_del_object.exit
  %i.an = add nuw i32 %.val.i.i347, 1
  store i32 %i.an, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit349

bb.y:                                             ; preds = %lean_del_object.exit
  %.not.i.i348 = icmp eq i32 %.val.i.i347, 0
  br i1 %.not.i.i348, label %lean_inc_ref.exit349, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit349

lean_inc_ref.exit349:                             ; preds = %bb.x, %bb.y, %bb.z
  %i.ap = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isAssignable(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 11 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %.not.i350 = icmp eq i64 %i.ar, 0               ; 2 uses
  br i1 %.not.i350, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %lean_inc_ref.exit349
  %i.as = lshr i64 %i.aq, 1
  %i.at = trunc i64 %i.as to i32
  br label %lean_obj_tag.exit353

bb.ab:                                            ; preds = %lean_inc_ref.exit349
  %i.au = getelementptr i8, ptr %i.ap, i64 4
  %.val.i352 = load i32, ptr %i.au, align 4
  %i.av = lshr i32 %.val.i352, 24
  br label %lean_obj_tag.exit353

lean_obj_tag.exit353:                             ; preds = %bb.aa, %bb.ab
  %.0.i351 = phi i32 [ %i.at, %bb.aa ], [ %i.av, %bb.ab ]
  %i.aw = icmp eq i32 %.0.i351, 0
  br i1 %i.aw, label %bb.ac, label %bb.fw

bb.ac:                                            ; preds = %lean_obj_tag.exit353
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 7 uses
  %.val337 = load i32, ptr %i.ap, align 8, !tbaa !11
  %i.az = icmp eq i32 %.val337, 1                 ; 2 uses
  %.pre423 = ptrtoint ptr %i.ay to i64            ; 2 uses
  %.pre425 = and i64 %.pre423, 1                  ; 2 uses
  br i1 %i.az, label %lean_dec.exit275, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i251 = icmp eq i64 %.pre425, 0
  br i1 %.not.i251, label %bb.ae, label %lean_inc.exit252

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i354 = load i32, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i354, 0
  br i1 %i.ba, label %bb.af, label %bb.ag, !prof !17

bb.af:                                            ; preds = %bb.ae
  %i.bb = add nuw i32 %.val.i.i354, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !11
  br label %lean_inc.exit252

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i355 = icmp eq i32 %.val.i.i354, 0
  br i1 %.not.i.i355, label %lean_inc.exit252, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit252

lean_inc.exit252:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  br i1 %.not.i350, label %bb.ai, label %lean_dec.exit275

bb.ai:                                            ; preds = %lean_inc.exit252
  %i.bd = load i32, ptr %i.ap, align 8, !tbaa !11 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.aj, label %bb.ak, !prof !17

bb.aj:                                            ; preds = %bb.ai
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.ap, align 8, !tbaa !11
  br label %lean_dec.exit275

bb.ak:                                            ; preds = %bb.ai
  %.not.i279 = icmp eq i32 %i.bd, 0
  br i1 %.not.i279, label %lean_dec.exit275, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #12
  br label %lean_dec.exit275

lean_dec.exit275:                                 ; preds = %bb.ac, %lean_inc.exit252, %bb.aj, %bb.ak, %bb.al
  %.0233 = phi ptr [ inttoptr (i64 1 to ptr), %bb.al ], [ inttoptr (i64 1 to ptr), %lean_inc.exit252 ], [ inttoptr (i64 1 to ptr), %bb.aj ], [ inttoptr (i64 1 to ptr), %bb.ak ], [ %i.ap, %bb.ac ] ; 4 uses
  %.not.i272 = icmp eq i64 %.pre425, 0
  br i1 %.not.i272, label %bb.am, label %lean_dec.exit273

bb.am:                                            ; preds = %lean_dec.exit275
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.an, label %bb.ao, !prof !17

bb.an:                                            ; preds = %bb.am
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %i.ay, align 4, !tbaa !11
  br label %lean_dec.exit273

bb.ao:                                            ; preds = %bb.am
  %.not.i281 = icmp eq i32 %i.bg, 0
  br i1 %.not.i281, label %lean_dec.exit273, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #12
  br label %lean_dec.exit273

lean_dec.exit273:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %lean_dec.exit275
  %i.bj = and i64 %.pre423, 510
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %lean_dec.exit273
  %i.bl = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.ar, label %bb.as, !prof !17

bb.ar:                                            ; preds = %bb.aq
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit326

bb.as:                                            ; preds = %bb.aq
  %.not.i325 = icmp eq i32 %i.bl, 0
  br i1 %.not.i325, label %lean_dec_ref.exit326, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit326

lean_dec_ref.exit326:                             ; preds = %bb.ar, %bb.as, %bb.at
  br i1 %i.az, label %bb.au, label %bb.av

bb.au:                                            ; preds = %lean_dec_ref.exit326
  %i.bo = getelementptr inbounds nuw i8, ptr %.0233, i64 8
  store ptr %i.z, ptr %i.bo, align 8, !tbaa !15
  br label %lean_dec.exit263

bb.av:                                            ; preds = %lean_dec_ref.exit326
  %i.bp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.z, ptr %i.bq, align 8, !tbaa !15
  br label %lean_dec.exit263

bb.aw:                                            ; preds = %lean_dec.exit273
  %i.br = ptrtoint ptr %.0233 to i64
  %i.bs = and i64 %i.br, 1
  %.not.i357 = icmp eq i64 %i.bs, 0
  br i1 %.not.i357, label %bb.ax, label %lean_del_object.exit358

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_free_object(ptr noundef nonnull %.0233) #12
  br label %lean_del_object.exit358

lean_del_object.exit358:                          ; preds = %bb.aw, %bb.ax
  %i.bt = and i64 %.pre, 1
  %.not.i270 = icmp eq i64 %i.bt, 0
  br i1 %.not.i270, label %bb.ay, label %lean_dec.exit271

bb.ay:                                            ; preds = %lean_del_object.exit358
  %i.bu = load i32, ptr %i.z, align 512, !tbaa !11 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.az, label %bb.ba, !prof !17

bb.az:                                            ; preds = %bb.ay
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.z, align 512, !tbaa !11
  br label %lean_dec.exit271

bb.ba:                                            ; preds = %bb.ay
  %.not.i283 = icmp eq i32 %i.bu, 0
  br i1 %.not.i283, label %lean_dec.exit271, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #12
  br label %lean_dec.exit271

lean_dec.exit271:                                 ; preds = %bb.bb, %bb.ba, %bb.az, %lean_del_object.exit358
  %i.bx = tail call ptr @l_Lean_Expr_mvarId_x21(ptr noundef nonnull %0) #12
  %i.by = tail call ptr @l_Lean_MVarId_getDecl(ptr noundef %i.bx, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12 ; 14 uses
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ca = and i64 %i.bz, 1
  %.not.i359 = icmp eq i64 %i.ca, 0               ; 3 uses
  br i1 %.not.i359, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %lean_dec.exit271
  %i.cb = lshr i64 %i.bz, 1
  %i.cc = trunc i64 %i.cb to i32
  br label %lean_obj_tag.exit362

bb.bd:                                            ; preds = %lean_dec.exit271
  %i.cd = getelementptr i8, ptr %i.by, i64 4
  %.val.i361 = load i32, ptr %i.cd, align 4
  %i.ce = lshr i32 %.val.i361, 24
  br label %lean_obj_tag.exit362

lean_obj_tag.exit362:                             ; preds = %bb.bc, %bb.bd
  %.0.i360 = phi i32 [ %i.cc, %bb.bc ], [ %i.ce, %bb.bd ]
  %i.cf = icmp eq i32 %.0.i360, 0
  br i1 %i.cf, label %bb.be, label %bb.fi

bb.be:                                            ; preds = %lean_obj_tag.exit362
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !15 ; 10 uses
  %.val336 = load i32, ptr %i.by, align 8, !tbaa !11
  %i.ci = icmp eq i32 %.val336, 1                 ; 2 uses
  br i1 %i.ci, label %lean_dec.exit269, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i249 = icmp eq i64 %i.ck, 0
  br i1 %.not.i249, label %bb.bg, label %lean_inc.exit250

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i363 = load i32, ptr %i.ch, align 4, !tbaa !11 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i363, 0
  br i1 %i.cl, label %bb.bh, label %bb.bi, !prof !17

bb.bh:                                            ; preds = %bb.bg
  %i.cm = add nuw i32 %.val.i.i363, 1
  store i32 %i.cm, ptr %i.ch, align 4, !tbaa !11
  br label %lean_inc.exit250

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i364 = icmp eq i32 %.val.i.i363, 0
  br i1 %.not.i.i364, label %lean_inc.exit250, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cn = atomicrmw sub ptr %i.ch, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit250

lean_inc.exit250:                                 ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  br i1 %.not.i359, label %bb.bk, label %lean_dec.exit269

bb.bk:                                            ; preds = %lean_inc.exit250
  %i.co = load i32, ptr %i.by, align 8, !tbaa !11 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.bl, label %bb.bm, !prof !17

bb.bl:                                            ; preds = %bb.bk
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %i.by, align 8, !tbaa !11
  br label %lean_dec.exit269

bb.bm:                                            ; preds = %bb.bk
  %.not.i285 = icmp eq i32 %i.co, 0
  br i1 %.not.i285, label %lean_dec.exit269, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.by) #12
  br label %lean_dec.exit269

lean_dec.exit269:                                 ; preds = %lean_inc.exit250, %bb.bl, %bb.bm, %bb.bn, %bb.be
  %.0229 = phi ptr [ %i.by, %bb.be ], [ inttoptr (i64 1 to ptr), %bb.bn ], [ inttoptr (i64 1 to ptr), %bb.bm ], [ inttoptr (i64 1 to ptr), %bb.bl ], [ inttoptr (i64 1 to ptr), %lean_inc.exit250 ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !15 ; 10 uses
  %.val.i.i366 = load i32, ptr %i.cs, align 4, !tbaa !11 ; 3 uses
  %i.ct = icmp sgt i32 %.val.i.i366, 0
  br i1 %i.ct, label %bb.bo, label %bb.bp, !prof !17

bb.bo:                                            ; preds = %lean_dec.exit269
  %i.cu = add nuw i32 %.val.i.i366, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !11
  br label %lean_inc_ref.exit368

bb.bp:                                            ; preds = %lean_dec.exit269
  %.not.i.i367 = icmp eq i32 %.val.i.i366, 0
  br i1 %.not.i.i367, label %lean_inc_ref.exit368, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.cv = atomicrmw sub ptr %i.cs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit368

lean_inc_ref.exit368:                             ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !15 ; 10 uses
  %.val.i.i369 = load i32, ptr %i.cx, align 4, !tbaa !11 ; 3 uses
  %i.cy = icmp sgt i32 %.val.i.i369, 0
  br i1 %i.cy, label %bb.br, label %bb.bs, !prof !17

bb.br:                                            ; preds = %lean_inc_ref.exit368
  %i.cz = add nuw i32 %.val.i.i369, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !11
  br label %lean_inc_ref.exit371

bb.bs:                                            ; preds = %lean_inc_ref.exit368
  %.not.i.i370 = icmp eq i32 %.val.i.i369, 0
  br i1 %.not.i.i370, label %lean_inc_ref.exit371, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.da = atomicrmw sub ptr %i.cx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit371

lean_inc_ref.exit371:                             ; preds = %bb.br, %bb.bs, %bb.bt
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15 ; 9 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, 1
  %.not.i247 = icmp eq i64 %i.de, 0               ; 2 uses
  br i1 %.not.i247, label %bb.bu, label %lean_inc.exit248

bb.bu:                                            ; preds = %lean_inc_ref.exit371
  %.val.i.i372 = load i32, ptr %i.dc, align 4, !tbaa !11 ; 3 uses
  %i.df = icmp sgt i32 %.val.i.i372, 0
  br i1 %i.df, label %bb.bv, label %bb.bw, !prof !17

bb.bv:                                            ; preds = %bb.bu
  %i.dg = add nuw i32 %.val.i.i372, 1
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !11
  br label %lean_inc.exit248

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i373 = icmp eq i32 %.val.i.i372, 0
  br i1 %.not.i.i373, label %lean_inc.exit248, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dh = atomicrmw sub ptr %i.dc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit248

lean_inc.exit248:                                 ; preds = %lean_inc_ref.exit371, %bb.bv, %bb.bw, %bb.bx
  %i.di = load i32, ptr %i.ch, align 8, !tbaa !11 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.by, label %bb.bz, !prof !17

bb.by:                                            ; preds = %lean_inc.exit248
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %i.ch, align 8, !tbaa !11
  br label %lean_dec.exit267

bb.bz:                                            ; preds = %lean_inc.exit248
  %.not.i287 = icmp eq i32 %i.di, 0
  br i1 %.not.i287, label %lean_dec.exit267, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ch) #12
  br label %lean_dec.exit267

lean_dec.exit267:                                 ; preds = %bb.ca, %bb.bz, %bb.by
  br i1 %.not.i247, label %bb.cb, label %lean_nat_eq.exit333, !prof !9

lean_nat_eq.exit333:                              ; preds = %lean_dec.exit267
  %i.dl = icmp eq ptr %i.dc, %i.d
  br i1 %i.dl, label %bb.cu, label %bb.cd

bb.cb:                                            ; preds = %lean_dec.exit267
  %i.dm = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.dc, ptr noundef nonnull %i.d) #12 ; 3 uses
  %i.dn = load i32, ptr %i.dc, align 4, !tbaa !11 ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %.split479, label %bb.cc, !prof !17

.split479:                                        ; preds = %bb.cb
  %i.dp = add nsw i32 %i.dn, -1
  store i32 %i.dp, ptr %i.dc, align 4, !tbaa !11
  br i1 %i.dm, label %bb.cu, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.not.i289 = icmp eq i32 %i.dn, 0
  br i1 %.not.i289, label %lean_dec.exit265, label %.split

.split:                                           ; preds = %bb.cc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dc) #12
  br i1 %i.dm, label %bb.cu, label %bb.cd

lean_dec.exit265:                                 ; preds = %bb.cc
  br i1 %i.dm, label %bb.cu, label %bb.cd

end_hunk_13
begin_hunk_14_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqMVarSelf:lean_nat_eq.exit
bb.en:                                            ; preds = %lean_inc.exit238, %bb.ek, %bb.el, %bb.em
  %i.gz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.gp, ptr %i.ha, align 8, !tbaa !15
  br label %lean_dec.exit263

bb.eo:                                            ; preds = %lean_obj_tag.exit397
  %i.hb = load i32, ptr %i.cx, align 4, !tbaa !11 ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 1
  br i1 %i.hc, label %bb.ep, label %bb.eq, !prof !17

bb.ep:                                            ; preds = %bb.eo
  %i.hd = add nsw i32 %i.hb, -1
  store i32 %i.hd, ptr %i.cx, align 4, !tbaa !11
  br label %lean_dec_ref.exit314

bb.eq:                                            ; preds = %bb.eo
  %.not.i313 = icmp eq i32 %i.hb, 0
  br i1 %.not.i313, label %lean_dec_ref.exit314, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #12
  br label %lean_dec_ref.exit314

lean_dec_ref.exit314:                             ; preds = %bb.ep, %bb.eq, %bb.er
  %i.he = load i32, ptr %i.cs, align 4, !tbaa !11 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.es, label %bb.et, !prof !17

bb.es:                                            ; preds = %lean_dec_ref.exit314
  %i.hg = add nsw i32 %i.he, -1
  store i32 %i.hg, ptr %i.cs, align 4, !tbaa !11
  br label %lean_dec_ref.exit312

bb.et:                                            ; preds = %lean_dec_ref.exit314
  %.not.i311 = icmp eq i32 %i.he, 0
  br i1 %.not.i311, label %lean_dec_ref.exit312, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #12
  br label %lean_dec_ref.exit312

lean_dec_ref.exit312:                             ; preds = %bb.es, %bb.et, %bb.eu
  %i.hh = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.ev, label %bb.ew, !prof !17

bb.ev:                                            ; preds = %lean_dec_ref.exit312
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit310

bb.ew:                                            ; preds = %lean_dec_ref.exit312
  %.not.i309 = icmp eq i32 %i.hh, 0
  br i1 %.not.i309, label %lean_dec_ref.exit310, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit310

lean_dec_ref.exit310:                             ; preds = %bb.ev, %bb.ew, %bb.ex
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !15 ; 5 uses
  %.val334 = load i32, ptr %i.fg, align 8, !tbaa !11
  %i.hm = icmp eq i32 %.val334, 1
  br i1 %i.hm, label %lean_dec.exit263, label %bb.ey

bb.ey:                                            ; preds = %lean_dec_ref.exit310
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = and i64 %i.hn, 1
  %.not.i235 = icmp eq i64 %i.ho, 0
  br i1 %.not.i235, label %bb.ez, label %lean_inc.exit236

bb.ez:                                            ; preds = %bb.ey
  %.val.i.i411 = load i32, ptr %i.hl, align 4, !tbaa !11 ; 3 uses
  %i.hp = icmp sgt i32 %.val.i.i411, 0
  br i1 %i.hp, label %bb.fa, label %bb.fb, !prof !17

bb.fa:                                            ; preds = %bb.ez
  %i.hq = add nuw i32 %.val.i.i411, 1
  store i32 %i.hq, ptr %i.hl, align 4, !tbaa !11
  br label %lean_inc.exit236

bb.fb:                                            ; preds = %bb.ez
  %.not.i.i412 = icmp eq i32 %.val.i.i411, 0
  br i1 %.not.i.i412, label %lean_inc.exit236, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.hr = atomicrmw sub ptr %i.hl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit236

lean_inc.exit236:                                 ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ey
  br i1 %.not.i394, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %lean_inc.exit236
  %i.hs = load i32, ptr %i.fg, align 8, !tbaa !11 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.fe, label %bb.ff, !prof !17

bb.fe:                                            ; preds = %bb.fd
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %i.fg, align 8, !tbaa !11
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fd
  %.not.i293 = icmp eq i32 %i.hs, 0
  br i1 %.not.i293, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fg) #12
  br label %bb.fh

bb.fh:                                            ; preds = %lean_inc.exit236, %bb.fe, %bb.ff, %bb.fg
  %i.hv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hl, ptr %i.hw, align 8, !tbaa !15
  br label %lean_dec.exit263

bb.fi:                                            ; preds = %lean_obj_tag.exit362
  %i.hx = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.hy = icmp sgt i32 %i.hx, 1
  br i1 %i.hy, label %bb.fj, label %bb.fk, !prof !17

bb.fj:                                            ; preds = %bb.fi
  %i.hz = add nsw i32 %i.hx, -1
  store i32 %i.hz, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit308

bb.fk:                                            ; preds = %bb.fi
  %.not.i307 = icmp eq i32 %i.hx, 0
  br i1 %.not.i307, label %lean_dec_ref.exit308, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit308

lean_dec_ref.exit308:                             ; preds = %bb.fj, %bb.fk, %bb.fl
  %i.ia = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !15 ; 5 uses
  %.val = load i32, ptr %i.by, align 8, !tbaa !11
  %i.ic = icmp eq i32 %.val, 1
  br i1 %i.ic, label %lean_dec.exit263, label %bb.fm

bb.fm:                                            ; preds = %lean_dec_ref.exit308
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = and i64 %i.id, 1
  %.not.i = icmp eq i64 %i.ie, 0
  br i1 %.not.i, label %bb.fn, label %lean_inc.exit

bb.fn:                                            ; preds = %bb.fm
  %.val.i.i414 = load i32, ptr %i.ib, align 4, !tbaa !11 ; 3 uses
  %i.if = icmp sgt i32 %.val.i.i414, 0
  br i1 %i.if, label %bb.fo, label %bb.fp, !prof !17

bb.fo:                                            ; preds = %bb.fn
  %i.ig = add nuw i32 %.val.i.i414, 1
  store i32 %i.ig, ptr %i.ib, align 4, !tbaa !11
  br label %lean_inc.exit

bb.fp:                                            ; preds = %bb.fn
  %.not.i.i415 = icmp eq i32 %.val.i.i414, 0
  br i1 %.not.i.i415, label %lean_inc.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ih = atomicrmw sub ptr %i.ib, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fm
  br i1 %.not.i359, label %bb.fr, label %bb.fv

bb.fr:                                            ; preds = %lean_inc.exit
  %i.ii = load i32, ptr %i.by, align 8, !tbaa !11 ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 1
  br i1 %i.ij, label %bb.fs, label %bb.ft, !prof !17

bb.fs:                                            ; preds = %bb.fr
  %i.ik = add nsw i32 %i.ii, -1
  store i32 %i.ik, ptr %i.by, align 8, !tbaa !11
  br label %bb.fv

bb.ft:                                            ; preds = %bb.fr
  %.not.i295 = icmp eq i32 %i.ii, 0
  br i1 %.not.i295, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.by) #12
  br label %bb.fv

bb.fv:                                            ; preds = %lean_inc.exit, %bb.fs, %bb.ft, %bb.fu
  %i.il = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.ib, ptr %i.im, align 8, !tbaa !15
  br label %lean_dec.exit263

bb.fw:                                            ; preds = %lean_obj_tag.exit353
  %i.in = and i64 %.pre, 1
  %.not.i256 = icmp eq i64 %i.in, 0
  br i1 %.not.i256, label %bb.fx, label %lean_dec.exit257

bb.fx:                                            ; preds = %bb.fw
  %i.io = load i32, ptr %i.z, align 512, !tbaa !11 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 1
  br i1 %i.ip, label %bb.fy, label %bb.fz, !prof !17

bb.fy:                                            ; preds = %bb.fx
  %i.iq = add nsw i32 %i.io, -1
  store i32 %i.iq, ptr %i.z, align 512, !tbaa !11
  br label %lean_dec.exit257

bb.fz:                                            ; preds = %bb.fx
  %.not.i297 = icmp eq i32 %i.io, 0
  br i1 %.not.i297, label %lean_dec.exit257, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #12
  br label %lean_dec.exit257

lean_dec.exit257:                                 ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fw
  %i.ir = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.gb, label %bb.gc, !prof !17

bb.gb:                                            ; preds = %lean_dec.exit257
  %i.it = add nsw i32 %i.ir, -1
  store i32 %i.it, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit263

bb.gc:                                            ; preds = %lean_dec.exit257
  %.not.i305 = icmp eq i32 %i.ir, 0
  br i1 %.not.i305, label %lean_dec.exit263, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit263

bb.ge:                                            ; preds = %lean_dec.exit277
  %i.iu = and i64 %.pre, 1
  %.not.i255 = icmp eq i64 %i.iu, 0
  br i1 %.not.i255, label %bb.gf, label %lean_dec.exit

bb.gf:                                            ; preds = %bb.ge
  %i.iv = load i32, ptr %i.z, align 4, !tbaa !11  ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.gg, label %bb.gh, !prof !17

bb.gg:                                            ; preds = %bb.gf
  %i.ix = add nsw i32 %i.iv, -1
  store i32 %i.ix, ptr %i.z, align 4, !tbaa !11
  br label %lean_dec.exit

bb.gh:                                            ; preds = %bb.gf
  %.not.i299 = icmp eq i32 %i.iv, 0
  br i1 %.not.i299, label %lean_dec.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.ge
  %i.iy = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 1
  br i1 %i.iz, label %bb.gj, label %bb.gk, !prof !17

bb.gj:                                            ; preds = %lean_dec.exit
  %i.ja = add nsw i32 %i.iy, -1
  store i32 %i.ja, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit304

bb.gk:                                            ; preds = %lean_dec.exit
  %.not.i303 = icmp eq i32 %i.iy, 0
  br i1 %.not.i303, label %lean_dec_ref.exit304, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit304

lean_dec_ref.exit304:                             ; preds = %bb.gj, %bb.gk, %bb.gl
  br i1 %i.aa, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %lean_dec_ref.exit304
  %i.jb = getelementptr inbounds nuw i8, ptr %.0230, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.jb, align 8, !tbaa !15
  br label %lean_dec.exit263

bb.gn:                                            ; preds = %lean_dec_ref.exit304
  tail call void @lean_inc_heartbeat() #12
  %i.jc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.go, label %lean_alloc_ctor.exit417

bb.go:                                            ; preds = %bb.gn
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit417:                          ; preds = %bb.gn
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 1, ptr %i.jc, align 4, !tbaa !11
  store i32 65552, ptr %i.je, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.jf, align 8, !tbaa !15
  br label %lean_dec.exit263

bb.gp:                                            ; preds = %lean_obj_tag.exit
  %i.jg = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.jh = icmp sgt i32 %i.jg, 1
  br i1 %i.jh, label %bb.gq, label %bb.gr, !prof !17

bb.gq:                                            ; preds = %bb.gp
  %i.ji = add nsw i32 %i.jg, -1
  store i32 %i.ji, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit263

bb.gr:                                            ; preds = %bb.gp
  %.not.i301 = icmp eq i32 %i.jg, 0
  br i1 %.not.i301, label %lean_dec.exit263, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec.exit263

lean_dec.exit263:                                 ; preds = %bb.cr, %bb.cs, %bb.gs, %bb.gr, %bb.gq, %bb.gd, %bb.gc, %bb.gb, %lean_dec_ref.exit308, %lean_dec_ref.exit310, %lean_dec_ref.exit316, %lean_alloc_ctor.exit417, %bb.gm, %bb.en, %lean_inc.exit240, %bb.fh, %bb.fv, %bb.av, %bb.au, %lean_alloc_ctor.exit
  %.16 = phi ptr [ %i.j, %lean_alloc_ctor.exit ], [ %i.ap, %bb.gd ], [ %i.fg, %lean_dec_ref.exit310 ], [ %i.by, %lean_dec_ref.exit308 ], [ %i.bp, %bb.av ], [ %.0233, %bb.au ], [ %i.fv, %lean_dec_ref.exit316 ], [ %i.q, %bb.gs ], [ %i.jc, %lean_alloc_ctor.exit417 ], [ %i.gk, %lean_inc.exit240 ], [ %i.gz, %bb.en ], [ %i.hv, %bb.fh ], [ %i.il, %bb.fv ], [ %.0230, %bb.gm ], [ %i.ap, %bb.gb ], [ %i.ap, %bb.gc ], [ %i.q, %bb.gq ], [ %i.q, %bb.gr ], [ %.0229, %bb.cr ], [ %i.eg, %bb.cs ]
  ret ptr %.16
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqMVarSelf___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqMVarSelf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.b = ptrtoint ptr %6 to i64
  %i.c = and i64 %i.b, 1
  %.not.i14 = icmp eq i64 %i.c, 0
  br i1 %.not.i14, label %bb.b, label %lean_dec.exit15

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit15

bb.d:                                             ; preds = %bb.b
  %.not.i16 = icmp eq i32 %i.d, 0
  br i1 %.not.i16, label %lean_dec.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #12
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_dec.exit15
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !11
  br label %lean_dec_ref.exit26

bb.g:                                             ; preds = %lean_dec.exit15
  %.not.i25 = icmp eq i32 %i.g, 0
  br i1 %.not.i25, label %lean_dec_ref.exit26, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #12
  br label %lean_dec_ref.exit26

lean_dec_ref.exit26:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit26
  %i.l = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i17 = icmp eq i32 %i.l, 0
  br i1 %.not.i17, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit26
  %i.o = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit24

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i23 = icmp eq i32 %i.o, 0
  br i1 %.not.i23, label %lean_dec_ref.exit24, label %bb.o
end_hunk_14
begin_hunk_15_@l_Lean_Meta_checkpointDefEq___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqQuickMVarMVar_spec__0:bb.a

lean_inc.exit440:                                 ; preds = %bb.em, %bb.el, %bb.ek, %bb.ei
  %.val.i668 = load i32, ptr %i.hn, align 8, !tbaa !11 ; 4 uses
  %i.ic = icmp eq i32 %.val.i668, 1
  br i1 %i.ic, label %.preheader.i670, label %bb.er

.preheader.i670:                                  ; preds = %lean_inc.exit440
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !15 ; 4 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = and i64 %i.ie, 1
  %.not.i.i672 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i672, label %bb.en, label %lean_dec.exit.i673

bb.en:                                            ; preds = %.preheader.i670
  %i.ig = load i32, ptr %i.id, align 4, !tbaa !11 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.eo, label %bb.ep, !prof !17

bb.eo:                                            ; preds = %bb.en
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.id, align 4, !tbaa !11
  br label %lean_dec.exit.i673

bb.ep:                                            ; preds = %bb.en
  %.not.i7.i677 = icmp eq i32 %i.ig, 0
  br i1 %.not.i7.i677, label %lean_dec.exit.i673, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.id) #12
  br label %lean_dec.exit.i673

lean_dec.exit.i673:                               ; preds = %bb.eq, %bb.ep, %bb.eo, %.preheader.i670
  tail call void @lean_free_object(ptr noundef nonnull %i.hn) #12
  br label %lean_dec_ref_known.exit678

bb.er:                                            ; preds = %lean_inc.exit440
  %i.ij = icmp sgt i32 %.val.i668, 1
  br i1 %i.ij, label %bb.es, label %bb.et, !prof !17

bb.es:                                            ; preds = %bb.er
  %i.ik = add nsw i32 %.val.i668, -1
  store i32 %i.ik, ptr %i.hn, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit678

bb.et:                                            ; preds = %bb.er
  %.not.i8.i669 = icmp eq i32 %.val.i668, 0
  br i1 %.not.i8.i669, label %lean_dec_ref_known.exit678, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hn) #12
  br label %lean_dec_ref_known.exit678

lean_dec_ref_known.exit678:                       ; preds = %lean_dec.exit.i673, %bb.es, %bb.et, %bb.eu
  %i.il = and i64 %i.hx, 510
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.ev, label %bb.gc

bb.ev:                                            ; preds = %lean_dec_ref_known.exit678
  br i1 %.not.i441, label %bb.ew, label %lean_dec.exit507

bb.ew:                                            ; preds = %bb.ev
  %i.in = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.io = icmp sgt i32 %i.in, 1
  br i1 %i.io, label %bb.ex, label %bb.ey, !prof !17

bb.ex:                                            ; preds = %bb.ew
  %i.ip = add nsw i32 %i.in, -1
  store i32 %i.ip, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit507

bb.ey:                                            ; preds = %bb.ew
  %.not.i543 = icmp eq i32 %i.in, 0
  br i1 %.not.i543, label %lean_dec.exit507, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit507

lean_dec.exit507:                                 ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %i.iq = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %4, ptr noundef %6) #12 ; 9 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.is = and i64 %i.ir, 1
  %.not.i679 = icmp eq i64 %i.is, 0               ; 2 uses
  br i1 %.not.i679, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %lean_dec.exit507
  %i.it = lshr i64 %i.ir, 1
  %i.iu = trunc i64 %i.it to i32
  br label %lean_obj_tag.exit682

bb.fb:                                            ; preds = %lean_dec.exit507
  %i.iv = getelementptr i8, ptr %i.iq, i64 4
  %.val.i681 = load i32, ptr %i.iv, align 4
  %i.iw = lshr i32 %.val.i681, 24
  br label %lean_obj_tag.exit682

lean_obj_tag.exit682:                             ; preds = %bb.fa, %bb.fb
  %.0.i680 = phi i32 [ %i.iu, %bb.fa ], [ %i.iw, %bb.fb ]
  %i.ix = icmp eq i32 %.0.i680, 0
  br i1 %i.ix, label %bb.fc, label %bb.ft

bb.fc:                                            ; preds = %lean_obj_tag.exit682
  %i.iy = ptrtoint ptr %.0362 to i64
  %i.iz = and i64 %i.iy, 1
  %.not.i683 = icmp eq i64 %i.iz, 0
  br i1 %.not.i683, label %bb.fd, label %lean_del_object.exit684

bb.fd:                                            ; preds = %bb.fc
  tail call void @lean_free_object(ptr noundef nonnull %.0362) #12
  br label %lean_del_object.exit684

lean_del_object.exit684:                          ; preds = %bb.fc, %bb.fd
  %i.ja = ptrtoint ptr %i.j to i64
  %i.jb = and i64 %i.ja, 1
  %.not.i504 = icmp eq i64 %i.jb, 0
  br i1 %.not.i504, label %bb.fe, label %lean_dec.exit505

bb.fe:                                            ; preds = %lean_del_object.exit684
  %i.jc = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.ff, label %bb.fg, !prof !17

bb.ff:                                            ; preds = %bb.fe
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit505

bb.fg:                                            ; preds = %bb.fe
  %.not.i545 = icmp eq i32 %i.jc, 0
  br i1 %.not.i545, label %lean_dec.exit505, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit505

lean_dec.exit505:                                 ; preds = %bb.fh, %bb.fg, %bb.ff, %lean_del_object.exit684
  %.val601 = load i32, ptr %i.iq, align 4, !tbaa !11 ; 4 uses
  %i.jf = icmp eq i32 %.val601, 1
  br i1 %i.jf, label %bb.fi, label %bb.fn

bb.fi:                                            ; preds = %lean_dec.exit505
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !15 ; 4 uses
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = and i64 %i.ji, 1
  %.not.i502 = icmp eq i64 %i.jj, 0
  br i1 %.not.i502, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  %i.jk = load i32, ptr %i.jh, align 4, !tbaa !11 ; 3 uses
  %i.jl = icmp sgt i32 %i.jk, 1
  br i1 %i.jl, label %bb.fk, label %bb.fl, !prof !17

bb.fk:                                            ; preds = %bb.fj
  %i.jm = add nsw i32 %i.jk, -1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !11
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fj
  %.not.i547 = icmp eq i32 %i.jk, 0
  br i1 %.not.i547, label %bb.fs, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jh) #12
  br label %bb.fs

bb.fn:                                            ; preds = %lean_dec.exit505
  br i1 %.not.i679, label %bb.fo, label %lean_dec.exit503

bb.fo:                                            ; preds = %bb.fn
  %i.jn = icmp sgt i32 %.val601, 1
  br i1 %i.jn, label %bb.fp, label %bb.fq, !prof !17

bb.fp:                                            ; preds = %bb.fo
  %i.jo = add nsw i32 %.val601, -1
  store i32 %i.jo, ptr %i.iq, align 4, !tbaa !11
  br label %lean_dec.exit503

bb.fq:                                            ; preds = %bb.fo
  %.not.i549 = icmp eq i32 %.val601, 0
  br i1 %.not.i549, label %lean_dec.exit503, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iq) #12
  br label %lean_dec.exit503

bb.fs:                                            ; preds = %bb.fi, %bb.fk, %bb.fl, %bb.fm
  store ptr %i.hw, ptr %i.jg, align 8, !tbaa !15
  br label %lean_dec.exit515

lean_dec.exit503:                                 ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fn
  %i.jp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %i.hw, ptr %i.jq, align 8, !tbaa !15
  br label %lean_dec.exit515

bb.ft:                                            ; preds = %lean_obj_tag.exit682
  br i1 %.not.i439, label %bb.fu, label %lean_dec.exit499

bb.fu:                                            ; preds = %bb.ft
  %i.jr = load i32, ptr %i.hw, align 512, !tbaa !11 ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.fv, label %bb.fw, !prof !17

bb.fv:                                            ; preds = %bb.fu
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %i.hw, align 512, !tbaa !11
  br label %lean_dec.exit499

bb.fw:                                            ; preds = %bb.fu
  %.not.i551 = icmp eq i32 %i.jr, 0
  br i1 %.not.i551, label %lean_dec.exit499, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #12
  br label %lean_dec.exit499

lean_dec.exit499:                                 ; preds = %bb.fx, %bb.fw, %bb.fv, %bb.ft
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !15 ; 5 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %.not.i437 = icmp eq i64 %i.jx, 0
  br i1 %.not.i437, label %bb.fy, label %lean_inc.exit438

bb.fy:                                            ; preds = %lean_dec.exit499
  %.val.i.i685 = load i32, ptr %i.jv, align 4, !tbaa !11 ; 3 uses
  %i.jy = icmp sgt i32 %.val.i.i685, 0
  br i1 %i.jy, label %bb.fz, label %bb.ga, !prof !17

bb.fz:                                            ; preds = %bb.fy
  %i.jz = add nuw i32 %.val.i.i685, 1
  store i32 %i.jz, ptr %i.jv, align 4, !tbaa !11
  br label %lean_inc.exit438

bb.ga:                                            ; preds = %bb.fy
  %.not.i.i686 = icmp eq i32 %.val.i.i685, 0
  br i1 %.not.i.i686, label %lean_inc.exit438, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ka = atomicrmw sub ptr %i.jv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit438

lean_inc.exit438:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_dec.exit499
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.iq, i32 noundef 1)
  br label %lean_dec_ref_known.exit750.thread

bb.gc:                                            ; preds = %lean_dec_ref_known.exit678
  br i1 %.not.i439, label %bb.gd, label %lean_dec.exit497

bb.gd:                                            ; preds = %bb.gc
  %i.kb = load i32, ptr %i.hw, align 4, !tbaa !11 ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 1
  br i1 %i.kc, label %bb.ge, label %bb.gf, !prof !17

bb.ge:                                            ; preds = %bb.gd
  %i.kd = add nsw i32 %i.kb, -1
  store i32 %i.kd, ptr %i.hw, align 4, !tbaa !11
  br label %lean_dec.exit497

bb.gf:                                            ; preds = %bb.gd
  %.not.i553 = icmp eq i32 %i.kb, 0
  br i1 %.not.i553, label %lean_dec.exit497, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #12
  br label %lean_dec.exit497

lean_dec.exit497:                                 ; preds = %bb.gg, %bb.gf, %bb.ge, %bb.gc
  %i.ke = tail call ptr @l_Lean_Meta_processPostponed(i8 noundef zeroext %2, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12 ; 13 uses
  %i.kf = ptrtoint ptr %i.ke to i64               ; 2 uses
  %i.kg = and i64 %i.kf, 1
  %.not.i688 = icmp eq i64 %i.kg, 0               ; 2 uses
  br i1 %.not.i688, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %lean_dec.exit497
  %i.kh = lshr i64 %i.kf, 1
  %i.ki = trunc i64 %i.kh to i32
  br label %lean_obj_tag.exit691

bb.gi:                                            ; preds = %lean_dec.exit497
  %i.kj = getelementptr i8, ptr %i.ke, i64 4
  %.val.i690 = load i32, ptr %i.kj, align 4
  %i.kk = lshr i32 %.val.i690, 24
  br label %lean_obj_tag.exit691

lean_obj_tag.exit691:                             ; preds = %bb.gh, %bb.gi
  %.0.i689 = phi i32 [ %i.ki, %bb.gh ], [ %i.kk, %bb.gi ]
  %i.kl = icmp eq i32 %.0.i689, 0
  br i1 %i.kl, label %bb.gj, label %bb.jt

bb.gj:                                            ; preds = %lean_obj_tag.exit691
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !15 ; 8 uses
  %.val600 = load i32, ptr %i.ke, align 8, !tbaa !11
  %i.ko = icmp eq i32 %.val600, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.kn to i64               ; 3 uses
  br i1 %i.ko, label %lean_dec.exit495, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.kp = and i64 %.pre, 1
  %.not.i435 = icmp eq i64 %i.kp, 0
  br i1 %.not.i435, label %bb.gl, label %lean_inc.exit436

bb.gl:                                            ; preds = %bb.gk
  %.val.i.i692 = load i32, ptr %i.kn, align 4, !tbaa !11 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i692, 0
  br i1 %i.kq, label %bb.gm, label %bb.gn, !prof !17

bb.gm:                                            ; preds = %bb.gl
  %i.kr = add nuw i32 %.val.i.i692, 1
  store i32 %i.kr, ptr %i.kn, align 4, !tbaa !11
  br label %lean_inc.exit436

bb.gn:                                            ; preds = %bb.gl
  %.not.i.i693 = icmp eq i32 %.val.i.i692, 0
  br i1 %.not.i.i693, label %lean_inc.exit436, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ks = atomicrmw sub ptr %i.kn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit436

lean_inc.exit436:                                 ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gk
  br i1 %.not.i688, label %bb.gp, label %lean_dec.exit495

bb.gp:                                            ; preds = %lean_inc.exit436
  %i.kt = load i32, ptr %i.ke, align 8, !tbaa !11 ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, 1
  br i1 %i.ku, label %bb.gq, label %bb.gr, !prof !17

bb.gq:                                            ; preds = %bb.gp
  %i.kv = add nsw i32 %i.kt, -1
  store i32 %i.kv, ptr %i.ke, align 8, !tbaa !11
  br label %lean_dec.exit495

bb.gr:                                            ; preds = %bb.gp
  %.not.i555 = icmp eq i32 %i.kt, 0
  br i1 %.not.i555, label %lean_dec.exit495, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ke) #12
  br label %lean_dec.exit495

lean_dec.exit495:                                 ; preds = %bb.gj, %lean_inc.exit436, %bb.gq, %bb.gr, %bb.gs
  %.0384 = phi ptr [ inttoptr (i64 1 to ptr), %bb.gs ], [ inttoptr (i64 1 to ptr), %lean_inc.exit436 ], [ inttoptr (i64 1 to ptr), %bb.gq ], [ inttoptr (i64 1 to ptr), %bb.gr ], [ %i.ke, %bb.gj ] ; 3 uses
  %i.kw = and i64 %.pre, 510
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %bb.gt, label %bb.ib

bb.gt:                                            ; preds = %lean_dec.exit495
  %i.ky = ptrtoint ptr %.0384 to i64
  %i.kz = and i64 %i.ky, 1
  %.not.i695 = icmp eq i64 %i.kz, 0
  br i1 %.not.i695, label %bb.gu, label %lean_del_object.exit696

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_free_object(ptr noundef nonnull %.0384) #12
  br label %lean_del_object.exit696

lean_del_object.exit696:                          ; preds = %bb.gt, %bb.gu
  %i.la = and i64 %.pre, 1
  %.not.i492 = icmp eq i64 %i.la, 0
  br i1 %.not.i492, label %bb.gv, label %lean_dec.exit493

bb.gv:                                            ; preds = %lean_del_object.exit696
  %i.lb = load i32, ptr %i.kn, align 512, !tbaa !11 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 1
  br i1 %i.lc, label %bb.gw, label %bb.gx, !prof !17

bb.gw:                                            ; preds = %bb.gv
  %i.ld = add nsw i32 %i.lb, -1
  store i32 %i.ld, ptr %i.kn, align 512, !tbaa !11
  br label %lean_dec.exit493

bb.gx:                                            ; preds = %bb.gv
  %.not.i557 = icmp eq i32 %i.lb, 0
  br i1 %.not.i557, label %lean_dec.exit493, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kn) #12
  br label %lean_dec.exit493

lean_dec.exit493:                                 ; preds = %bb.gy, %bb.gx, %bb.gw, %lean_del_object.exit696
  br i1 %.not.i441, label %bb.gz, label %lean_dec.exit491

bb.gz:                                            ; preds = %lean_dec.exit493
  %i.le = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.ha, label %bb.hb, !prof !17

bb.ha:                                            ; preds = %bb.gz
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit491

bb.hb:                                            ; preds = %bb.gz
  %.not.i559 = icmp eq i32 %i.le, 0
  br i1 %.not.i559, label %lean_dec.exit491, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit491

lean_dec.exit491:                                 ; preds = %bb.hc, %bb.hb, %bb.ha, %lean_dec.exit493
  %i.lh = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %4, ptr noundef %6) #12 ; 9 uses
  %i.li = ptrtoint ptr %i.lh to i64               ; 2 uses
  %i.lj = and i64 %i.li, 1
  %.not.i697 = icmp eq i64 %i.lj, 0               ; 2 uses
  br i1 %.not.i697, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %lean_dec.exit491
  %i.lk = lshr i64 %i.li, 1
  %i.ll = trunc i64 %i.lk to i32
  br label %lean_obj_tag.exit700

bb.he:                                            ; preds = %lean_dec.exit491
  %i.lm = getelementptr i8, ptr %i.lh, i64 4
  %.val.i699 = load i32, ptr %i.lm, align 4
  %i.ln = lshr i32 %.val.i699, 24
  br label %lean_obj_tag.exit700

lean_obj_tag.exit700:                             ; preds = %bb.hd, %bb.he
  %.0.i698 = phi i32 [ %i.ll, %bb.hd ], [ %i.ln, %bb.he ]
  %i.lo = icmp eq i32 %.0.i698, 0
  br i1 %i.lo, label %bb.hf, label %bb.hw

bb.hf:                                            ; preds = %lean_obj_tag.exit700
  %i.lp = ptrtoint ptr %.0362 to i64
  %i.lq = and i64 %i.lp, 1
  %.not.i701 = icmp eq i64 %i.lq, 0
  br i1 %.not.i701, label %bb.hg, label %lean_del_object.exit702

bb.hg:                                            ; preds = %bb.hf
  tail call void @lean_free_object(ptr noundef nonnull %.0362) #12
  br label %lean_del_object.exit702

lean_del_object.exit702:                          ; preds = %bb.hf, %bb.hg
  %i.lr = ptrtoint ptr %i.j to i64
  %i.ls = and i64 %i.lr, 1
  %.not.i488 = icmp eq i64 %i.ls, 0
  br i1 %.not.i488, label %bb.hh, label %lean_dec.exit489

bb.hh:                                            ; preds = %lean_del_object.exit702
  %i.lt = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %bb.hi, label %bb.hj, !prof !17

bb.hi:                                            ; preds = %bb.hh
  %i.lv = add nsw i32 %i.lt, -1
  store i32 %i.lv, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit489

bb.hj:                                            ; preds = %bb.hh
  %.not.i561 = icmp eq i32 %i.lt, 0
  br i1 %.not.i561, label %lean_dec.exit489, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit489

lean_dec.exit489:                                 ; preds = %bb.hk, %bb.hj, %bb.hi, %lean_del_object.exit702
  %.val599 = load i32, ptr %i.lh, align 4, !tbaa !11 ; 4 uses
  %i.lw = icmp eq i32 %.val599, 1
  br i1 %i.lw, label %bb.hl, label %bb.hq

bb.hl:                                            ; preds = %lean_dec.exit489
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !15 ; 4 uses
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, 1
  %.not.i486 = icmp eq i64 %i.ma, 0
  br i1 %.not.i486, label %bb.hm, label %bb.hv

bb.hm:                                            ; preds = %bb.hl
  %i.mb = load i32, ptr %i.ly, align 4, !tbaa !11 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.hn, label %bb.ho, !prof !17

bb.hn:                                            ; preds = %bb.hm
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.ly, align 4, !tbaa !11
  br label %bb.hv

bb.ho:                                            ; preds = %bb.hm
  %.not.i563 = icmp eq i32 %i.mb, 0
  br i1 %.not.i563, label %bb.hv, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ly) #12
  br label %bb.hv

bb.hq:                                            ; preds = %lean_dec.exit489
  br i1 %.not.i697, label %bb.hr, label %lean_dec.exit487

bb.hr:                                            ; preds = %bb.hq
  %i.me = icmp sgt i32 %.val599, 1
  br i1 %i.me, label %bb.hs, label %bb.ht, !prof !17

bb.hs:                                            ; preds = %bb.hr
  %i.mf = add nsw i32 %.val599, -1
  store i32 %i.mf, ptr %i.lh, align 4, !tbaa !11
  br label %lean_dec.exit487

bb.ht:                                            ; preds = %bb.hr
  %.not.i565 = icmp eq i32 %.val599, 0
  br i1 %.not.i565, label %lean_dec.exit487, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lh) #12
  br label %lean_dec.exit487

bb.hv:                                            ; preds = %bb.hl, %bb.hn, %bb.ho, %bb.hp
  store ptr inttoptr (i64 1 to ptr), ptr %i.lx, align 8, !tbaa !15
  br label %lean_dec.exit515

lean_dec.exit487:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  %i.mg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.mh, align 8, !tbaa !15
  br label %lean_dec.exit515

bb.hw:                                            ; preds = %lean_obj_tag.exit700
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !15 ; 5 uses
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = and i64 %i.mk, 1
  %.not.i433 = icmp eq i64 %i.ml, 0
  br i1 %.not.i433, label %bb.hx, label %lean_inc.exit434

bb.hx:                                            ; preds = %bb.hw
  %.val.i.i703 = load i32, ptr %i.mj, align 4, !tbaa !11 ; 3 uses
  %i.mm = icmp sgt i32 %.val.i.i703, 0
  br i1 %i.mm, label %bb.hy, label %bb.hz, !prof !17

bb.hy:                                            ; preds = %bb.hx
  %i.mn = add nuw i32 %.val.i.i703, 1
  store i32 %i.mn, ptr %i.mj, align 4, !tbaa !11
  br label %lean_inc.exit434

bb.hz:                                            ; preds = %bb.hx
  %.not.i.i704 = icmp eq i32 %.val.i.i703, 0
  br i1 %.not.i.i704, label %lean_inc.exit434, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.mo = atomicrmw sub ptr %i.mj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit434

lean_inc.exit434:                                 ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.lh, i32 noundef 1)
  br label %lean_dec_ref_known.exit750.thread

bb.ib:                                            ; preds = %lean_dec.exit495
  %i.mp = ptrtoint ptr %.0362 to i64
  %i.mq = and i64 %i.mp, 1
  %.not.i706 = icmp eq i64 %i.mq, 0
  br i1 %.not.i706, label %bb.ic, label %lean_del_object.exit707

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_free_object(ptr noundef nonnull %.0362) #12
  br label %lean_del_object.exit707

lean_del_object.exit707:                          ; preds = %bb.ib, %bb.ic
  %i.mr = ptrtoint ptr %i.j to i64
  %i.ms = and i64 %i.mr, 1
  %.not.i482 = icmp eq i64 %i.ms, 0
  br i1 %.not.i482, label %bb.id, label %lean_dec.exit483

bb.id:                                            ; preds = %lean_del_object.exit707
  %i.mt = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ie, label %bb.if, !prof !17

end_hunk_15
begin_hunk_16_@l_Lean_Meta_checkpointDefEq___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqApp_spec__0:bb.a

lean_inc.exit504:                                 ; preds = %bb.ht, %bb.hs, %bb.hr, %bb.hp
  %.val.i819 = load i32, ptr %.1469, align 8, !tbaa !11 ; 4 uses
  %i.mi = icmp eq i32 %.val.i819, 1
  br i1 %i.mi, label %.preheader.i821, label %bb.hy

.preheader.i821:                                  ; preds = %lean_inc.exit504
  %i.mj = load ptr, ptr %i.mb, align 8, !tbaa !15 ; 4 uses
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = and i64 %i.mk, 1
  %.not.i.i823 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i823, label %bb.hu, label %lean_dec.exit.i824

bb.hu:                                            ; preds = %.preheader.i821
  %i.mm = load i32, ptr %i.mj, align 4, !tbaa !11 ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 1
  br i1 %i.mn, label %bb.hv, label %bb.hw, !prof !17

bb.hv:                                            ; preds = %bb.hu
  %i.mo = add nsw i32 %i.mm, -1
  store i32 %i.mo, ptr %i.mj, align 4, !tbaa !11
  br label %lean_dec.exit.i824

bb.hw:                                            ; preds = %bb.hu
  %.not.i7.i828 = icmp eq i32 %i.mm, 0
  br i1 %.not.i7.i828, label %lean_dec.exit.i824, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mj) #12
  br label %lean_dec.exit.i824

lean_dec.exit.i824:                               ; preds = %bb.hx, %bb.hw, %bb.hv, %.preheader.i821
  tail call void @lean_free_object(ptr noundef nonnull %.1469) #12
  br label %lean_dec_ref_known.exit829

bb.hy:                                            ; preds = %lean_inc.exit504
  %i.mp = icmp sgt i32 %.val.i819, 1
  br i1 %i.mp, label %bb.hz, label %bb.ia, !prof !17

bb.hz:                                            ; preds = %bb.hy
  %i.mq = add nsw i32 %.val.i819, -1
  store i32 %i.mq, ptr %.1469, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit829

bb.ia:                                            ; preds = %bb.hy
  %.not.i8.i820 = icmp eq i32 %.val.i819, 0
  br i1 %.not.i8.i820, label %lean_dec_ref_known.exit829, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1469) #12
  br label %lean_dec_ref_known.exit829

lean_dec_ref_known.exit829:                       ; preds = %lean_dec.exit.i824, %bb.hz, %bb.ia, %bb.ib
  %i.mr = and i64 %i.md, 510
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.ic, label %bb.jj

bb.ic:                                            ; preds = %lean_dec_ref_known.exit829
  br i1 %.not.i515, label %bb.id, label %lean_dec.exit581

bb.id:                                            ; preds = %bb.ic
  %i.mt = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ie, label %bb.if, !prof !17

bb.ie:                                            ; preds = %bb.id
  %i.mv = add nsw i32 %i.mt, -1
  store i32 %i.mv, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit581

bb.if:                                            ; preds = %bb.id
  %.not.i629 = icmp eq i32 %i.mt, 0
  br i1 %.not.i629, label %lean_dec.exit581, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit581

lean_dec.exit581:                                 ; preds = %bb.ig, %bb.if, %bb.ie, %bb.ic
  %i.mw = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %6, ptr noundef %8) #12 ; 9 uses
  %i.mx = ptrtoint ptr %i.mw to i64               ; 2 uses
  %i.my = and i64 %i.mx, 1
  %.not.i830 = icmp eq i64 %i.my, 0               ; 2 uses
  br i1 %.not.i830, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %lean_dec.exit581
  %i.mz = lshr i64 %i.mx, 1
  %i.na = trunc i64 %i.mz to i32
  br label %lean_obj_tag.exit833

bb.ii:                                            ; preds = %lean_dec.exit581
  %i.nb = getelementptr i8, ptr %i.mw, i64 4
  %.val.i832 = load i32, ptr %i.nb, align 4
  %i.nc = lshr i32 %.val.i832, 24
  br label %lean_obj_tag.exit833

lean_obj_tag.exit833:                             ; preds = %bb.ih, %bb.ii
  %.0.i831 = phi i32 [ %i.na, %bb.ih ], [ %i.nc, %bb.ii ]
  %i.nd = icmp eq i32 %.0.i831, 0
  br i1 %i.nd, label %bb.ij, label %bb.ja

bb.ij:                                            ; preds = %lean_obj_tag.exit833
  %i.ne = ptrtoint ptr %.0418 to i64
  %i.nf = and i64 %i.ne, 1
  %.not.i834 = icmp eq i64 %i.nf, 0
  br i1 %.not.i834, label %bb.ik, label %lean_del_object.exit835

bb.ik:                                            ; preds = %bb.ij
  tail call void @lean_free_object(ptr noundef nonnull %.0418) #12
  br label %lean_del_object.exit835

lean_del_object.exit835:                          ; preds = %bb.ij, %bb.ik
  %i.ng = ptrtoint ptr %i.j to i64
  %i.nh = and i64 %i.ng, 1
  %.not.i578 = icmp eq i64 %i.nh, 0
  br i1 %.not.i578, label %bb.il, label %lean_dec.exit579

bb.il:                                            ; preds = %lean_del_object.exit835
  %i.ni = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 1
  br i1 %i.nj, label %bb.im, label %bb.in, !prof !17

bb.im:                                            ; preds = %bb.il
  %i.nk = add nsw i32 %i.ni, -1
  store i32 %i.nk, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit579

bb.in:                                            ; preds = %bb.il
  %.not.i631 = icmp eq i32 %i.ni, 0
  br i1 %.not.i631, label %lean_dec.exit579, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit579

lean_dec.exit579:                                 ; preds = %bb.io, %bb.in, %bb.im, %lean_del_object.exit835
  %.val711 = load i32, ptr %i.mw, align 4, !tbaa !11 ; 4 uses
  %i.nl = icmp eq i32 %.val711, 1
  br i1 %i.nl, label %bb.ip, label %bb.iu

bb.ip:                                            ; preds = %lean_dec.exit579
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !15 ; 4 uses
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = and i64 %i.no, 1
  %.not.i576 = icmp eq i64 %i.np, 0
  br i1 %.not.i576, label %bb.iq, label %bb.iz

bb.iq:                                            ; preds = %bb.ip
  %i.nq = load i32, ptr %i.nn, align 4, !tbaa !11 ; 3 uses
  %i.nr = icmp sgt i32 %i.nq, 1
  br i1 %i.nr, label %bb.ir, label %bb.is, !prof !17

bb.ir:                                            ; preds = %bb.iq
  %i.ns = add nsw i32 %i.nq, -1
  store i32 %i.ns, ptr %i.nn, align 4, !tbaa !11
  br label %bb.iz

bb.is:                                            ; preds = %bb.iq
  %.not.i633 = icmp eq i32 %i.nq, 0
  br i1 %.not.i633, label %bb.iz, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nn) #12
  br label %bb.iz

bb.iu:                                            ; preds = %lean_dec.exit579
  br i1 %.not.i830, label %bb.iv, label %lean_dec.exit577

bb.iv:                                            ; preds = %bb.iu
  %i.nt = icmp sgt i32 %.val711, 1
  br i1 %i.nt, label %bb.iw, label %bb.ix, !prof !17

bb.iw:                                            ; preds = %bb.iv
  %i.nu = add nsw i32 %.val711, -1
  store i32 %i.nu, ptr %i.mw, align 4, !tbaa !11
  br label %lean_dec.exit577

bb.ix:                                            ; preds = %bb.iv
  %.not.i635 = icmp eq i32 %.val711, 0
  br i1 %.not.i635, label %lean_dec.exit577, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mw) #12
  br label %lean_dec.exit577

bb.iz:                                            ; preds = %bb.ip, %bb.ir, %bb.is, %bb.it
  store ptr %i.mc, ptr %i.nm, align 8, !tbaa !15
  br label %lean_dec.exit595

lean_dec.exit577:                                 ; preds = %bb.iy, %bb.ix, %bb.iw, %bb.iu
  %i.nv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store ptr %i.mc, ptr %i.nw, align 8, !tbaa !15
  br label %lean_dec.exit595

bb.ja:                                            ; preds = %lean_obj_tag.exit833
  br i1 %.not.i503, label %bb.jb, label %lean_dec.exit573

bb.jb:                                            ; preds = %bb.ja
  %i.nx = load i32, ptr %i.mc, align 512, !tbaa !11 ; 3 uses
  %i.ny = icmp sgt i32 %i.nx, 1
  br i1 %i.ny, label %bb.jc, label %bb.jd, !prof !17

bb.jc:                                            ; preds = %bb.jb
  %i.nz = add nsw i32 %i.nx, -1
  store i32 %i.nz, ptr %i.mc, align 512, !tbaa !11
  br label %lean_dec.exit573

bb.jd:                                            ; preds = %bb.jb
  %.not.i637 = icmp eq i32 %i.nx, 0
  br i1 %.not.i637, label %lean_dec.exit573, label %bb.je

bb.je:                                            ; preds = %bb.jd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mc) #12
  br label %lean_dec.exit573

lean_dec.exit573:                                 ; preds = %bb.je, %bb.jd, %bb.jc, %bb.ja
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !15 ; 5 uses
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = and i64 %i.oc, 1
  %.not.i501 = icmp eq i64 %i.od, 0
  br i1 %.not.i501, label %bb.jf, label %lean_inc.exit502

bb.jf:                                            ; preds = %lean_dec.exit573
  %.val.i.i836 = load i32, ptr %i.ob, align 4, !tbaa !11 ; 3 uses
  %i.oe = icmp sgt i32 %.val.i.i836, 0
  br i1 %i.oe, label %bb.jg, label %bb.jh, !prof !17

bb.jg:                                            ; preds = %bb.jf
  %i.of = add nuw i32 %.val.i.i836, 1
  store i32 %i.of, ptr %i.ob, align 4, !tbaa !11
  br label %lean_inc.exit502

bb.jh:                                            ; preds = %bb.jf
  %.not.i.i837 = icmp eq i32 %.val.i.i836, 0
  br i1 %.not.i.i837, label %lean_inc.exit502, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.og = atomicrmw sub ptr %i.ob, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit502

lean_inc.exit502:                                 ; preds = %bb.ji, %bb.jh, %bb.jg, %lean_dec.exit573
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.mw, i32 noundef 1)
  br label %lean_dec_ref_known.exit901.thread

bb.jj:                                            ; preds = %lean_dec_ref_known.exit829
  br i1 %.not.i503, label %bb.jk, label %lean_dec.exit571

bb.jk:                                            ; preds = %bb.jj
  %i.oh = load i32, ptr %i.mc, align 4, !tbaa !11 ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, 1
  br i1 %i.oi, label %bb.jl, label %bb.jm, !prof !17

bb.jl:                                            ; preds = %bb.jk
  %i.oj = add nsw i32 %i.oh, -1
  store i32 %i.oj, ptr %i.mc, align 4, !tbaa !11
  br label %lean_dec.exit571

bb.jm:                                            ; preds = %bb.jk
  %.not.i639 = icmp eq i32 %i.oh, 0
  br i1 %.not.i639, label %lean_dec.exit571, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mc) #12
  br label %lean_dec.exit571

lean_dec.exit571:                                 ; preds = %bb.jn, %bb.jm, %bb.jl, %bb.jj
  %i.ok = tail call ptr @l_Lean_Meta_processPostponed(i8 noundef zeroext %4, i8 noundef zeroext 0, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) #12 ; 13 uses
  %i.ol = ptrtoint ptr %i.ok to i64               ; 2 uses
  %i.om = and i64 %i.ol, 1
  %.not.i839 = icmp eq i64 %i.om, 0               ; 2 uses
  br i1 %.not.i839, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %lean_dec.exit571
  %i.on = lshr i64 %i.ol, 1
  %i.oo = trunc i64 %i.on to i32
  br label %lean_obj_tag.exit842

bb.jp:                                            ; preds = %lean_dec.exit571
  %i.op = getelementptr i8, ptr %i.ok, i64 4
  %.val.i841 = load i32, ptr %i.op, align 4
  %i.oq = lshr i32 %.val.i841, 24
  br label %lean_obj_tag.exit842

lean_obj_tag.exit842:                             ; preds = %bb.jo, %bb.jp
  %.0.i840 = phi i32 [ %i.oo, %bb.jo ], [ %i.oq, %bb.jp ]
  %i.or = icmp eq i32 %.0.i840, 0
  br i1 %i.or, label %bb.jq, label %bb.na

bb.jq:                                            ; preds = %lean_obj_tag.exit842
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !15 ; 8 uses
  %.val710 = load i32, ptr %i.ok, align 8, !tbaa !11
  %i.ou = icmp eq i32 %.val710, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.ot to i64               ; 3 uses
  br i1 %i.ou, label %lean_dec.exit569, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ov = and i64 %.pre, 1
  %.not.i499 = icmp eq i64 %i.ov, 0
  br i1 %.not.i499, label %bb.js, label %lean_inc.exit500

bb.js:                                            ; preds = %bb.jr
  %.val.i.i843 = load i32, ptr %i.ot, align 4, !tbaa !11 ; 3 uses
  %i.ow = icmp sgt i32 %.val.i.i843, 0
  br i1 %i.ow, label %bb.jt, label %bb.ju, !prof !17

bb.jt:                                            ; preds = %bb.js
  %i.ox = add nuw i32 %.val.i.i843, 1
  store i32 %i.ox, ptr %i.ot, align 4, !tbaa !11
  br label %lean_inc.exit500

bb.ju:                                            ; preds = %bb.js
  %.not.i.i844 = icmp eq i32 %.val.i.i843, 0
  br i1 %.not.i.i844, label %lean_inc.exit500, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.oy = atomicrmw sub ptr %i.ot, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit500

lean_inc.exit500:                                 ; preds = %bb.jv, %bb.ju, %bb.jt, %bb.jr
  br i1 %.not.i839, label %bb.jw, label %lean_dec.exit569

bb.jw:                                            ; preds = %lean_inc.exit500
  %i.oz = load i32, ptr %i.ok, align 8, !tbaa !11 ; 3 uses
  %i.pa = icmp sgt i32 %i.oz, 1
  br i1 %i.pa, label %bb.jx, label %bb.jy, !prof !17

bb.jx:                                            ; preds = %bb.jw
  %i.pb = add nsw i32 %i.oz, -1
  store i32 %i.pb, ptr %i.ok, align 8, !tbaa !11
  br label %lean_dec.exit569

bb.jy:                                            ; preds = %bb.jw
  %.not.i641 = icmp eq i32 %i.oz, 0
  br i1 %.not.i641, label %lean_dec.exit569, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ok) #12
  br label %lean_dec.exit569

lean_dec.exit569:                                 ; preds = %bb.jq, %lean_inc.exit500, %bb.jx, %bb.jy, %bb.jz
  %.0440 = phi ptr [ inttoptr (i64 1 to ptr), %bb.jz ], [ inttoptr (i64 1 to ptr), %lean_inc.exit500 ], [ inttoptr (i64 1 to ptr), %bb.jx ], [ inttoptr (i64 1 to ptr), %bb.jy ], [ %i.ok, %bb.jq ] ; 3 uses
  %i.pc = and i64 %.pre, 510
  %i.pd = icmp eq i64 %i.pc, 0
  br i1 %i.pd, label %bb.ka, label %bb.li

bb.ka:                                            ; preds = %lean_dec.exit569
  %i.pe = ptrtoint ptr %.0440 to i64
  %i.pf = and i64 %i.pe, 1
  %.not.i846 = icmp eq i64 %i.pf, 0
  br i1 %.not.i846, label %bb.kb, label %lean_del_object.exit847

bb.kb:                                            ; preds = %bb.ka
  tail call void @lean_free_object(ptr noundef nonnull %.0440) #12
  br label %lean_del_object.exit847

lean_del_object.exit847:                          ; preds = %bb.ka, %bb.kb
  %i.pg = and i64 %.pre, 1
  %.not.i566 = icmp eq i64 %i.pg, 0
  br i1 %.not.i566, label %bb.kc, label %lean_dec.exit567

bb.kc:                                            ; preds = %lean_del_object.exit847
  %i.ph = load i32, ptr %i.ot, align 512, !tbaa !11 ; 3 uses
  %i.pi = icmp sgt i32 %i.ph, 1
  br i1 %i.pi, label %bb.kd, label %bb.ke, !prof !17

bb.kd:                                            ; preds = %bb.kc
  %i.pj = add nsw i32 %i.ph, -1
  store i32 %i.pj, ptr %i.ot, align 512, !tbaa !11
  br label %lean_dec.exit567

bb.ke:                                            ; preds = %bb.kc
  %.not.i643 = icmp eq i32 %i.ph, 0
  br i1 %.not.i643, label %lean_dec.exit567, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ot) #12
  br label %lean_dec.exit567

lean_dec.exit567:                                 ; preds = %bb.kf, %bb.ke, %bb.kd, %lean_del_object.exit847
  br i1 %.not.i515, label %bb.kg, label %lean_dec.exit565

bb.kg:                                            ; preds = %lean_dec.exit567
  %i.pk = load i32, ptr %i.gy, align 4, !tbaa !11 ; 3 uses
  %i.pl = icmp sgt i32 %i.pk, 1
  br i1 %i.pl, label %bb.kh, label %bb.ki, !prof !17

bb.kh:                                            ; preds = %bb.kg
  %i.pm = add nsw i32 %i.pk, -1
  store i32 %i.pm, ptr %i.gy, align 4, !tbaa !11
  br label %lean_dec.exit565

bb.ki:                                            ; preds = %bb.kg
  %.not.i645 = icmp eq i32 %i.pk, 0
  br i1 %.not.i645, label %lean_dec.exit565, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit565

lean_dec.exit565:                                 ; preds = %bb.kj, %bb.ki, %bb.kh, %lean_dec.exit567
  %i.pn = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %6, ptr noundef %8) #12 ; 9 uses
  %i.po = ptrtoint ptr %i.pn to i64               ; 2 uses
  %i.pp = and i64 %i.po, 1
  %.not.i848 = icmp eq i64 %i.pp, 0               ; 2 uses
  br i1 %.not.i848, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %lean_dec.exit565
  %i.pq = lshr i64 %i.po, 1
  %i.pr = trunc i64 %i.pq to i32
  br label %lean_obj_tag.exit851

bb.kl:                                            ; preds = %lean_dec.exit565
  %i.ps = getelementptr i8, ptr %i.pn, i64 4
  %.val.i850 = load i32, ptr %i.ps, align 4
  %i.pt = lshr i32 %.val.i850, 24
  br label %lean_obj_tag.exit851

lean_obj_tag.exit851:                             ; preds = %bb.kk, %bb.kl
  %.0.i849 = phi i32 [ %i.pr, %bb.kk ], [ %i.pt, %bb.kl ]
  %i.pu = icmp eq i32 %.0.i849, 0
  br i1 %i.pu, label %bb.km, label %bb.ld

bb.km:                                            ; preds = %lean_obj_tag.exit851
  %i.pv = ptrtoint ptr %.0418 to i64
  %i.pw = and i64 %i.pv, 1
  %.not.i852 = icmp eq i64 %i.pw, 0
  br i1 %.not.i852, label %bb.kn, label %lean_del_object.exit853

bb.kn:                                            ; preds = %bb.km
  tail call void @lean_free_object(ptr noundef nonnull %.0418) #12
  br label %lean_del_object.exit853

lean_del_object.exit853:                          ; preds = %bb.km, %bb.kn
  %i.px = ptrtoint ptr %i.j to i64
  %i.py = and i64 %i.px, 1
  %.not.i562 = icmp eq i64 %i.py, 0
  br i1 %.not.i562, label %bb.ko, label %lean_dec.exit563

bb.ko:                                            ; preds = %lean_del_object.exit853
  %i.pz = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, 1
  br i1 %i.qa, label %bb.kp, label %bb.kq, !prof !17

bb.kp:                                            ; preds = %bb.ko
  %i.qb = add nsw i32 %i.pz, -1
  store i32 %i.qb, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit563

bb.kq:                                            ; preds = %bb.ko
  %.not.i647 = icmp eq i32 %i.pz, 0
  br i1 %.not.i647, label %lean_dec.exit563, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #12
  br label %lean_dec.exit563

lean_dec.exit563:                                 ; preds = %bb.kr, %bb.kq, %bb.kp, %lean_del_object.exit853
  %.val709 = load i32, ptr %i.pn, align 4, !tbaa !11 ; 4 uses
  %i.qc = icmp eq i32 %.val709, 1
  br i1 %i.qc, label %bb.ks, label %bb.kx

bb.ks:                                            ; preds = %lean_dec.exit563
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !15 ; 4 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = and i64 %i.qf, 1
  %.not.i560 = icmp eq i64 %i.qg, 0
  br i1 %.not.i560, label %bb.kt, label %bb.lc

bb.kt:                                            ; preds = %bb.ks
  %i.qh = load i32, ptr %i.qe, align 4, !tbaa !11 ; 3 uses
  %i.qi = icmp sgt i32 %i.qh, 1
  br i1 %i.qi, label %bb.ku, label %bb.kv, !prof !17

bb.ku:                                            ; preds = %bb.kt
  %i.qj = add nsw i32 %i.qh, -1
  store i32 %i.qj, ptr %i.qe, align 4, !tbaa !11
  br label %bb.lc

bb.kv:                                            ; preds = %bb.kt
  %.not.i649 = icmp eq i32 %i.qh, 0
  br i1 %.not.i649, label %bb.lc, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qe) #12
  br label %bb.lc

bb.kx:                                            ; preds = %lean_dec.exit563
  br i1 %.not.i848, label %bb.ky, label %lean_dec.exit561

bb.ky:                                            ; preds = %bb.kx
  %i.qk = icmp sgt i32 %.val709, 1
  br i1 %i.qk, label %bb.kz, label %bb.la, !prof !17

bb.kz:                                            ; preds = %bb.ky
  %i.ql = add nsw i32 %.val709, -1
  store i32 %i.ql, ptr %i.pn, align 4, !tbaa !11
  br label %lean_dec.exit561

bb.la:                                            ; preds = %bb.ky
  %.not.i651 = icmp eq i32 %.val709, 0
  br i1 %.not.i651, label %lean_dec.exit561, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pn) #12
  br label %lean_dec.exit561

bb.lc:                                            ; preds = %bb.ks, %bb.ku, %bb.kv, %bb.kw
  store ptr inttoptr (i64 1 to ptr), ptr %i.qd, align 8, !tbaa !15
  br label %lean_dec.exit595

lean_dec.exit561:                                 ; preds = %bb.lb, %bb.la, %bb.kz, %bb.kx
  %i.qm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.qn, align 8, !tbaa !15
  br label %lean_dec.exit595

bb.ld:                                            ; preds = %lean_obj_tag.exit851
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !15 ; 5 uses
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = and i64 %i.qq, 1
  %.not.i497 = icmp eq i64 %i.qr, 0
  br i1 %.not.i497, label %bb.le, label %lean_inc.exit498

bb.le:                                            ; preds = %bb.ld
  %.val.i.i854 = load i32, ptr %i.qp, align 4, !tbaa !11 ; 3 uses
  %i.qs = icmp sgt i32 %.val.i.i854, 0
  br i1 %i.qs, label %bb.lf, label %bb.lg, !prof !17

bb.lf:                                            ; preds = %bb.le
  %i.qt = add nuw i32 %.val.i.i854, 1
  store i32 %i.qt, ptr %i.qp, align 4, !tbaa !11
  br label %lean_inc.exit498

bb.lg:                                            ; preds = %bb.le
  %.not.i.i855 = icmp eq i32 %.val.i.i854, 0
  br i1 %.not.i.i855, label %lean_inc.exit498, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.qu = atomicrmw sub ptr %i.qp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit498

lean_inc.exit498:                                 ; preds = %bb.lh, %bb.lg, %bb.lf, %bb.ld
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.pn, i32 noundef 1)
  br label %lean_dec_ref_known.exit901.thread

bb.li:                                            ; preds = %lean_dec.exit569
  %i.qv = ptrtoint ptr %.0418 to i64
  %i.qw = and i64 %i.qv, 1
  %.not.i857 = icmp eq i64 %i.qw, 0
  br i1 %.not.i857, label %bb.lj, label %lean_del_object.exit858

bb.lj:                                            ; preds = %bb.li
  tail call void @lean_free_object(ptr noundef nonnull %.0418) #12
  br label %lean_del_object.exit858

lean_del_object.exit858:                          ; preds = %bb.li, %bb.lj
  %i.qx = ptrtoint ptr %i.j to i64
  %i.qy = and i64 %i.qx, 1
  %.not.i556 = icmp eq i64 %i.qy, 0
  br i1 %.not.i556, label %bb.lk, label %lean_dec.exit557

bb.lk:                                            ; preds = %lean_del_object.exit858
  %i.qz = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.ra = icmp sgt i32 %i.qz, 1
  br i1 %i.ra, label %bb.ll, label %bb.lm, !prof !17

end_hunk_16
begin_hunk_17_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isExprDefEqExpensive:bb.a
  %i.eb = tail call ptr @l_Lean_Meta_whnfCore(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12 ; 14 uses
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = and i64 %i.ec, 1
  %.not.i1489 = icmp eq i64 %i.ed, 0              ; 3 uses
  br i1 %.not.i1489, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %lean_inc_ref.exit1488
  %i.ee = lshr i64 %i.ec, 1
  %i.ef = trunc i64 %i.ee to i32
  br label %lean_obj_tag.exit1492

bb.dh:                                            ; preds = %lean_inc_ref.exit1488
  %i.eg = getelementptr i8, ptr %i.eb, i64 4
  %.val.i1491 = load i32, ptr %i.eg, align 4
  %i.eh = lshr i32 %.val.i1491, 24
  br label %lean_obj_tag.exit1492

lean_obj_tag.exit1492:                            ; preds = %bb.dg, %bb.dh
  %.0.i1490 = phi i32 [ %i.ef, %bb.dg ], [ %i.eh, %bb.dh ]
  %i.ei = icmp eq i32 %.0.i1490, 0
  br i1 %i.ei, label %bb.di, label %bb.aee

bb.di:                                            ; preds = %lean_obj_tag.exit1492
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !15 ; 15 uses
  %.val1443 = load i32, ptr %i.eb, align 8, !tbaa !11
  %i.el = icmp eq i32 %.val1443, 1                ; 2 uses
  br i1 %i.el, label %lean_dec.exit1156, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = and i64 %i.em, 1
  %.not.i1052 = icmp eq i64 %i.en, 0
  br i1 %.not.i1052, label %bb.dk, label %lean_inc.exit1053

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i1493 = load i32, ptr %i.ek, align 4, !tbaa !11 ; 3 uses
  %i.eo = icmp sgt i32 %.val.i.i1493, 0
  br i1 %i.eo, label %bb.dl, label %bb.dm, !prof !17

bb.dl:                                            ; preds = %bb.dk
  %i.ep = add nuw i32 %.val.i.i1493, 1
  store i32 %i.ep, ptr %i.ek, align 4, !tbaa !11
  br label %lean_inc.exit1053

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i1494 = icmp eq i32 %.val.i.i1493, 0
  br i1 %.not.i.i1494, label %lean_inc.exit1053, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.eq = atomicrmw sub ptr %i.ek, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1053

lean_inc.exit1053:                                ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj
  br i1 %.not.i1489, label %bb.do, label %lean_dec.exit1156

bb.do:                                            ; preds = %lean_inc.exit1053
  %i.er = load i32, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %bb.dp, label %bb.dq, !prof !17

bb.dp:                                            ; preds = %bb.do
  %i.et = add nsw i32 %i.er, -1
  store i32 %i.et, ptr %i.eb, align 8, !tbaa !11
  br label %lean_dec.exit1156

bb.dq:                                            ; preds = %bb.do
  %.not.i1176 = icmp eq i32 %i.er, 0
  br i1 %.not.i1176, label %lean_dec.exit1156, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eb) #12
  br label %lean_dec.exit1156

lean_dec.exit1156:                                ; preds = %lean_inc.exit1053, %bb.dp, %bb.dq, %bb.dr, %bb.di
  %.0985 = phi ptr [ %i.eb, %bb.di ], [ inttoptr (i64 1 to ptr), %bb.dr ], [ inttoptr (i64 1 to ptr), %bb.dq ], [ inttoptr (i64 1 to ptr), %bb.dp ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1053 ] ; 40 uses
  %.val.i.i1496 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.eu = icmp sgt i32 %.val.i.i1496, 0
  br i1 %i.eu, label %bb.ds, label %bb.dt, !prof !17

bb.ds:                                            ; preds = %lean_dec.exit1156
  %i.ev = add nuw i32 %.val.i.i1496, 1
  store i32 %i.ev, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1498

bb.dt:                                            ; preds = %lean_dec.exit1156
  %.not.i.i1497 = icmp eq i32 %.val.i.i1496, 0
  br i1 %.not.i.i1497, label %lean_inc_ref.exit1498, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ew = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1498

lean_inc_ref.exit1498:                            ; preds = %bb.ds, %bb.dt, %bb.du
  %i.ex = tail call ptr @l_Lean_Meta_whnfCore(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12 ; 14 uses
  %i.ey = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.ez = and i64 %i.ey, 1
  %.not.i1499 = icmp eq i64 %i.ez, 0              ; 3 uses
  br i1 %.not.i1499, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %lean_inc_ref.exit1498
  %i.fa = lshr i64 %i.ey, 1
  %i.fb = trunc i64 %i.fa to i32
  br label %lean_obj_tag.exit1502

bb.dw:                                            ; preds = %lean_inc_ref.exit1498
  %i.fc = getelementptr i8, ptr %i.ex, i64 4
  %.val.i1501 = load i32, ptr %i.fc, align 4
  %i.fd = lshr i32 %.val.i1501, 24
  br label %lean_obj_tag.exit1502

lean_obj_tag.exit1502:                            ; preds = %bb.dv, %bb.dw
  %.0.i1500 = phi i32 [ %i.fb, %bb.dv ], [ %i.fd, %bb.dw ]
  %i.fe = icmp eq i32 %.0.i1500, 0
  br i1 %i.fe, label %bb.dx, label %bb.ade

bb.dx:                                            ; preds = %lean_obj_tag.exit1502
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !15 ; 11 uses
  %.val1442 = load i32, ptr %i.ex, align 8, !tbaa !11
  %i.fh = icmp eq i32 %.val1442, 1                ; 2 uses
  br i1 %i.fh, label %lean_dec.exit1154, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = and i64 %i.fi, 1
  %.not.i1050 = icmp eq i64 %i.fj, 0
  br i1 %.not.i1050, label %bb.dz, label %lean_inc.exit1051

bb.dz:                                            ; preds = %bb.dy
  %.val.i.i1503 = load i32, ptr %i.fg, align 4, !tbaa !11 ; 3 uses
  %i.fk = icmp sgt i32 %.val.i.i1503, 0
  br i1 %i.fk, label %bb.ea, label %bb.eb, !prof !17

bb.ea:                                            ; preds = %bb.dz
  %i.fl = add nuw i32 %.val.i.i1503, 1
  store i32 %i.fl, ptr %i.fg, align 4, !tbaa !11
  br label %lean_inc.exit1051

bb.eb:                                            ; preds = %bb.dz
  %.not.i.i1504 = icmp eq i32 %.val.i.i1503, 0
  br i1 %.not.i.i1504, label %lean_inc.exit1051, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.fm = atomicrmw sub ptr %i.fg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1051

lean_inc.exit1051:                                ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dy
  br i1 %.not.i1499, label %bb.ed, label %lean_dec.exit1154

bb.ed:                                            ; preds = %lean_inc.exit1051
  %i.fn = load i32, ptr %i.ex, align 8, !tbaa !11 ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.ee, label %bb.ef, !prof !17

bb.ee:                                            ; preds = %bb.ed
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %i.ex, align 8, !tbaa !11
  br label %lean_dec.exit1154

bb.ef:                                            ; preds = %bb.ed
  %.not.i1178 = icmp eq i32 %i.fn, 0
  br i1 %.not.i1178, label %lean_dec.exit1154, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ex) #12
  br label %lean_dec.exit1154

lean_dec.exit1154:                                ; preds = %lean_inc.exit1051, %bb.ee, %bb.ef, %bb.eg, %bb.dx
  %.01003 = phi ptr [ %i.ex, %bb.dx ], [ inttoptr (i64 1 to ptr), %bb.eg ], [ inttoptr (i64 1 to ptr), %bb.ef ], [ inttoptr (i64 1 to ptr), %bb.ee ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1051 ] ; 40 uses
  %i.fq = tail call zeroext i8 @lean_expr_eqv(ptr noundef nonnull %0, ptr noundef %i.ek) #12
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.eh, label %bb.fi

bb.eh:                                            ; preds = %lean_dec.exit1154
  %i.fs = ptrtoint ptr %.01003 to i64
  %i.ft = and i64 %i.fs, 1
  %.not.i1506 = icmp eq i64 %i.ft, 0
  br i1 %.not.i1506, label %bb.ei, label %lean_del_object.exit1507

bb.ei:                                            ; preds = %bb.eh
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1507

lean_del_object.exit1507:                         ; preds = %bb.eh, %bb.ei
  %i.fu = ptrtoint ptr %.0985 to i64
  %i.fv = and i64 %i.fu, 1
  %.not.i1508 = icmp eq i64 %i.fv, 0
  br i1 %.not.i1508, label %bb.ej, label %lean_del_object.exit1509

bb.ej:                                            ; preds = %lean_del_object.exit1507
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1509

lean_del_object.exit1509:                         ; preds = %lean_del_object.exit1507, %bb.ej
  %i.fw = and i64 %.pre1823, 1
  %.not.i1151 = icmp eq i64 %i.fw, 0
  br i1 %.not.i1151, label %bb.ek, label %lean_dec.exit1152

bb.ek:                                            ; preds = %lean_del_object.exit1509
  %i.fx = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 1
  br i1 %i.fy, label %bb.el, label %bb.em, !prof !17

bb.el:                                            ; preds = %bb.ek
  %i.fz = add nsw i32 %i.fx, -1
  store i32 %i.fz, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1152

bb.em:                                            ; preds = %bb.ek
  %.not.i1180 = icmp eq i32 %i.fx, 0
  br i1 %.not.i1180, label %lean_dec.exit1152, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1152

lean_dec.exit1152:                                ; preds = %bb.en, %bb.em, %bb.el, %lean_del_object.exit1509
  %i.ga = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %bb.eo, label %bb.ep, !prof !17

bb.eo:                                            ; preds = %lean_dec.exit1152
  %i.gc = add nsw i32 %i.ga, -1
  store i32 %i.gc, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1409

bb.ep:                                            ; preds = %lean_dec.exit1152
  %.not.i1408 = icmp eq i32 %i.ga, 0
  br i1 %.not.i1408, label %lean_dec_ref.exit1409, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1409

lean_dec_ref.exit1409:                            ; preds = %bb.eo, %bb.ep, %bb.eq
  %i.gd = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 1
  br i1 %i.ge, label %bb.er, label %bb.es, !prof !17

bb.er:                                            ; preds = %lean_dec_ref.exit1409
  %i.gf = add nsw i32 %i.gd, -1
  store i32 %i.gf, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1407

bb.es:                                            ; preds = %lean_dec_ref.exit1409
  %.not.i1406 = icmp eq i32 %i.gd, 0
  br i1 %.not.i1406, label %lean_dec_ref.exit1407, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1407

lean_dec_ref.exit1407:                            ; preds = %bb.er, %bb.es, %bb.et
  %i.gg = ptrtoint ptr %5 to i64
  %i.gh = and i64 %i.gg, 1
  %.not.i1048 = icmp eq i64 %i.gh, 0
  br i1 %.not.i1048, label %bb.eu, label %lean_inc.exit1049

bb.eu:                                            ; preds = %lean_dec_ref.exit1407
  %.val.i.i1510 = load i32, ptr %5, align 4, !tbaa !11 ; 3 uses
  %i.gi = icmp sgt i32 %.val.i.i1510, 0
  br i1 %i.gi, label %bb.ev, label %bb.ew, !prof !17

bb.ev:                                            ; preds = %bb.eu
  %i.gj = add nuw i32 %.val.i.i1510, 1
  store i32 %i.gj, ptr %5, align 4, !tbaa !11
  br label %lean_inc.exit1049

bb.ew:                                            ; preds = %bb.eu
  %.not.i.i1511 = icmp eq i32 %.val.i.i1510, 0
  br i1 %.not.i.i1511, label %lean_inc.exit1049, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.gk = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1049

lean_inc.exit1049:                                ; preds = %bb.ex, %bb.ew, %bb.ev, %lean_dec_ref.exit1407
  %.val.i.i1513 = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.gl = icmp sgt i32 %.val.i.i1513, 0
  br i1 %i.gl, label %bb.ey, label %bb.ez, !prof !17

bb.ey:                                            ; preds = %lean_inc.exit1049
  %i.gm = add nuw i32 %.val.i.i1513, 1
  store i32 %i.gm, ptr %4, align 4, !tbaa !11
  br label %lean_inc_ref.exit1515

bb.ez:                                            ; preds = %lean_inc.exit1049
  %.not.i.i1514 = icmp eq i32 %.val.i.i1513, 0
  br i1 %.not.i.i1514, label %lean_inc_ref.exit1515, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.gn = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1515

lean_inc_ref.exit1515:                            ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.go = ptrtoint ptr %3 to i64
  %i.gp = and i64 %i.go, 1
  %.not.i1046 = icmp eq i64 %i.gp, 0
  br i1 %.not.i1046, label %bb.fb, label %lean_inc.exit1047

bb.fb:                                            ; preds = %lean_inc_ref.exit1515
  %.val.i.i1516 = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.gq = icmp sgt i32 %.val.i.i1516, 0
  br i1 %i.gq, label %bb.fc, label %bb.fd, !prof !17

bb.fc:                                            ; preds = %bb.fb
  %i.gr = add nuw i32 %.val.i.i1516, 1
  store i32 %i.gr, ptr %3, align 4, !tbaa !11
  br label %lean_inc.exit1047

bb.fd:                                            ; preds = %bb.fb
  %.not.i.i1517 = icmp eq i32 %.val.i.i1516, 0
  br i1 %.not.i.i1517, label %lean_inc.exit1047, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.gs = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1047

lean_inc.exit1047:                                ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_inc_ref.exit1515
  %.val.i.i1519 = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.gt = icmp sgt i32 %.val.i.i1519, 0
  br i1 %i.gt, label %bb.ff, label %bb.fg, !prof !17

bb.ff:                                            ; preds = %lean_inc.exit1047
  %i.gu = add nuw i32 %.val.i.i1519, 1
  store i32 %i.gu, ptr %2, align 4, !tbaa !11
  br label %lean_inc_ref.exit1521

bb.fg:                                            ; preds = %lean_inc.exit1047
  %.not.i.i1520 = icmp eq i32 %.val.i.i1519, 0
  br i1 %.not.i.i1520, label %lean_inc_ref.exit1521, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.gv = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1521

lean_inc_ref.exit1521:                            ; preds = %bb.ff, %bb.fg, %bb.fh
  %i.gw = tail call ptr @lean_is_expr_def_eq(ptr noundef %i.ek, ptr noundef %i.fg, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5)
  br label %lean_dec_ref.exit1331

bb.fi:                                            ; preds = %lean_dec.exit1154
  %i.gx = tail call zeroext i8 @lean_expr_eqv(ptr noundef nonnull %1, ptr noundef %i.fg) #12 ; 7 uses
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.fj, label %bb.gk

bb.fj:                                            ; preds = %bb.fi
  %i.gz = ptrtoint ptr %.01003 to i64
  %i.ha = and i64 %i.gz, 1
  %.not.i1522 = icmp eq i64 %i.ha, 0
  br i1 %.not.i1522, label %bb.fk, label %lean_del_object.exit1523

bb.fk:                                            ; preds = %bb.fj
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1523

lean_del_object.exit1523:                         ; preds = %bb.fj, %bb.fk
  %i.hb = ptrtoint ptr %.0985 to i64
  %i.hc = and i64 %i.hb, 1
  %.not.i1524 = icmp eq i64 %i.hc, 0
  br i1 %.not.i1524, label %bb.fl, label %lean_del_object.exit1525

bb.fl:                                            ; preds = %lean_del_object.exit1523
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1525

lean_del_object.exit1525:                         ; preds = %lean_del_object.exit1523, %bb.fl
  %i.hd = and i64 %.pre1823, 1
  %.not.i1149 = icmp eq i64 %i.hd, 0
  br i1 %.not.i1149, label %bb.fm, label %lean_dec.exit1150

bb.fm:                                            ; preds = %lean_del_object.exit1525
  %i.he = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.fn, label %bb.fo, !prof !17

bb.fn:                                            ; preds = %bb.fm
  %i.hg = add nsw i32 %i.he, -1
  store i32 %i.hg, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1150

bb.fo:                                            ; preds = %bb.fm
  %.not.i1182 = icmp eq i32 %i.he, 0
  br i1 %.not.i1182, label %lean_dec.exit1150, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1150

lean_dec.exit1150:                                ; preds = %bb.fp, %bb.fo, %bb.fn, %lean_del_object.exit1525
  %i.hh = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.fq, label %bb.fr, !prof !17

bb.fq:                                            ; preds = %lean_dec.exit1150
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1405

bb.fr:                                            ; preds = %lean_dec.exit1150
  %.not.i1404 = icmp eq i32 %i.hh, 0
  br i1 %.not.i1404, label %lean_dec_ref.exit1405, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1405

lean_dec_ref.exit1405:                            ; preds = %bb.fq, %bb.fr, %bb.fs
  %i.hk = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ft, label %bb.fu, !prof !17

bb.ft:                                            ; preds = %lean_dec_ref.exit1405
  %i.hm = add nsw i32 %i.hk, -1
  store i32 %i.hm, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1403

bb.fu:                                            ; preds = %lean_dec_ref.exit1405
  %.not.i1402 = icmp eq i32 %i.hk, 0
  br i1 %.not.i1402, label %lean_dec_ref.exit1403, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1403

lean_dec_ref.exit1403:                            ; preds = %bb.ft, %bb.fu, %bb.fv
  %i.hn = ptrtoint ptr %5 to i64
  %i.ho = and i64 %i.hn, 1
  %.not.i1044 = icmp eq i64 %i.ho, 0
  br i1 %.not.i1044, label %bb.fw, label %lean_inc.exit1045

bb.fw:                                            ; preds = %lean_dec_ref.exit1403
  %.val.i.i1526 = load i32, ptr %5, align 4, !tbaa !11 ; 3 uses
  %i.hp = icmp sgt i32 %.val.i.i1526, 0
  br i1 %i.hp, label %bb.fx, label %bb.fy, !prof !17

bb.fx:                                            ; preds = %bb.fw
  %i.hq = add nuw i32 %.val.i.i1526, 1
  store i32 %i.hq, ptr %5, align 4, !tbaa !11
  br label %lean_inc.exit1045

bb.fy:                                            ; preds = %bb.fw
  %.not.i.i1527 = icmp eq i32 %.val.i.i1526, 0
  br i1 %.not.i.i1527, label %lean_inc.exit1045, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.hr = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1045

lean_inc.exit1045:                                ; preds = %bb.fz, %bb.fy, %bb.fx, %lean_dec_ref.exit1403
  %.val.i.i1529 = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.hs = icmp sgt i32 %.val.i.i1529, 0
  br i1 %i.hs, label %bb.ga, label %bb.gb, !prof !17

bb.ga:                                            ; preds = %lean_inc.exit1045
  %i.ht = add nuw i32 %.val.i.i1529, 1
  store i32 %i.ht, ptr %4, align 4, !tbaa !11
  br label %lean_inc_ref.exit1531

bb.gb:                                            ; preds = %lean_inc.exit1045
  %.not.i.i1530 = icmp eq i32 %.val.i.i1529, 0
  br i1 %.not.i.i1530, label %lean_inc_ref.exit1531, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.hu = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1531

lean_inc_ref.exit1531:                            ; preds = %bb.ga, %bb.gb, %bb.gc
  %i.hv = ptrtoint ptr %3 to i64
  %i.hw = and i64 %i.hv, 1
  %.not.i1042 = icmp eq i64 %i.hw, 0
  br i1 %.not.i1042, label %bb.gd, label %lean_inc.exit1043

bb.gd:                                            ; preds = %lean_inc_ref.exit1531
  %.val.i.i1532 = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.hx = icmp sgt i32 %.val.i.i1532, 0
  br i1 %i.hx, label %bb.ge, label %bb.gf, !prof !17

bb.ge:                                            ; preds = %bb.gd
  %i.hy = add nuw i32 %.val.i.i1532, 1
  store i32 %i.hy, ptr %3, align 4, !tbaa !11
  br label %lean_inc.exit1043

bb.gf:                                            ; preds = %bb.gd
  %.not.i.i1533 = icmp eq i32 %.val.i.i1532, 0
  br i1 %.not.i.i1533, label %lean_inc.exit1043, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.hz = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1043

lean_inc.exit1043:                                ; preds = %bb.gg, %bb.gf, %bb.ge, %lean_inc_ref.exit1531
  %.val.i.i1535 = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.ia = icmp sgt i32 %.val.i.i1535, 0
  br i1 %i.ia, label %bb.gh, label %bb.gi, !prof !17

bb.gh:                                            ; preds = %lean_inc.exit1043
  %i.ib = add nuw i32 %.val.i.i1535, 1
  store i32 %i.ib, ptr %2, align 4, !tbaa !11
  br label %lean_inc_ref.exit1537

bb.gi:                                            ; preds = %lean_inc.exit1043
  %.not.i.i1536 = icmp eq i32 %.val.i.i1535, 0
  br i1 %.not.i.i1536, label %lean_inc_ref.exit1537, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ic = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1537

lean_inc_ref.exit1537:                            ; preds = %bb.gh, %bb.gi, %bb.gj
  %i.id = tail call ptr @lean_is_expr_def_eq(ptr noundef %i.ek, ptr noundef %i.fg, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5)
  br label %lean_dec_ref.exit1331

bb.gk:                                            ; preds = %bb.fi
  %i.ie = ptrtoint ptr %i.fg to i64
  %i.if = and i64 %i.ie, 1
  %.not.i1147 = icmp eq i64 %i.if, 0
  br i1 %.not.i1147, label %bb.gl, label %lean_dec.exit1148

bb.gl:                                            ; preds = %bb.gk
  %i.ig = load i32, ptr %i.fg, align 4, !tbaa !11 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.gm, label %bb.gn, !prof !17

bb.gm:                                            ; preds = %bb.gl
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.fg, align 4, !tbaa !11
  br label %lean_dec.exit1148

bb.gn:                                            ; preds = %bb.gl
  %.not.i1184 = icmp eq i32 %i.ig, 0
  br i1 %.not.i1184, label %lean_dec.exit1148, label %bb.go

bb.go:                                            ; preds = %bb.gn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fg) #12
  br label %lean_dec.exit1148

lean_dec.exit1148:                                ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gk
  %i.ij = ptrtoint ptr %i.ek to i64
  %i.ik = and i64 %i.ij, 1
  %.not.i1145 = icmp eq i64 %i.ik, 0
  br i1 %.not.i1145, label %bb.gp, label %lean_dec.exit1146

bb.gp:                                            ; preds = %lean_dec.exit1148
  %i.il = load i32, ptr %i.ek, align 4, !tbaa !11 ; 3 uses
  %i.im = icmp sgt i32 %i.il, 1
  br i1 %i.im, label %bb.gq, label %bb.gr, !prof !17

bb.gq:                                            ; preds = %bb.gp
  %i.in = add nsw i32 %i.il, -1
  store i32 %i.in, ptr %i.ek, align 4, !tbaa !11
  br label %lean_dec.exit1146

bb.gr:                                            ; preds = %bb.gp
  %.not.i1186 = icmp eq i32 %i.il, 0
  br i1 %.not.i1186, label %lean_dec.exit1146, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ek) #12
  br label %lean_dec.exit1146

lean_dec.exit1146:                                ; preds = %bb.gs, %bb.gr, %bb.gq, %lean_dec.exit1148
  %.val.i.i1538 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.io = icmp sgt i32 %.val.i.i1538, 0
  br i1 %i.io, label %bb.gt, label %bb.gu, !prof !17

bb.gt:                                            ; preds = %lean_dec.exit1146
  %i.ip = add nuw i32 %.val.i.i1538, 1
  store i32 %i.ip, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1540

bb.gu:                                            ; preds = %lean_dec.exit1146
  %.not.i.i1539 = icmp eq i32 %.val.i.i1538, 0
  br i1 %.not.i.i1539, label %lean_inc_ref.exit1540, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.iq = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1540

end_hunk_17
begin_hunk_18_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isExprDefEqExpensive:bb.a
  %i.iv = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %.not.i1544 = icmp eq i64 %i.iw, 0              ; 3 uses
  br i1 %.not.i1544, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %lean_inc_ref.exit1543
  %i.ix = lshr i64 %i.iv, 1
  %i.iy = trunc i64 %i.ix to i32
  br label %lean_obj_tag.exit1547

bb.ha:                                            ; preds = %lean_inc_ref.exit1543
  %i.iz = getelementptr i8, ptr %i.iu, i64 4
  %.val.i1546 = load i32, ptr %i.iz, align 4
  %i.ja = lshr i32 %.val.i1546, 24
  br label %lean_obj_tag.exit1547

lean_obj_tag.exit1547:                            ; preds = %bb.gz, %bb.ha
  %.0.i1545 = phi i32 [ %i.iy, %bb.gz ], [ %i.ja, %bb.ha ]
  %i.jb = icmp eq i32 %.0.i1545, 0
  br i1 %i.jb, label %bb.hb, label %bb.se

bb.hb:                                            ; preds = %lean_obj_tag.exit1547
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !15 ; 7 uses
  %.val1441 = load i32, ptr %i.iu, align 8, !tbaa !11
  %i.je = icmp eq i32 %.val1441, 1                ; 3 uses
  %.pre1825 = ptrtoint ptr %i.jd to i64           ; 2 uses
  %.pre1827 = and i64 %.pre1825, 1                ; 2 uses
  br i1 %i.je, label %lean_dec.exit1144, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %.not.i1040 = icmp eq i64 %.pre1827, 0
  br i1 %.not.i1040, label %bb.hd, label %lean_inc.exit1041

bb.hd:                                            ; preds = %bb.hc
  %.val.i.i1548 = load i32, ptr %i.jd, align 4, !tbaa !11 ; 3 uses
  %i.jf = icmp sgt i32 %.val.i.i1548, 0
  br i1 %i.jf, label %bb.he, label %bb.hf, !prof !17

bb.he:                                            ; preds = %bb.hd
  %i.jg = add nuw i32 %.val.i.i1548, 1
  store i32 %i.jg, ptr %i.jd, align 4, !tbaa !11
  br label %lean_inc.exit1041

bb.hf:                                            ; preds = %bb.hd
  %.not.i.i1549 = icmp eq i32 %.val.i.i1548, 0
  br i1 %.not.i.i1549, label %lean_inc.exit1041, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.jh = atomicrmw sub ptr %i.jd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1041

lean_inc.exit1041:                                ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hc
  br i1 %.not.i1544, label %bb.hh, label %lean_dec.exit1144

bb.hh:                                            ; preds = %lean_inc.exit1041
  %i.ji = load i32, ptr %i.iu, align 8, !tbaa !11 ; 3 uses
  %i.jj = icmp sgt i32 %i.ji, 1
  br i1 %i.jj, label %bb.hi, label %bb.hj, !prof !17

bb.hi:                                            ; preds = %bb.hh
  %i.jk = add nsw i32 %i.ji, -1
  store i32 %i.jk, ptr %i.iu, align 8, !tbaa !11
  br label %lean_dec.exit1144

bb.hj:                                            ; preds = %bb.hh
  %.not.i1188 = icmp eq i32 %i.ji, 0
  br i1 %.not.i1188, label %lean_dec.exit1144, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iu) #12
  br label %lean_dec.exit1144

lean_dec.exit1144:                                ; preds = %bb.hb, %lean_inc.exit1041, %bb.hi, %bb.hj, %bb.hk
  %.0984 = phi ptr [ inttoptr (i64 1 to ptr), %bb.hk ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1041 ], [ inttoptr (i64 1 to ptr), %bb.hi ], [ inttoptr (i64 1 to ptr), %bb.hj ], [ %i.iu, %bb.hb ] ; 6 uses
  %i.jl = lshr i64 %.pre1825, 1
  %i.jm = trunc i64 %i.jl to i8
  %.not.i1141 = icmp eq i64 %.pre1827, 0
  br i1 %.not.i1141, label %bb.hl, label %lean_dec.exit1142

bb.hl:                                            ; preds = %lean_dec.exit1144
  %i.jn = load i32, ptr %i.jd, align 4, !tbaa !11 ; 3 uses
  %i.jo = icmp sgt i32 %i.jn, 1
  br i1 %i.jo, label %bb.hm, label %bb.hn, !prof !17

bb.hm:                                            ; preds = %bb.hl
  %i.jp = add nsw i32 %i.jn, -1
  store i32 %i.jp, ptr %i.jd, align 4, !tbaa !11
  br label %lean_dec.exit1142

bb.hn:                                            ; preds = %bb.hl
  %.not.i1190 = icmp eq i32 %i.jn, 0
  br i1 %.not.i1190, label %lean_dec.exit1142, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jd) #12
  br label %lean_dec.exit1142

lean_dec.exit1142:                                ; preds = %bb.ho, %bb.hn, %bb.hm, %lean_dec.exit1144
  switch i8 %i.jm, label %bb.ip [
    i8 0, label %bb.hp
    i8 1, label %bb.ia
  ]

bb.hp:                                            ; preds = %lean_dec.exit1142
  %i.jq = ptrtoint ptr %.01003 to i64
  %i.jr = and i64 %i.jq, 1
  %.not.i1551 = icmp eq i64 %i.jr, 0
  br i1 %.not.i1551, label %bb.hq, label %lean_del_object.exit1552

bb.hq:                                            ; preds = %bb.hp
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1552

lean_del_object.exit1552:                         ; preds = %bb.hp, %bb.hq
  %i.js = ptrtoint ptr %.0985 to i64
  %i.jt = and i64 %i.js, 1
  %.not.i1553 = icmp eq i64 %i.jt, 0
  br i1 %.not.i1553, label %bb.hr, label %lean_del_object.exit1554

bb.hr:                                            ; preds = %lean_del_object.exit1552
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1554

lean_del_object.exit1554:                         ; preds = %lean_del_object.exit1552, %bb.hr
  %i.ju = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.jv = icmp sgt i32 %i.ju, 1
  br i1 %i.jv, label %bb.hs, label %bb.ht, !prof !17

bb.hs:                                            ; preds = %lean_del_object.exit1554
  %i.jw = add nsw i32 %i.ju, -1
  store i32 %i.jw, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1401

bb.ht:                                            ; preds = %lean_del_object.exit1554
  %.not.i1400 = icmp eq i32 %i.ju, 0
  br i1 %.not.i1400, label %lean_dec_ref.exit1401, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1401

lean_dec_ref.exit1401:                            ; preds = %bb.hs, %bb.ht, %bb.hu
  %i.jx = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 1
  br i1 %i.jy, label %bb.hv, label %bb.hw, !prof !17

bb.hv:                                            ; preds = %lean_dec_ref.exit1401
  %i.jz = add nsw i32 %i.jx, -1
  store i32 %i.jz, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1399

bb.hw:                                            ; preds = %lean_dec_ref.exit1401
  %.not.i1398 = icmp eq i32 %i.jx, 0
  br i1 %.not.i1398, label %lean_dec_ref.exit1399, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1399

lean_dec_ref.exit1399:                            ; preds = %bb.hv, %bb.hw, %bb.hx
  br i1 %i.je, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %lean_dec_ref.exit1399
  %i.ka = getelementptr inbounds nuw i8, ptr %.0984, i64 8
  store ptr %i.dl, ptr %i.ka, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.hz:                                            ; preds = %lean_dec_ref.exit1399
  %i.kb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr %i.dl, ptr %i.kc, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.ia:                                            ; preds = %lean_dec.exit1142
  %i.kd = ptrtoint ptr %.01003 to i64
  %i.ke = and i64 %i.kd, 1
  %.not.i1555 = icmp eq i64 %i.ke, 0
  br i1 %.not.i1555, label %bb.ib, label %lean_del_object.exit1556

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1556

lean_del_object.exit1556:                         ; preds = %bb.ia, %bb.ib
  %i.kf = ptrtoint ptr %.0985 to i64
  %i.kg = and i64 %i.kf, 1
  %.not.i1557 = icmp eq i64 %i.kg, 0
  br i1 %.not.i1557, label %bb.ic, label %lean_del_object.exit1558

bb.ic:                                            ; preds = %lean_del_object.exit1556
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1558

lean_del_object.exit1558:                         ; preds = %lean_del_object.exit1556, %bb.ic
  %i.kh = and i64 %.pre1823, 1
  %.not.i1139 = icmp eq i64 %i.kh, 0
  br i1 %.not.i1139, label %bb.id, label %lean_dec.exit1140

bb.id:                                            ; preds = %lean_del_object.exit1558
  %i.ki = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, 1
  br i1 %i.kj, label %bb.ie, label %bb.if, !prof !17

bb.ie:                                            ; preds = %bb.id
  %i.kk = add nsw i32 %i.ki, -1
  store i32 %i.kk, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1140

bb.if:                                            ; preds = %bb.id
  %.not.i1192 = icmp eq i32 %i.ki, 0
  br i1 %.not.i1192, label %lean_dec.exit1140, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1140

lean_dec.exit1140:                                ; preds = %bb.ig, %bb.if, %bb.ie, %lean_del_object.exit1558
  %i.kl = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.ih, label %bb.ii, !prof !17

bb.ih:                                            ; preds = %lean_dec.exit1140
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1397

bb.ii:                                            ; preds = %lean_dec.exit1140
  %.not.i1396 = icmp eq i32 %i.kl, 0
  br i1 %.not.i1396, label %lean_dec_ref.exit1397, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1397

lean_dec_ref.exit1397:                            ; preds = %bb.ih, %bb.ii, %bb.ij
  %i.ko = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.ik, label %bb.il, !prof !17

bb.ik:                                            ; preds = %lean_dec_ref.exit1397
  %i.kq = add nsw i32 %i.ko, -1
  store i32 %i.kq, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1395

bb.il:                                            ; preds = %lean_dec_ref.exit1397
  %.not.i1394 = icmp eq i32 %i.ko, 0
  br i1 %.not.i1394, label %lean_dec_ref.exit1395, label %bb.im

bb.im:                                            ; preds = %bb.il
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1395

lean_dec_ref.exit1395:                            ; preds = %bb.ik, %bb.il, %bb.im
  %i.kr = zext i8 %i.gx to i64
  %i.ks = shl nuw nsw i64 %i.kr, 1
  %i.kt = or disjoint i64 %i.ks, 1
  %i.ku = inttoptr i64 %i.kt to ptr               ; 2 uses
  br i1 %i.je, label %bb.in, label %bb.io

bb.in:                                            ; preds = %lean_dec_ref.exit1395
  %i.kv = getelementptr inbounds nuw i8, ptr %.0984, i64 8
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.io:                                            ; preds = %lean_dec_ref.exit1395
  %i.kw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr %i.ku, ptr %i.kx, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.ip:                                            ; preds = %lean_dec.exit1142
  %i.ky = ptrtoint ptr %.0984 to i64
  %i.kz = and i64 %i.ky, 1
  %.not.i1559 = icmp eq i64 %i.kz, 0
  br i1 %.not.i1559, label %bb.iq, label %lean_del_object.exit1560

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_free_object(ptr noundef nonnull %.0984) #12
  br label %lean_del_object.exit1560

lean_del_object.exit1560:                         ; preds = %bb.ip, %bb.iq
  %.val.i.i1561 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.la = icmp sgt i32 %.val.i.i1561, 0
  br i1 %i.la, label %bb.ir, label %bb.is, !prof !17

bb.ir:                                            ; preds = %lean_del_object.exit1560
  %i.lb = add nuw i32 %.val.i.i1561, 1
  store i32 %i.lb, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1563

bb.is:                                            ; preds = %lean_del_object.exit1560
  %.not.i.i1562 = icmp eq i32 %.val.i.i1561, 0
  br i1 %.not.i.i1562, label %lean_inc_ref.exit1563, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.lc = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1563

lean_inc_ref.exit1563:                            ; preds = %bb.ir, %bb.is, %bb.it
  %.val.i.i1564 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.ld = icmp sgt i32 %.val.i.i1564, 0
  br i1 %i.ld, label %bb.iu, label %bb.iv, !prof !17

bb.iu:                                            ; preds = %lean_inc_ref.exit1563
  %i.le = add nuw i32 %.val.i.i1564, 1
  store i32 %i.le, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit1566

bb.iv:                                            ; preds = %lean_inc_ref.exit1563
  %.not.i.i1565 = icmp eq i32 %.val.i.i1564, 0
  br i1 %.not.i.i1565, label %lean_inc_ref.exit1566, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.lf = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1566

lean_inc_ref.exit1566:                            ; preds = %bb.iu, %bb.iv, %bb.iw
  %i.lg = tail call ptr @l_Lean_Meta_isDefEqNat(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 14 uses
  %i.lh = ptrtoint ptr %i.lg to i64               ; 2 uses
  %i.li = and i64 %i.lh, 1
  %.not.i1567 = icmp eq i64 %i.li, 0              ; 3 uses
  br i1 %.not.i1567, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %lean_inc_ref.exit1566
  %i.lj = lshr i64 %i.lh, 1
  %i.lk = trunc i64 %i.lj to i32
  br label %lean_obj_tag.exit1570

bb.iy:                                            ; preds = %lean_inc_ref.exit1566
  %i.ll = getelementptr i8, ptr %i.lg, i64 4
  %.val.i1569 = load i32, ptr %i.ll, align 4
  %i.lm = lshr i32 %.val.i1569, 24
  br label %lean_obj_tag.exit1570

lean_obj_tag.exit1570:                            ; preds = %bb.ix, %bb.iy
  %.0.i1568 = phi i32 [ %i.lk, %bb.ix ], [ %i.lm, %bb.iy ]
  %i.ln = icmp eq i32 %.0.i1568, 0
  br i1 %i.ln, label %bb.iz, label %bb.rh

bb.iz:                                            ; preds = %lean_obj_tag.exit1570
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !15 ; 7 uses
  %.val1440 = load i32, ptr %i.lg, align 8, !tbaa !11
  %i.lq = icmp eq i32 %.val1440, 1                ; 3 uses
  %.pre1829 = ptrtoint ptr %i.lp to i64           ; 2 uses
  %.pre1831 = and i64 %.pre1829, 1                ; 2 uses
  br i1 %i.lq, label %lean_dec.exit1138, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.not.i1038 = icmp eq i64 %.pre1831, 0
  br i1 %.not.i1038, label %bb.jb, label %lean_inc.exit1039

bb.jb:                                            ; preds = %bb.ja
  %.val.i.i1571 = load i32, ptr %i.lp, align 4, !tbaa !11 ; 3 uses
  %i.lr = icmp sgt i32 %.val.i.i1571, 0
  br i1 %i.lr, label %bb.jc, label %bb.jd, !prof !17

bb.jc:                                            ; preds = %bb.jb
  %i.ls = add nuw i32 %.val.i.i1571, 1
  store i32 %i.ls, ptr %i.lp, align 4, !tbaa !11
  br label %lean_inc.exit1039

bb.jd:                                            ; preds = %bb.jb
  %.not.i.i1572 = icmp eq i32 %.val.i.i1571, 0
  br i1 %.not.i.i1572, label %lean_inc.exit1039, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.lt = atomicrmw sub ptr %i.lp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1039

lean_inc.exit1039:                                ; preds = %bb.je, %bb.jd, %bb.jc, %bb.ja
  br i1 %.not.i1567, label %bb.jf, label %lean_dec.exit1138

bb.jf:                                            ; preds = %lean_inc.exit1039
  %i.lu = load i32, ptr %i.lg, align 8, !tbaa !11 ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %bb.jg, label %bb.jh, !prof !17

bb.jg:                                            ; preds = %bb.jf
  %i.lw = add nsw i32 %i.lu, -1
  store i32 %i.lw, ptr %i.lg, align 8, !tbaa !11
  br label %lean_dec.exit1138

bb.jh:                                            ; preds = %bb.jf
  %.not.i1194 = icmp eq i32 %i.lu, 0
  br i1 %.not.i1194, label %lean_dec.exit1138, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lg) #12
  br label %lean_dec.exit1138

lean_dec.exit1138:                                ; preds = %bb.iz, %lean_inc.exit1039, %bb.jg, %bb.jh, %bb.ji
  %.0980 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ji ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1039 ], [ inttoptr (i64 1 to ptr), %bb.jg ], [ inttoptr (i64 1 to ptr), %bb.jh ], [ %i.lg, %bb.iz ] ; 6 uses
  %i.lx = lshr i64 %.pre1829, 1
  %i.ly = trunc i64 %i.lx to i8
  %.not.i1135 = icmp eq i64 %.pre1831, 0
  br i1 %.not.i1135, label %bb.jj, label %lean_dec.exit1136

bb.jj:                                            ; preds = %lean_dec.exit1138
  %i.lz = load i32, ptr %i.lp, align 4, !tbaa !11 ; 3 uses
  %i.ma = icmp sgt i32 %i.lz, 1
  br i1 %i.ma, label %bb.jk, label %bb.jl, !prof !17

bb.jk:                                            ; preds = %bb.jj
  %i.mb = add nsw i32 %i.lz, -1
  store i32 %i.mb, ptr %i.lp, align 4, !tbaa !11
  br label %lean_dec.exit1136

bb.jl:                                            ; preds = %bb.jj
  %.not.i1196 = icmp eq i32 %i.lz, 0
  br i1 %.not.i1196, label %lean_dec.exit1136, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lp) #12
  br label %lean_dec.exit1136

lean_dec.exit1136:                                ; preds = %bb.jm, %bb.jl, %bb.jk, %lean_dec.exit1138
  switch i8 %i.ly, label %bb.kn [
    i8 0, label %bb.jn
    i8 1, label %bb.jy
  ]

bb.jn:                                            ; preds = %lean_dec.exit1136
  %i.mc = ptrtoint ptr %.01003 to i64
  %i.md = and i64 %i.mc, 1
  %.not.i1574 = icmp eq i64 %i.md, 0
  br i1 %.not.i1574, label %bb.jo, label %lean_del_object.exit1575

bb.jo:                                            ; preds = %bb.jn
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1575

lean_del_object.exit1575:                         ; preds = %bb.jn, %bb.jo
  %i.me = ptrtoint ptr %.0985 to i64
  %i.mf = and i64 %i.me, 1
  %.not.i1576 = icmp eq i64 %i.mf, 0
  br i1 %.not.i1576, label %bb.jp, label %lean_del_object.exit1577

bb.jp:                                            ; preds = %lean_del_object.exit1575
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1577

lean_del_object.exit1577:                         ; preds = %lean_del_object.exit1575, %bb.jp
  %i.mg = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.mh = icmp sgt i32 %i.mg, 1
  br i1 %i.mh, label %bb.jq, label %bb.jr, !prof !17

bb.jq:                                            ; preds = %lean_del_object.exit1577
  %i.mi = add nsw i32 %i.mg, -1
  store i32 %i.mi, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1393

bb.jr:                                            ; preds = %lean_del_object.exit1577
  %.not.i1392 = icmp eq i32 %i.mg, 0
  br i1 %.not.i1392, label %lean_dec_ref.exit1393, label %bb.js

bb.js:                                            ; preds = %bb.jr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1393

lean_dec_ref.exit1393:                            ; preds = %bb.jq, %bb.jr, %bb.js
  %i.mj = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.mk = icmp sgt i32 %i.mj, 1
  br i1 %i.mk, label %bb.jt, label %bb.ju, !prof !17

bb.jt:                                            ; preds = %lean_dec_ref.exit1393
  %i.ml = add nsw i32 %i.mj, -1
  store i32 %i.ml, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1391

bb.ju:                                            ; preds = %lean_dec_ref.exit1393
  %.not.i1390 = icmp eq i32 %i.mj, 0
  br i1 %.not.i1390, label %lean_dec_ref.exit1391, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1391

lean_dec_ref.exit1391:                            ; preds = %bb.jt, %bb.ju, %bb.jv
  br i1 %i.lq, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %lean_dec_ref.exit1391
  %i.mm = getelementptr inbounds nuw i8, ptr %.0980, i64 8
  store ptr %i.dl, ptr %i.mm, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.jx:                                            ; preds = %lean_dec_ref.exit1391
  %i.mn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store ptr %i.dl, ptr %i.mo, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.jy:                                            ; preds = %lean_dec.exit1136
  %i.mp = ptrtoint ptr %.01003 to i64
  %i.mq = and i64 %i.mp, 1
  %.not.i1578 = icmp eq i64 %i.mq, 0
  br i1 %.not.i1578, label %bb.jz, label %lean_del_object.exit1579

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1579

lean_del_object.exit1579:                         ; preds = %bb.jy, %bb.jz
  %i.mr = ptrtoint ptr %.0985 to i64
  %i.ms = and i64 %i.mr, 1
  %.not.i1580 = icmp eq i64 %i.ms, 0
  br i1 %.not.i1580, label %bb.ka, label %lean_del_object.exit1581

bb.ka:                                            ; preds = %lean_del_object.exit1579
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1581

lean_del_object.exit1581:                         ; preds = %lean_del_object.exit1579, %bb.ka
  %i.mt = and i64 %.pre1823, 1
  %.not.i1133 = icmp eq i64 %i.mt, 0
  br i1 %.not.i1133, label %bb.kb, label %lean_dec.exit1134

bb.kb:                                            ; preds = %lean_del_object.exit1581
  %i.mu = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.mv = icmp sgt i32 %i.mu, 1
  br i1 %i.mv, label %bb.kc, label %bb.kd, !prof !17

bb.kc:                                            ; preds = %bb.kb
  %i.mw = add nsw i32 %i.mu, -1
  store i32 %i.mw, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1134

bb.kd:                                            ; preds = %bb.kb
  %.not.i1198 = icmp eq i32 %i.mu, 0
  br i1 %.not.i1198, label %lean_dec.exit1134, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1134

lean_dec.exit1134:                                ; preds = %bb.ke, %bb.kd, %bb.kc, %lean_del_object.exit1581
  %i.mx = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 1
  br i1 %i.my, label %bb.kf, label %bb.kg, !prof !17

bb.kf:                                            ; preds = %lean_dec.exit1134
  %i.mz = add nsw i32 %i.mx, -1
  store i32 %i.mz, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1389

bb.kg:                                            ; preds = %lean_dec.exit1134
  %.not.i1388 = icmp eq i32 %i.mx, 0
  br i1 %.not.i1388, label %lean_dec_ref.exit1389, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1389

lean_dec_ref.exit1389:                            ; preds = %bb.kf, %bb.kg, %bb.kh
  %i.na = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 1
  br i1 %i.nb, label %bb.ki, label %bb.kj, !prof !17

bb.ki:                                            ; preds = %lean_dec_ref.exit1389
  %i.nc = add nsw i32 %i.na, -1
  store i32 %i.nc, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1387

bb.kj:                                            ; preds = %lean_dec_ref.exit1389
  %.not.i1386 = icmp eq i32 %i.na, 0
  br i1 %.not.i1386, label %lean_dec_ref.exit1387, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1387

lean_dec_ref.exit1387:                            ; preds = %bb.ki, %bb.kj, %bb.kk
  %i.nd = zext i8 %i.gx to i64
  %i.ne = shl nuw nsw i64 %i.nd, 1
  %i.nf = or disjoint i64 %i.ne, 1
  %i.ng = inttoptr i64 %i.nf to ptr               ; 2 uses
  br i1 %i.lq, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %lean_dec_ref.exit1387
  %i.nh = getelementptr inbounds nuw i8, ptr %.0980, i64 8
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.km:                                            ; preds = %lean_dec_ref.exit1387
  %i.ni = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store ptr %i.ng, ptr %i.nj, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.kn:                                            ; preds = %lean_dec.exit1136
  %i.nk = ptrtoint ptr %.0980 to i64
  %i.nl = and i64 %i.nk, 1
  %.not.i1582 = icmp eq i64 %i.nl, 0
  br i1 %.not.i1582, label %bb.ko, label %lean_del_object.exit1583

bb.ko:                                            ; preds = %bb.kn
  tail call void @lean_free_object(ptr noundef nonnull %.0980) #12
  br label %lean_del_object.exit1583

lean_del_object.exit1583:                         ; preds = %bb.kn, %bb.ko
  %.val.i.i1584 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.nm = icmp sgt i32 %.val.i.i1584, 0
  br i1 %i.nm, label %bb.kp, label %bb.kq, !prof !17

bb.kp:                                            ; preds = %lean_del_object.exit1583
  %i.nn = add nuw i32 %.val.i.i1584, 1
  store i32 %i.nn, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1586

bb.kq:                                            ; preds = %lean_del_object.exit1583
  %.not.i.i1585 = icmp eq i32 %.val.i.i1584, 0
  br i1 %.not.i.i1585, label %lean_inc_ref.exit1586, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.no = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1586

lean_inc_ref.exit1586:                            ; preds = %bb.kp, %bb.kq, %bb.kr
  %.val.i.i1587 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.np = icmp sgt i32 %.val.i.i1587, 0
  br i1 %i.np, label %bb.ks, label %bb.kt, !prof !17

bb.ks:                                            ; preds = %lean_inc_ref.exit1586
  %i.nq = add nuw i32 %.val.i.i1587, 1
  store i32 %i.nq, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit1589

bb.kt:                                            ; preds = %lean_inc_ref.exit1586
  %.not.i.i1588 = icmp eq i32 %.val.i.i1587, 0
  br i1 %.not.i.i1588, label %lean_inc_ref.exit1589, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.nr = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1589

lean_inc_ref.exit1589:                            ; preds = %bb.ks, %bb.kt, %bb.ku
  %i.ns = tail call ptr @l_Lean_Meta_isDefEqOffset(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12 ; 14 uses
  %i.nt = ptrtoint ptr %i.ns to i64               ; 2 uses
  %i.nu = and i64 %i.nt, 1
  %.not.i1590 = icmp eq i64 %i.nu, 0              ; 3 uses
  br i1 %.not.i1590, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %lean_inc_ref.exit1589
  %i.nv = lshr i64 %i.nt, 1
  %i.nw = trunc i64 %i.nv to i32
  br label %lean_obj_tag.exit1593

bb.kw:                                            ; preds = %lean_inc_ref.exit1589
  %i.nx = getelementptr i8, ptr %i.ns, i64 4
  %.val.i1592 = load i32, ptr %i.nx, align 4
  %i.ny = lshr i32 %.val.i1592, 24
  br label %lean_obj_tag.exit1593

lean_obj_tag.exit1593:                            ; preds = %bb.kv, %bb.kw
  %.0.i1591 = phi i32 [ %i.nw, %bb.kv ], [ %i.ny, %bb.kw ]
  %i.nz = icmp eq i32 %.0.i1591, 0
  br i1 %i.nz, label %bb.kx, label %bb.qk

bb.kx:                                            ; preds = %lean_obj_tag.exit1593
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !15 ; 7 uses
  %.val1439 = load i32, ptr %i.ns, align 8, !tbaa !11
  %i.oc = icmp eq i32 %.val1439, 1                ; 3 uses
  %.pre1833 = ptrtoint ptr %i.ob to i64           ; 2 uses
  %.pre1835 = and i64 %.pre1833, 1                ; 2 uses
  br i1 %i.oc, label %lean_dec.exit1132, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %.not.i1036 = icmp eq i64 %.pre1835, 0
  br i1 %.not.i1036, label %bb.kz, label %lean_inc.exit1037

bb.kz:                                            ; preds = %bb.ky
  %.val.i.i1594 = load i32, ptr %i.ob, align 4, !tbaa !11 ; 3 uses
  %i.od = icmp sgt i32 %.val.i.i1594, 0
  br i1 %i.od, label %bb.la, label %bb.lb, !prof !17

bb.la:                                            ; preds = %bb.kz
  %i.oe = add nuw i32 %.val.i.i1594, 1
  store i32 %i.oe, ptr %i.ob, align 4, !tbaa !11
  br label %lean_inc.exit1037

bb.lb:                                            ; preds = %bb.kz
  %.not.i.i1595 = icmp eq i32 %.val.i.i1594, 0
  br i1 %.not.i.i1595, label %lean_inc.exit1037, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.of = atomicrmw sub ptr %i.ob, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1037

lean_inc.exit1037:                                ; preds = %bb.lc, %bb.lb, %bb.la, %bb.ky
  br i1 %.not.i1590, label %bb.ld, label %lean_dec.exit1132

bb.ld:                                            ; preds = %lean_inc.exit1037
  %i.og = load i32, ptr %i.ns, align 8, !tbaa !11 ; 3 uses
  %i.oh = icmp sgt i32 %i.og, 1
  br i1 %i.oh, label %bb.le, label %bb.lf, !prof !17

bb.le:                                            ; preds = %bb.ld
  %i.oi = add nsw i32 %i.og, -1
  store i32 %i.oi, ptr %i.ns, align 8, !tbaa !11
  br label %lean_dec.exit1132

bb.lf:                                            ; preds = %bb.ld
  %.not.i1200 = icmp eq i32 %i.og, 0
  br i1 %.not.i1200, label %lean_dec.exit1132, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ns) #12
  br label %lean_dec.exit1132

lean_dec.exit1132:                                ; preds = %bb.kx, %lean_inc.exit1037, %bb.le, %bb.lf, %bb.lg
  %.0976 = phi ptr [ inttoptr (i64 1 to ptr), %bb.lg ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1037 ], [ inttoptr (i64 1 to ptr), %bb.le ], [ inttoptr (i64 1 to ptr), %bb.lf ], [ %i.ns, %bb.kx ] ; 6 uses
  %i.oj = lshr i64 %.pre1833, 1
  %i.ok = trunc i64 %i.oj to i8
  %.not.i1129 = icmp eq i64 %.pre1835, 0
  br i1 %.not.i1129, label %bb.lh, label %lean_dec.exit1130

bb.lh:                                            ; preds = %lean_dec.exit1132
  %i.ol = load i32, ptr %i.ob, align 4, !tbaa !11 ; 3 uses
  %i.om = icmp sgt i32 %i.ol, 1
  br i1 %i.om, label %bb.li, label %bb.lj, !prof !17

bb.li:                                            ; preds = %bb.lh
  %i.on = add nsw i32 %i.ol, -1
  store i32 %i.on, ptr %i.ob, align 4, !tbaa !11
  br label %lean_dec.exit1130

bb.lj:                                            ; preds = %bb.lh
  %.not.i1202 = icmp eq i32 %i.ol, 0
  br i1 %.not.i1202, label %lean_dec.exit1130, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ob) #12
  br label %lean_dec.exit1130

lean_dec.exit1130:                                ; preds = %bb.lk, %bb.lj, %bb.li, %lean_dec.exit1132
  switch i8 %i.ok, label %bb.ml [
    i8 0, label %bb.ll
    i8 1, label %bb.lw
  ]

bb.ll:                                            ; preds = %lean_dec.exit1130
  %i.oo = ptrtoint ptr %.01003 to i64
  %i.op = and i64 %i.oo, 1
  %.not.i1597 = icmp eq i64 %i.op, 0
  br i1 %.not.i1597, label %bb.lm, label %lean_del_object.exit1598

bb.lm:                                            ; preds = %bb.ll
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1598

lean_del_object.exit1598:                         ; preds = %bb.ll, %bb.lm
  %i.oq = ptrtoint ptr %.0985 to i64
  %i.or = and i64 %i.oq, 1
  %.not.i1599 = icmp eq i64 %i.or, 0
  br i1 %.not.i1599, label %bb.ln, label %lean_del_object.exit1600

bb.ln:                                            ; preds = %lean_del_object.exit1598
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1600

lean_del_object.exit1600:                         ; preds = %lean_del_object.exit1598, %bb.ln
  %i.os = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.ot = icmp sgt i32 %i.os, 1
  br i1 %i.ot, label %bb.lo, label %bb.lp, !prof !17

bb.lo:                                            ; preds = %lean_del_object.exit1600
  %i.ou = add nsw i32 %i.os, -1
  store i32 %i.ou, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1385

bb.lp:                                            ; preds = %lean_del_object.exit1600
  %.not.i1384 = icmp eq i32 %i.os, 0
  br i1 %.not.i1384, label %lean_dec_ref.exit1385, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1385

lean_dec_ref.exit1385:                            ; preds = %bb.lo, %bb.lp, %bb.lq
  %i.ov = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ow = icmp sgt i32 %i.ov, 1
  br i1 %i.ow, label %bb.lr, label %bb.ls, !prof !17

bb.lr:                                            ; preds = %lean_dec_ref.exit1385
  %i.ox = add nsw i32 %i.ov, -1
  store i32 %i.ox, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1383

bb.ls:                                            ; preds = %lean_dec_ref.exit1385
  %.not.i1382 = icmp eq i32 %i.ov, 0
  br i1 %.not.i1382, label %lean_dec_ref.exit1383, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1383

lean_dec_ref.exit1383:                            ; preds = %bb.lr, %bb.ls, %bb.lt
  br i1 %i.oc, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %lean_dec_ref.exit1383
  %i.oy = getelementptr inbounds nuw i8, ptr %.0976, i64 8
  store ptr %i.dl, ptr %i.oy, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.lv:                                            ; preds = %lean_dec_ref.exit1383
  %i.oz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store ptr %i.dl, ptr %i.pa, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.lw:                                            ; preds = %lean_dec.exit1130
  %i.pb = ptrtoint ptr %.01003 to i64
  %i.pc = and i64 %i.pb, 1
  %.not.i1601 = icmp eq i64 %i.pc, 0
  br i1 %.not.i1601, label %bb.lx, label %lean_del_object.exit1602

bb.lx:                                            ; preds = %bb.lw
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1602

lean_del_object.exit1602:                         ; preds = %bb.lw, %bb.lx
  %i.pd = ptrtoint ptr %.0985 to i64
  %i.pe = and i64 %i.pd, 1
  %.not.i1603 = icmp eq i64 %i.pe, 0
  br i1 %.not.i1603, label %bb.ly, label %lean_del_object.exit1604

bb.ly:                                            ; preds = %lean_del_object.exit1602
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1604

lean_del_object.exit1604:                         ; preds = %lean_del_object.exit1602, %bb.ly
  %i.pf = and i64 %.pre1823, 1
  %.not.i1127 = icmp eq i64 %i.pf, 0
  br i1 %.not.i1127, label %bb.lz, label %lean_dec.exit1128

bb.lz:                                            ; preds = %lean_del_object.exit1604
  %i.pg = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.ph = icmp sgt i32 %i.pg, 1
  br i1 %i.ph, label %bb.ma, label %bb.mb, !prof !17

bb.ma:                                            ; preds = %bb.lz
  %i.pi = add nsw i32 %i.pg, -1
  store i32 %i.pi, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1128

bb.mb:                                            ; preds = %bb.lz
  %.not.i1204 = icmp eq i32 %i.pg, 0
  br i1 %.not.i1204, label %lean_dec.exit1128, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1128

lean_dec.exit1128:                                ; preds = %bb.mc, %bb.mb, %bb.ma, %lean_del_object.exit1604
  %i.pj = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.pk = icmp sgt i32 %i.pj, 1
  br i1 %i.pk, label %bb.md, label %bb.me, !prof !17

bb.md:                                            ; preds = %lean_dec.exit1128
  %i.pl = add nsw i32 %i.pj, -1
  store i32 %i.pl, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1381

bb.me:                                            ; preds = %lean_dec.exit1128
  %.not.i1380 = icmp eq i32 %i.pj, 0
  br i1 %.not.i1380, label %lean_dec_ref.exit1381, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1381

lean_dec_ref.exit1381:                            ; preds = %bb.md, %bb.me, %bb.mf
  %i.pm = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.pn = icmp sgt i32 %i.pm, 1
  br i1 %i.pn, label %bb.mg, label %bb.mh, !prof !17

bb.mg:                                            ; preds = %lean_dec_ref.exit1381
  %i.po = add nsw i32 %i.pm, -1
  store i32 %i.po, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1379

bb.mh:                                            ; preds = %lean_dec_ref.exit1381
  %.not.i1378 = icmp eq i32 %i.pm, 0
  br i1 %.not.i1378, label %lean_dec_ref.exit1379, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1379

lean_dec_ref.exit1379:                            ; preds = %bb.mg, %bb.mh, %bb.mi
  %i.pp = zext i8 %i.gx to i64
  %i.pq = shl nuw nsw i64 %i.pp, 1
  %i.pr = or disjoint i64 %i.pq, 1
  %i.ps = inttoptr i64 %i.pr to ptr               ; 2 uses
  br i1 %i.oc, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %lean_dec_ref.exit1379
  %i.pt = getelementptr inbounds nuw i8, ptr %.0976, i64 8
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.mk:                                            ; preds = %lean_dec_ref.exit1379
  %i.pu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  store ptr %i.ps, ptr %i.pv, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.ml:                                            ; preds = %lean_dec.exit1130
  %i.pw = ptrtoint ptr %.0976 to i64
  %i.px = and i64 %i.pw, 1
  %.not.i1605 = icmp eq i64 %i.px, 0
  br i1 %.not.i1605, label %bb.mm, label %lean_del_object.exit1606

bb.mm:                                            ; preds = %bb.ml
  tail call void @lean_free_object(ptr noundef nonnull %.0976) #12
  br label %lean_del_object.exit1606

lean_del_object.exit1606:                         ; preds = %bb.ml, %bb.mm
  %.val.i.i1607 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.py = icmp sgt i32 %.val.i.i1607, 0
  br i1 %i.py, label %bb.mn, label %bb.mo, !prof !17

bb.mn:                                            ; preds = %lean_del_object.exit1606
  %i.pz = add nuw i32 %.val.i.i1607, 1
  store i32 %i.pz, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1609

bb.mo:                                            ; preds = %lean_del_object.exit1606
  %.not.i.i1608 = icmp eq i32 %.val.i.i1607, 0
  br i1 %.not.i.i1608, label %lean_inc_ref.exit1609, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.qa = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1609

lean_inc_ref.exit1609:                            ; preds = %bb.mn, %bb.mo, %bb.mp
  %.val.i.i1610 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.qb = icmp sgt i32 %.val.i.i1610, 0
  br i1 %i.qb, label %bb.mq, label %bb.mr, !prof !17

bb.mq:                                            ; preds = %lean_inc_ref.exit1609
  %i.qc = add nuw i32 %.val.i.i1610, 1
  store i32 %i.qc, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit1612

bb.mr:                                            ; preds = %lean_inc_ref.exit1609
  %.not.i.i1611 = icmp eq i32 %.val.i.i1610, 0
  br i1 %.not.i.i1611, label %lean_inc_ref.exit1612, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.qd = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1612

lean_inc_ref.exit1612:                            ; preds = %bb.mq, %bb.mr, %bb.ms
  %i.qe = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqDelta(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 14 uses
  %i.qf = ptrtoint ptr %i.qe to i64               ; 2 uses
  %i.qg = and i64 %i.qf, 1
  %.not.i1613 = icmp eq i64 %i.qg, 0              ; 3 uses
  br i1 %.not.i1613, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %lean_inc_ref.exit1612
  %i.qh = lshr i64 %i.qf, 1
  %i.qi = trunc i64 %i.qh to i32
  br label %lean_obj_tag.exit1616

bb.mu:                                            ; preds = %lean_inc_ref.exit1612
  %i.qj = getelementptr i8, ptr %i.qe, i64 4
  %.val.i1615 = load i32, ptr %i.qj, align 4
  %i.qk = lshr i32 %.val.i1615, 24
  br label %lean_obj_tag.exit1616

lean_obj_tag.exit1616:                            ; preds = %bb.mt, %bb.mu
  %.0.i1614 = phi i32 [ %i.qi, %bb.mt ], [ %i.qk, %bb.mu ]
  %i.ql = icmp eq i32 %.0.i1614, 0
  br i1 %i.ql, label %bb.mv, label %bb.pn

bb.mv:                                            ; preds = %lean_obj_tag.exit1616
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !15 ; 7 uses
  %.val1438 = load i32, ptr %i.qe, align 8, !tbaa !11
  %i.qo = icmp eq i32 %.val1438, 1                ; 3 uses
  %.pre1837 = ptrtoint ptr %i.qn to i64           ; 2 uses
  %.pre1839 = and i64 %.pre1837, 1                ; 2 uses
  br i1 %i.qo, label %lean_dec.exit1126, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %.not.i1034 = icmp eq i64 %.pre1839, 0
  br i1 %.not.i1034, label %bb.mx, label %lean_inc.exit1035

bb.mx:                                            ; preds = %bb.mw
  %.val.i.i1617 = load i32, ptr %i.qn, align 4, !tbaa !11 ; 3 uses
  %i.qp = icmp sgt i32 %.val.i.i1617, 0
  br i1 %i.qp, label %bb.my, label %bb.mz, !prof !17

bb.my:                                            ; preds = %bb.mx
  %i.qq = add nuw i32 %.val.i.i1617, 1
  store i32 %i.qq, ptr %i.qn, align 4, !tbaa !11
  br label %lean_inc.exit1035

bb.mz:                                            ; preds = %bb.mx
  %.not.i.i1618 = icmp eq i32 %.val.i.i1617, 0
  br i1 %.not.i.i1618, label %lean_inc.exit1035, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.qr = atomicrmw sub ptr %i.qn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1035

lean_inc.exit1035:                                ; preds = %bb.na, %bb.mz, %bb.my, %bb.mw
  br i1 %.not.i1613, label %bb.nb, label %lean_dec.exit1126

bb.nb:                                            ; preds = %lean_inc.exit1035
  %i.qs = load i32, ptr %i.qe, align 8, !tbaa !11 ; 3 uses
  %i.qt = icmp sgt i32 %i.qs, 1
  br i1 %i.qt, label %bb.nc, label %bb.nd, !prof !17

bb.nc:                                            ; preds = %bb.nb
  %i.qu = add nsw i32 %i.qs, -1
  store i32 %i.qu, ptr %i.qe, align 8, !tbaa !11
  br label %lean_dec.exit1126

bb.nd:                                            ; preds = %bb.nb
  %.not.i1206 = icmp eq i32 %i.qs, 0
  br i1 %.not.i1206, label %lean_dec.exit1126, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qe) #12
  br label %lean_dec.exit1126

lean_dec.exit1126:                                ; preds = %bb.mv, %lean_inc.exit1035, %bb.nc, %bb.nd, %bb.ne
  %.0971 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ne ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1035 ], [ inttoptr (i64 1 to ptr), %bb.nc ], [ inttoptr (i64 1 to ptr), %bb.nd ], [ %i.qe, %bb.mv ] ; 6 uses
  %i.qv = lshr i64 %.pre1837, 1
  %i.qw = trunc i64 %i.qv to i8
  %.not.i1123 = icmp eq i64 %.pre1839, 0
  br i1 %.not.i1123, label %bb.nf, label %lean_dec.exit1124

bb.nf:                                            ; preds = %lean_dec.exit1126
  %i.qx = load i32, ptr %i.qn, align 4, !tbaa !11 ; 3 uses
  %i.qy = icmp sgt i32 %i.qx, 1
  br i1 %i.qy, label %bb.ng, label %bb.nh, !prof !17

bb.ng:                                            ; preds = %bb.nf
  %i.qz = add nsw i32 %i.qx, -1
  store i32 %i.qz, ptr %i.qn, align 4, !tbaa !11
  br label %lean_dec.exit1124

bb.nh:                                            ; preds = %bb.nf
  %.not.i1208 = icmp eq i32 %i.qx, 0
  br i1 %.not.i1208, label %lean_dec.exit1124, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qn) #12
  br label %lean_dec.exit1124

lean_dec.exit1124:                                ; preds = %bb.ni, %bb.nh, %bb.ng, %lean_dec.exit1126
  switch i8 %i.qw, label %bb.oj [
    i8 0, label %bb.nj
    i8 1, label %bb.nu
  ]

bb.nj:                                            ; preds = %lean_dec.exit1124
  %i.ra = ptrtoint ptr %.01003 to i64
  %i.rb = and i64 %i.ra, 1
  %.not.i1620 = icmp eq i64 %i.rb, 0
  br i1 %.not.i1620, label %bb.nk, label %lean_del_object.exit1621

bb.nk:                                            ; preds = %bb.nj
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1621

lean_del_object.exit1621:                         ; preds = %bb.nj, %bb.nk
  %i.rc = ptrtoint ptr %.0985 to i64
  %i.rd = and i64 %i.rc, 1
  %.not.i1622 = icmp eq i64 %i.rd, 0
  br i1 %.not.i1622, label %bb.nl, label %lean_del_object.exit1623

bb.nl:                                            ; preds = %lean_del_object.exit1621
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1623

lean_del_object.exit1623:                         ; preds = %lean_del_object.exit1621, %bb.nl
  %i.re = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.rf = icmp sgt i32 %i.re, 1
  br i1 %i.rf, label %bb.nm, label %bb.nn, !prof !17

bb.nm:                                            ; preds = %lean_del_object.exit1623
  %i.rg = add nsw i32 %i.re, -1
  store i32 %i.rg, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1377

bb.nn:                                            ; preds = %lean_del_object.exit1623
  %.not.i1376 = icmp eq i32 %i.re, 0
  br i1 %.not.i1376, label %lean_dec_ref.exit1377, label %bb.no

bb.no:                                            ; preds = %bb.nn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1377

lean_dec_ref.exit1377:                            ; preds = %bb.nm, %bb.nn, %bb.no
  %i.rh = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ri = icmp sgt i32 %i.rh, 1
  br i1 %i.ri, label %bb.np, label %bb.nq, !prof !17

bb.np:                                            ; preds = %lean_dec_ref.exit1377
  %i.rj = add nsw i32 %i.rh, -1
  store i32 %i.rj, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1375

bb.nq:                                            ; preds = %lean_dec_ref.exit1377
  %.not.i1374 = icmp eq i32 %i.rh, 0
  br i1 %.not.i1374, label %lean_dec_ref.exit1375, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1375

lean_dec_ref.exit1375:                            ; preds = %bb.np, %bb.nq, %bb.nr
  br i1 %i.qo, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %lean_dec_ref.exit1375
  %i.rk = getelementptr inbounds nuw i8, ptr %.0971, i64 8
  store ptr %i.dl, ptr %i.rk, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.nt:                                            ; preds = %lean_dec_ref.exit1375
  %i.rl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store ptr %i.dl, ptr %i.rm, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.nu:                                            ; preds = %lean_dec.exit1124
  %i.rn = ptrtoint ptr %.01003 to i64
  %i.ro = and i64 %i.rn, 1
  %.not.i1624 = icmp eq i64 %i.ro, 0
  br i1 %.not.i1624, label %bb.nv, label %lean_del_object.exit1625

bb.nv:                                            ; preds = %bb.nu
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1625

lean_del_object.exit1625:                         ; preds = %bb.nu, %bb.nv
  %i.rp = ptrtoint ptr %.0985 to i64
  %i.rq = and i64 %i.rp, 1
  %.not.i1626 = icmp eq i64 %i.rq, 0
  br i1 %.not.i1626, label %bb.nw, label %lean_del_object.exit1627

bb.nw:                                            ; preds = %lean_del_object.exit1625
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1627

lean_del_object.exit1627:                         ; preds = %lean_del_object.exit1625, %bb.nw
  %i.rr = and i64 %.pre1823, 1
  %.not.i1121 = icmp eq i64 %i.rr, 0
  br i1 %.not.i1121, label %bb.nx, label %lean_dec.exit1122

bb.nx:                                            ; preds = %lean_del_object.exit1627
  %i.rs = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.rt = icmp sgt i32 %i.rs, 1
  br i1 %i.rt, label %bb.ny, label %bb.nz, !prof !17

bb.ny:                                            ; preds = %bb.nx
  %i.ru = add nsw i32 %i.rs, -1
  store i32 %i.ru, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1122

bb.nz:                                            ; preds = %bb.nx
  %.not.i1210 = icmp eq i32 %i.rs, 0
  br i1 %.not.i1210, label %lean_dec.exit1122, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1122

lean_dec.exit1122:                                ; preds = %bb.oa, %bb.nz, %bb.ny, %lean_del_object.exit1627
  %i.rv = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.rw = icmp sgt i32 %i.rv, 1
  br i1 %i.rw, label %bb.ob, label %bb.oc, !prof !17

bb.ob:                                            ; preds = %lean_dec.exit1122
  %i.rx = add nsw i32 %i.rv, -1
  store i32 %i.rx, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1373

bb.oc:                                            ; preds = %lean_dec.exit1122
  %.not.i1372 = icmp eq i32 %i.rv, 0
  br i1 %.not.i1372, label %lean_dec_ref.exit1373, label %bb.od

bb.od:                                            ; preds = %bb.oc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1373

lean_dec_ref.exit1373:                            ; preds = %bb.ob, %bb.oc, %bb.od
  %i.ry = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.rz = icmp sgt i32 %i.ry, 1
  br i1 %i.rz, label %bb.oe, label %bb.of, !prof !17

bb.oe:                                            ; preds = %lean_dec_ref.exit1373
  %i.sa = add nsw i32 %i.ry, -1
  store i32 %i.sa, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1371

bb.of:                                            ; preds = %lean_dec_ref.exit1373
  %.not.i1370 = icmp eq i32 %i.ry, 0
  br i1 %.not.i1370, label %lean_dec_ref.exit1371, label %bb.og

bb.og:                                            ; preds = %bb.of
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1371

lean_dec_ref.exit1371:                            ; preds = %bb.oe, %bb.of, %bb.og
  %i.sb = zext i8 %i.gx to i64
  %i.sc = shl nuw nsw i64 %i.sb, 1
  %i.sd = or disjoint i64 %i.sc, 1
  %i.se = inttoptr i64 %i.sd to ptr               ; 2 uses
  br i1 %i.qo, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %lean_dec_ref.exit1371
  %i.sf = getelementptr inbounds nuw i8, ptr %.0971, i64 8
  store ptr %i.se, ptr %i.sf, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.oi:                                            ; preds = %lean_dec_ref.exit1371
  %i.sg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  store ptr %i.se, ptr %i.sh, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.oj:                                            ; preds = %lean_dec.exit1124
  %i.si = ptrtoint ptr %.0971 to i64
  %i.sj = and i64 %i.si, 1
  %.not.i1628 = icmp eq i64 %i.sj, 0
  br i1 %.not.i1628, label %bb.ok, label %lean_del_object.exit1629

bb.ok:                                            ; preds = %bb.oj
  tail call void @lean_free_object(ptr noundef nonnull %.0971) #12
  br label %lean_del_object.exit1629

lean_del_object.exit1629:                         ; preds = %bb.oj, %bb.ok
  %i.sk = and i64 %.pre1823, 1
  %.not.i1119 = icmp eq i64 %i.sk, 0
  br i1 %.not.i1119, label %bb.ol, label %lean_dec.exit1120

bb.ol:                                            ; preds = %lean_del_object.exit1629
  %i.sl = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.sm = icmp sgt i32 %i.sl, 1
  br i1 %i.sm, label %bb.om, label %bb.on, !prof !17

bb.om:                                            ; preds = %bb.ol
  %i.sn = add nsw i32 %i.sl, -1
  store i32 %i.sn, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1120

bb.on:                                            ; preds = %bb.ol
  %.not.i1212 = icmp eq i32 %i.sl, 0
  br i1 %.not.i1212, label %lean_dec.exit1120, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1120

lean_dec.exit1120:                                ; preds = %bb.oo, %bb.on, %bb.om, %lean_del_object.exit1629
  %.val.i.i1630 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.so = icmp sgt i32 %.val.i.i1630, 0
  br i1 %i.so, label %bb.op, label %bb.oq, !prof !17

bb.op:                                            ; preds = %lean_dec.exit1120
  %i.sp = add nuw i32 %.val.i.i1630, 1
  store i32 %i.sp, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1632

bb.oq:                                            ; preds = %lean_dec.exit1120
  %.not.i.i1631 = icmp eq i32 %.val.i.i1630, 0
  br i1 %.not.i.i1631, label %lean_inc_ref.exit1632, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.sq = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1632

lean_inc_ref.exit1632:                            ; preds = %bb.op, %bb.oq, %bb.or
  %.val.i.i1633 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.sr = icmp sgt i32 %.val.i.i1633, 0
  br i1 %i.sr, label %bb.os, label %bb.ot, !prof !17

bb.os:                                            ; preds = %lean_inc_ref.exit1632
  %i.ss = add nuw i32 %.val.i.i1633, 1
  store i32 %i.ss, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit1635

bb.ot:                                            ; preds = %lean_inc_ref.exit1632
  %.not.i.i1634 = icmp eq i32 %.val.i.i1633, 0
  br i1 %.not.i.i1634, label %lean_inc_ref.exit1635, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.st = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1635

lean_inc_ref.exit1635:                            ; preds = %bb.os, %bb.ot, %bb.ou
  %i.su = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 6 uses
  %i.sv = ptrtoint ptr %i.su to i64               ; 4 uses
  %i.sw = and i64 %i.sv, 1
  %.not.i1636 = icmp eq i64 %i.sw, 0
  br i1 %.not.i1636, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %lean_inc_ref.exit1635
  %i.sx = lshr i64 %i.sv, 1
  %i.sy = trunc i64 %i.sx to i32
  br label %lean_obj_tag.exit1639

bb.ow:                                            ; preds = %lean_inc_ref.exit1635
  %i.sz = getelementptr i8, ptr %i.su, i64 4
  %.val.i1638 = load i32, ptr %i.sz, align 4
  %i.ta = lshr i32 %.val.i1638, 24
  br label %lean_obj_tag.exit1639

lean_obj_tag.exit1639:                            ; preds = %bb.ov, %bb.ow
  %.0.i1637 = phi i32 [ %i.sy, %bb.ov ], [ %i.ta, %bb.ow ]
  %i.tb = icmp eq i32 %.0.i1637, 0
  br i1 %i.tb, label %bb.ox, label %lean_dec.exit1114

bb.ox:                                            ; preds = %lean_obj_tag.exit1639
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !15 ; 7 uses
  %i.te = ptrtoint ptr %i.td to i64               ; 2 uses
  %i.tf = and i64 %i.te, 1
  %.not.i1032 = icmp eq i64 %i.tf, 0
  br i1 %.not.i1032, label %bb.oy, label %lean_dec.exit1118

bb.oy:                                            ; preds = %bb.ox
  %.val.i.i1640 = load i32, ptr %i.td, align 4, !tbaa !11 ; 3 uses
  %i.tg = icmp sgt i32 %.val.i.i1640, 0
  br i1 %i.tg, label %bb.oz, label %bb.pa, !prof !17

bb.oz:                                            ; preds = %bb.oy
  %i.th = add nuw i32 %.val.i.i1640, 1            ; 2 uses
  store i32 %i.th, ptr %i.td, align 4, !tbaa !11
  br label %bb.pc

bb.pa:                                            ; preds = %bb.oy
  %.not.i.i1641 = icmp eq i32 %.val.i.i1640, 0
  br i1 %.not.i.i1641, label %lean_dec.exit1118, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.ti = atomicrmw sub ptr %i.td, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %i.td, align 4, !tbaa !11
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.oz
  %i.tj = phi i32 [ %.pr, %bb.pb ], [ %i.th, %bb.oz ] ; 3 uses
  %i.tk = icmp sgt i32 %i.tj, 1
  br i1 %i.tk, label %bb.pd, label %bb.pe, !prof !38

bb.pd:                                            ; preds = %bb.pc
  %i.tl = add nsw i32 %i.tj, -1
  store i32 %i.tl, ptr %i.td, align 4, !tbaa !11
  br label %lean_dec.exit1118

bb.pe:                                            ; preds = %bb.pc
  %.not.i1214 = icmp eq i32 %i.tj, 0
  br i1 %.not.i1214, label %lean_dec.exit1118, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.td) #12
  br label %lean_dec.exit1118

lean_dec.exit1118:                                ; preds = %bb.ox, %bb.pa, %bb.pf, %bb.pe, %bb.pd
  %i.tm = and i64 %i.te, 510
  %i.tn = icmp eq i64 %i.tm, 0
  br i1 %i.tn, label %bb.pg, label %lean_dec.exit1114

bb.pg:                                            ; preds = %lean_dec.exit1118
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.su, i32 noundef 1)
  %.val.i.i1643 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.to = icmp sgt i32 %.val.i.i1643, 0
  br i1 %i.to, label %bb.ph, label %bb.pi, !prof !17

bb.ph:                                            ; preds = %bb.pg
  %i.tp = add nuw i32 %.val.i.i1643, 1
  store i32 %i.tp, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit1645

bb.pi:                                            ; preds = %bb.pg
  %.not.i.i1644 = icmp eq i32 %.val.i.i1643, 0
  br i1 %.not.i.i1644, label %lean_inc_ref.exit1645, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.tq = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1645

lean_inc_ref.exit1645:                            ; preds = %bb.ph, %bb.pi, %bb.pj
  %.val.i.i1646 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.tr = icmp sgt i32 %.val.i.i1646, 0
  br i1 %i.tr, label %bb.pk, label %bb.pl, !prof !17

bb.pk:                                            ; preds = %lean_inc_ref.exit1645
  %i.ts = add nuw i32 %.val.i.i1646, 1
  store i32 %i.ts, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1648

bb.pl:                                            ; preds = %lean_inc_ref.exit1645
  %.not.i.i1647 = icmp eq i32 %.val.i.i1646, 0
  br i1 %.not.i.i1647, label %lean_inc_ref.exit1648, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.tt = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1648

lean_inc_ref.exit1648:                            ; preds = %bb.pk, %bb.pl, %bb.pm
  %i.tu = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqEtaStruct(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.pre = ptrtoint ptr %i.tu to i64
  br label %lean_dec.exit1114

bb.pn:                                            ; preds = %lean_obj_tag.exit1616
  %i.tv = ptrtoint ptr %.01003 to i64
  %i.tw = and i64 %i.tv, 1
  %.not.i1649 = icmp eq i64 %i.tw, 0
  br i1 %.not.i1649, label %bb.po, label %lean_del_object.exit1650

bb.po:                                            ; preds = %bb.pn
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1650

lean_del_object.exit1650:                         ; preds = %bb.pn, %bb.po
  %i.tx = ptrtoint ptr %.0985 to i64
  %i.ty = and i64 %i.tx, 1
  %.not.i1651 = icmp eq i64 %i.ty, 0
  br i1 %.not.i1651, label %bb.pp, label %lean_del_object.exit1652

bb.pp:                                            ; preds = %lean_del_object.exit1650
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1652

lean_del_object.exit1652:                         ; preds = %lean_del_object.exit1650, %bb.pp
  %i.tz = and i64 %.pre1823, 1
  %.not.i1115 = icmp eq i64 %i.tz, 0
  br i1 %.not.i1115, label %bb.pq, label %lean_dec.exit1116

bb.pq:                                            ; preds = %lean_del_object.exit1652
  %i.ua = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 1
  br i1 %i.ub, label %bb.pr, label %bb.ps, !prof !17

bb.pr:                                            ; preds = %bb.pq
  %i.uc = add nsw i32 %i.ua, -1
  store i32 %i.uc, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1116

bb.ps:                                            ; preds = %bb.pq
  %.not.i1216 = icmp eq i32 %i.ua, 0
  br i1 %.not.i1216, label %lean_dec.exit1116, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1116

lean_dec.exit1116:                                ; preds = %bb.pt, %bb.ps, %bb.pr, %lean_del_object.exit1652
  %i.ud = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.ue = icmp sgt i32 %i.ud, 1
  br i1 %i.ue, label %bb.pu, label %bb.pv, !prof !17

bb.pu:                                            ; preds = %lean_dec.exit1116
  %i.uf = add nsw i32 %i.ud, -1
  store i32 %i.uf, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1369

bb.pv:                                            ; preds = %lean_dec.exit1116
  %.not.i1368 = icmp eq i32 %i.ud, 0
  br i1 %.not.i1368, label %lean_dec_ref.exit1369, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1369

lean_dec_ref.exit1369:                            ; preds = %bb.pu, %bb.pv, %bb.pw
  %i.ug = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.uh = icmp sgt i32 %i.ug, 1
  br i1 %i.uh, label %bb.px, label %bb.py, !prof !17

bb.px:                                            ; preds = %lean_dec_ref.exit1369
  %i.ui = add nsw i32 %i.ug, -1
  store i32 %i.ui, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1367

bb.py:                                            ; preds = %lean_dec_ref.exit1369
  %.not.i1366 = icmp eq i32 %i.ug, 0
  br i1 %.not.i1366, label %lean_dec_ref.exit1367, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1367

lean_dec_ref.exit1367:                            ; preds = %bb.px, %bb.py, %bb.pz
  %i.uj = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !15 ; 5 uses
  %.val1437 = load i32, ptr %i.qe, align 8, !tbaa !11
  %i.ul = icmp eq i32 %.val1437, 1
  br i1 %i.ul, label %lean_dec_ref.exit1331, label %bb.qa

bb.qa:                                            ; preds = %lean_dec_ref.exit1367
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = and i64 %i.um, 1
  %.not.i1030 = icmp eq i64 %i.un, 0
  br i1 %.not.i1030, label %bb.qb, label %lean_inc.exit1031

bb.qb:                                            ; preds = %bb.qa
  %.val.i.i1653 = load i32, ptr %i.uk, align 4, !tbaa !11 ; 3 uses
  %i.uo = icmp sgt i32 %.val.i.i1653, 0
  br i1 %i.uo, label %bb.qc, label %bb.qd, !prof !17

bb.qc:                                            ; preds = %bb.qb
  %i.up = add nuw i32 %.val.i.i1653, 1
  store i32 %i.up, ptr %i.uk, align 4, !tbaa !11
  br label %lean_inc.exit1031

bb.qd:                                            ; preds = %bb.qb
  %.not.i.i1654 = icmp eq i32 %.val.i.i1653, 0
  br i1 %.not.i.i1654, label %lean_inc.exit1031, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.uq = atomicrmw sub ptr %i.uk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1031

lean_inc.exit1031:                                ; preds = %bb.qe, %bb.qd, %bb.qc, %bb.qa
  br i1 %.not.i1613, label %bb.qf, label %bb.qj

bb.qf:                                            ; preds = %lean_inc.exit1031
  %i.ur = load i32, ptr %i.qe, align 8, !tbaa !11 ; 3 uses
  %i.us = icmp sgt i32 %i.ur, 1
  br i1 %i.us, label %bb.qg, label %bb.qh, !prof !17

bb.qg:                                            ; preds = %bb.qf
  %i.ut = add nsw i32 %i.ur, -1
  store i32 %i.ut, ptr %i.qe, align 8, !tbaa !11
  br label %bb.qj

bb.qh:                                            ; preds = %bb.qf
  %.not.i1218 = icmp eq i32 %i.ur, 0
  br i1 %.not.i1218, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qe) #12
  br label %bb.qj

bb.qj:                                            ; preds = %lean_inc.exit1031, %bb.qg, %bb.qh, %bb.qi
  %i.uu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store ptr %i.uk, ptr %i.uv, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.qk:                                            ; preds = %lean_obj_tag.exit1593
  %i.uw = ptrtoint ptr %.01003 to i64
  %i.ux = and i64 %i.uw, 1
  %.not.i1656 = icmp eq i64 %i.ux, 0
  br i1 %.not.i1656, label %bb.ql, label %lean_del_object.exit1657

bb.ql:                                            ; preds = %bb.qk
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1657

lean_del_object.exit1657:                         ; preds = %bb.qk, %bb.ql
  %i.uy = ptrtoint ptr %.0985 to i64
  %i.uz = and i64 %i.uy, 1
  %.not.i1658 = icmp eq i64 %i.uz, 0
  br i1 %.not.i1658, label %bb.qm, label %lean_del_object.exit1659

bb.qm:                                            ; preds = %lean_del_object.exit1657
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1659

lean_del_object.exit1659:                         ; preds = %lean_del_object.exit1657, %bb.qm
  %i.va = and i64 %.pre1823, 1
  %.not.i1111 = icmp eq i64 %i.va, 0
  br i1 %.not.i1111, label %bb.qn, label %lean_dec.exit1112

bb.qn:                                            ; preds = %lean_del_object.exit1659
  %i.vb = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.vc = icmp sgt i32 %i.vb, 1
  br i1 %i.vc, label %bb.qo, label %bb.qp, !prof !17

bb.qo:                                            ; preds = %bb.qn
  %i.vd = add nsw i32 %i.vb, -1
  store i32 %i.vd, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1112

bb.qp:                                            ; preds = %bb.qn
  %.not.i1220 = icmp eq i32 %i.vb, 0
  br i1 %.not.i1220, label %lean_dec.exit1112, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1112

lean_dec.exit1112:                                ; preds = %bb.qq, %bb.qp, %bb.qo, %lean_del_object.exit1659
  %i.ve = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.vf = icmp sgt i32 %i.ve, 1
  br i1 %i.vf, label %bb.qr, label %bb.qs, !prof !17

bb.qr:                                            ; preds = %lean_dec.exit1112
  %i.vg = add nsw i32 %i.ve, -1
  store i32 %i.vg, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1365

bb.qs:                                            ; preds = %lean_dec.exit1112
  %.not.i1364 = icmp eq i32 %i.ve, 0
  br i1 %.not.i1364, label %lean_dec_ref.exit1365, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1365

lean_dec_ref.exit1365:                            ; preds = %bb.qr, %bb.qs, %bb.qt
  %i.vh = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.vi = icmp sgt i32 %i.vh, 1
  br i1 %i.vi, label %bb.qu, label %bb.qv, !prof !17

bb.qu:                                            ; preds = %lean_dec_ref.exit1365
  %i.vj = add nsw i32 %i.vh, -1
  store i32 %i.vj, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1363

bb.qv:                                            ; preds = %lean_dec_ref.exit1365
  %.not.i1362 = icmp eq i32 %i.vh, 0
  br i1 %.not.i1362, label %lean_dec_ref.exit1363, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1363

lean_dec_ref.exit1363:                            ; preds = %bb.qu, %bb.qv, %bb.qw
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !15 ; 5 uses
  %.val1436 = load i32, ptr %i.ns, align 8, !tbaa !11
  %i.vm = icmp eq i32 %.val1436, 1
  br i1 %i.vm, label %lean_dec_ref.exit1331, label %bb.qx

bb.qx:                                            ; preds = %lean_dec_ref.exit1363
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = and i64 %i.vn, 1
  %.not.i1028 = icmp eq i64 %i.vo, 0
  br i1 %.not.i1028, label %bb.qy, label %lean_inc.exit1029

bb.qy:                                            ; preds = %bb.qx
  %.val.i.i1660 = load i32, ptr %i.vl, align 4, !tbaa !11 ; 3 uses
  %i.vp = icmp sgt i32 %.val.i.i1660, 0
  br i1 %i.vp, label %bb.qz, label %bb.ra, !prof !17

bb.qz:                                            ; preds = %bb.qy
  %i.vq = add nuw i32 %.val.i.i1660, 1
  store i32 %i.vq, ptr %i.vl, align 4, !tbaa !11
  br label %lean_inc.exit1029

bb.ra:                                            ; preds = %bb.qy
  %.not.i.i1661 = icmp eq i32 %.val.i.i1660, 0
  br i1 %.not.i.i1661, label %lean_inc.exit1029, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.vr = atomicrmw sub ptr %i.vl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1029

lean_inc.exit1029:                                ; preds = %bb.rb, %bb.ra, %bb.qz, %bb.qx
  br i1 %.not.i1590, label %bb.rc, label %bb.rg

bb.rc:                                            ; preds = %lean_inc.exit1029
  %i.vs = load i32, ptr %i.ns, align 8, !tbaa !11 ; 3 uses
  %i.vt = icmp sgt i32 %i.vs, 1
  br i1 %i.vt, label %bb.rd, label %bb.re, !prof !17

bb.rd:                                            ; preds = %bb.rc
  %i.vu = add nsw i32 %i.vs, -1
  store i32 %i.vu, ptr %i.ns, align 8, !tbaa !11
  br label %bb.rg

bb.re:                                            ; preds = %bb.rc
  %.not.i1222 = icmp eq i32 %i.vs, 0
  br i1 %.not.i1222, label %bb.rg, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ns) #12
  br label %bb.rg

bb.rg:                                            ; preds = %lean_inc.exit1029, %bb.rd, %bb.re, %bb.rf
  %i.vv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store ptr %i.vl, ptr %i.vw, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.rh:                                            ; preds = %lean_obj_tag.exit1570
  %i.vx = ptrtoint ptr %.01003 to i64
  %i.vy = and i64 %i.vx, 1
  %.not.i1663 = icmp eq i64 %i.vy, 0
  br i1 %.not.i1663, label %bb.ri, label %lean_del_object.exit1664

bb.ri:                                            ; preds = %bb.rh
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1664

lean_del_object.exit1664:                         ; preds = %bb.rh, %bb.ri
  %i.vz = ptrtoint ptr %.0985 to i64
  %i.wa = and i64 %i.vz, 1
  %.not.i1665 = icmp eq i64 %i.wa, 0
  br i1 %.not.i1665, label %bb.rj, label %lean_del_object.exit1666

bb.rj:                                            ; preds = %lean_del_object.exit1664
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1666

lean_del_object.exit1666:                         ; preds = %lean_del_object.exit1664, %bb.rj
  %i.wb = and i64 %.pre1823, 1
  %.not.i1107 = icmp eq i64 %i.wb, 0
  br i1 %.not.i1107, label %bb.rk, label %lean_dec.exit1108

bb.rk:                                            ; preds = %lean_del_object.exit1666
  %i.wc = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.wd = icmp sgt i32 %i.wc, 1
  br i1 %i.wd, label %bb.rl, label %bb.rm, !prof !17

bb.rl:                                            ; preds = %bb.rk
  %i.we = add nsw i32 %i.wc, -1
  store i32 %i.we, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1108

bb.rm:                                            ; preds = %bb.rk
  %.not.i1224 = icmp eq i32 %i.wc, 0
  br i1 %.not.i1224, label %lean_dec.exit1108, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1108

lean_dec.exit1108:                                ; preds = %bb.rn, %bb.rm, %bb.rl, %lean_del_object.exit1666
  %i.wf = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.wg = icmp sgt i32 %i.wf, 1
  br i1 %i.wg, label %bb.ro, label %bb.rp, !prof !17

bb.ro:                                            ; preds = %lean_dec.exit1108
  %i.wh = add nsw i32 %i.wf, -1
  store i32 %i.wh, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1361

bb.rp:                                            ; preds = %lean_dec.exit1108
  %.not.i1360 = icmp eq i32 %i.wf, 0
  br i1 %.not.i1360, label %lean_dec_ref.exit1361, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1361

lean_dec_ref.exit1361:                            ; preds = %bb.ro, %bb.rp, %bb.rq
  %i.wi = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.wj = icmp sgt i32 %i.wi, 1
  br i1 %i.wj, label %bb.rr, label %bb.rs, !prof !17

bb.rr:                                            ; preds = %lean_dec_ref.exit1361
  %i.wk = add nsw i32 %i.wi, -1
  store i32 %i.wk, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1359

bb.rs:                                            ; preds = %lean_dec_ref.exit1361
  %.not.i1358 = icmp eq i32 %i.wi, 0
  br i1 %.not.i1358, label %lean_dec_ref.exit1359, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1359

lean_dec_ref.exit1359:                            ; preds = %bb.rr, %bb.rs, %bb.rt
  %i.wl = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !15 ; 5 uses
  %.val1435 = load i32, ptr %i.lg, align 8, !tbaa !11
  %i.wn = icmp eq i32 %.val1435, 1
  br i1 %i.wn, label %lean_dec_ref.exit1331, label %bb.ru

bb.ru:                                            ; preds = %lean_dec_ref.exit1359
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = and i64 %i.wo, 1
  %.not.i1026 = icmp eq i64 %i.wp, 0
  br i1 %.not.i1026, label %bb.rv, label %lean_inc.exit1027

bb.rv:                                            ; preds = %bb.ru
  %.val.i.i1667 = load i32, ptr %i.wm, align 4, !tbaa !11 ; 3 uses
  %i.wq = icmp sgt i32 %.val.i.i1667, 0
  br i1 %i.wq, label %bb.rw, label %bb.rx, !prof !17

bb.rw:                                            ; preds = %bb.rv
  %i.wr = add nuw i32 %.val.i.i1667, 1
  store i32 %i.wr, ptr %i.wm, align 4, !tbaa !11
  br label %lean_inc.exit1027

bb.rx:                                            ; preds = %bb.rv
  %.not.i.i1668 = icmp eq i32 %.val.i.i1667, 0
  br i1 %.not.i.i1668, label %lean_inc.exit1027, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.ws = atomicrmw sub ptr %i.wm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1027

lean_inc.exit1027:                                ; preds = %bb.ry, %bb.rx, %bb.rw, %bb.ru
  br i1 %.not.i1567, label %bb.rz, label %bb.sd

bb.rz:                                            ; preds = %lean_inc.exit1027
  %i.wt = load i32, ptr %i.lg, align 8, !tbaa !11 ; 3 uses
  %i.wu = icmp sgt i32 %i.wt, 1
  br i1 %i.wu, label %bb.sa, label %bb.sb, !prof !17

bb.sa:                                            ; preds = %bb.rz
  %i.wv = add nsw i32 %i.wt, -1
  store i32 %i.wv, ptr %i.lg, align 8, !tbaa !11
  br label %bb.sd

bb.sb:                                            ; preds = %bb.rz
  %.not.i1226 = icmp eq i32 %i.wt, 0
  br i1 %.not.i1226, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lg) #12
  br label %bb.sd

bb.sd:                                            ; preds = %lean_inc.exit1027, %bb.sa, %bb.sb, %bb.sc
  %i.ww = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  store ptr %i.wm, ptr %i.wx, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.se:                                            ; preds = %lean_obj_tag.exit1547
  %i.wy = ptrtoint ptr %.01003 to i64
  %i.wz = and i64 %i.wy, 1
  %.not.i1670 = icmp eq i64 %i.wz, 0
  br i1 %.not.i1670, label %bb.sf, label %lean_del_object.exit1671

bb.sf:                                            ; preds = %bb.se
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1671

lean_del_object.exit1671:                         ; preds = %bb.se, %bb.sf
  %i.xa = ptrtoint ptr %.0985 to i64
  %i.xb = and i64 %i.xa, 1
  %.not.i1672 = icmp eq i64 %i.xb, 0
  br i1 %.not.i1672, label %bb.sg, label %lean_del_object.exit1673

bb.sg:                                            ; preds = %lean_del_object.exit1671
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1673

lean_del_object.exit1673:                         ; preds = %lean_del_object.exit1671, %bb.sg
  %i.xc = and i64 %.pre1823, 1
  %.not.i1103 = icmp eq i64 %i.xc, 0
  br i1 %.not.i1103, label %bb.sh, label %lean_dec.exit1104

bb.sh:                                            ; preds = %lean_del_object.exit1673
  %i.xd = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.xe = icmp sgt i32 %i.xd, 1
  br i1 %i.xe, label %bb.si, label %bb.sj, !prof !17

bb.si:                                            ; preds = %bb.sh
  %i.xf = add nsw i32 %i.xd, -1
  store i32 %i.xf, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1104

bb.sj:                                            ; preds = %bb.sh
  %.not.i1228 = icmp eq i32 %i.xd, 0
  br i1 %.not.i1228, label %lean_dec.exit1104, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1104

lean_dec.exit1104:                                ; preds = %bb.sk, %bb.sj, %bb.si, %lean_del_object.exit1673
  %i.xg = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.xh = icmp sgt i32 %i.xg, 1
  br i1 %i.xh, label %bb.sl, label %bb.sm, !prof !17

bb.sl:                                            ; preds = %lean_dec.exit1104
  %i.xi = add nsw i32 %i.xg, -1
  store i32 %i.xi, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1357

bb.sm:                                            ; preds = %lean_dec.exit1104
  %.not.i1356 = icmp eq i32 %i.xg, 0
  br i1 %.not.i1356, label %lean_dec_ref.exit1357, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1357

lean_dec_ref.exit1357:                            ; preds = %bb.sl, %bb.sm, %bb.sn
  %i.xj = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.xk = icmp sgt i32 %i.xj, 1
  br i1 %i.xk, label %bb.so, label %bb.sp, !prof !17

bb.so:                                            ; preds = %lean_dec_ref.exit1357
  %i.xl = add nsw i32 %i.xj, -1
  store i32 %i.xl, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1355

bb.sp:                                            ; preds = %lean_dec_ref.exit1357
  %.not.i1354 = icmp eq i32 %i.xj, 0
  br i1 %.not.i1354, label %lean_dec_ref.exit1355, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1355

lean_dec_ref.exit1355:                            ; preds = %bb.so, %bb.sp, %bb.sq
  %i.xm = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !15 ; 5 uses
  %.val1434 = load i32, ptr %i.iu, align 8, !tbaa !11
  %i.xo = icmp eq i32 %.val1434, 1
  br i1 %i.xo, label %lean_dec_ref.exit1331, label %bb.sr

bb.sr:                                            ; preds = %lean_dec_ref.exit1355
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = and i64 %i.xp, 1
  %.not.i1024 = icmp eq i64 %i.xq, 0
  br i1 %.not.i1024, label %bb.ss, label %lean_inc.exit1025

bb.ss:                                            ; preds = %bb.sr
  %.val.i.i1674 = load i32, ptr %i.xn, align 4, !tbaa !11 ; 3 uses
  %i.xr = icmp sgt i32 %.val.i.i1674, 0
  br i1 %i.xr, label %bb.st, label %bb.su, !prof !17

bb.st:                                            ; preds = %bb.ss
  %i.xs = add nuw i32 %.val.i.i1674, 1
  store i32 %i.xs, ptr %i.xn, align 4, !tbaa !11
  br label %lean_inc.exit1025

bb.su:                                            ; preds = %bb.ss
  %.not.i.i1675 = icmp eq i32 %.val.i.i1674, 0
  br i1 %.not.i.i1675, label %lean_inc.exit1025, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.xt = atomicrmw sub ptr %i.xn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1025

lean_inc.exit1025:                                ; preds = %bb.sv, %bb.su, %bb.st, %bb.sr
  br i1 %.not.i1544, label %bb.sw, label %bb.ta

bb.sw:                                            ; preds = %lean_inc.exit1025
  %i.xu = load i32, ptr %i.iu, align 8, !tbaa !11 ; 3 uses
  %i.xv = icmp sgt i32 %i.xu, 1
  br i1 %i.xv, label %bb.sx, label %bb.sy, !prof !17

bb.sx:                                            ; preds = %bb.sw
  %i.xw = add nsw i32 %i.xu, -1
  store i32 %i.xw, ptr %i.iu, align 8, !tbaa !11
  br label %bb.ta

bb.sy:                                            ; preds = %bb.sw
  %.not.i1230 = icmp eq i32 %i.xu, 0
  br i1 %.not.i1230, label %bb.ta, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iu) #12
  br label %bb.ta

bb.ta:                                            ; preds = %lean_inc.exit1025, %bb.sx, %bb.sy, %bb.sz
  %i.xx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store ptr %i.xn, ptr %i.xy, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.tb:                                            ; preds = %lean_inc.exit1013, %bb.aai, %bb.aah, %bb.aag
  %i.xz = and i64 %i.agq, 510
  %i.ya = icmp eq i64 %i.xz, 0
  br i1 %i.ya, label %.thread1810, label %bb.zf

.thread1810:                                      ; preds = %lean_del_object.exit1731, %bb.zq, %bb.tb
  %i.yb = ptrtoint ptr %.01003 to i64
  %i.yc = and i64 %i.yb, 1
  %.not.i1677 = icmp eq i64 %i.yc, 0
  br i1 %.not.i1677, label %bb.tc, label %lean_del_object.exit1678

bb.tc:                                            ; preds = %.thread1810
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1678

lean_del_object.exit1678:                         ; preds = %.thread1810, %bb.tc
  %.val.i.i1679 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.yd = icmp sgt i32 %.val.i.i1679, 0
  br i1 %i.yd, label %bb.td, label %bb.te, !prof !17

bb.td:                                            ; preds = %lean_del_object.exit1678
  %i.ye = add nuw i32 %.val.i.i1679, 1
  store i32 %i.ye, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit1681

bb.te:                                            ; preds = %lean_del_object.exit1678
  %.not.i.i1680 = icmp eq i32 %.val.i.i1679, 0
  br i1 %.not.i.i1680, label %lean_inc_ref.exit1681, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.yf = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1681

lean_inc_ref.exit1681:                            ; preds = %bb.td, %bb.te, %bb.tf
  %.val.i.i1682 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.yg = icmp sgt i32 %.val.i.i1682, 0
  br i1 %i.yg, label %bb.tg, label %bb.th, !prof !17

bb.tg:                                            ; preds = %lean_inc_ref.exit1681
  %i.yh = add nuw i32 %.val.i.i1682, 1
  store i32 %i.yh, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit1684

bb.th:                                            ; preds = %lean_inc_ref.exit1681
  %.not.i.i1683 = icmp eq i32 %.val.i.i1682, 0
  br i1 %.not.i.i1683, label %lean_inc_ref.exit1684, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.yi = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1684

lean_inc_ref.exit1684:                            ; preds = %bb.tg, %bb.th, %bb.ti
  %i.yj = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqProjInst(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 14 uses
  %i.yk = ptrtoint ptr %i.yj to i64               ; 2 uses
  %i.yl = and i64 %i.yk, 1
  %.not.i1685 = icmp eq i64 %i.yl, 0              ; 3 uses
  br i1 %.not.i1685, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %lean_inc_ref.exit1684
  %i.ym = lshr i64 %i.yk, 1
  %i.yn = trunc i64 %i.ym to i32
  br label %lean_obj_tag.exit1688

bb.tk:                                            ; preds = %lean_inc_ref.exit1684
  %i.yo = getelementptr i8, ptr %i.yj, i64 4
  %.val.i1687 = load i32, ptr %i.yo, align 4
  %i.yp = lshr i32 %.val.i1687, 24
  br label %lean_obj_tag.exit1688

lean_obj_tag.exit1688:                            ; preds = %bb.tj, %bb.tk
  %.0.i1686 = phi i32 [ %i.yn, %bb.tj ], [ %i.yp, %bb.tk ]
  %i.yq = icmp eq i32 %.0.i1686, 0
  br i1 %i.yq, label %bb.tl, label %bb.yo

bb.tl:                                            ; preds = %lean_obj_tag.exit1688
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !15 ; 7 uses
  %.val1433 = load i32, ptr %i.yj, align 8, !tbaa !11
  %i.yt = icmp eq i32 %.val1433, 1                ; 3 uses
  %.pre1845 = ptrtoint ptr %i.ys to i64           ; 2 uses
  %.pre1847 = and i64 %.pre1845, 1                ; 2 uses
  br i1 %i.yt, label %lean_dec.exit1100, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %.not.i1022 = icmp eq i64 %.pre1847, 0
  br i1 %.not.i1022, label %bb.tn, label %lean_inc.exit1023

bb.tn:                                            ; preds = %bb.tm
  %.val.i.i1689 = load i32, ptr %i.ys, align 4, !tbaa !11 ; 3 uses
  %i.yu = icmp sgt i32 %.val.i.i1689, 0
  br i1 %i.yu, label %bb.to, label %bb.tp, !prof !17

bb.to:                                            ; preds = %bb.tn
  %i.yv = add nuw i32 %.val.i.i1689, 1
  store i32 %i.yv, ptr %i.ys, align 4, !tbaa !11
  br label %lean_inc.exit1023
end_hunk_18
begin_hunk_19_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isExprDefEqExpensive:bb.a

bb.acf:                                           ; preds = %bb.ace
  %i.ajh = add nsw i32 %i.ajf, -1
  store i32 %i.ajh, ptr %i.aix, align 4, !tbaa !11
  br label %lean_dec.exit1076

bb.acg:                                           ; preds = %bb.ace
  %.not.i1256 = icmp eq i32 %i.ajf, 0
  br i1 %.not.i1256, label %lean_dec.exit1076, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aix) #12
  br label %lean_dec.exit1076

lean_dec.exit1076:                                ; preds = %bb.ach, %bb.acg, %bb.acf, %lean_dec.exit1078
  %i.aji = and i64 %.pre1841, 510
  %i.ajj = icmp eq i64 %i.aji, 0
  br i1 %i.ajj, label %bb.aci, label %bb.ack

bb.aci:                                           ; preds = %lean_dec.exit1076
  %i.ajk = ptrtoint ptr %.0901 to i64
  %i.ajl = and i64 %i.ajk, 1
  %.not.i1758 = icmp eq i64 %i.ajl, 0
  br i1 %.not.i1758, label %bb.acj, label %lean_del_object.exit1759

bb.acj:                                           ; preds = %bb.aci
  tail call void @lean_free_object(ptr noundef nonnull %.0901) #12
  br label %lean_del_object.exit1759

lean_del_object.exit1759:                         ; preds = %bb.aci, %bb.acj
  %i.ajm = tail call zeroext i8 @l_Lean_Expr_isConst(ptr noundef nonnull %0) #12
  %i.ajn = icmp eq i8 %i.ajm, 0
  br i1 %i.ajn, label %.thread1813, label %bb.zo

bb.ack:                                           ; preds = %lean_dec.exit1076
  %i.ajo = ptrtoint ptr %.01003 to i64
  %i.ajp = and i64 %i.ajo, 1
  %.not.i1760 = icmp eq i64 %i.ajp, 0
  br i1 %.not.i1760, label %bb.acl, label %lean_del_object.exit1761

bb.acl:                                           ; preds = %bb.ack
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1761

lean_del_object.exit1761:                         ; preds = %bb.ack, %bb.acl
  %i.ajq = ptrtoint ptr %.0985 to i64
  %i.ajr = and i64 %i.ajq, 1
  %.not.i1762 = icmp eq i64 %i.ajr, 0
  br i1 %.not.i1762, label %bb.acm, label %lean_del_object.exit1763

bb.acm:                                           ; preds = %lean_del_object.exit1761
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1763

lean_del_object.exit1763:                         ; preds = %lean_del_object.exit1761, %bb.acm
  %i.ajs = load i32, ptr %1, align 4, !tbaa !11   ; 3 uses
  %i.ajt = icmp sgt i32 %i.ajs, 1
  br i1 %i.ajt, label %bb.acn, label %bb.aco, !prof !17

bb.acn:                                           ; preds = %lean_del_object.exit1763
  %i.aju = add nsw i32 %i.ajs, -1
  store i32 %i.aju, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1305

bb.aco:                                           ; preds = %lean_del_object.exit1763
  %.not.i1304 = icmp eq i32 %i.ajs, 0
  br i1 %.not.i1304, label %lean_dec_ref.exit1305, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1305

lean_dec_ref.exit1305:                            ; preds = %bb.acn, %bb.aco, %bb.acp
  %i.ajv = load i32, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.ajw = icmp sgt i32 %i.ajv, 1
  br i1 %i.ajw, label %bb.acq, label %bb.acr, !prof !17

bb.acq:                                           ; preds = %lean_dec_ref.exit1305
  %i.ajx = add nsw i32 %i.ajv, -1
  store i32 %i.ajx, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1303

bb.acr:                                           ; preds = %lean_dec_ref.exit1305
  %.not.i1302 = icmp eq i32 %i.ajv, 0
  br i1 %.not.i1302, label %lean_dec_ref.exit1303, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1303

lean_dec_ref.exit1303:                            ; preds = %bb.acq, %bb.acr, %bb.acs
  br i1 %i.aiy, label %bb.act, label %bb.acu

bb.act:                                           ; preds = %lean_dec_ref.exit1303
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0901, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ajy, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.acu:                                           ; preds = %lean_dec_ref.exit1303
  %i.ajz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.aka, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.acv:                                           ; preds = %lean_obj_tag.exit1754
  %i.akb = ptrtoint ptr %.01003 to i64
  %i.akc = and i64 %i.akb, 1
  %.not.i1764 = icmp eq i64 %i.akc, 0
  br i1 %.not.i1764, label %bb.acw, label %lean_del_object.exit1765

bb.acw:                                           ; preds = %bb.acv
  tail call void @lean_free_object(ptr noundef nonnull %.01003) #12
  br label %lean_del_object.exit1765

lean_del_object.exit1765:                         ; preds = %bb.acv, %bb.acw
  %i.akd = ptrtoint ptr %.0985 to i64
  %i.ake = and i64 %i.akd, 1
  %.not.i1766 = icmp eq i64 %i.ake, 0
  br i1 %.not.i1766, label %bb.acx, label %lean_del_object.exit1767

bb.acx:                                           ; preds = %lean_del_object.exit1765
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1767

lean_del_object.exit1767:                         ; preds = %lean_del_object.exit1765, %bb.acx
  %i.akf = load i32, ptr %1, align 4, !tbaa !11   ; 3 uses
  %i.akg = icmp sgt i32 %i.akf, 1
  br i1 %i.akg, label %bb.acy, label %bb.acz, !prof !17

bb.acy:                                           ; preds = %lean_del_object.exit1767
  %i.akh = add nsw i32 %i.akf, -1
  store i32 %i.akh, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1301

bb.acz:                                           ; preds = %lean_del_object.exit1767
  %.not.i1300 = icmp eq i32 %i.akf, 0
  br i1 %.not.i1300, label %lean_dec_ref.exit1301, label %bb.ada

bb.ada:                                           ; preds = %bb.acz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1301

lean_dec_ref.exit1301:                            ; preds = %bb.acy, %bb.acz, %bb.ada
  %i.aki = load i32, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.akj = icmp sgt i32 %i.aki, 1
  br i1 %i.akj, label %bb.adb, label %bb.adc, !prof !17

bb.adb:                                           ; preds = %lean_dec_ref.exit1301
  %i.akk = add nsw i32 %i.aki, -1
  store i32 %i.akk, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1331

bb.adc:                                           ; preds = %lean_dec_ref.exit1301
  %.not.i1298 = icmp eq i32 %i.aki, 0
  br i1 %.not.i1298, label %lean_dec_ref.exit1331, label %bb.add

bb.add:                                           ; preds = %bb.adc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1331

bb.ade:                                           ; preds = %lean_obj_tag.exit1502
  %i.akl = ptrtoint ptr %.0985 to i64
  %i.akm = and i64 %i.akl, 1
  %.not.i1768 = icmp eq i64 %i.akm, 0
  br i1 %.not.i1768, label %bb.adf, label %lean_del_object.exit1769

bb.adf:                                           ; preds = %bb.ade
  tail call void @lean_free_object(ptr noundef nonnull %.0985) #12
  br label %lean_del_object.exit1769

lean_del_object.exit1769:                         ; preds = %bb.ade, %bb.adf
  %i.akn = ptrtoint ptr %i.ek to i64
  %i.ako = and i64 %i.akn, 1
  %.not.i1073 = icmp eq i64 %i.ako, 0
  br i1 %.not.i1073, label %bb.adg, label %lean_dec.exit1074

bb.adg:                                           ; preds = %lean_del_object.exit1769
  %i.akp = load i32, ptr %i.ek, align 4, !tbaa !11 ; 3 uses
  %i.akq = icmp sgt i32 %i.akp, 1
  br i1 %i.akq, label %bb.adh, label %bb.adi, !prof !17

bb.adh:                                           ; preds = %bb.adg
  %i.akr = add nsw i32 %i.akp, -1
  store i32 %i.akr, ptr %i.ek, align 4, !tbaa !11
  br label %lean_dec.exit1074

bb.adi:                                           ; preds = %bb.adg
  %.not.i1258 = icmp eq i32 %i.akp, 0
  br i1 %.not.i1258, label %lean_dec.exit1074, label %bb.adj

bb.adj:                                           ; preds = %bb.adi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ek) #12
  br label %lean_dec.exit1074

lean_dec.exit1074:                                ; preds = %bb.adj, %bb.adi, %bb.adh, %lean_del_object.exit1769
  %i.aks = and i64 %.pre1823, 1
  %.not.i1071 = icmp eq i64 %i.aks, 0
  br i1 %.not.i1071, label %bb.adk, label %lean_dec.exit1072

bb.adk:                                           ; preds = %lean_dec.exit1074
  %i.akt = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.aku = icmp sgt i32 %i.akt, 1
  br i1 %i.aku, label %bb.adl, label %bb.adm, !prof !17

bb.adl:                                           ; preds = %bb.adk
  %i.akv = add nsw i32 %i.akt, -1
  store i32 %i.akv, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1072

bb.adm:                                           ; preds = %bb.adk
  %.not.i1260 = icmp eq i32 %i.akt, 0
  br i1 %.not.i1260, label %lean_dec.exit1072, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1072

lean_dec.exit1072:                                ; preds = %bb.adn, %bb.adm, %bb.adl, %lean_dec.exit1074
  %i.akw = load i32, ptr %1, align 4, !tbaa !11   ; 3 uses
  %i.akx = icmp sgt i32 %i.akw, 1
  br i1 %i.akx, label %bb.ado, label %bb.adp, !prof !17

bb.ado:                                           ; preds = %lean_dec.exit1072
  %i.aky = add nsw i32 %i.akw, -1
  store i32 %i.aky, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1297

bb.adp:                                           ; preds = %lean_dec.exit1072
  %.not.i1296 = icmp eq i32 %i.akw, 0
  br i1 %.not.i1296, label %lean_dec_ref.exit1297, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1297

lean_dec_ref.exit1297:                            ; preds = %bb.ado, %bb.adp, %bb.adq
  %i.akz = load i32, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.ala = icmp sgt i32 %i.akz, 1
  br i1 %i.ala, label %bb.adr, label %bb.ads, !prof !17

bb.adr:                                           ; preds = %lean_dec_ref.exit1297
  %i.alb = add nsw i32 %i.akz, -1
  store i32 %i.alb, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1295

bb.ads:                                           ; preds = %lean_dec_ref.exit1297
  %.not.i1294 = icmp eq i32 %i.akz, 0
  br i1 %.not.i1294, label %lean_dec_ref.exit1295, label %bb.adt

bb.adt:                                           ; preds = %bb.ads
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1295

lean_dec_ref.exit1295:                            ; preds = %bb.adr, %bb.ads, %bb.adt
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !15 ; 5 uses
  %.val1428 = load i32, ptr %i.ex, align 8, !tbaa !11
  %i.ale = icmp eq i32 %.val1428, 1
  br i1 %i.ale, label %lean_dec_ref.exit1331, label %bb.adu

bb.adu:                                           ; preds = %lean_dec_ref.exit1295
  %i.alf = ptrtoint ptr %i.ald to i64
  %i.alg = and i64 %i.alf, 1
  %.not.i1008 = icmp eq i64 %i.alg, 0
  br i1 %.not.i1008, label %bb.adv, label %lean_inc.exit1009

bb.adv:                                           ; preds = %bb.adu
  %.val.i.i1770 = load i32, ptr %i.ald, align 4, !tbaa !11 ; 3 uses
  %i.alh = icmp sgt i32 %.val.i.i1770, 0
  br i1 %i.alh, label %bb.adw, label %bb.adx, !prof !17

bb.adw:                                           ; preds = %bb.adv
  %i.ali = add nuw i32 %.val.i.i1770, 1
  store i32 %i.ali, ptr %i.ald, align 4, !tbaa !11
  br label %lean_inc.exit1009

bb.adx:                                           ; preds = %bb.adv
  %.not.i.i1771 = icmp eq i32 %.val.i.i1770, 0
  br i1 %.not.i.i1771, label %lean_inc.exit1009, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  %i.alj = atomicrmw sub ptr %i.ald, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1009

lean_inc.exit1009:                                ; preds = %bb.ady, %bb.adx, %bb.adw, %bb.adu
  br i1 %.not.i1499, label %bb.adz, label %bb.aed

bb.adz:                                           ; preds = %lean_inc.exit1009
  %i.alk = load i32, ptr %i.ex, align 8, !tbaa !11 ; 3 uses
  %i.all = icmp sgt i32 %i.alk, 1
  br i1 %i.all, label %bb.aea, label %bb.aeb, !prof !17

bb.aea:                                           ; preds = %bb.adz
  %i.alm = add nsw i32 %i.alk, -1
  store i32 %i.alm, ptr %i.ex, align 8, !tbaa !11
  br label %bb.aed

bb.aeb:                                           ; preds = %bb.adz
  %.not.i1262 = icmp eq i32 %i.alk, 0
  br i1 %.not.i1262, label %bb.aed, label %bb.aec

bb.aec:                                           ; preds = %bb.aeb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ex) #12
  br label %bb.aed

bb.aed:                                           ; preds = %lean_inc.exit1009, %bb.aea, %bb.aeb, %bb.aec
  %i.aln = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  store ptr %i.ald, ptr %i.alo, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.aee:                                           ; preds = %lean_obj_tag.exit1492
  %i.alp = and i64 %.pre1823, 1
  %.not.i1067 = icmp eq i64 %i.alp, 0
  br i1 %.not.i1067, label %bb.aef, label %lean_dec.exit1068

bb.aef:                                           ; preds = %bb.aee
  %i.alq = load i32, ptr %i.dl, align 512, !tbaa !11 ; 3 uses
  %i.alr = icmp sgt i32 %i.alq, 1
  br i1 %i.alr, label %bb.aeg, label %bb.aeh, !prof !17

bb.aeg:                                           ; preds = %bb.aef
  %i.als = add nsw i32 %i.alq, -1
  store i32 %i.als, ptr %i.dl, align 512, !tbaa !11
  br label %lean_dec.exit1068

bb.aeh:                                           ; preds = %bb.aef
  %.not.i1264 = icmp eq i32 %i.alq, 0
  br i1 %.not.i1264, label %lean_dec.exit1068, label %bb.aei

bb.aei:                                           ; preds = %bb.aeh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1068

lean_dec.exit1068:                                ; preds = %bb.aei, %bb.aeh, %bb.aeg, %bb.aee
  %i.alt = load i32, ptr %1, align 4, !tbaa !11   ; 3 uses
  %i.alu = icmp sgt i32 %i.alt, 1
  br i1 %i.alu, label %bb.aej, label %bb.aek, !prof !17

bb.aej:                                           ; preds = %lean_dec.exit1068
  %i.alv = add nsw i32 %i.alt, -1
  store i32 %i.alv, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1293

bb.aek:                                           ; preds = %lean_dec.exit1068
  %.not.i1292 = icmp eq i32 %i.alt, 0
  br i1 %.not.i1292, label %lean_dec_ref.exit1293, label %bb.ael

bb.ael:                                           ; preds = %bb.aek
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1293

lean_dec_ref.exit1293:                            ; preds = %bb.aej, %bb.aek, %bb.ael
  %i.alw = load i32, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.alx = icmp sgt i32 %i.alw, 1
  br i1 %i.alx, label %bb.aem, label %bb.aen, !prof !17

bb.aem:                                           ; preds = %lean_dec_ref.exit1293
  %i.aly = add nsw i32 %i.alw, -1
  store i32 %i.aly, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1291

bb.aen:                                           ; preds = %lean_dec_ref.exit1293
  %.not.i1290 = icmp eq i32 %i.alw, 0
  br i1 %.not.i1290, label %lean_dec_ref.exit1291, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1291

lean_dec_ref.exit1291:                            ; preds = %bb.aem, %bb.aen, %bb.aeo
  %i.alz = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !15 ; 5 uses
  %.val1427 = load i32, ptr %i.eb, align 8, !tbaa !11
  %i.amb = icmp eq i32 %.val1427, 1
  br i1 %i.amb, label %lean_dec_ref.exit1331, label %bb.aep

bb.aep:                                           ; preds = %lean_dec_ref.exit1291
  %i.amc = ptrtoint ptr %i.ama to i64
  %i.amd = and i64 %i.amc, 1
  %.not.i1006 = icmp eq i64 %i.amd, 0
  br i1 %.not.i1006, label %bb.aeq, label %lean_inc.exit1007

bb.aeq:                                           ; preds = %bb.aep
  %.val.i.i1773 = load i32, ptr %i.ama, align 4, !tbaa !11 ; 3 uses
  %i.ame = icmp sgt i32 %.val.i.i1773, 0
  br i1 %i.ame, label %bb.aer, label %bb.aes, !prof !17

bb.aer:                                           ; preds = %bb.aeq
  %i.amf = add nuw i32 %.val.i.i1773, 1
  store i32 %i.amf, ptr %i.ama, align 4, !tbaa !11
  br label %lean_inc.exit1007

bb.aes:                                           ; preds = %bb.aeq
  %.not.i.i1774 = icmp eq i32 %.val.i.i1773, 0
  br i1 %.not.i.i1774, label %lean_inc.exit1007, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.amg = atomicrmw sub ptr %i.ama, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1007

lean_inc.exit1007:                                ; preds = %bb.aet, %bb.aes, %bb.aer, %bb.aep
  br i1 %.not.i1489, label %bb.aeu, label %bb.aey

bb.aeu:                                           ; preds = %lean_inc.exit1007
  %i.amh = load i32, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.ami = icmp sgt i32 %i.amh, 1
  br i1 %i.ami, label %bb.aev, label %bb.aew, !prof !17

bb.aev:                                           ; preds = %bb.aeu
  %i.amj = add nsw i32 %i.amh, -1
  store i32 %i.amj, ptr %i.eb, align 8, !tbaa !11
  br label %bb.aey

bb.aew:                                           ; preds = %bb.aeu
  %.not.i1266 = icmp eq i32 %i.amh, 0
  br i1 %.not.i1266, label %bb.aey, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eb) #12
  br label %bb.aey

bb.aey:                                           ; preds = %lean_inc.exit1007, %bb.aev, %bb.aew, %bb.aex
  %i.amk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  store ptr %i.ama, ptr %i.aml, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.aez:                                           ; preds = %lean_dec.exit1158
  %i.amm = and i64 %.pre1823, 1
  %.not.i1063 = icmp eq i64 %i.amm, 0
  br i1 %.not.i1063, label %bb.afa, label %lean_dec.exit1064

bb.afa:                                           ; preds = %bb.aez
  %i.amn = load i32, ptr %i.dl, align 4, !tbaa !11 ; 3 uses
  %i.amo = icmp sgt i32 %i.amn, 1
  br i1 %i.amo, label %bb.afb, label %bb.afc, !prof !17

bb.afb:                                           ; preds = %bb.afa
  %i.amp = add nsw i32 %i.amn, -1
  store i32 %i.amp, ptr %i.dl, align 4, !tbaa !11
  br label %lean_dec.exit1064

bb.afc:                                           ; preds = %bb.afa
  %.not.i1268 = icmp eq i32 %i.amn, 0
  br i1 %.not.i1268, label %lean_dec.exit1064, label %bb.afd

bb.afd:                                           ; preds = %bb.afc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #12
  br label %lean_dec.exit1064

lean_dec.exit1064:                                ; preds = %bb.afd, %bb.afc, %bb.afb, %bb.aez
  %i.amq = load i32, ptr %1, align 4, !tbaa !11   ; 3 uses
  %i.amr = icmp sgt i32 %i.amq, 1
  br i1 %i.amr, label %bb.afe, label %bb.aff, !prof !17

bb.afe:                                           ; preds = %lean_dec.exit1064
  %i.ams = add nsw i32 %i.amq, -1
  store i32 %i.ams, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1289

bb.aff:                                           ; preds = %lean_dec.exit1064
  %.not.i1288 = icmp eq i32 %i.amq, 0
  br i1 %.not.i1288, label %lean_dec_ref.exit1289, label %bb.afg

bb.afg:                                           ; preds = %bb.aff
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1289

lean_dec_ref.exit1289:                            ; preds = %bb.afe, %bb.aff, %bb.afg
  %i.amt = load i32, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.amu = icmp sgt i32 %i.amt, 1
  br i1 %i.amu, label %bb.afh, label %bb.afi, !prof !17

bb.afh:                                           ; preds = %lean_dec_ref.exit1289
  %i.amv = add nsw i32 %i.amt, -1
  store i32 %i.amv, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit1287

bb.afi:                                           ; preds = %lean_dec_ref.exit1289
  %.not.i1286 = icmp eq i32 %i.amt, 0
  br i1 %.not.i1286, label %lean_dec_ref.exit1287, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #12
  br label %lean_dec_ref.exit1287

lean_dec_ref.exit1287:                            ; preds = %bb.afh, %bb.afi, %bb.afj
  br i1 %i.dm, label %bb.afk, label %bb.afl

bb.afk:                                           ; preds = %lean_dec_ref.exit1287
  %i.amw = getelementptr inbounds nuw i8, ptr %.0968, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.amw, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.afl:                                           ; preds = %lean_dec_ref.exit1287
  %i.amx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.amy, align 8, !tbaa !15
  br label %lean_dec_ref.exit1331

bb.afm:                                           ; preds = %lean_obj_tag.exit1480
  %i.amz = load i32, ptr %1, align 4, !tbaa !11   ; 3 uses
  %i.ana = icmp sgt i32 %i.amz, 1
  br i1 %i.ana, label %bb.afn, label %bb.afo, !prof !17

bb.afn:                                           ; preds = %bb.afm
  %i.anb = add nsw i32 %i.amz, -1
  store i32 %i.anb, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit1285

bb.afo:                                           ; preds = %bb.afm
  %.not.i1284 = icmp eq i32 %i.amz, 0
  br i1 %.not.i1284, label %lean_dec_ref.exit1285, label %bb.afp

bb.afp:                                           ; preds = %bb.afo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #12
  br label %lean_dec_ref.exit1285

lean_dec_ref.exit1285:                            ; preds = %bb.afn, %bb.afo, %bb.afp
  %i.anc = load i32, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.and = icmp sgt i32 %i.anc, 1
  br i1 %i.and, label %bb.afq, label %bb.afr, !prof !17

end_hunk_19
