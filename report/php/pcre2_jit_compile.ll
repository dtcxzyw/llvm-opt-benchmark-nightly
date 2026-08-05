inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@sljit_emit_ijump:bb.a

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %0, align 8, !tbaa !127
  br label %bb.s

bb.h:                                             ; preds = %bb.d, %bb.f
  %.0.i.ph = phi ptr [ %i.q, %bb.f ], [ %i.j, %bb.d ] ; 7 uses
  %i.r = shl nuw nsw i32 %1, 13
  %i.s = or disjoint i32 %i.r, 1
  store ptr null, ptr %.0.i.ph, align 8, !tbaa !144
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !146
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 24 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !147  ; 2 uses
  %.not.i36 = icmp eq ptr %i.x, null
  br i1 %.not.i36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.ph, ptr %i.x, align 8, !tbaa !144
  br label %set_jump.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.ph, ptr %i.y, align 8, !tbaa !148
  br label %set_jump.exit

set_jump.exit:                                    ; preds = %bb.i, %bb.j
  store ptr %.0.i.ph, ptr %i.w, align 8, !tbaa !147
  store i64 %3, ptr %i.v, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !135 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !149
  %i.ac = add i64 %i.aa, 13
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !131 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 4081
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %set_jump.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !131
  br label %bb.o

bb.l:                                             ; preds = %set_jump.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !115 ; 2 uses
  %.val.i37 = load ptr, ptr %i.am, align 8, !tbaa !86
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %.val18.i38 = load ptr, ptr %i.an, align 8, !tbaa !87
  %i.ao = tail call ptr %.val.i37(i64 noundef 4096, ptr noundef %.val18.i38) #20, !inline_history !435 ; 5 uses
  %.not.i39 = icmp eq ptr %i.ao, null
  br i1 %.not.i39, label %bb.n, label %bb.m, !prof !37

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !120
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !134
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i32 2, ptr %0, align 8, !tbaa !127
  br label %bb.s

bb.o:                                             ; preds = %bb.k, %bb.m
  %.0.i40.ph = phi ptr [ %i.ar, %bb.m ], [ %i.ak, %bb.k ]
  store i8 -2, ptr %.0.i40.ph, align 1, !tbaa !82
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.as, align 8, !tbaa !130
  %i.at = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %0, i64 noundef 1, i32 noundef 0, i64 noundef 0, i32 noundef %2, i64 noundef %3) ; 3 uses
  %.not32 = icmp eq ptr %i.at, null
  br i1 %.not32, label %bb.q, label %bb.r, !prof !37

bb.q:                                             ; preds = %bb.p
  %i.au = load i32, ptr %0, align 8, !tbaa !127
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 -1, ptr %i.at, align 1, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !82
  %.not33 = icmp eq i32 %1, 36
  %i.ax = select i1 %.not33, i8 32, i8 16
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.a, %bb.q, %bb.n, %bb.g
  %.0 = phi i32 [ %i.au, %bb.q ], [ 2, %bb.g ], [ 2, %bb.n ], [ %i.a, %bb.a ], [ 0, %bb.r ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @do_search_mark(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not8 = icmp eq ptr %0, null
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.069 = phi ptr [ %i.k, %bb.d ], [ %0, %bb.a ]  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %cond = icmp eq i64 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call i32 @_pcre2_strcmp_8(ptr noundef %1, ptr noundef %i.e) #20
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.069, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %i.j = load i64, ptr %.069, align 8, !tbaa !31  ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !665

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.0 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i64 %.0
}

declare i32 @_pcre2_strcmp_8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_recurse_data(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i32 noundef range(i32 0, 5) %3, i32 noundef range(i32 1, 3) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.delayed_mem_copy_status, align 8 ; 30 uses
  %i.a = alloca [2 x i64], align 16               ; 20 uses
  %i.b = alloca [3 x i64], align 16               ; 10 uses
  %i.c = alloca [2 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 25 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !229
  %i.h = sext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.sink794.sroa.gep76 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sink797.sroa.gep78 = getelementptr inbounds nuw i8, ptr %6, i64 36
  switch i32 %3, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.sink797.sroa.gep77 = getelementptr inbounds nuw i8, ptr %6, i64 36
  %.sink794.sroa.gep75 = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sink797.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sink794.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 36
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink797.sroa.phi = phi ptr [ %.sink797.sroa.gep, %bb.c ], [ %.sink797.sroa.gep77, %bb.b ], [ %.sink797.sroa.gep78, %bb.a ]
  %.sink795 = phi i32 [ 5, %bb.c ], [ 4, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %.sink794.sroa.phi = phi ptr [ %.sink794.sroa.gep, %bb.c ], [ %.sink794.sroa.gep75, %bb.b ], [ %.sink794.sroa.gep76, %bb.a ]
  %.0244521 = phi i32 [ 4, %bb.c ], [ 12, %bb.b ], [ 12, %bb.a ] ; 6 uses
  %i.i = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !21
  store i32 %.sink795, ptr %.sink797.sroa.phi, align 4, !tbaa !21
  store i32 %.sink795, ptr %.sink794.sroa.phi, align 4, !tbaa !21
  %i.l = shl nuw nsw i32 %4, 3                    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 3, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 3, ptr %i.n, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, i8 -1, i64 12, i1 false), !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 15 uses
  store i32 0, ptr %i.p, align 8, !tbaa !666
  %i.q = load ptr, ptr %0, align 8, !tbaa !126    ; 7 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !668
  %i.r = add nsw i32 %3, -4
  %or.cond = icmp ult i32 %i.r, -2                ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %sljit_emit_op1.exit.i369, label %sljit_emit_op1.exit.i

sljit_emit_op1.exit.i:                            ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !93
  %.pre38.i = load i32, ptr %i.q, align 8, !tbaa !127
  %.not.i30.i = icmp eq i32 %.pre38.i, 0
  br i1 %.not.i30.i, label %sljit_emit_op1.exit.thread.i, label %bb.f, !prof !669

sljit_emit_op1.exit.thread.i:                     ; preds = %sljit_emit_op1.exit.i
  %i.u = zext nneg i32 %i.l to i64
  %i.v = or disjoint i32 %.0244521, 128
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store i32 0, ptr %i.w, align 8, !tbaa !130
  %i.x = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.q, i32 noundef 1, i64 noundef 0, i32 noundef %i.v, i64 noundef %i.u) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %sljit_emit_op1.exit.thread.i, %sljit_emit_op1.exit.i
  store i32 14, ptr %i.o, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.t, ptr %i.y, align 4, !tbaa !21
  store i32 1, ptr %i.p, align 8, !tbaa !666
  %i.z = icmp eq i32 %3, 4
  br i1 %i.z, label %sljit_emit_op1.exit.i369, label %bb.i

sljit_emit_op1.exit.i369:                         ; preds = %bb.e, %bb.f
  %i.aa = phi i32 [ 1, %bb.e ], [ %.sink795, %bb.f ]
  %i.ab = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]      ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ac
  %.pre38.i364 = load i32, ptr %i.q, align 8, !tbaa !127
  %.not.i30.i370 = icmp eq i32 %.pre38.i364, 0
  br i1 %.not.i30.i370, label %bb.g, label %delayed_mem_copy_move.exit372, !prof !669

bb.g:                                             ; preds = %sljit_emit_op1.exit.i369
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !93
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store i32 0, ptr %i.ah, align 8, !tbaa !130
  %i.ai = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.q, i64 noundef 1, i32 noundef %i.aa, i64 noundef 0, i32 noundef 142, i64 noundef %i.ag) ; 2 uses
  %.not66.i = icmp eq ptr %i.ai, null
  br i1 %.not66.i, label %delayed_mem_copy_move.exit372, label %bb.h, !prof !37

bb.h:                                             ; preds = %bb.g
  store i8 -117, ptr %i.ai, align 1, !tbaa !82
  br label %delayed_mem_copy_move.exit372

delayed_mem_copy_move.exit372:                    ; preds = %bb.g, %bb.h, %sljit_emit_op1.exit.i369
  store i32 %.0244521, ptr %i.ad, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ac
  store i32 %i.l, ptr %i.ak, align 4, !tbaa !21
  %i.al = add nuw nsw i32 %i.ab, 1
  store i32 %i.al, ptr %i.p, align 8, !tbaa !666
  br label %bb.i

bb.i:                                             ; preds = %delayed_mem_copy_move.exit372, %bb.f, %bb.d
  %i.am = icmp ult ptr %1, %2
  br i1 %i.am, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.i
  %narrow = add nuw nsw i32 %i.l, 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.ao = and i32 %5, 1
  %.not292 = icmp eq i32 %i.ao, 0                 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 11 uses
  %i.bc = or disjoint i32 %.0244521, 128          ; 3 uses
  %i.bd = icmp eq i32 %3, 4                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.0260.ph635 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.2262, %.outer ]
  %.0263.ph634 = phi i32 [ %narrow, %.lr.ph.lr.ph ], [ %.6269, %.outer ] ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.cc
  %.0260622 = phi ptr [ %.0260.ph635, %.lr.ph ], [ %i.ul, %bb.cc ] ; 45 uses
  %i.be = load i8, ptr %.0260622, align 1, !tbaa !82 ; 2 uses
  switch i8 %i.be, label %bb.cc [
    i8 3, label %bb.k
    i8 117, label %bb.n
    i8 121, label %bb.v
    i8 127, label %bb.z
    i8 -128, label %bb.z
    i8 -127, label %bb.z
    i8 -126, label %bb.z
    i8 -125, label %bb.z
    i8 -124, label %bb.z
    i8 -123, label %bb.z
    i8 -122, label %bb.z
    i8 -120, label %bb.z
    i8 -116, label %bb.z
    i8 -115, label %bb.z
    i8 -112, label %bb.z
    i8 -119, label %bb.ab
    i8 -114, label %bb.ab
    i8 -118, label %bb.ah
    i8 -113, label %bb.ah
    i8 -117, label %bb.an
    i8 34, label %bb.aq
    i8 36, label %bb.aq
    i8 37, label %bb.aq
    i8 38, label %bb.aq
    i8 47, label %bb.aq
    i8 49, label %bb.aq
    i8 50, label %bb.aq
    i8 51, label %bb.aq
    i8 60, label %bb.aq
    i8 62, label %bb.aq
    i8 63, label %bb.aq
    i8 64, label %bb.aq
    i8 73, label %bb.aq
    i8 75, label %bb.aq
    i8 76, label %bb.aq
    i8 77, label %bb.aq
    i8 33, label %bb.av
    i8 35, label %bb.av
    i8 46, label %bb.av
    i8 48, label %bb.av
    i8 59, label %bb.av
    i8 61, label %bb.av
    i8 72, label %bb.av
    i8 74, label %bb.av
    i8 39, label %bb.ba
    i8 40, label %bb.ba
    i8 52, label %bb.ba
    i8 53, label %bb.ba
    i8 65, label %bb.ba
    i8 66, label %bb.ba
    i8 78, label %bb.ba
    i8 79, label %bb.ba
    i8 86, label %bb.bf
    i8 88, label %bb.bf
    i8 89, label %bb.bf
    i8 90, label %bb.bf
    i8 85, label %bb.bi
    i8 87, label %bb.bi
    i8 91, label %bb.bl
    i8 92, label %bb.bl
    i8 110, label %bb.bo
    i8 111, label %bb.bo
    i8 112, label %bb.bo
    i8 -102, label %bb.bv
    i8 -94, label %bb.bv
    i8 -100, label %bb.bv
    i8 -96, label %bb.bv
    i8 -97, label %bb.ca
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.not292, label %recurse_check_bit.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %i.au, align 4, !tbaa !84 ; 2 uses
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = lshr i8 %i.bg, 3
  %i.bi = and i8 %i.bh, 7
  %i.bj = shl nuw i8 1, %i.bi                     ; 2 uses
  %i.bk = ashr i32 %i.bf, 6
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %.val363, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !82  ; 2 uses
  %i.bo = and i8 %i.bj, %i.bn
  %.not.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i, label %bb.m, label %recurse_check_bit.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bp = or i8 %i.bj, %i.bn
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !82
  %i.bq = load i32, ptr %i.au, align 4, !tbaa !84
  %i.br = sext i32 %i.bq to i64
  store i64 %i.br, ptr %i.c, align 16, !tbaa !31
  br label %recurse_check_bit.exit.thread

recurse_check_bit.exit.thread:                    ; preds = %bb.l, %bb.m, %bb.k
  %.0246 = phi i32 [ 1, %bb.m ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0260622, i64 1
  br label %bb.cd

bb.n:                                             ; preds = %bb.j
  br i1 %.not292, label %recurse_check_bit.exit378.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load i32, ptr %i.az, align 4, !tbaa !90
  %.not327 = icmp eq i32 %i.bt, 0
  br i1 %.not327, label %recurse_check_bit.exit375.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %i.au, align 4, !tbaa !84 ; 2 uses
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = lshr i8 %i.bv, 3
  %i.bx = and i8 %i.bw, 7
  %i.by = shl nuw i8 1, %i.bx                     ; 2 uses
  %i.bz = ashr i32 %i.bu, 6
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %.val362, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !82  ; 2 uses
  %i.cd = and i8 %i.by, %i.cc
  %.not.i373 = icmp eq i8 %i.cd, 0
  br i1 %.not.i373, label %bb.q, label %recurse_check_bit.exit375.thread

bb.q:                                             ; preds = %bb.p
  %i.ce = or i8 %i.by, %i.cc
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !82
  %i.cf = load i32, ptr %i.au, align 4, !tbaa !84
  %i.cg = sext i32 %i.cf to i64
  store i64 %i.cg, ptr %i.c, align 16, !tbaa !31
  br label %recurse_check_bit.exit375.thread

recurse_check_bit.exit375.thread:                 ; preds = %bb.p, %bb.q, %bb.o
  %.1247 = phi i32 [ 1, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ] ; 4 uses
  %i.ch = load i32, ptr %i.ap, align 8, !tbaa !97 ; 3 uses
  %.not329 = icmp eq i32 %i.ch, 0
  br i1 %.not329, label %recurse_check_bit.exit378.thread, label %bb.r

bb.r:                                             ; preds = %recurse_check_bit.exit375.thread
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = lshr i8 %i.ci, 3
  %i.ck = and i8 %i.cj, 7
  %i.cl = shl nuw i8 1, %i.ck                     ; 2 uses
  %i.cm = ashr i32 %i.ch, 6
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %.val361, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !82  ; 2 uses
  %i.cq = and i8 %i.cp, %i.cl
  %.not.i376 = icmp eq i8 %i.cq, 0
  br i1 %.not.i376, label %bb.s, label %recurse_check_bit.exit378.thread

bb.s:                                             ; preds = %bb.r
  %i.cr = or i8 %i.cp, %i.cl
  store i8 %i.cr, ptr %i.co, align 1, !tbaa !82
  %i.cs = load i32, ptr %i.ap, align 8, !tbaa !97
  %i.ct = sext i32 %i.cs to i64
  %i.cu = zext nneg i32 %.1247 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cu
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !31
  %i.cw = add nuw nsw i32 %.1247, 1
  br label %recurse_check_bit.exit378.thread

recurse_check_bit.exit378.thread:                 ; preds = %bb.r, %recurse_check_bit.exit375.thread, %bb.s, %bb.n
  %.2248 = phi i32 [ %i.cw, %bb.s ], [ 0, %bb.n ], [ %.1247, %recurse_check_bit.exit375.thread ], [ %.1247, %bb.r ]
  %i.cx = load i32, ptr %i.aw, align 8, !tbaa !94 ; 3 uses
  %.not331 = icmp eq i32 %i.cx, 0
  br i1 %.not331, label %recurse_check_bit.exit381.thread, label %bb.t

bb.t:                                             ; preds = %recurse_check_bit.exit378.thread
  %.val360 = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = lshr i8 %i.cy, 3
  %i.da = and i8 %i.cz, 7
  %i.db = shl nuw i8 1, %i.da                     ; 2 uses
  %i.dc = ashr i32 %i.cx, 6
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %.val360, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !82  ; 2 uses
  %i.dg = and i8 %i.df, %i.db
  %.not.i379 = icmp eq i8 %i.dg, 0
  br i1 %.not.i379, label %bb.u, label %recurse_check_bit.exit381.thread

bb.u:                                             ; preds = %bb.t
  %i.dh = or i8 %i.df, %i.db
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !82
  %i.di = load i32, ptr %i.aw, align 8, !tbaa !94
end_hunk_0
begin_hunk_1_@copy_recurse_data:bb.a
  br i1 %.not65.i505, label %delayed_mem_copy_move.exit460, label %bb.cn, !prof !37

bb.cn:                                            ; preds = %bb.cm
  store i8 -119, ptr %i.wj, align 1, !tbaa !82
  br label %delayed_mem_copy_move.exit460

delayed_mem_copy_move.exit460:                    ; preds = %sljit_emit_op1.exit.thread.i459.thread, %bb.cn, %bb.ck, %bb.cl, %bb.cm, %bb.ci, %sljit_emit_op1.exit.i457
  store i32 %.0244521, ptr %i.vt, align 4, !tbaa !21
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.vq
  store i32 %.1264623, ptr %i.wk, align 4, !tbaa !21
  %i.wl = add nsw i32 %i.vn, 1
  %i.wm = srem i32 %i.wl, 3
  store i32 %i.wm, ptr %i.p, align 8, !tbaa !666
  br label %bb.co

bb.co:                                            ; preds = %bb.ch, %delayed_mem_copy_move.exit460
  %i.wn = add i32 %.1264623, 8                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit590, label %.lr.ph625, !llvm.loop !671

bb.cp:                                            ; preds = %bb.cd
  %i.wo = shl nuw nsw i32 %.16, 3
  %i.wp = add i32 %i.wo, %.0263.ph634
  br label %.loopexit590

.loopexit590:                                     ; preds = %bb.co, %.preheader589, %bb.cp
  %.2265 = phi i32 [ %i.wp, %bb.cp ], [ %.0263.ph634, %.preheader589 ], [ %i.wn, %bb.co ] ; 3 uses
  switch i32 %3, label %.preheader587 [
    i32 3, label %bb.db
    i32 1, label %bb.db
  ]

.preheader587:                                    ; preds = %.loopexit590
  %i.wq = icmp sgt i32 %.5, 0
  br i1 %i.wq, label %.lr.ph628.preheader, label %.loopexit588

.lr.ph628.preheader:                              ; preds = %.preheader587
  %wide.trip.count677 = zext nneg i32 %.5 to i64
  br label %.lr.ph628

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %bb.da
  %indvars.iv674 = phi i64 [ 0, %.lr.ph628.preheader ], [ %indvars.iv.next675, %bb.da ] ; 3 uses
  %.3266626 = phi i32 [ %.2265, %.lr.ph628.preheader ], [ %i.yr, %bb.da ] ; 3 uses
  br i1 %i.i, label %.lr.ph628..thread585_crit_edge, label %bb.cq

.lr.ph628..thread585_crit_edge:                   ; preds = %.lr.ph628
  %.phi.trans.insert701 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv674
  %.pre702 = load i64, ptr %.phi.trans.insert701, align 8, !tbaa !31
  %.pre703 = load ptr, ptr %6, align 8, !tbaa !668
  %.pre704 = load i32, ptr %i.p, align 8, !tbaa !666
  br label %.thread585

bb.cq:                                            ; preds = %.lr.ph628
  %i.wr = sext i32 %.3266626 to i64
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv674
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !31 ; 2 uses
  %i.wu = load ptr, ptr %6, align 8, !tbaa !668   ; 7 uses
  %i.wv = load i32, ptr %i.p, align 8, !tbaa !666 ; 2 uses
  %i.ww = sext i32 %i.wv to i64                   ; 4 uses
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ww
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !21 ; 4 uses
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ww ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !21 ; 2 uses
  %i.xb = icmp eq i32 %i.xa, -1
  %.pre38.i461 = load i32, ptr %i.wu, align 8, !tbaa !127 ; 2 uses
  br i1 %i.xb, label %sljit_emit_op1.exit.i466, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xc = or i32 %i.xa, 128                       ; 2 uses
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ww
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !21
  %i.xf = sext i32 %i.xe to i64
  %.not.i.i462 = icmp eq i32 %.pre38.i461, 0
  br i1 %.not.i.i462, label %bb.cs, label %bb.ct, !prof !128

bb.cs:                                            ; preds = %bb.cr
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 144
  store i32 0, ptr %i.xg, align 8, !tbaa !130
  %i.xh = icmp slt i32 %i.wy, 127
  %i.xi = icmp eq i32 %i.wy, %i.xc
  %or.cond.i.i463 = and i1 %i.xh, %i.xi
  br i1 %or.cond.i.i463, label %sljit_emit_op1.exit.thread.i468, label %.thread.i.i464

.thread.i.i464:                                   ; preds = %bb.cs
  %i.xj = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.wu, i32 noundef %i.xc, i64 noundef range(i64 -2147483648, 2147483664) %i.xf, i32 noundef %i.wy, i64 noundef 0) ; 0 uses
  %.pre.i465 = load i32, ptr %i.wu, align 8, !tbaa !127
  br label %sljit_emit_op1.exit.i466

sljit_emit_op1.exit.i466:                         ; preds = %.thread.i.i464, %bb.cq
  %i.xk = phi i32 [ %.pre.i465, %.thread.i.i464 ], [ %.pre38.i461, %bb.cq ]
  %.not.i30.i467 = icmp eq i32 %i.xk, 0
  br i1 %.not.i30.i467, label %sljit_emit_op1.exit.thread.i468, label %bb.ct, !prof !669

sljit_emit_op1.exit.thread.i468:                  ; preds = %sljit_emit_op1.exit.i466, %bb.cs
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wu, i64 144
  store i32 0, ptr %i.xl, align 8, !tbaa !130
  %i.xm = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.wu, i32 noundef %i.wy, i64 noundef 0, i32 noundef %i.bc, i64 noundef %i.wr) ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %sljit_emit_op1.exit.thread.i468, %sljit_emit_op1.exit.i466, %bb.cr
  store i32 14, ptr %i.wz, align 4, !tbaa !21
  %i.xn = trunc i64 %i.wt to i32
  %i.xo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ww
  store i32 %i.xn, ptr %i.xo, align 4, !tbaa !21
  %i.xp = add nsw i32 %i.wv, 1
  %i.xq = srem i32 %i.xp, 3                       ; 2 uses
  store i32 %i.xq, ptr %i.p, align 8, !tbaa !666
  br i1 %i.bd, label %.thread585, label %bb.da

.thread585:                                       ; preds = %.lr.ph628..thread585_crit_edge, %bb.ct
  %i.xr = phi i32 [ %.pre704, %.lr.ph628..thread585_crit_edge ], [ %i.xq, %bb.ct ] ; 2 uses
  %i.xs = phi ptr [ %.pre703, %.lr.ph628..thread585_crit_edge ], [ %i.wu, %bb.ct ] ; 8 uses
  %i.xt = phi i64 [ %.pre702, %.lr.ph628..thread585_crit_edge ], [ %i.wt, %bb.ct ] ; 2 uses
  %i.xu = sext i32 %i.xr to i64                   ; 4 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.xu
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !21 ; 6 uses
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.xu ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !21 ; 2 uses
  %i.xz = icmp eq i32 %i.xy, -1
  %.pre38.i470 = load i32, ptr %i.xs, align 8, !tbaa !127 ; 2 uses
  br i1 %i.xz, label %sljit_emit_op1.exit.i475, label %bb.cu

bb.cu:                                            ; preds = %.thread585
  %i.ya = or i32 %i.xy, 128                       ; 2 uses
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.xu
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !21
  %i.yd = sext i32 %i.yc to i64
  %.not.i.i471 = icmp eq i32 %.pre38.i470, 0
  br i1 %.not.i.i471, label %bb.cv, label %delayed_mem_copy_move.exit478, !prof !128

bb.cv:                                            ; preds = %bb.cu
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xs, i64 144
  store i32 0, ptr %i.ye, align 8, !tbaa !130
  %i.yf = icmp slt i32 %i.xw, 127
  %i.yg = icmp eq i32 %i.xw, %i.ya
  %or.cond.i.i472 = and i1 %i.yf, %i.yg
  br i1 %or.cond.i.i472, label %sljit_emit_op1.exit.thread.i477.thread, label %.thread.i.i473

.thread.i.i473:                                   ; preds = %bb.cv
  %i.yh = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.xs, i32 noundef %i.ya, i64 noundef range(i64 -2147483648, 2147483664) %i.yd, i32 noundef %i.xw, i64 noundef 0) ; 0 uses
  %.pre.i474 = load i32, ptr %i.xs, align 8, !tbaa !127
  br label %sljit_emit_op1.exit.i475

sljit_emit_op1.exit.i475:                         ; preds = %.thread.i.i473, %.thread585
  %i.yi = phi i32 [ %.pre.i474, %.thread.i.i473 ], [ %.pre38.i470, %.thread585 ]
  %.not.i30.i476 = icmp eq i32 %i.yi, 0
  br i1 %.not.i30.i476, label %sljit_emit_op1.exit.thread.i477, label %delayed_mem_copy_move.exit478, !prof !669

sljit_emit_op1.exit.thread.i477:                  ; preds = %sljit_emit_op1.exit.i475
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xs, i64 144
  store i32 0, ptr %i.yj, align 8, !tbaa !130
  %i.yk = icmp slt i32 %i.xw, 127
  br i1 %i.yk, label %sljit_emit_op1.exit.thread.i477.thread, label %bb.cx

sljit_emit_op1.exit.thread.i477.thread:           ; preds = %bb.cv, %sljit_emit_op1.exit.thread.i477
  %i.yl = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.xs, i64 noundef 1, i32 noundef %i.xw, i64 noundef 0, i32 noundef 142, i64 noundef %i.xt) ; 2 uses
  %.not66.i512 = icmp eq ptr %i.yl, null
  br i1 %.not66.i512, label %delayed_mem_copy_move.exit478, label %bb.cw, !prof !37

bb.cw:                                            ; preds = %sljit_emit_op1.exit.thread.i477.thread
  store i8 -117, ptr %i.yl, align 1, !tbaa !82
  br label %delayed_mem_copy_move.exit478

bb.cx:                                            ; preds = %sljit_emit_op1.exit.thread.i477
  %i.ym = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.xs, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef %i.xt) ; 2 uses
  %.not.i509 = icmp eq ptr %i.ym, null
  br i1 %.not.i509, label %delayed_mem_copy_move.exit478, label %bb.cy, !prof !37

bb.cy:                                            ; preds = %bb.cx
  store i8 -117, ptr %i.ym, align 1, !tbaa !82
  %i.yn = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.xs, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef %i.xw, i64 noundef 0) ; 2 uses
  %.not65.i510 = icmp eq ptr %i.yn, null
  br i1 %.not65.i510, label %delayed_mem_copy_move.exit478, label %bb.cz, !prof !37

bb.cz:                                            ; preds = %bb.cy
  store i8 -119, ptr %i.yn, align 1, !tbaa !82
  br label %delayed_mem_copy_move.exit478

delayed_mem_copy_move.exit478:                    ; preds = %sljit_emit_op1.exit.thread.i477.thread, %bb.cz, %bb.cw, %bb.cx, %bb.cy, %bb.cu, %sljit_emit_op1.exit.i475
  store i32 %.0244521, ptr %i.xx, align 4, !tbaa !21
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.xu
  store i32 %.3266626, ptr %i.yo, align 4, !tbaa !21
  %i.yp = add nsw i32 %i.xr, 1
  %i.yq = srem i32 %i.yp, 3
  store i32 %i.yq, ptr %i.p, align 8, !tbaa !666
  br label %bb.da

bb.da:                                            ; preds = %bb.ct, %delayed_mem_copy_move.exit478
  %i.yr = add i32 %.3266626, 8                    ; 2 uses
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %.loopexit588, label %.lr.ph628, !llvm.loop !672

bb.db:                                            ; preds = %.loopexit590, %.loopexit590
  %i.ys = shl nuw nsw i32 %.5, 3
  %i.yt = add i32 %.2265, %i.ys
  br label %.loopexit588

.loopexit588:                                     ; preds = %bb.da, %.preheader587, %bb.db
  %.4267 = phi i32 [ %i.yt, %bb.db ], [ %.2265, %.preheader587 ], [ %i.yr, %bb.da ] ; 3 uses
  switch i32 %3, label %.preheader [
    i32 4, label %bb.dg
    i32 1, label %bb.dg
  ]

.preheader:                                       ; preds = %.loopexit588
  %i.yu = icmp sgt i32 %.4, 0
  br i1 %i.yu, label %.lr.ph632.a, label %.outer

.lr.ph632.a:                                      ; preds = %.preheader
  %wide.trip.count687 = zext nneg i32 %.4 to i64
  br label %.lr.ph632.split.preheader

.lr.ph632.split.preheader:                        ; preds = %.lr.ph632.a, %delayed_mem_copy_move.exit487
  %indvars.iv677 = phi i64 [ 0, %.lr.ph632.a ], [ %indvars.iv.next680, %delayed_mem_copy_move.exit487 ] ; 3 uses
  %.5268630 = phi i32 [ %.4267, %.lr.ph632.a ], [ %i.aad, %delayed_mem_copy_move.exit487 ] ; 3 uses
  br i1 %i.i, label %.lr.ph632.split, label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph632.split.preheader
  %7 = sext i32 %.5268630 to i64
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv677
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !31
  %i.yx = load ptr, ptr %6, align 8, !tbaa !668   ; 6 uses
  %8 = load i32, ptr %i.p, align 8, !tbaa !666    ; 2 uses
  %i.yy = sext i32 %8 to i64                      ; 4 uses
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.yy
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !21 ; 4 uses
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.yy ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !21 ; 2 uses
  %i.zd = icmp eq i32 %i.zc, -1
  %.pre38.i488.us = load i32, ptr %i.yx, align 8, !tbaa !127 ; 2 uses
  br i1 %i.zd, label %sljit_emit_op1.exit.i493.us, label %bb.dc

bb.dc:                                            ; preds = %.critedge.us
  %i.ze = or i32 %i.zc, 128                       ; 2 uses
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.yy
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !21
  %i.zh = sext i32 %i.zg to i64
  %.not.i.i489.us = icmp eq i32 %.pre38.i488.us, 0
  br i1 %.not.i.i489.us, label %bb.dd, label %delayed_mem_copy_move.exit496.us, !prof !128

bb.dd:                                            ; preds = %bb.dc
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yx, i64 144
  store i32 0, ptr %i.zi, align 8, !tbaa !130
  %i.zj = icmp slt i32 %i.za, 127
  %i.zk = icmp eq i32 %i.za, %i.ze
  %or.cond.i.i490.us = and i1 %i.zj, %i.zk
  br i1 %or.cond.i.i490.us, label %sljit_emit_op1.exit.thread.i495.us, label %.thread.i.i491.us

.thread.i.i491.us:                                ; preds = %bb.dd
  %i.zl = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.yx, i32 noundef %i.ze, i64 noundef range(i64 -2147483648, 2147483664) %i.zh, i32 noundef %i.za, i64 noundef 0) ; 0 uses
  %.pre.i492.us = load i32, ptr %i.yx, align 8, !tbaa !127
  br label %sljit_emit_op1.exit.i493.us

sljit_emit_op1.exit.i493.us:                      ; preds = %.thread.i.i491.us, %.critedge.us
  %i.zm = phi i32 [ %.pre.i492.us, %.thread.i.i491.us ], [ %.pre38.i488.us, %.critedge.us ]
  %.not.i30.i494.us = icmp eq i32 %i.zm, 0
  br i1 %.not.i30.i494.us, label %sljit_emit_op1.exit.thread.i495.us, label %delayed_mem_copy_move.exit496.us, !prof !669

sljit_emit_op1.exit.thread.i495.us:               ; preds = %sljit_emit_op1.exit.i493.us, %bb.dd
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yx, i64 144
  store i32 0, ptr %i.zn, align 8, !tbaa !130
  %9 = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.yx, i32 noundef %i.za, i64 noundef 0, i32 noundef %i.bc, i64 noundef %7) ; 0 uses
  br label %delayed_mem_copy_move.exit496.us

delayed_mem_copy_move.exit496.us:                 ; preds = %bb.dc, %sljit_emit_op1.exit.i493.us, %sljit_emit_op1.exit.thread.i495.us
  store i32 14, ptr %i.zb, align 4, !tbaa !21
  %10 = trunc i64 %i.yw to i32
  br label %delayed_mem_copy_move.exit487

.lr.ph632.split:                                  ; preds = %.lr.ph632.split.preheader
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv677
  %12 = load i64, ptr %11, align 8, !tbaa !31     ; 2 uses
  %13 = load ptr, ptr %6, align 8, !tbaa !668     ; 8 uses
  %14 = load i32, ptr %i.p, align 8, !tbaa !666   ; 2 uses
  %i.zo = sext i32 %14 to i64                     ; 4 uses
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !21 ; 6 uses
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.zo ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !21 ; 2 uses
  %i.zt = icmp eq i32 %i.zs, -1
  %.pre38.i479 = load i32, ptr %13, align 8, !tbaa !127 ; 2 uses
  br i1 %i.zt, label %sljit_emit_op1.exit.i484, label %bb.de

bb.de:                                            ; preds = %.lr.ph632.split
  %i.zu = or i32 %i.zs, 128                       ; 2 uses
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.zo
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !21
  %i.zx = sext i32 %i.zw to i64
  %.not.i.i480 = icmp eq i32 %.pre38.i479, 0
  br i1 %.not.i.i480, label %bb.df, label %delayed_mem_copy_move.exit496, !prof !128

bb.df:                                            ; preds = %bb.de
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 144
  store i32 0, ptr %15, align 8, !tbaa !130
  %i.zy = icmp slt i32 %i.zq, 127
  %i.zz = icmp eq i32 %i.zq, %i.zu
  %or.cond.i.i481 = and i1 %i.zy, %i.zz
  br i1 %or.cond.i.i481, label %sljit_emit_op1.exit.thread.i495.thread, label %.thread.i.i482

.thread.i.i482:                                   ; preds = %bb.df
  %i.aaa = tail call fastcc i32 @emit_mov(ptr noundef nonnull %13, i32 noundef %i.zu, i64 noundef range(i64 -2147483648, 2147483664) %i.zx, i32 noundef %i.zq, i64 noundef 0) ; 0 uses
  %.pre.i483 = load i32, ptr %13, align 8, !tbaa !127
  br label %sljit_emit_op1.exit.i484

sljit_emit_op1.exit.i484:                         ; preds = %.thread.i.i482, %.lr.ph632.split
  %i.aab = phi i32 [ %.pre.i483, %.thread.i.i482 ], [ %.pre38.i479, %.lr.ph632.split ]
  %.not.i30.i485 = icmp eq i32 %i.aab, 0
  br i1 %.not.i30.i485, label %sljit_emit_op1.exit.thread.i495, label %delayed_mem_copy_move.exit496, !prof !669

sljit_emit_op1.exit.thread.i495:                  ; preds = %sljit_emit_op1.exit.i484
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 144
  store i32 0, ptr %16, align 8, !tbaa !130
  %17 = icmp slt i32 %i.zq, 127
  br i1 %17, label %sljit_emit_op1.exit.thread.i495.thread, label %20

sljit_emit_op1.exit.thread.i495.thread:           ; preds = %bb.df, %sljit_emit_op1.exit.thread.i495
  %18 = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %13, i64 noundef 1, i32 noundef %i.zq, i64 noundef 0, i32 noundef 142, i64 noundef %12) ; 2 uses
  %.not66.i517 = icmp eq ptr %18, null
  br i1 %.not66.i517, label %delayed_mem_copy_move.exit496, label %19, !prof !37

19:                                               ; preds = %sljit_emit_op1.exit.thread.i495.thread
  store i8 -117, ptr %18, align 1, !tbaa !82
  br label %delayed_mem_copy_move.exit496

20:                                               ; preds = %sljit_emit_op1.exit.thread.i495
  %21 = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %13, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef %12) ; 2 uses
  %.not.i514 = icmp eq ptr %21, null
  br i1 %.not.i514, label %delayed_mem_copy_move.exit496, label %sljit_emit_op1.exit.thread.i486, !prof !37

sljit_emit_op1.exit.thread.i486:                  ; preds = %20
  store i8 -117, ptr %21, align 1, !tbaa !82
  %22 = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %13, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef %i.zq, i64 noundef 0) ; 2 uses
  %.not65.i515 = icmp eq ptr %22, null
  br i1 %.not65.i515, label %delayed_mem_copy_move.exit496, label %23, !prof !37

23:                                               ; preds = %sljit_emit_op1.exit.thread.i486
  store i8 -119, ptr %22, align 1, !tbaa !82
  br label %delayed_mem_copy_move.exit496

delayed_mem_copy_move.exit496:                    ; preds = %sljit_emit_op1.exit.thread.i495.thread, %23, %19, %20, %sljit_emit_op1.exit.thread.i486, %bb.de, %sljit_emit_op1.exit.i484
  store i32 %.0244521, ptr %i.zr, align 4, !tbaa !21
  br label %delayed_mem_copy_move.exit487

delayed_mem_copy_move.exit487:                    ; preds = %delayed_mem_copy_move.exit496.us, %delayed_mem_copy_move.exit496
  %.sink790 = phi i64 [ %i.yy, %delayed_mem_copy_move.exit496.us ], [ %i.zo, %delayed_mem_copy_move.exit496 ]
  %.sink788 = phi i32 [ %10, %delayed_mem_copy_move.exit496.us ], [ %.5268630, %delayed_mem_copy_move.exit496 ]
  %storemerge.in.in = phi i32 [ %8, %delayed_mem_copy_move.exit496.us ], [ %14, %delayed_mem_copy_move.exit496 ]
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sink790
  store i32 %.sink788, ptr %i.aac, align 4, !tbaa !21
  %storemerge.in = add nsw i32 %storemerge.in.in, 1
  %storemerge = srem i32 %storemerge.in, 3
  store i32 %storemerge, ptr %i.p, align 8, !tbaa !666
  %i.aad = add i32 %.5268630, 8                   ; 2 uses
  %indvars.iv.next680 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond683.not = icmp eq i64 %indvars.iv.next680, %wide.trip.count687
  br i1 %exitcond683.not, label %.outer, label %.lr.ph632.split.preheader, !llvm.loop !673

bb.dg:                                            ; preds = %.loopexit588, %.loopexit588
  %i.aae = shl nuw nsw i32 %.4, 3
  %i.aaf = add i32 %.4267, %i.aae
  br label %.outer

.outer:                                           ; preds = %delayed_mem_copy_move.exit487, %.preheader, %bb.dg
  %.6269 = phi i32 [ %i.aaf, %bb.dg ], [ %.4267, %.preheader ], [ %i.aad, %delayed_mem_copy_move.exit487 ]
  %i.aag = icmp ult ptr %.2262, %2
  br i1 %i.aag, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !670

.outer._crit_edge:                                ; preds = %.outer, %bb.cc, %bb.i
  %i.aah = load ptr, ptr %6, align 8, !tbaa !668  ; 7 uses
  %i.aai = load i32, ptr %i.p, align 8, !tbaa !666 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 144 ; 3 uses
  %i.aal = sext i32 %i.aai to i64                 ; 3 uses
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aal
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !21 ; 2 uses
  %.not.i497 = icmp eq i32 %i.aan, -1
  br i1 %.not.i497, label %sljit_emit_op1.exit.i499, label %bb.dh

bb.dh:                                            ; preds = %.outer._crit_edge
  %i.aao = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aap = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aal
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !21 ; 3 uses
  %i.aar = or i32 %i.aan, 128                     ; 2 uses
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.aal
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !21
  %i.aau = sext i32 %i.aat to i64
  %i.aav = load i32, ptr %i.aah, align 8, !tbaa !127
  %.not.i.i498 = icmp eq i32 %i.aav, 0
  br i1 %.not.i.i498, label %bb.di, label %sljit_emit_op1.exit.i499, !prof !128

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.aak, align 8, !tbaa !130
  %i.aaw = icmp slt i32 %i.aaq, 127
  %i.aax = icmp eq i32 %i.aaq, %i.aar
  %or.cond.i.i500 = and i1 %i.aaw, %i.aax
  br i1 %or.cond.i.i500, label %sljit_emit_op1.exit.i499, label %.thread.i.i501

.thread.i.i501:                                   ; preds = %bb.di
  %i.aay = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.aah, i32 noundef %i.aar, i64 noundef range(i64 -2147483648, 2147483664) %i.aau, i32 noundef %i.aaq, i64 noundef 0) ; 0 uses
  br label %sljit_emit_op1.exit.i499

sljit_emit_op1.exit.i499:                         ; preds = %.thread.i.i501, %bb.di, %bb.dh, %.outer._crit_edge
  %i.aaz = add nsw i32 %i.aai, 1
  %i.aba = srem i32 %i.aaz, 3                     ; 2 uses
  %i.abb = sext i32 %i.aba to i64                 ; 3 uses
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !21 ; 2 uses
  %.not.1.i = icmp eq i32 %i.abd, -1
  br i1 %.not.1.i, label %sljit_emit_op1.exit.1.i, label %bb.dj

bb.dj:                                            ; preds = %sljit_emit_op1.exit.i499
  %i.abe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %i.abb
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !21 ; 3 uses
  %i.abh = or i32 %i.abd, 128                     ; 2 uses
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.abb
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !21
  %i.abk = sext i32 %i.abj to i64
  %i.abl = load i32, ptr %i.aah, align 8, !tbaa !127
  %.not.i.1.i = icmp eq i32 %i.abl, 0
  br i1 %.not.i.1.i, label %bb.dk, label %sljit_emit_op1.exit.1.i, !prof !128

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.aak, align 8, !tbaa !130
  %i.abm = icmp slt i32 %i.abg, 127
  %i.abn = icmp eq i32 %i.abg, %i.abh
  %or.cond.i.1.i = and i1 %i.abm, %i.abn
  br i1 %or.cond.i.1.i, label %sljit_emit_op1.exit.1.i, label %.thread.i.1.i

.thread.i.1.i:                                    ; preds = %bb.dk
  %i.abo = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.aah, i32 noundef %i.abh, i64 noundef range(i64 -2147483648, 2147483664) %i.abk, i32 noundef %i.abg, i64 noundef 0) ; 0 uses
  br label %sljit_emit_op1.exit.1.i

sljit_emit_op1.exit.1.i:                          ; preds = %.thread.i.1.i, %bb.dk, %bb.dj, %sljit_emit_op1.exit.i499
  %i.abp = trunc nsw i32 %i.aba to i8
  %.lhs.trunc.i = add nsw i8 %i.abp, 1
  %i.abq = srem i8 %.lhs.trunc.i, 3
  %i.abr = sext i8 %i.abq to i64                  ; 3 uses
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !21 ; 2 uses
  %.not.2.i = icmp eq i32 %i.abt, -1
  br i1 %.not.2.i, label %delayed_mem_copy_finish.exit, label %bb.dl

bb.dl:                                            ; preds = %sljit_emit_op1.exit.1.i
  %i.abu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %i.abr
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !21 ; 3 uses
  %i.abx = or i32 %i.abt, 128                     ; 2 uses
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.abr
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !21
  %i.aca = sext i32 %i.abz to i64
  %i.acb = load i32, ptr %i.aah, align 8, !tbaa !127
  %.not.i.2.i = icmp eq i32 %i.acb, 0
  br i1 %.not.i.2.i, label %bb.dm, label %delayed_mem_copy_finish.exit, !prof !128

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.aak, align 8, !tbaa !130
  %i.acc = icmp slt i32 %i.abw, 127
  %i.acd = icmp eq i32 %i.abw, %i.abx
  %or.cond.i.2.i = and i1 %i.acc, %i.acd
  br i1 %or.cond.i.2.i, label %delayed_mem_copy_finish.exit, label %.thread.i.2.i

.thread.i.2.i:                                    ; preds = %bb.dm
  %i.ace = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.aah, i32 noundef %i.abx, i64 noundef range(i64 -2147483648, 2147483664) %i.aca, i32 noundef %i.abw, i64 noundef 0) ; 0 uses
  br label %delayed_mem_copy_finish.exit

delayed_mem_copy_finish.exit:                     ; preds = %sljit_emit_op1.exit.1.i, %bb.dl, %bb.dm, %.thread.i.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !15, i64 32}
!13 = !{!"pcre2_real_code_8", !14, i64 0, !16, i64 24, !15, i64 32, !10, i64 40, !17, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !18, i64 120, !18, i64 122, !18, i64 124, !18, i64 126, !18, i64 128, !18, i64 130, !18, i64 132, !18, i64 134}
!14 = !{!"pcre2_memctl", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"long", !10, i64 0}
end_hunk_1
