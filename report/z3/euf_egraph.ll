Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_egraph?download=true
inline.NumInlined: 1311
inline.NumDeleted: 546
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3euf6egraph15update_childrenEPNS_5enodeE:bb.a
  store ptr %1, ptr %i.ak, align 8, !tbaa !66
  %i.al = add i32 %i.ag, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN3euf6egraph2mkEP4exprjjPKPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @_ZN3euf6egraph10force_pushEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.b = tail call noundef ptr @_ZN3euf6egraph8mk_enodeEP4exprjjPKPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) ; 13 uses
  %i.c = icmp eq i32 %3, 0                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !129, !align !163
  %i.e = tail call noundef zeroext i1 @_ZNK11ast_manager15is_unique_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.d, ptr noundef %1)
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.f, align 4, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144
  %.not.i.i.not = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not, label %bb.e, label %_ZNKSt8functionIFvPN3euf5enodeEEEclES2_.exit

_ZNKSt8functionIFvPN3euf5enodeEEEclES2_.exit:     ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !303
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt8functionIFvPN3euf5enodeEEEclES2_.exit, %bb.d
  br i1 %i.c, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 65535
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread, label %_ZNK11ast_manager5is_eqEPK4expr.exit

_ZNK11ast_manager5is_eqEPK4expr.exit:             ; preds = %bb.g
  %i.t = load i32, ptr %i.s, align 8, !tbaa !307
  %i.u = icmp eq i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, 2
  %i.y = select i1 %i.u, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNK11ast_manager6is_iffEPK4expr.exit, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

_ZNK11ast_manager6is_iffEPK4expr.exit:            ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !129, !align !163
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.ac = call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.z, ptr noundef %i.ab)
  br i1 %i.ac, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread, label %_ZNK11ast_manager6is_iffEPK4expr.exit.thread

_ZNK11ast_manager6is_iffEPK4expr.exit.thread:     ; preds = %_ZNK11ast_manager6is_iffEPK4expr.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 1, ptr %i.ad, align 1, !tbaa !165
  call void @_ZN3euf6egraph17reinsert_equalityEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.b)
  br label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

_ZNK11ast_manager5is_eqEPK4expr.exit.thread:      ; preds = %bb.g, %bb.f, %_ZNK11ast_manager6is_iffEPK4expr.exit.thread, %_ZNK11ast_manager6is_iffEPK4expr.exit, %_ZNK11ast_manager5is_eqEPK4expr.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = call { ptr, i8 } @_ZN3euf6etable6insertEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %i.b) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.af, 0 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.fca.0.extract.i, ptr %i.ag, align 8, !tbaa !142
  %i.ah = icmp eq ptr %.fca.0.extract.i, %i.b
  br i1 %i.ah, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !65 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.idx.i = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  %.not14.i = icmp eq i32 %i.ak, 0
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN3euf5enode10add_parentEPS0_.exit.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !138 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !132 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !132
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.j, label %_ZN3euf6egraph15update_childrenEPNS_5enodeE.exit

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !132
  br label %_ZN3euf6egraph15update_childrenEPNS_5enodeE.exit

.lr.ph.i:                                         ; preds = %bb.h, %_ZN3euf5enode10add_parentEPS0_.exit.i
  %.015.i = phi ptr [ %i.bm, %_ZN3euf5enode10add_parentEPS0_.exit.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.av = load ptr, ptr %.015.i, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !131 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !132 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !132
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.l, label %_ZN3euf5enode10add_parentEPS0_.exit.i

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  call void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  %.pre.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !131 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !132
  br label %_ZN3euf5enode10add_parentEPS0_.exit.i

_ZN3euf5enode10add_parentEPS0_.exit.i:            ; preds = %bb.l, %bb.k
  %i.bg = phi i32 [ %.pre2.i.i.i, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  store ptr %i.b, ptr %i.bk, align 8, !tbaa !66
  %i.bl = add i32 %i.bg, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !132
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %i.am
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN3euf6egraph15update_childrenEPNS_5enodeE.exit: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i, %bb.j ], [ %i.ar, %bb.i ]
  %i.bo = phi ptr [ %.pre.i.i, %bb.j ], [ %i.ao, %bb.i ]
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bp ; 4 uses
  store i32 4, ptr %i.bq, align 8, !tbaa !140
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.b, ptr %.sroa.411.0..sroa_idx.i, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !66
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i32 -1, ptr %.sroa.6.0..sroa_idx.i, align 8
  br label %.sink.split

bb.m:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.thread
  %.fca.1.extract = extractvalue { ptr, i8 } %i.af, 1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !145 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !132 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !132
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.o, label %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_b.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN6vectorIN3euf6egraph8to_mergeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
  %.pre.i.i26 = load ptr, ptr %i.br, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i.i27 = getelementptr inbounds i8, ptr %.pre.i.i26, i64 -4
  %.pre2.i.i28 = load i32, ptr %.phi.trans.insert.i.i27, align 4, !tbaa !132
  br label %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_b.exit

_ZN3euf6egraph10push_mergeEPNS_5enodeES2_b.exit:  ; preds = %bb.n, %bb.o
  %i.bz = phi i32 [ %.pre2.i.i28, %bb.o ], [ %i.bv, %bb.n ]
  %i.ca = phi ptr [ %.pre.i.i26, %bb.o ], [ %i.bs, %bb.n ]
  %5 = and i8 %.fca.1.extract, 1
  %i.cb = zext nneg i8 %5 to i32
  %i.cc = zext i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.cc ; 6 uses
  store ptr %i.b, ptr %i.cd, align 8, !tbaa !66
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.fca.0.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i32 %i.cb, ptr %.sroa.5.0..sroa_idx.i25, align 8, !tbaa !147
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i32 0, ptr %.sroa.63.0..sroa_idx.i, align 8, !tbaa !148
  %.sroa.74.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store i32 -1, ptr %.sroa.74.0..sroa_idx.i, align 8
  %.sroa.85.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store ptr null, ptr %.sroa.85.0..sroa_idx.i, align 8, !tbaa !47
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_b.exit, %_ZN3euf6egraph15update_childrenEPNS_5enodeE.exit
  %.sink39.in = phi ptr [ %i.an, %_ZN3euf6egraph15update_childrenEPNS_5enodeE.exit ], [ %i.br, %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_b.exit ]
  %.sink39 = load ptr, ptr %.sink39.in, align 8, !tbaa !166
  %i.ce = getelementptr inbounds i8, ptr %.sink39, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !132
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !132
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.e
  ret ptr %i.b
}

declare noundef zeroext i1 @_ZNK11ast_manager15is_unique_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraphC2ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(536) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(952) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !167
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN3euf6etableC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(952) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  invoke void @_ZN6regionC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.d, i8 0, i64 52, i1 false)
  store i32 2, ptr %i.h, align 8, !tbaa !308
  %i.i = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.d unwind label %bb.h       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.i, ptr %i.j, align 8, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  %i.k = load i32, ptr %i.h, align 8, !tbaa !308
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.k, ptr %i.l, align 8, !tbaa !169
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !167
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.p, align 8, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i64 %i.o, ptr %i.q, align 8, !tbaa !167
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.r, i8 0, i64 29, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.v, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 337
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.w, i8 0, i64 65, i1 false)
  store i8 1, ptr %i.aa, align 1, !tbaa !127
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, i8 0, i64 192, i1 false)
  %i.ai = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef 192)
          to label %bb.e unwind label %bb.i       ; 20 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.al, i8 0, i64 152, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 2147483647, ptr %i.am, align 4, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 1, ptr %i.an, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  store i32 -1, ptr %i.ao, align 4, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store i32 -1, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  store i32 -1, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 156
  store i8 -1, ptr %i.au, align 4, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.ai, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %i.ai, ptr %i.aw, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store ptr %i.ai, ptr %i.ax, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  store i8 1, ptr %i.ay, align 1, !tbaa !64
  store i32 2, ptr %i.at, align 8, !tbaa !65
  store i8 1, ptr %i.ak, align 1, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !tbaa !66
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !309
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.h:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.i:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !144 ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !144 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bk, null
  br i1 %.not.i18, label %_ZNSt14_Function_baseD2Ev.exit19, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit19 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit19:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !144 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bp, null
  br i1 %.not.i20, label %_ZNSt14_Function_baseD2Ev.exit21, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit19
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit21 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN3euf6egraph15undo_add_th_varEPNS_5enodeEi:bb.a

bb.k:                                             ; preds = %.preheader.i.i14
  %i.an = ashr i32 %i.aj, 8
  br label %_ZNK3euf5enode10get_th_varEi.exit18

bb.l:                                             ; preds = %.preheader.i.i14
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !243 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i16, label %_ZNK3euf5enode10get_th_varEi.exit18, label %.preheader.i.i14, !llvm.loop !8

_ZNK3euf5enode10get_th_varEi.exit18:              ; preds = %bb.l, %bb.j, %bb.k
  %.1.i.i17 = phi i32 [ -1, %bb.j ], [ %i.an, %bb.k ], [ -1, %bb.l ]
  %i.aq = icmp eq i32 %.1.i.i17, %.1.i.i
  br i1 %i.aq, label %bb.m, label %_ZN3euf5enode10del_th_varEi.exit26

bb.m:                                             ; preds = %_ZNK3euf5enode10get_th_varEi.exit18
  %i.ar = shl i32 %i.ah, 24
  %i.as = ashr exact i32 %i.ar, 24
  %i.at = icmp eq i32 %i.as, %2
  br i1 %i.at, label %bb.n, label %.preheader.i.i19

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !243 ; 4 uses
  %.not12.i.i25 = icmp eq ptr %i.av, null
  br i1 %.not12.i.i25, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -1, ptr %i.ag, align 8
  br label %_ZN3euf5enode10del_th_varEi.exit26

bb.p:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = and i32 %i.aw, -256                     ; 2 uses
  %i.ay = and i32 %i.ah, 255
  %i.az = or disjoint i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.ag, align 8
  %i.ba = load i32, ptr %i.av, align 8
  %i.bb = and i32 %i.ba, 255
  %i.bc = or disjoint i32 %i.bb, %i.ax
  store i32 %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !243
  store ptr %i.be, ptr %i.au, align 8, !tbaa !243
  br label %_ZN3euf5enode10del_th_varEi.exit26

.preheader.i.i19:                                 ; preds = %bb.m, %bb.q
  %.09.i.i20 = phi ptr [ %.0.i.i22, %bb.q ], [ %i.ag, %bb.m ] ; 2 uses
  %.0.in.i.i21 = getelementptr inbounds nuw i8, ptr %.09.i.i20, i64 8
  %.0.i.i22 = load ptr, ptr %.0.in.i.i21, align 8, !tbaa !243 ; 4 uses
  %.not.i.i23 = icmp eq ptr %.0.i.i22, null
  br i1 %.not.i.i23, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.preheader.i.i19
  %i.bf = load i32, ptr %.0.i.i22, align 8
  %i.bg = shl i32 %i.bf, 24
  %i.bh = ashr exact i32 %i.bg, 24
  %i.bi = icmp eq i32 %i.bh, %2
  br i1 %i.bi, label %bb.r, label %.preheader.i.i19, !llvm.loop !321

bb.r:                                             ; preds = %bb.q
  %.0.in.i.i21.le = getelementptr inbounds nuw i8, ptr %.09.i.i20, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i22, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !243
  store ptr %i.bk, ptr %.0.in.i.i21.le, align 8, !tbaa !243
  br label %_ZN3euf5enode10del_th_varEi.exit26

bb.s:                                             ; preds = %.preheader.i.i19
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.31, i32 noundef 150, ptr noundef nonnull @.str.3)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN3euf5enode10del_th_varEi.exit26

_ZN3euf5enode10del_th_varEi.exit26:               ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %_ZNK3euf5enode10get_th_varEi.exit18, %_ZN3euf5enode10del_th_varEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph20set_merge_tf_enabledEPNS_5enodeEb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !129, !align !163
  %i.b = load ptr, ptr %1, align 8, !tbaa !49
  %i.c = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !322
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !244, !range !128, !noundef !129
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._ZNK3euf5enode8merge_tfEv.exit_crit_edge

._ZNK3euf5enode8merge_tfEv.exit_crit_edge:        ; preds = %bb.b
  br i1 %2, label %bb.e, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !45
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %_ZNK3euf5enode8merge_tfEv.exit.thr_comm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !131  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK3euf5enode8merge_tfEv.exit, label %_ZNK3euf5enode11num_parentsEv.exit.i

_ZNK3euf5enode11num_parentsEv.exit.i:             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !132
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZNK3euf5enode8merge_tfEv.exit, label %_ZNK3euf5enode8merge_tfEv.exit.thr_comm

_ZNK3euf5enode8merge_tfEv.exit.thr_comm:          ; preds = %bb.c, %_ZNK3euf5enode11num_parentsEv.exit.i
  br i1 %2, label %bb.h, label %bb.e

_ZNK3euf5enode8merge_tfEv.exit:                   ; preds = %bb.d, %_ZNK3euf5enode11num_parentsEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load i32, ptr %i.r, align 8, !tbaa !65
  %i.t = icmp ne i32 %i.s, 0
  %i.u = xor i1 %2, %i.t
  br i1 %i.u, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._ZNK3euf5enode8merge_tfEv.exit_crit_edge, %_ZNK3euf5enode8merge_tfEv.exit.thr_comm, %_ZNK3euf5enode8merge_tfEv.exit
  %i.v = zext i1 %2 to i8
  store i8 %i.v, ptr %i.g, align 2, !tbaa !244
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !138  ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !132 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !132
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !138 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !132
  br label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ %.pre2.i, %bb.g ], [ %i.aa, %bb.f ]
  %i.af = phi ptr [ %.pre.i, %bb.g ], [ %i.x, %bb.f ]
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ag ; 4 uses
  store i32 3, ptr %i.ah, align 8, !tbaa !140
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %1, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !66
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !138
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !132
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %._ZNK3euf5enode8merge_tfEv.exit_crit_edge, %_ZNK3euf5enode8merge_tfEv.exit.thr_comm, %bb.a, %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit, %_ZNK3euf5enode8merge_tfEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph18toggle_cgc_enabledEPNS_5enodeEb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !42, !range !128, !noundef !129 ; 2 uses
  %i.c = xor i8 %i.b, 1
  store i8 %i.c, ptr %i.a, align 1, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.b to i1
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call { ptr, i8 } @_ZN3euf6etable6insertEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.h, 0 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %.fca.0.extract.i, ptr %i.i, align 8, !tbaa !142
  %i.j = icmp eq ptr %.fca.0.extract.i, %1
  %or.cond = or i1 %2, %i.j
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.fca.1.extract = extractvalue { ptr, i8 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %3 = and i8 %.fca.1.extract, 1
  %i.l = zext nneg i8 %3 to i32
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !145  ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !132  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !132
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIN3euf6egraph8to_mergeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !132
  br label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit: ; preds = %bb.e, %bb.f
  %i.t = phi i32 [ %.pre2.i, %bb.f ], [ %i.p, %bb.e ]
  %i.u = phi ptr [ %.pre.i, %bb.f ], [ %i.m, %bb.e ]
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.v ; 6 uses
  store ptr %1, ptr %i.w, align 8, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.fca.0.extract.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !147
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 0, ptr %.sroa.618.0..sroa_idx, align 8, !tbaa !148
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 -1, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %.sroa.820.0..sroa_idx, align 8, !tbaa !47
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !132
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !132
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN3euf6etable5eraseEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit, %bb.h, %bb.g
  %.pr = load i32, ptr %i.d, align 8, !tbaa !65
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.a, align 1, !tbaa !42, !range !128, !noundef !129
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = tail call noundef zeroext i1 @_ZNK3euf6etable8containsEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull %1)
  br i1 %i.aj, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 379, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph12set_relevantEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !128, !noundef !129
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !132  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !132
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !138 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !132
  br label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit: ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %.pre2.i, %bb.d ], [ %i.h, %bb.c ]
  %i.m = phi ptr [ %.pre.i, %bb.d ], [ %i.e, %bb.c ]
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.n ; 4 uses
  store i32 14, ptr %i.o, align 8, !tbaa !140
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !66
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !132
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !132
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit
  ret void
}

declare noundef zeroext i1 @_ZNK3euf6etable8containsEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph12set_lbl_hashEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 3 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !48
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !138  ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !132  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !132
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !132
  br label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre2.i, %bb.c ], [ %i.g, %bb.b ]
  %i.l = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ]
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.m ; 4 uses
  store i32 8, ptr %i.n, align 8, !tbaa !140
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !66
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr null, ptr %.sroa.520.0..sroa_idx, align 8, !tbaa !66
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i8 %i.c, ptr %.sroa.621.0..sroa_idx, align 8
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !132
  %i.r = add i32 %i.q, 1                          ; 3 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !132
  %i.s = load ptr, ptr %1, align 8, !tbaa !49
  %i.t = load i32, ptr %i.s, align 4, !tbaa !136  ; 2 uses
  %i.u = add i32 %i.t, 2127912214
  %i.v = shl i32 %i.t, 12
  %i.w = add i32 %i.u, %i.v                       ; 2 uses
  %i.x = lshr i32 %i.w, 19
  %i.y = xor i32 %i.w, %i.x
  %i.z = xor i32 %i.y, -949894596                 ; 2 uses
  %i.aa = add i32 %i.z, 374761393
  %i.ab = shl i32 %i.z, 5
  %i.ac = add i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = add i32 %i.ac, -744332180
  %i.ae = shl i32 %i.ac, 9
  %i.af = xor i32 %i.ad, %i.ae                    ; 2 uses
  %i.ag = add i32 %i.af, -42973499
  %i.ah = shl i32 %i.af, 3
  %i.ai = add i32 %i.ag, %i.ah                    ; 2 uses
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = trunc i32 %i.ak to i8
  %i.am = and i8 %i.al, 63
  %i.an = xor i8 %i.am, 9                         ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3euf6egraph11merge_th_eqEPNS_5enodeES2_:bb.a
  %i.t = ashr i32 %i.o, 8                         ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.preheader.i.i20.preheader, label %bb.g

.preheader.i.i20.preheader:                       ; preds = %bb.c, %_ZNK3euf5enode10get_th_varEi.exit
  br label %.preheader.i.i20

.preheader.i.i20:                                 ; preds = %.preheader.i.i20.preheader, %.preheader.i.i20
  %.0.i.i21 = phi ptr [ %i.w, %.preheader.i.i20 ], [ %i.d, %.preheader.i.i20.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !243  ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.w, null
  br i1 %.not.i.i22, label %bb.d, label %.preheader.i.i20, !llvm.loop !9

bb.d:                                             ; preds = %.preheader.i.i20
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 8
  %i.y = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 noundef 16) ; 3 uses
  store i32 %i.j, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !243
  store ptr %i.y, ptr %i.x, align 8, !tbaa !243
  br label %_ZN3euf5enode10add_th_varEiiR6region.exit

_ZN3euf5enode10add_th_varEiiR6region.exit:        ; preds = %_ZNK3euf5enode10get_th_varEi.exit.thread.thread, %bb.d
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !138 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN3euf5enode10add_th_varEiiR6region.exit
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !132 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !132
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.e, %_ZN3euf5enode10add_th_varEiiR6region.exit
  tail call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !138 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !132
  br label %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit: ; preds = %bb.e, %bb.f
  %i.ah = phi i32 [ %.pre2.i, %bb.f ], [ %i.ad, %bb.e ]
  %i.ai = phi ptr [ %.pre.i, %bb.f ], [ %i.aa, %bb.e ]
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  store i32 5, ptr %i.ak, align 8, !tbaa !140
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %2, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !66
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx, align 8
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !138
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !132
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !132
  %i.ap = load i32, ptr %.sroa.025.032, align 8
  %i.aq = ashr i32 %i.ap, 8
  tail call void @_ZN3euf6egraph13add_th_diseqsEiiPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.l, i32 noundef %i.aq, ptr noundef nonnull %2)
  br label %select.unfold

bb.g:                                             ; preds = %_ZNK3euf5enode10get_th_varEi.exit
  %i.ar = ashr i32 %i.j, 8
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !174 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !132 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !132
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZN6vectorIN3euf5th_eqELb0EjE9push_backEOS1_.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN6vectorIN3euf5th_eqELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !174 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !132
  br label %_ZN6vectorIN3euf5th_eqELb0EjE9push_backEOS1_.exit.i

_ZN6vectorIN3euf5th_eqELb0EjE9push_backEOS1_.exit.i: ; preds = %bb.i, %bb.h
  %i.az = phi i32 [ %.pre2.i.i, %bb.i ], [ %i.av, %bb.h ]
  %i.ba = phi ptr [ %.pre.i.i, %bb.i ], [ %i.as, %bb.h ]
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bb ; 5 uses
  store i32 %i.l, ptr %i.bc, align 8, !tbaa !132
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.t, ptr %.sroa.49.0..sroa_idx.i, align 4, !tbaa !132
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.ar, ptr %.sroa.510.0..sroa_idx.i, align 8, !tbaa !132
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %1, ptr %.sroa.611.0..sroa_idx.i, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !66
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !174
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !132
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !132
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !138 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIN3euf5th_eqELb0EjE9push_backEOS1_.exit.i
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !132 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !132
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_ZN3euf6egraph9add_th_eqEiiiPNS_5enodeES2_.exit

bb.k:                                             ; preds = %bb.j, %_ZN6vectorIN3euf5th_eqELb0EjE9push_backEOS1_.exit.i
  tail call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pre.i5.i = load ptr, ptr %i.f, align 8, !tbaa !138 ; 2 uses
  %.phi.trans.insert.i6.i = getelementptr inbounds i8, ptr %.pre.i5.i, i64 -4
  %.pre2.i7.i = load i32, ptr %.phi.trans.insert.i6.i, align 4, !tbaa !132
  br label %_ZN3euf6egraph9add_th_eqEiiiPNS_5enodeES2_.exit

_ZN3euf6egraph9add_th_eqEiiiPNS_5enodeES2_.exit:  ; preds = %bb.j, %bb.k
  %i.bo = phi i32 [ %.pre2.i7.i, %bb.k ], [ %i.bk, %bb.j ]
  %i.bp = phi ptr [ %.pre.i5.i, %bb.k ], [ %i.bh, %bb.j ]
  %i.bq = zext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  store i32 7, ptr %i.br, align 8, !tbaa !140
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bs, i8 0, i64 20, i1 false)
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !138
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !132
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !132
  %i.bx = load i32, ptr %i.g, align 4, !tbaa !180
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.g, align 4, !tbaa !180
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN3euf6egraph9add_th_eqEiiiPNS_5enodeES2_.exit, %_ZN6vectorIN3euf6egraph13update_recordELb0EjE9push_backEOS2_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.025.032, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !243 ; 2 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %select.unfold._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph16reinsert_parentsEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK3euf13enode_parents3endEv.exit

_ZNK3euf13enode_parents3endEv.exit:               ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !132  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not40 = icmp eq i32 %i.e, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3euf13enode_parents3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.p, %bb.a, %_ZNK3euf13enode_parents3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.041 = phi ptr [ %i.b, %.lr.ph ], [ %i.bq, %bb.p ] ; 2 uses
  %i.l = load ptr, ptr %.041, align 8, !tbaa !66  ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !248, !range !128, !noundef !129
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.m, align 8, !tbaa !248
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !42, !range !128, !noundef !129
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.s = tail call { ptr, i8 } @_ZN3euf6etable6insertEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull %i.l) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.s, 0 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %.fca.0.extract.i, ptr %i.t, align 8, !tbaa !142
  %.not13 = icmp eq ptr %.fca.0.extract.i, %i.l
  br i1 %.not13, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.fca.1.extract = extractvalue { ptr, i8 } %i.s, 1
  %3 = and i8 %.fca.1.extract, 1
  %i.u = zext nneg i8 %3 to i32
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !145  ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !132  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !132
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6vectorIN3euf6egraph8to_mergeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !132
  br label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit

_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit: ; preds = %bb.f, %bb.g
  %i.ac = phi i32 [ %.pre2.i, %bb.g ], [ %i.y, %bb.f ]
  %i.ad = phi ptr [ %.pre.i, %bb.g ], [ %i.v, %bb.f ]
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.ae ; 6 uses
  store ptr %.fca.0.extract.i, ptr %i.af, align 8, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !147
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 0, ptr %.sroa.621.0..sroa_idx, align 8, !tbaa !148
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 -1, ptr %.sroa.722.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr null, ptr %.sroa.823.0..sroa_idx, align 8, !tbaa !47
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !132
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !132
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !131 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !132 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !132
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i14 = load ptr, ptr %i.i, align 8, !tbaa !131 ; 2 uses
  %.phi.trans.insert.i15 = getelementptr inbounds i8, ptr %.pre.i14, i64 -4
  %.pre2.i16 = load i32, ptr %.phi.trans.insert.i15, align 4, !tbaa !132
  br label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit

_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit: ; preds = %bb.i, %bb.j
  %i.ar = phi i32 [ %.pre2.i16, %bb.j ], [ %i.an, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %.pre.i14, %bb.j ], [ %i.ak, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store ptr %i.l, ptr %i.av, align 8, !tbaa !66
  %i.aw = add i32 %i.ar, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !132
  br label %bb.k

bb.k:                                             ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit, %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE9push_backEOS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !165, !range !128, !noundef !129
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.sink.split, label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !165, !range !128, !noundef !129
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !131 ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !132 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !132
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN6vectorIPN3euf5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i17 = load ptr, ptr %i.i, align 8, !tbaa !131 ; 2 uses
  %.phi.trans.insert.i18 = getelementptr inbounds i8, ptr %.pre.i17, i64 -4
  %.pre2.i19 = load i32, ptr %.phi.trans.insert.i18, align 4, !tbaa !132
  br label %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20

_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20: ; preds = %bb.n, %bb.o
  %i.bk = phi i32 [ %.pre2.i19, %bb.o ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bl = phi ptr [ %.pre.i17, %bb.o ], [ %i.bd, %bb.n ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  store ptr %i.l, ptr %i.bo, align 8, !tbaa !66
  %i.bp = add i32 %i.bk, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !132
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %_ZN6vectorIPN3euf5enodeELb0EjE9push_backERKS2_.exit20
  tail call void @_ZN3euf6egraph17reinsert_equalityEPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.l)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k, %bb.l, %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZNK3euf5enode9congruentEPS0_(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6egraph21unmerge_justificationEPNS_5enodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef captures(none) initializes((72, 80), (104, 108), (112, 116), (120, 128)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.a, align 8, !tbaa !246
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 0, ptr %i.b, align 8, !tbaa !148
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 -1, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  tail call void @_ZN3euf5enode21reverse_justificationEv(ptr noundef nonnull align 8 dereferenceable(176) %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3euf6egraph9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.euf::justification", align 8 ; 4 uses
  tail call void @_ZN3euf6egraph10force_pushEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN3euf6egraph17propagate_pluginsEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6vectorIN3euf6egraph8to_mergeELb0EjE5resetEv.exit, label %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit

_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit: ; preds = %bb.a, %_ZN3euf6egraph11add_literalEPNS_5enodeES2_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN3euf6egraph11add_literalEPNS_5enodeES2_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.s = phi ptr [ %i.bw, %_ZN3euf6egraph11add_literalEPNS_5enodeES2_.exit ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !132
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv, %i.v
  br i1 %i.w, label %bb.b, label %.critedge.thread39

bb.b:                                             ; preds = %_ZNK6vectorIN3euf6egraph8to_mergeELb0EjE4sizeEv.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !129, !align !163
  %i.y = call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.x)
  br i1 %i.y, label %bb.c, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %bb.b
  %.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !145
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %i.h, align 4, !tbaa !150, !range !128, !noundef !129
  %i.aa = trunc nuw i8 %i.z to i1
  %.pre.pre29 = load ptr, ptr %i.g, align 8, !tbaa !145 ; 3 uses
  br i1 %i.aa, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %.pre.pre29, i64 %indvars.iv ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !336 ; 2 uses
  switch i32 %i.ad, label %_ZN3euf6egraph11add_literalEPNS_5enodeES2_.exit [
end_hunk_2
