Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_string_compare:bb.a

bb.d:                                             ; preds = %._crit_edge
  %i.s = zext nneg i32 %.039.lcssa to i64         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.t, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.u = load i8, ptr %.0.i, align 1, !tbaa !51   ; 3 uses
  %i.v = icmp slt i8 %i.u, -64
  %i.w = getelementptr inbounds i8, ptr %.0.i, i64 -1
  br i1 %i.v, label %bb.e, label %bb.f, !llvm.loop !381

bb.f:                                             ; preds = %bb.e
  %i.x = icmp sgt i8 %i.u, -1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !69

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i8 %i.u to i32
  br label %string_get_cp.exit

bb.h:                                             ; preds = %bb.f
  %i.z = call i32 @__utf8_get(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.b) #31
  br label %string_get_cp.exit

string_get_cp.exit:                               ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.z, %bb.h ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %string_get_cp.exit
  %.0.i49 = phi ptr [ %i.ab, %string_get_cp.exit ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ac = load i8, ptr %.0.i49, align 1, !tbaa !51 ; 3 uses
  %i.ad = icmp slt i8 %i.ac, -64
  %i.ae = getelementptr inbounds i8, ptr %.0.i49, i64 -1
  br i1 %i.ad, label %bb.i, label %bb.j, !llvm.loop !381

bb.j:                                             ; preds = %bb.i
  %i.af = icmp sgt i8 %i.ac, -1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !69

bb.k:                                             ; preds = %bb.j
  %i.ag = zext nneg i8 %i.ac to i32
  br label %string_get_cp.exit51

bb.l:                                             ; preds = %bb.j
  %i.ah = call i32 @__utf8_get(ptr noundef nonnull %.0.i49, ptr noundef nonnull %i.a) #31
  br label %string_get_cp.exit51

string_get_cp.exit51:                             ; preds = %bb.k, %bb.l
  %.0.i.i50 = phi i32 [ %i.ag, %bb.k ], [ %i.ah, %bb.l ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ai = icmp slt i32 %.0.i.i, 65536             ; 2 uses
  %i.aj = icmp slt i32 %.0.i.i50, 65536
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %string_get_cp.exit51
  %i.ak = icmp sgt i32 %.0.i.i, 65535
  %i.al = icmp sgt i32 %.0.i.i50, 65535
  %or.cond3 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %string_get_cp.exit51
  %i.am = icmp slt i32 %.0.i.i, %.0.i.i50
  %. = select i1 %i.am, i32 -1, i32 1
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %.0.i.i50, -65536
  %i.ao = ashr i32 %i.an, 10
  %i.ap = add nsw i32 %i.ao, 55296
  %.not45 = icmp sgt i32 %.0.i.i, %i.ap
  %.46 = select i1 %.not45, i32 1, i32 -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.aq = add nsw i32 %.0.i.i, -65536
  %i.ar = lshr i32 %i.aq, 10
  %i.as = add nuw nsw i32 %i.ar, 55296
  %i.at = icmp slt i32 %i.as, %.0.i.i50
  %.47 = select i1 %i.at, i32 -1, i32 1
  br label %bb.s

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.au = icmp eq i64 %i.f, %i.i
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  %i.av = icmp samesign ult i64 %i.f, %i.i
  %.48 = select i1 %i.av, i32 -1, i32 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.thread, %bb.n, %bb.p, %bb.q
  %.1 = phi i32 [ 0, %._crit_edge.thread ], [ %.46, %bb.p ], [ %.48, %bb.r ], [ %., %bb.n ], [ %.47, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %.1
}

; Function Attrs: optsize
declare double @js_atod(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @get_var_ref(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %.026 = load i64, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.a = icmp eq i64 %.026, 7
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %i.b = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.0 = load i64, ptr %i.b, align 8, !tbaa !51    ; 2 uses
  %i.c = icmp eq i64 %.0, 7
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.027 = phi i64 [ %.0, %bb.b ], [ %.026, %bb.a ] ; 2 uses
  %i.d = add i64 %.027, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 16
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.2, i32 noundef 3727, ptr noundef nonnull @__PRETTY_FUNCTION__.get_var_ref) #27
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = icmp eq ptr %i.i, %2
  br i1 %i.j, label %js_malloc.exit.thread, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = tail call fastcc i32 @check_free_mem(ptr noundef %0, ptr noundef %i.l, i32 noundef 24) #28, !inline_history !143
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %js_malloc.exit, label %js_malloc.exit.thread

js_malloc.exit:                                   ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.p, ptr %i.n, align 8, !tbaa !44
  store i64 14, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %2, ptr %i.r, align 8, !tbaa !51
  %i.s = load i64, ptr %1, align 8, !tbaa !46
  store i64 %i.s, ptr %i.q, align 8, !tbaa !51
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %1, align 8, !tbaa !46
  br label %js_malloc.exit.thread

js_malloc.exit.thread:                            ; preds = %bb.d, %._crit_edge, %js_malloc.exit
  %.019 = phi i64 [ %i.u, %js_malloc.exit ], [ 15, %._crit_edge ], [ %.027, %bb.d ]
  ret i64 %.019
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @js_string_convert_pos(ptr nofree noundef captures(address) %0, i64 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSStringCharBuf, align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = call fastcc ptr @get_string_ptr(ptr noundef %4, i64 noundef %1) #28 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 7                         ; 2 uses
  %i.d = and i64 %i.b, 32
  %.not = icmp eq i64 %i.d, 0
  %i.e = icmp eq i32 %3, 0                        ; 6 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i32 %2, 1
  %..i134 = call noundef i32 @llvm.smin.i32(i32 %i.f, i32 %i.g)
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %..i135 = call noundef i32 @llvm.smin.i32(i32 %i.f, i32 %2)
  %i.h = shl nsw i32 %..i135, 1
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.i = and i32 %2, 1
  %i.j = xor i32 %3, 1
  %.0119 = lshr i32 %2, %i.j                      ; 9 uses
  %i.k = icmp ult i64 %i.b, 2048
  br i1 %i.k, label %bb.l, label %.preheader145

.preheader145:                                    ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = zext nneg i32 %3 to i64                  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader145, %bb.h
  %i.n = phi i1 [ true, %.preheader145 ], [ false, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.preheader145 ], [ 1, %bb.h ]
  %.0101148 = phi ptr [ null, %.preheader145 ], [ %.1102, %bb.h ] ; 2 uses
  %.0109147 = phi i32 [ %.0119, %.preheader145 ], [ %.1110, %bb.h ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !85
  %i.q = icmp eq i64 %i.p, %1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.m
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45   ; 3 uses
  %.not126 = icmp ult i32 %i.t, %.0119
  %5 = sub nuw i32 %i.t, %.0119
  %i.u = sub nuw i32 %.0119, %i.t
  %6 = select i1 %.not126, i32 %i.u, i32 %5       ; 2 uses
  %i.v = icmp ult i32 %6, %.0109147
  %spec.select129 = call i32 @llvm.umin.i32(i32 %6, i32 %.0109147)
  %spec.select130 = select i1 %i.v, ptr %i.o, ptr %.0101148
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1110 = phi i32 [ %.0109147, %bb.f ], [ %spec.select129, %bb.g ]
  %.1102 = phi ptr [ %.0101148, %bb.f ], [ %spec.select130, %bb.g ] ; 5 uses
  br i1 %i.n, label %bb.f, label %bb.i, !llvm.loop !382

bb.i:                                             ; preds = %bb.h
  %.not123 = icmp eq ptr %.1102, null
  br i1 %.not123, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1102, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !45
  %.phi.trans.insert165 = getelementptr inbounds nuw i8, ptr %.1102, i64 12
  %.pre166 = load i32, ptr %.phi.trans.insert165, align 4, !tbaa !45
  %i.w = zext i32 %.pre to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !51    ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.z ; 3 uses
  %i.ab = add i8 %i.y, 1                          ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 2
  %spec.select = select i1 %i.ac, i8 0, i8 %i.ab
  store i8 %spec.select, ptr %i.x, align 2, !tbaa !51
  store i64 %1, ptr %i.aa, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <2 x i32> zeroinitializer, ptr %i.ad, align 8, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.ae = phi i32 [ %.pre166, %._crit_edge ], [ 0, %bb.j ] ; 2 uses
  %i.af = phi i64 [ %i.w, %._crit_edge ], [ 0, %bb.j ] ; 2 uses
  %.2103 = phi ptr [ %.1102, %._crit_edge ], [ %i.aa, %bb.j ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.2103, i64 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.m
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %.not124 = icmp ugt i32 %i.ai, %.0119
  br i1 %.not124, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k
  %.0113 = phi i64 [ %i.af, %bb.k ], [ 0, %bb.e ] ; 3 uses
  %.0104 = phi i32 [ %i.ae, %bb.k ], [ 0, %bb.e ] ; 3 uses
  %.3 = phi ptr [ %.2103, %bb.k ], [ null, %bb.e ] ; 2 uses
  %i.aj = zext i32 %.0119 to i64
  %.0112 = select i1 %i.e, i64 %i.aj, i64 %i.c    ; 2 uses
  %.097 = select i1 %i.e, i32 2147483647, i32 %.0119 ; 3 uses
  %i.ak = icmp samesign uge i64 %.0113, %.0112
  %i.al = icmp eq i32 %.0104, %.097
  %or.cond150 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond150, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %utf8_char_len.exit.thread
  %.1105153 = phi i32 [ %.0104, %.lr.ph ], [ %i.ba, %utf8_char_len.exit.thread ] ; 3 uses
  %.1114151 = phi i64 [ %.0113, %.lr.ph ], [ %i.bb, %utf8_char_len.exit.thread ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.1114151 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !51  ; 5 uses
  %i.ap = icmp ult i8 %i.ao, -64
  br i1 %i.ap, label %utf8_char_len.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp samesign ult i8 %i.ao, -32
  br i1 %i.aq, label %utf8_char_len.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp samesign ult i8 %i.ao, -16
  br i1 %i.ar, label %utf8_char_len.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = icmp samesign ult i8 %i.ao, -8
  br i1 %i.as, label %bb.q, label %utf8_char_len.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr i8, ptr %i.an, i64 1
  %.val133 = load i8, ptr %i.at, align 1, !tbaa !51
  %i.au = and i8 %i.ao, 15
  %i.av = and i8 %.val133, 48
  %i.aw = or disjoint i8 %i.av, %i.au
  %.not142 = icmp eq i8 %i.aw, 0
  br i1 %.not142, label %utf8_char_len.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = add i32 %.1105153, 1
  %i.ay = icmp eq i32 %i.ax, %.097
  br i1 %i.ay, label %.thread, label %utf8_char_len.exit.thread

utf8_char_len.exit.thread:                        ; preds = %bb.q, %bb.o, %bb.m, %bb.p, %bb.n, %bb.r
  %.sink = phi i32 [ 2, %bb.r ], [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.o ], [ 1, %bb.q ]
  %i.az = phi i64 [ 4, %bb.r ], [ 2, %bb.n ], [ 1, %bb.p ], [ 1, %bb.m ], [ 3, %bb.o ], [ 4, %bb.q ]
  %i.ba = add i32 %.1105153, %.sink               ; 3 uses
  %i.bb = add i64 %i.az, %.1114151                ; 3 uses
  %i.bc = icmp uge i64 %i.bb, %.0112
  %i.bd = icmp eq i32 %i.ba, %.097
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond, label %.thread, label %bb.m, !llvm.loop !383

bb.s:                                             ; preds = %bb.k
  %narrow = select i1 %i.e, i32 %.0119, i32 0
  %.0111 = zext i32 %narrow to i64
  %.1 = select i1 %i.e, i32 2147483647, i32 %.0119 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %bb.s
  %.2115 = phi i64 [ %i.af, %bb.s ], [ %.3116, %bb.y ] ; 4 uses
  %.3107 = phi i32 [ %i.ae, %bb.s ], [ %.4108, %bb.y ] ; 4 uses
  %i.bf = icmp ugt i64 %.2115, %.0111
  br i1 %i.bf, label %.preheader, label %.thread.thread

.preheader:                                       ; preds = %bb.t, %.preheader
  %.3116.in = phi i64 [ %.3116, %.preheader ], [ %.2115, %bb.t ] ; 2 uses
  %.3116 = add i64 %.3116.in, -1                  ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.3116
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !51  ; 2 uses
  %i.bi = icmp slt i8 %i.bh, -64
  br i1 %i.bi, label %.preheader, label %bb.u, !llvm.loop !384

bb.u:                                             ; preds = %.preheader
  %i.bj = sub i64 %.2115, %.3116
  %i.bk = icmp eq i64 %i.bj, 4
  br i1 %i.bk, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr i8, ptr %i.be, i64 %.3116.in
  %.val131 = load i8, ptr %i.bl, align 1, !tbaa !51
  %i.bm = and i8 %i.bh, 15
  %i.bn = and i8 %.val131, 48
  %i.bo = or disjoint i8 %i.bn, %i.bm
  %.not141 = icmp eq i8 %i.bo, 0
  br i1 %.not141, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = add i32 %.3107, -2                      ; 2 uses
  %i.bq = add i32 %.3107, -1
  %i.br = icmp eq i32 %i.bq, %.1
  br i1 %i.br, label %.thread.thread, label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bs = add i32 %.3107, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.4108 = phi i32 [ %i.bp, %bb.w ], [ %i.bs, %bb.x ] ; 2 uses
  %i.bt = icmp eq i32 %.4108, %.1
  br i1 %i.bt, label %.thread.thread, label %bb.t

.thread:                                          ; preds = %utf8_char_len.exit.thread, %bb.r, %bb.l
  %.4117 = phi i64 [ %.0113, %bb.l ], [ %i.bb, %utf8_char_len.exit.thread ], [ %.1114151, %bb.r ] ; 2 uses
  %.6 = phi i32 [ %.0104, %bb.l ], [ %i.ba, %utf8_char_len.exit.thread ], [ %.1105153, %bb.r ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.l ], [ 0, %utf8_char_len.exit.thread ], [ 1, %bb.r ] ; 2 uses
  %.not128 = icmp eq ptr %.3, null
  br i1 %.not128, label %bb.z, label %.thread.thread

.thread.thread:                                   ; preds = %bb.y, %bb.w, %bb.t, %.thread
  %.2179 = phi i32 [ %.2, %.thread ], [ 0, %bb.y ], [ 0, %bb.t ], [ 1, %bb.w ]
  %.4178 = phi ptr [ %.3, %.thread ], [ %.2103, %bb.t ], [ %.2103, %bb.w ], [ %.2103, %bb.y ] ; 2 uses
  %.6176 = phi i32 [ %.6, %.thread ], [ %.1, %bb.y ], [ %.3107, %bb.t ], [ %i.bp, %bb.w ] ; 2 uses
  %.4117174 = phi i64 [ %.4117, %.thread ], [ %.3116, %bb.y ], [ %.2115, %bb.t ], [ %.3116, %bb.w ] ; 2 uses
  %i.bu = trunc i64 %.4117174 to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %.4178, i64 8
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %.4178, i64 12
  store i32 %.6176, ptr %i.bw, align 4, !tbaa !45
  br label %bb.z

bb.z:                                             ; preds = %.thread.thread, %.thread
  %.2180 = phi i32 [ %.2179, %.thread.thread ], [ %.2, %.thread ]
  %.6177 = phi i32 [ %.6176, %.thread.thread ], [ %.6, %.thread ]
  %.4117175 = phi i64 [ %.4117174, %.thread.thread ], [ %.4117, %.thread ]
  br i1 %i.e, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bx = add i32 %.6177, %i.i
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %.4117.tr = trunc i64 %.4117175 to i32
  %i.by = shl i32 %.4117.tr, 1
  %i.bz = or disjoint i32 %.2180, %i.by
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.d, %bb.c
  %.0118 = phi i32 [ %..i134, %bb.c ], [ %i.h, %bb.d ], [ %i.bx, %bb.aa ], [ %i.bz, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i32 %.0118
}

; Function Attrs: optsize
declare double @js_fmod(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 44) i32 @js_eq_get_type(i64 noundef %0) unnamed_addr #7 {
end_hunk_0
begin_hunk_1_@get_mblock_size_32:bb.a
    i32 5, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %.0.val, 7
  %i.d = add nuw nsw i32 %i.c, 4
  %i.e = and i32 %i.d, 67108860
  %narrow9 = add nuw nsw i32 %i.e, 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i32 %.0.val, 4
  %i.g = add nuw nsw i32 %i.f, 3
  %i.h = and i32 %i.g, 536870908
  %narrow8 = add nuw nsw i32 %i.h, 4
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i32 %.0.val, 2
  %i.j = and i32 %i.i, 1073741820
  %narrow = add nuw nsw i32 %i.j, 4
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 12707, ptr noundef nonnull @__PRETTY_FUNCTION__.get_mblock_size_32) #27
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 40, %bb.e ], [ %narrow9, %bb.b ], [ %narrow8, %bb.c ], [ %narrow, %bb.d ], [ 12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @unicode_is_space_non_ascii(i32 noundef %0) unnamed_addr #12 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 5760, label %bb.e
    i32 160, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, -8192
  %or.cond3 = icmp ult i32 %i.a, 11
  br i1 %or.cond3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %0, label %bb.d [
    i32 12288, label %bb.e
    i32 8287, label %bb.e
    i32 8239, label %bb.e
    i32 8233, label %bb.e
    i32 8232, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = icmp eq i32 %0, 65279
  %i.c = zext i1 %i.b to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.a, %bb.a, %bb.b, %bb.d
  %i.d = phi i32 [ 1, %bb.b ], [ %i.c, %bb.d ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.c ]
  ret i32 %i.d
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noundef i64 @js_resize_value_array2(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483644, 1073741827) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = icmp eq i64 %1, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 4
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]     ; 6 uses
  %i.g = icmp sgt i32 %2, %.0
  br i1 %i.g, label %bb.d, label %bb.k, !prof !67

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %.0, 2
  %i.i = add nsw i32 %i.h, %.0                    ; 6 uses
  %i.j = icmp sgt i32 %i.i, %2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sub nsw i32 %i.i, %3
  %i.l = srem i32 %i.k, 3                         ; 2 uses
  %.not43 = icmp eq i32 %i.l, 0
  %reass.sub = add i32 %i.i, 3
  %i.m = sub i32 %reass.sub, %i.l
  %.035 = select i1 %.not43, i32 %i.i, i32 %i.m
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi i32 [ %.035, %bb.f ], [ %i.i, %bb.e ], [ %2, %bb.d ]
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %.1, i32 %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !39
  store ptr %4, ptr %i.n, align 8, !tbaa !36
  store i64 %1, ptr %4, align 8, !tbaa !40
  %i.q = call fastcc ptr @js_alloc_value_array(ptr noundef %0, i32 noundef %.0, i32 noundef %..i) #28 ; 3 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !39
  store ptr %i.s, ptr %i.n, align 8, !tbaa !36
  %.not44 = icmp eq ptr %i.q, null
  br i1 %.not44, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp sgt i32 %.0, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = add i64 %i.r, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = zext nneg i32 %.0 to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.x, i64 %i.z, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = add i64 %i.aa, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.g
  %.034 = phi i64 [ 15, %bb.g ], [ %i.ab, %bb.j ], [ %1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.034
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #25

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 1) i32 @string_buffer_concat_utf8(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %.not = icmp ugt i32 %4, %3
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i64 @js_sub_string_utf8(ptr noundef %0, i64 noundef %2, i32 noundef %3, i32 noundef %4) #28 ; 2 uses
  %.not14 = icmp eq i64 %i.a, 15
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 15, ptr %1, align 8, !tbaa !151
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = tail call fastcc i32 @string_buffer_concat_str(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.b, %bb.d ], [ -1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { noreturn nounwind optsize }
attributes #28 = { optsize }
attributes #29 = { nounwind }
attributes #30 = { nounwind optsize willreturn memory(read) }
attributes #31 = { nounwind optsize }
attributes #32 = { optsize "function-inline-cost-multiplier"="2" }
attributes #33 = { nounwind optsize returns_twice }
attributes #34 = { noreturn optsize }

!llvm.module.flags = !{!22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}
!llvm.errno.tbaa = !{!33}

!0 = distinct !{null}
!1 = distinct !{ptr @js_malloc, null}
!2 = distinct !{!2, !60}
!3 = distinct !{null, null}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !60}
!8 = distinct !{null}
!9 = distinct !{!9, !60}
!10 = distinct !{null}
!11 = distinct !{!11, !60}
!12 = distinct !{!12, !60}
!13 = distinct !{!13, !60}
!14 = distinct !{!14, !60}
!15 = distinct !{null}
!16 = distinct !{!16, !60}
!17 = distinct !{!17, !60}
!18 = distinct !{!18, !60}
!19 = distinct !{null, null}
!20 = distinct !{null}
!21 = distinct !{ptr @js_alloc_byte_array, null}
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !{!"omnipotent char", !29, i64 0}
!31 = !{!"int", !30, i64 0}
!32 = !{!"__libc_errno", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !{!"p1 _ZTS7JSGCRef", !34, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"long", !30, i64 0}
!38 = !{!"JSGCRef", !37, i64 0, !35, i64 8}
!39 = !{!38, !35, i64 8}
!40 = !{!38, !37, i64 0}
!41 = !{!"p1 long", !34, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 omnipotent char", !34, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!31, !31, i64 0}
!46 = !{!37, !37, i64 0}
!47 = !{!"", !43, i64 0, !43, i64 8, !31, i64 16}
!48 = !{!47, !43, i64 0}
!49 = !{!47, !43, i64 8}
!50 = !{!47, !31, i64 16}
!51 = !{!30, !30, i64 0}
!52 = !{ptr @JS_NewString}
!53 = !{!"p1 _ZTS18JSFunctionBytecode", !34, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"short", !30, i64 0}
!56 = !{!"JSFunctionBytecode", !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 2, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !55, i64 48, !55, i64 50, !37, i64 56, !37, i64 64, !31, i64 72}
!57 = !{!56, !37, i64 56}
!58 = !{!56, !37, i64 64}
!59 = !{!56, !37, i64 16}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"", !30, i64 0, !30, i64 1, !30, i64 2, !30, i64 3}
!62 = !{!61, !30, i64 0}
!63 = !{!"double", !30, i64 0}
!64 = !{!"", !63, i64 0}
!65 = !{!"", !37, i64 0, !37, i64 0, !37, i64 0, !64, i64 8}
!66 = !{!65, !63, i64 8}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{ptr @JS_NewInt64}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!"", !37, i64 0, !37, i64 8, !31, i64 16, !31, i64 19}
!71 = !{!70, !37, i64 0}
!72 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!73 = !{!63, !63, i64 0}
!74 = !{ptr @JS_ToInt32}
!75 = !{!55, !55, i64 0}
!76 = !{!"float", !30, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"branch_weights", i32 0, i32 8000, i32 2, i32 1, i32 1}
!79 = !{!70, !37, i64 8}
!80 = !{ptr @JS_StackCheck}
!81 = !{!"p1 _ZTS14JSCFunctionDef", !34, i64 0}
!82 = !{!"any p2 pointer", !34, i64 0}
!83 = !{!34, !34, i64 0}
!84 = !{!"", !37, i64 0, !30, i64 8}
!85 = !{!84, !37, i64 0}
!86 = !{!82, !82, i64 0}
!87 = !{ptr @js_malloc, ptr @js_alloc_byte_array}
!88 = !{!"packed_u16", !55, i64 0}
!89 = !{!88, !55, i64 0}
!90 = !{!"packed_u32", !31, i64 0}
!91 = !{!90, !31, i64 0}
!92 = !{!56, !37, i64 24}
!93 = !{!81, !81, i64 0}
!94 = !{!"JSCFunctionDef", !30, i64 0, !37, i64 8, !30, i64 16, !30, i64 17, !55, i64 18}
!95 = !{!94, !30, i64 16}
!96 = !{!94, !30, i64 17}
!97 = !{!94, !55, i64 18}
!98 = !{!56, !37, i64 32}
!99 = !{!56, !55, i64 48}
!100 = !{!56, !37, i64 40}
!101 = !{ptr @JS_NewInt64, ptr @JS_NewInt32}
!102 = !{ptr @JS_NewInt64, ptr @JS_NewUint32}
!103 = !{ptr @JS_ToUint32}
!104 = !{!94, !37, i64 8}
!105 = !{!56, !37, i64 8}
!106 = !{!"p1 _ZTS9JSContext", !34, i64 0}
!107 = !{!"JSToken", !31, i64 0, !31, i64 4, !30, i64 8, !37, i64 16}
!108 = !{!"JSParseState", !106, i64 0, !107, i64 8, !31, i64 32, !31, i64 33, !31, i64 34, !31, i64 35, !31, i64 36, !31, i64 37, !37, i64 40, !37, i64 48, !43, i64 56, !31, i64 64, !31, i64 68, !37, i64 72, !37, i64 80, !31, i64 88, !31, i64 92, !31, i64 96, !31, i64 100, !31, i64 104, !31, i64 108, !55, i64 112, !31, i64 116, !55, i64 120, !31, i64 124, !37, i64 128, !30, i64 136, !30, i64 137, !30, i64 137, !30, i64 137, !30, i64 137, !30, i64 137, !30, i64 144, !30, i64 344}
!109 = !{!108, !106, i64 0}
!110 = !{!"p1 _ZTS12JSParseState", !34, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!108, !37, i64 40}
!113 = !{!108, !31, i64 68}
!114 = !{!108, !43, i64 56}
!115 = !{!108, !37, i64 128}
!116 = !{!108, !31, i64 64}
!117 = !{!108, !37, i64 24}
!118 = !{!108, !37, i64 48}
!119 = !{!108, !31, i64 8}
!120 = !{!108, !37, i64 72}
!121 = !{!108, !37, i64 80}
!122 = !{!108, !55, i64 112}
!123 = !{!108, !31, i64 116}
!124 = !{!108, !55, i64 120}
!125 = !{!108, !31, i64 124}
!126 = !{!108, !31, i64 108}
!127 = !{!56, !55, i64 50}
!128 = !{!108, !31, i64 88}
!129 = !{!108, !31, i64 104}
!130 = !{!"branch_weights", i32 2097152, i32 -100663296}
!131 = !{!56, !31, i64 72}
!132 = !{!108, !31, i64 92}
!133 = !{!"", !106, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !31, i64 32}
!134 = !{!133, !106, i64 0}
!135 = !{!133, !31, i64 32}
!136 = !{!133, !41, i64 24}
!137 = !{!133, !41, i64 8}
!138 = !{!133, !41, i64 16}
!139 = !{!"", !55, i64 0, !55, i64 2, !37, i64 8, !37, i64 16, !37, i64 24}
!140 = !{!139, !37, i64 8}
!141 = !{!139, !37, i64 16}
!142 = !{!139, !37, i64 24}
!143 = !{ptr @js_malloc}
!144 = !{!139, !55, i64 0}
end_hunk_1
