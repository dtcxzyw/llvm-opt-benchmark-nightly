Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_rb?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
begin_hunk_0_@lv_rb_insert:bb.a
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.as, ptr %0, align 8, !tbaa !15
  br label %rb_left_rotate.exit.i

bb.n:                                             ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre68.i, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  %i.ax = icmp eq ptr %i.ad, %.pre
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ay = phi ptr [ %i.ah, %.thread ], [ %.pre68.i, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.as, ptr %i.az, align 8, !tbaa !25
  br label %rb_left_rotate.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre68.i, i64 16
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !26
  br label %rb_left_rotate.exit.i

rb_left_rotate.exit.i:                            ; preds = %bb.p, %bb.o, %bb.m
  store ptr %i.ad, ptr %i.au, align 8, !tbaa !25
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !23
  %.pre69.i = load ptr, ptr %i.ai, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %rb_left_rotate.exit.i, %bb.j
  %i.bb = phi ptr [ %.pre69.i, %rb_left_rotate.exit.i ], [ %i.aj, %bb.j ] ; 6 uses
  %.043.i = phi ptr [ %.066.i, %rb_left_rotate.exit.i ], [ %i.ad, %bb.j ]
  %.2.i = phi ptr [ %i.ad, %rb_left_rotate.exit.i ], [ %.066.i, %bb.j ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.043.i, i64 24
  store i32 1, ptr %i.bc, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 0, ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26 ; 3 uses
  store ptr %i.bf, ptr %i.ai, align 8, !tbaa !25
  %.not.i52.i = icmp eq ptr %i.bf, null
  br i1 %.not.i52.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.ah, ptr %i.bf, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 4 uses
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !23
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.bb, ptr %0, align 8, !tbaa !15
  br label %rb_right_rotate.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = icmp eq ptr %i.ah, %i.bj
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.bb, ptr %i.bi, align 8, !tbaa !26
  br label %rb_right_rotate.exit.i

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bb, ptr %i.bl, align 8, !tbaa !25
  br label %rb_right_rotate.exit.i

rb_right_rotate.exit.i:                           ; preds = %bb.w, %bb.v, %bb.t
  store ptr %i.ah, ptr %i.be, align 8, !tbaa !26
  br label %bb.ao

bb.x:                                             ; preds = %bb.f
  %.not50.i = icmp eq ptr %i.aj, null
  br i1 %.not50.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !24
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.bm, align 8, !tbaa !24
  store i32 1, ptr %i.ae, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 0, ptr %i.bp, align 8, !tbaa !24
  br label %.backedge.i

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !25 ; 8 uses
  %i.bs = icmp eq ptr %i.br, %.066.i
  br i1 %i.bs, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26 ; 3 uses
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !25
  %.not.i53.i = icmp eq ptr %i.bu, null
  br i1 %.not.i53.i, label %.thread85.i, label %bb.ac

.thread85.i:                                      ; preds = %bb.ab
  store ptr %i.ah, ptr %i.br, align 8, !tbaa !23
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ad, ptr %i.bu, align 8, !tbaa !23
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 3 uses
  store ptr %.pre.i, ptr %i.br, align 8, !tbaa !23
  %i.bv = icmp eq ptr %.pre.i, null
  br i1 %i.bv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.br, ptr %0, align 8, !tbaa !15
  br label %rb_right_rotate.exit54.i

bb.ae:                                            ; preds = %bb.ac, %.thread85.i
  %i.bw = phi ptr [ %i.ah, %.thread85.i ], [ %.pre.i, %bb.ac ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.bz = icmp eq ptr %i.ad, %i.by
  br i1 %i.bz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %i.br, ptr %i.bx, align 8, !tbaa !26
  br label %rb_right_rotate.exit54.i

bb.ag:                                            ; preds = %bb.ae
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.br, ptr %i.ca, align 8, !tbaa !25
  br label %rb_right_rotate.exit54.i

rb_right_rotate.exit54.i:                         ; preds = %bb.ag, %bb.af, %bb.ad
  store ptr %i.ad, ptr %i.bt, align 8, !tbaa !26
  store ptr %i.br, ptr %i.ad, align 8, !tbaa !23
  br label %bb.ah

bb.ah:                                            ; preds = %rb_right_rotate.exit54.i, %bb.aa
  %.144.i = phi ptr [ %.066.i, %rb_right_rotate.exit54.i ], [ %i.ad, %bb.aa ]
  %.4.i = phi ptr [ %i.ad, %rb_right_rotate.exit54.i ], [ %.066.i, %bb.aa ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.144.i, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 0, ptr %i.cc, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !26 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25 ; 3 uses
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !26
  %.not.i55.i = icmp eq ptr %i.cg, null
  br i1 %.not.i55.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ah, ptr %i.cg, align 8, !tbaa !23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ch = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 4 uses
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !23
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ce, ptr %0, align 8, !tbaa !15
  br label %rb_left_rotate.exit56.i

bb.al:                                            ; preds = %bb.aj
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25
  %i.cl = icmp eq ptr %i.ah, %i.ck
  br i1 %i.cl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !25
  br label %rb_left_rotate.exit56.i

bb.an:                                            ; preds = %bb.al
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.ce, ptr %i.cm, align 8, !tbaa !26
  br label %rb_left_rotate.exit56.i

rb_left_rotate.exit56.i:                          ; preds = %bb.an, %bb.am, %bb.ak
  store ptr %i.ah, ptr %i.cf, align 8, !tbaa !25
  br label %bb.ao

bb.ao:                                            ; preds = %rb_left_rotate.exit56.i, %rb_right_rotate.exit.i
  %storemerge.i = phi ptr [ %i.ce, %rb_left_rotate.exit56.i ], [ %i.bb, %rb_right_rotate.exit.i ]
  %.5.i = phi ptr [ %.4.i, %rb_left_rotate.exit56.i ], [ %.2.i, %rb_right_rotate.exit.i ]
  store ptr %storemerge.i, ptr %i.ah, align 8, !tbaa !23
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ao, %bb.z, %bb.i
  %.0.be.i = phi ptr [ %.5.i, %bb.ao ], [ %i.ah, %bb.i ], [ %i.ah, %bb.z ] ; 2 uses
  %i.cn = load ptr, ptr %.0.be.i, align 8, !tbaa !23 ; 2 uses
  %.not.i46 = icmp eq ptr %i.cn, null
  br i1 %.not.i46, label %rb_insert_color.exit, label %.lr.ph.i45

rb_insert_color.exit:                             ; preds = %.lr.ph.i45, %.backedge.i, %rb_find_leaf_parent.exit
  %i.co = load ptr, ptr %0, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i32 1, ptr %i.cp, align 8, !tbaa !24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !20
  br label %lv_rb_find.exit

lv_rb_find.exit:                                  ; preds = %.lr.ph.i, %bb.d, %rb_insert_color.exit
  %.0 = phi ptr [ %i.g, %bb.d ], [ %i.g, %rb_insert_color.exit ], [ %.01326.i, %.lr.ph.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @lv_rb_find(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader23

.preheader23:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01324 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %.not1925 = icmp eq ptr %.01324, null
  br i1 %.not1925, label %.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.lr.ph:                                           ; preds = %.preheader23, %bb.b
  %.01326 = phi ptr [ %.013, %bb.b ], [ %.01324, %.preheader23 ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %.01326, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call i32 %i.b(ptr noundef %1, ptr noundef %i.d) #5 ; 2 uses
  %.not20 = icmp eq i32 %i.e, 0
  br i1 %.not20, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp slt i32 %i.e, 0
  %.1.in.v = select i1 %i.f, i64 8, i64 16
  %.1.in = getelementptr inbounds nuw i8, ptr %.01326, i64 %.1.in.v
  %.013 = load ptr, ptr %.1.in, align 8, !tbaa !18 ; 2 uses
  %.not19 = icmp eq ptr %.013, null
  br i1 %.not19, label %.thread, label %.lr.ph, !llvm.loop !0

.thread:                                          ; preds = %bb.b, %.lr.ph, %.preheader23
  %.013.lcssa = phi ptr [ null, %.preheader23 ], [ %.01326, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.013.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @lv_rb_remove_node(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %.not7683 = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not, label %.thread82, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7683, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0.i = phi ptr [ %i.f, %.preheader ], [ %i.d, %bb.b ] ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %lv_rb_minimum_from.exit, label %.preheader, !llvm.loop !1

lv_rb_minimum_from.exit:                          ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.h = load ptr, ptr %1, align 8, !tbaa !23     ; 4 uses
  %.not79 = icmp eq ptr %i.h, null
  br i1 %.not79, label %bb.f, label %bb.c

bb.c:                                             ; preds = %lv_rb_minimum_from.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !25
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %lv_rb_minimum_from.exit
  store ptr %.0.i, ptr %0, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 4 uses
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !23  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !24
  %i.r = icmp eq ptr %i.o, %1
  br i1 %i.r, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not80 = icmp eq ptr %i.n, null
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.o, ptr %i.n, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.s, align 8, !tbaa !25
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !26
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !23
  %.pre = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.u = phi ptr [ %.pre, %bb.j ], [ %i.h, %bb.g ]
  %.067 = phi ptr [ %i.o, %bb.j ], [ %.0.i, %bb.g ]
  store ptr %i.u, ptr %.0.i, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24
  store i32 %i.w, ptr %i.p, align 8, !tbaa !24
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !tbaa !25
  store ptr %.0.i, ptr %i.x, align 8, !tbaa !23
  %i.y = icmp eq i32 %i.q, 1
  br i1 %i.y, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @rb_delete_color(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull %.067)
  br label %bb.t

.thread82:                                        ; preds = %bb.a
  br i1 %.not7683, label %.thread84, label %.thread

.thread84:                                        ; preds = %.thread82
  %i.z = load ptr, ptr %1, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !24
  br label %bb.m

.thread:                                          ; preds = %bb.b, %.thread82
  %i.ac = phi ptr [ %i.d, %.thread82 ], [ %i.b, %bb.b ] ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %.in, align 8, !tbaa !24
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %.thread84, %.thread
  %i.af = phi i32 [ %i.ae, %.thread ], [ %i.ab, %.thread84 ]
  %i.ag = phi ptr [ %i.ad, %.thread ], [ %i.z, %.thread84 ] ; 4 uses
  %i.ah = phi ptr [ %i.ac, %.thread ], [ null, %.thread84 ] ; 4 uses
  %.not78 = icmp eq ptr %i.ag, null
  br i1 %.not78, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !25
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !26
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  store ptr %i.ah, ptr %0, align 8, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %i.am = icmp eq i32 %i.af, 1
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @rb_delete_color(ptr noundef %0, ptr noundef %i.ah, ptr noundef %i.ag)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.k, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20
  tail call void @lv_free(ptr noundef nonnull %1) #5
  ret ptr %i.ao
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_rb_minimum_from(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
end_hunk_0
begin_hunk_1_@rb_delete_color:bb.a
bb.af:                                            ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !24
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.bw, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %.071, i64 24
  store i32 0, ptr %i.bz, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26 ; 5 uses
  store ptr %i.cb, ptr %i.f, align 8, !tbaa !25
  %.not.i90 = icmp eq ptr %i.cb, null
  br i1 %.not.i90, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %.071, ptr %i.cb, align 8, !tbaa !23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cc = load ptr, ptr %.071, align 8, !tbaa !23 ; 4 uses
  store ptr %i.cc, ptr %i.g, align 8, !tbaa !23
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.g, ptr %0, align 8, !tbaa !15
  br label %rb_right_rotate.exit91

bb.ak:                                            ; preds = %bb.ai
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.cg = icmp eq ptr %.071, %i.cf
  br i1 %i.cg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store ptr %i.g, ptr %i.ce, align 8, !tbaa !26
  br label %rb_right_rotate.exit91

bb.am:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.g, ptr %i.ch, align 8, !tbaa !25
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !25
  br label %rb_right_rotate.exit91

rb_right_rotate.exit91:                           ; preds = %bb.aj, %bb.al, %bb.am
  %i.ci = phi ptr [ %i.g, %bb.aj ], [ %i.e, %bb.al ], [ %i.e, %bb.am ]
  %i.cj = phi ptr [ %i.cb, %bb.aj ], [ %i.cb, %bb.al ], [ %.pre, %bb.am ]
  store ptr %.071, ptr %i.ca, align 8, !tbaa !26
  store ptr %i.g, ptr %.071, align 8, !tbaa !23
  br label %bb.an

bb.an:                                            ; preds = %rb_right_rotate.exit91, %bb.af
  %i.ck = phi ptr [ %i.ci, %rb_right_rotate.exit91 ], [ %i.e, %bb.af ] ; 4 uses
  %.0 = phi ptr [ %i.cj, %rb_right_rotate.exit91 ], [ %i.g, %bb.af ] ; 14 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !25 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null                 ; 2 uses
  br i1 %i.cn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !24
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.ap, label %.thread99.thread

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !26 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !24
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.cn, label %bb.as, label %.thread99

.thread99:                                        ; preds = %bb.ar
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.pre154 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.cx = icmp eq i32 %.pre154, 1
  br i1 %i.cx, label %.thread99._crit_edge, label %.thread99.thread

.thread99._crit_edge:                             ; preds = %.thread99
  %.phi.trans.insert155 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %.pre156 = load ptr, ptr %.phi.trans.insert155, align 8, !tbaa !26
  br label %bb.as

bb.as:                                            ; preds = %.thread99._crit_edge, %bb.ar
  %i.cy = phi ptr [ %.pre156, %.thread99._crit_edge ], [ %i.cs, %bb.ar ] ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i32 1, ptr %i.da, align 8, !tbaa !24
  %i.db = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 0, ptr %i.db, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !25 ; 3 uses
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !26
  %.not.i92 = icmp eq ptr %i.dd, null
  br i1 %.not.i92, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %.0, ptr %i.dd, align 8, !tbaa !23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.de = load ptr, ptr %.0, align 8, !tbaa !23   ; 4 uses
  store ptr %i.de, ptr %i.cy, align 8, !tbaa !23
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store ptr %i.cy, ptr %0, align 8, !tbaa !15
  br label %rb_left_rotate.exit93

bb.aw:                                            ; preds = %bb.au
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !25
  %i.di = icmp eq ptr %.0, %i.dh
  br i1 %i.di, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.cy, ptr %i.dg, align 8, !tbaa !25
  br label %rb_left_rotate.exit93

bb.ay:                                            ; preds = %bb.aw
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.cy, ptr %i.dj, align 8, !tbaa !26
  br label %rb_left_rotate.exit93

rb_left_rotate.exit93:                            ; preds = %bb.av, %bb.ax, %bb.ay
  %i.dk = phi ptr [ %i.cy, %bb.av ], [ %i.ck, %bb.ax ], [ %i.ck, %bb.ay ]
  store ptr %.0, ptr %i.dc, align 8, !tbaa !25
  store ptr %i.cy, ptr %.0, align 8, !tbaa !23
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.pre158 = load ptr, ptr %.phi.trans.insert157, align 8, !tbaa !25
  br label %.thread99.thread

.thread99.thread:                                 ; preds = %bb.ao, %rb_left_rotate.exit93, %.thread99
  %i.dm = phi ptr [ %i.dk, %rb_left_rotate.exit93 ], [ %i.ck, %.thread99 ], [ %i.ck, %bb.ao ] ; 2 uses
  %i.dn = phi ptr [ %.pre158, %rb_left_rotate.exit93 ], [ %i.cm, %.thread99 ], [ %i.cm, %bb.ao ]
  %i.do = phi ptr [ %i.dl, %rb_left_rotate.exit93 ], [ %.0, %.thread99 ], [ %.0, %bb.ao ] ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.071, i64 24 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !24
  store i32 1, ptr %i.dp, align 8, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 1, ptr %i.ds, align 8, !tbaa !24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !26 ; 3 uses
  store ptr %i.du, ptr %i.f, align 8, !tbaa !25
  %.not.i94 = icmp eq ptr %i.du, null
  br i1 %.not.i94, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.thread99.thread
  store ptr %.071, ptr %i.du, align 8, !tbaa !23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.thread99.thread
  %i.dv = load ptr, ptr %.071, align 8, !tbaa !23 ; 4 uses
  store ptr %i.dv, ptr %i.do, align 8, !tbaa !23
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.do, ptr %0, align 8, !tbaa !15
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.dz = icmp eq ptr %.071, %i.dy
  br i1 %i.dz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.do, ptr %i.dx, align 8, !tbaa !26
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.do, ptr %i.ea, align 8, !tbaa !25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb
  %i.eb = phi ptr [ %i.dm, %bb.be ], [ %i.dm, %bb.bd ], [ %i.do, %bb.bb ]
  store ptr %.071, ptr %i.dt, align 8, !tbaa !26
  br label %.critedge.sink.split

.thread:                                          ; preds = %bb.aq, %bb.ap, %bb.p, %bb.o
  %.0.sink = phi ptr [ %.069, %bb.p ], [ %.069, %bb.o ], [ %.0, %bb.ap ], [ %.0, %bb.aq ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.sink, i64 24
  store i32 0, ptr %i.ec, align 8, !tbaa !24
  %.3 = load ptr, ptr %.071, align 8, !tbaa !23
  br label %.preheader107, !llvm.loop !29

.critedge.sink.split:                             ; preds = %bb.ae, %bb.bf
  %.sink = phi ptr [ %i.do, %bb.bf ], [ %i.bj, %bb.ae ]
  %.4.ph = phi ptr [ %i.eb, %bb.bf ], [ %i.bv, %bb.ae ]
  store ptr %.sink, ptr %.071, align 8, !tbaa !23
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.sink.split
  %.4 = phi ptr [ %.4.ph, %.critedge.sink.split ], [ %.073, %bb.c ] ; 2 uses
  %.not86 = icmp eq ptr %.4, null
  br i1 %.not86, label %bb.bg, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge
  %.4106 = phi ptr [ %.4, %.critedge ], [ %.073, %bb.b ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.4106, i64 24
  store i32 1, ptr %i.ed, align 8, !tbaa !24
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge.thread, %.critedge
  ret void
}

declare void @lv_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @lv_rb_remove(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader23.i

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader23.i:                                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01324.i = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  %.not1925.i = icmp eq ptr %.01324.i, null
  br i1 %.not1925.i, label %lv_rb_find.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader23.i, %bb.b
  %.01326.i = phi ptr [ %.013.i, %bb.b ], [ %.01324.i, %.preheader23.i ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %.01326.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call i32 %i.b(ptr noundef %1, ptr noundef %i.d) #5, !inline_history !21 ; 2 uses
  %.not20.i = icmp eq i32 %i.e, 0
  br i1 %.not20.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = icmp slt i32 %i.e, 0
  %.1.in.v.i = select i1 %i.f, i64 8, i64 16
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.01326.i, i64 %.1.in.v.i
  %.013.i = load ptr, ptr %.1.in.i, align 8, !tbaa !18 ; 2 uses
  %.not19.i = icmp eq ptr %.013.i, null
  br i1 %.not19.i, label %lv_rb_find.exit.preheader, label %.lr.ph.i, !llvm.loop !0

lv_rb_find.exit.preheader:                        ; preds = %bb.b, %.preheader23.i
  br label %lv_rb_find.exit

lv_rb_find.exit:                                  ; preds = %lv_rb_find.exit.preheader, %lv_rb_find.exit
  br label %lv_rb_find.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = tail call ptr @lv_rb_remove_node(ptr noundef nonnull %0, ptr noundef nonnull %.01326.i)
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @lv_rb_drop_node(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lv_rb_remove_node(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not9 = icmp ne ptr %i.a, null                 ; 2 uses
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @lv_free(ptr noundef nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %.not9
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @lv_rb_drop(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader23.i.i

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader23.i.i:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.01324.i.i = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  %.not1925.i.i = icmp eq ptr %.01324.i.i, null
  br i1 %.not1925.i.i, label %lv_rb_find.exit.i.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i, %bb.b
  %.01326.i.i = phi ptr [ %.013.i.i, %bb.b ], [ %.01324.i.i, %.preheader23.i.i ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %.01326.i.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call i32 %i.b(ptr noundef %1, ptr noundef %i.d) #5, !inline_history !30 ; 2 uses
  %.not20.i.i = icmp eq i32 %i.e, 0
  br i1 %.not20.i.i, label %lv_rb_remove.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp slt i32 %i.e, 0
  %.1.in.v.i.i = select i1 %i.f, i64 8, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.01326.i.i, i64 %.1.in.v.i.i
  %.013.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !18 ; 2 uses
  %.not19.i.i = icmp eq ptr %.013.i.i, null
  br i1 %.not19.i.i, label %lv_rb_find.exit.i.preheader, label %.lr.ph.i.i, !llvm.loop !0

lv_rb_find.exit.i.preheader:                      ; preds = %bb.b, %.preheader23.i.i
  br label %lv_rb_find.exit.i

lv_rb_find.exit.i:                                ; preds = %lv_rb_find.exit.i.preheader, %lv_rb_find.exit.i
  br label %lv_rb_find.exit.i

lv_rb_remove.exit:                                ; preds = %.lr.ph.i.i
  %i.g = tail call ptr @lv_rb_remove_node(ptr noundef nonnull %0, ptr noundef nonnull %.01326.i.i) ; 2 uses
  %.not9 = icmp ne ptr %i.g, null                 ; 2 uses
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %lv_rb_remove.exit
  tail call void @lv_free(ptr noundef nonnull %i.g) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %lv_rb_remove.exit
  ret i1 %.not9
}

; Function Attrs: nounwind uwtable
define void @lv_rb_destroy(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not2226 = icmp eq ptr %i.a, null
  br i1 %.not2226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.027 = phi ptr [ %.1, %bb.i ], [ %i.a, %bb.b ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.027, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.027, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %.027, align 8, !tbaa !23  ; 4 uses
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = icmp eq ptr %i.h, %.027
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.027, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  tail call void @lv_free(ptr noundef %i.l) #5
  tail call void @lv_free(ptr noundef nonnull %.027) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %.lr.ph, %bb.h
  %.1 = phi ptr [ %i.f, %bb.h ], [ %i.c, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %.not22 = icmp eq ptr %.1, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.i, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_rb_minimum(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %lv_rb_minimum_from.exit, label %bb.c, !llvm.loop !1

lv_rb_minimum_from.exit:                          ; preds = %bb.c
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_rb_maximum(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %lv_rb_maximum_from.exit, label %bb.c, !llvm.loop !2

lv_rb_maximum_from.exit:                          ; preds = %bb.c
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_rb_maximum_from(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  ret ptr %.0
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

declare ptr @lv_malloc_zeroed(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS13_lv_rb_node_t", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_lv_rb_t", !12, i64 0, !11, i64 8, !13, i64 16}
!15 = !{!14, !12, i64 0}
!16 = !{!14, !11, i64 8}
!17 = !{!14, !13, i64 16}
!18 = !{!12, !12, i64 0}
!19 = !{!"_lv_rb_node_t", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !11, i64 32}
!20 = !{!19, !11, i64 32}
!21 = !{ptr @lv_rb_find}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!19, !12, i64 0}
!24 = !{!19, !8, i64 24}
!25 = !{!19, !12, i64 8}
!26 = !{!19, !12, i64 16}
!27 = distinct !{null}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = !{ptr @lv_rb_remove, ptr @lv_rb_find}
!31 = distinct !{!31, !22}
end_hunk_1
