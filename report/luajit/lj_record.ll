Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@rec_loop_interp:bb.a
  %i.an = icmp eq ptr %1, %i.am
  br i1 %i.an, label %.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ao, 64
  br i1 %exitcond.not.i.3, label %.loopexit, label %bb.p, !llvm.loop !172

bb.p:                                             ; preds = %bb.o, %bb.k
  %.013.i = phi i64 [ 0, %bb.k ], [ %i.ao, %bb.o ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.013.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !174
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = icmp eq ptr %1, %i.ar
  br i1 %i.as, label %.split.loop.exit47, label %bb.l

.split.loop.exit:                                 ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  br label %.split.loop.exit47

.split.loop.exit43:                               ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  br label %.split.loop.exit47

.split.loop.exit45:                               ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %.split.loop.exit47

.split.loop.exit47:                               ; preds = %bb.p, %.split.loop.exit45, %.split.loop.exit43, %.split.loop.exit
  %.lcssa = phi ptr [ %i.av, %.split.loop.exit45 ], [ %i.au, %.split.loop.exit43 ], [ %i.at, %.split.loop.exit ], [ %i.ap, %bb.p ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 10
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !175
  %i.ay = and i16 %i.ax, -2
  %switch.i = icmp eq i16 %i.ay, 8
  br i1 %switch.i, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.split.loop.exit47
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !176
  %i.bb = icmp ugt i16 %i.ba, 143
  br i1 %i.bb, label %innerloopleft.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.split.loop.exit47, %bb.q
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 9) #9
  unreachable

innerloopleft.exit:                               ; preds = %bb.q, %bb.j
  %.not32 = icmp eq i32 %2, 1
  br i1 %.not32, label %bb.t, label %bb.r

bb.r:                                             ; preds = %innerloopleft.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !100 ; 2 uses
  %.not33 = icmp eq i32 %i.bd, 0
  br i1 %.not33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !82
  %i.bg = sub i32 %i.bf, %i.bd
  %i.bh = icmp ugt i32 %i.bg, 24
  br i1 %i.bh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %innerloopleft.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !54 ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !54
  %i.bl = icmp slt i32 %i.bj, 1
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 10) #9
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !100
  br label %bb.z

bb.w:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !54 ; 2 uses
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !54
  %i.bv = icmp slt i32 %i.bt, 1
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 10) #9
  unreachable

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.h, %bb.v, %bb.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @rec_iterl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 8
  %i.b = and i32 %i.a, 255                        ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.e = zext nneg i32 %i.b to i64                ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9
  %i.n = ashr i64 %i.m, 47                        ; 2 uses
  %i.o = icmp ult i64 %i.n, -14
  %i.p = trunc nsw i64 %i.n to i32
  %i.q = xor i32 %i.p, -1
  %.0.i.i = select i1 %i.o, i32 14, i32 %i.q      ; 3 uses
  %i.r = trunc nuw nsw i32 %.0.i.i to i16
  %i.s = or disjoint i16 %i.r, 18304
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load i32, ptr %i.t, align 8, !tbaa !35
  %i.v = add nsw i32 %i.u, %i.b
  %i.w = trunc i32 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.s, ptr %i.y, align 4, !tbaa !9
  store i16 %i.w, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 4, ptr %i.z, align 2, !tbaa !9
  %i.aa = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.ab = icmp samesign ult i32 %.0.i.i, 3
  %i.ac = mul nuw nsw i32 %.0.i.i, 16777217
  %i.ad = xor i32 %i.ac, 32767
  %.0.i = select i1 %i.ab, i32 %i.ad, i32 %i.aa   ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.e
  store i32 %.0.i, ptr %i.af, align 4, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ag = phi ptr [ %i.ae, %bb.b ], [ %i.d, %bb.a ]
  %i.ah = phi i32 [ %.0.i, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.ai = and i32 %i.ah, 520093696
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = add nsw i32 %i.b, -1                    ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.al
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37
  %i.ar = lshr i32 %i.aq, 24
  %i.as = add nsw i32 %i.ar, %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.as, ptr %i.at, align 4, !tbaa !36
  %i.au = lshr i32 %1, 16
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %i.ao, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -131068
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !56
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ay = add nsw i32 %i.b, -3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ 2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @rec_itern(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RecordIndex, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32
  %i.j = sub i32 0, %i.i
  %i.k = icmp eq i32 %i.g, %i.j
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3020
  %i.p = load i32, ptr %i.o, align 4, !tbaa !58
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82   ; 2 uses
  %i.t = icmp ugt i32 %i.s, 32770
  br i1 %i.t, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq i32 %i.s, 32770
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 262157
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %.not = icmp eq i8 %i.y, 21
  br i1 %.not, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.z, align 8, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !30
  %i.ac = zext i16 %i.ab to i32
  tail call void @lj_record_stop(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.ac)
  br label %bb.o

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  store i32 %1, ptr %i.ad, align 4, !tbaa !36
  tail call void @lj_snap_add(ptr noundef nonnull %0) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  %i.ag = add i32 %1, -2                          ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37 ; 2 uses
  %.not57 = icmp eq i32 %i.aj, 0
  br i1 %.not57, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.ao = sext i32 %i.ag to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !9
  %i.ar = ashr i64 %i.aq, 47                      ; 2 uses
  %i.as = icmp ult i64 %i.ar, -14
  %i.at = trunc nsw i64 %i.ar to i32
  %i.au = xor i32 %i.at, -1
  %.0.i.i = select i1 %i.as, i32 14, i32 %i.au    ; 3 uses
  %i.av = trunc nuw nsw i32 %.0.i.i to i16
  %i.aw = or disjoint i16 %i.av, 18304
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !35
  %i.az = add nsw i32 %i.ay, %i.ag
  %i.ba = trunc i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.aw, ptr %i.bc, align 4, !tbaa !9
  store i16 %i.ba, ptr %i.bb, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 4, ptr %i.bd, align 2, !tbaa !9
  %i.be = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.bf = icmp samesign ult i32 %.0.i.i, 3
  %i.bg = mul nuw nsw i32 %.0.i.i, 16777217
  %i.bh = xor i32 %i.bg, 32767
  %.0.i = select i1 %i.bf, i32 %i.bh, i32 %i.be   ; 2 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ao
  store i32 %.0.i, ptr %i.bj, align 4, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bk = phi ptr [ %i.bi, %bb.i ], [ %i.af, %bb.h ]
  %i.bl = phi i32 [ %.0.i, %bb.i ], [ %i.aj, %bb.h ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !49
  %i.bn = add i32 %1, -1                          ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !37 ; 2 uses
  %.not58 = icmp eq i32 %i.bq, 0
  br i1 %.not58, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !35
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 18323, ptr %i.bw, align 4, !tbaa !9
  store i16 %i.bu, ptr %i.bv, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 68, ptr %i.bx, align 2, !tbaa !9
  %i.by = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8 ; 2 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ca = sext i32 %i.bn to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ca
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cc = phi i32 [ %i.by, %bb.k ], [ %i.bq, %bb.j ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !46 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ah
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !9
  store i64 %i.cj, ptr %3, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.bo
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !9
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !9
  %i.cn = icmp ult i32 %2, 3
  %i.co = zext i1 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !76
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i32 1, ptr %i.cq, align 8, !tbaa !50
  %i.cr = call i32 @lj_record_next(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %i.cs = add i32 %i.cr, %1
  store i32 %i.cs, ptr %i.ad, align 4, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.ct, align 1, !tbaa !40
  %i.cu = load i32, ptr %i.cd, align 4, !tbaa !74 ; 2 uses
  %i.cv = and i32 %i.cu, 520093696
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = load i32, ptr %i.cq, align 8, !tbaa !50
  %i.cy = or i32 %i.cx, 1048576
  %i.cz = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.bo
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !37
  %i.db = zext i32 %1 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.db
  store i32 %i.cu, ptr %i.dc, align 4, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !75
  %i.df = add i32 %1, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dg
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !37
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !37
  %i.dl = lshr i32 %i.dk, 16
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %i.di, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -131064
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.dp = add i32 %1, -3
  store i32 %i.dp, ptr %i.ad, align 4, !tbaa !36
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.sink = phi ptr [ %i.dr, %bb.n ], [ %i.do, %bb.m ]
  %.1.ph = phi i32 [ 0, %bb.n ], [ 2, %bb.m ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.critedge
  %.1 = phi i32 [ 2, %.critedge ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_loop_jit(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3020
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 9) #9
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.g, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  %i.q = sub i32 0, %i.p
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i16, ptr %i.s, align 8, !tbaa !30
  %i.u = zext i16 %i.t to i32
  tail call void @lj_record_stop(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.u)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void @lj_record_stop(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_isnext(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = add i32 %1, -3                           ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %.mask = and i64 %i.h, -140737488355328
  %i.i = icmp eq i64 %.mask, -1266637395197952
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %i.h, 140737488355327
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.m = load i8, ptr %i.l, align 2, !tbaa !9
  %i.n = icmp eq i8 %i.m, 4
  br i1 %i.n, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9
  %.mask32 = and i64 %i.p, -140737488355328
  %i.q = icmp eq i64 %.mask32, -1688849860263936
  br i1 %i.q, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.f
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = sext i32 %i.e to i64                     ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9
  %i.ab = ashr i64 %i.aa, 47                      ; 2 uses
  %i.ac = icmp ult i64 %i.ab, -14
  %i.ad = trunc nsw i64 %i.ab to i32
  %i.ae = xor i32 %i.ad, -1
  %.0.i.i = select i1 %i.ac, i32 14, i32 %i.ae    ; 3 uses
  %i.af = trunc nuw nsw i32 %.0.i.i to i16
  %i.ag = or disjoint i16 %i.af, 18304
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !35
  %i.aj = add nsw i32 %i.ai, %i.e
  %i.ak = trunc i32 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.ag, ptr %i.am, align 4, !tbaa !9
  store i16 %i.ak, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 4, ptr %i.an, align 2, !tbaa !9
  %i.ao = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.ap = icmp samesign ult i32 %.0.i.i, 3
  %i.aq = mul nuw nsw i32 %.0.i.i, 16777217
  %i.ar = xor i32 %i.aq, 32767
  %.0.i = select i1 %i.ap, i32 %i.ar, i32 %i.ao   ; 2 uses
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.y
  store i32 %.0.i, ptr %i.at, align 4, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.au = phi i32 [ %.0.i, %bb.f ], [ %i.x, %bb.e ]
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  store i16 17680, ptr %i.ax, align 4, !tbaa !9
  store i16 %i.av, ptr %i.aw, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 4 uses
  store i16 3, ptr %i.ay, align 2, !tbaa !9
  %i.az = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.ba = trunc i32 %i.az to i16
  %i.bb = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 4) #8
  %i.bc = trunc i32 %i.bb to i16
  store i16 2195, ptr %i.ax, align 4, !tbaa !9
  store i16 %i.ba, ptr %i.aw, align 8, !tbaa !9
  store i16 %i.bc, ptr %i.ay, align 2, !tbaa !9
  %i.bd = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %i.bf = add i32 %1, -2                          ; 3 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !37
  %.not33 = icmp eq i32 %i.bi, 0
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !46
  %i.bm = sext i32 %i.bf to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9
  %i.bp = ashr i64 %i.bo, 47                      ; 2 uses
  %i.bq = icmp ult i64 %i.bp, -14
  %i.br = trunc nsw i64 %i.bp to i32
  %i.bs = xor i32 %i.br, -1
  %.0.i.i35 = select i1 %i.bq, i32 14, i32 %i.bs  ; 3 uses
  %i.bt = trunc nuw nsw i32 %.0.i.i35 to i16
  %i.bu = or disjoint i16 %i.bt, 18304
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !35
  %i.bx = add nsw i32 %i.bw, %i.bf
  %i.by = trunc i32 %i.bx to i16
  store i16 %i.bu, ptr %i.ax, align 4, !tbaa !9
  store i16 %i.by, ptr %i.aw, align 8, !tbaa !9
  store i16 4, ptr %i.ay, align 2, !tbaa !9
  %i.bz = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.ca = icmp samesign ult i32 %.0.i.i35, 3
  %i.cb = mul nuw nsw i32 %.0.i.i35, 16777217
  %i.cc = xor i32 %i.cb, 32767
  %.0.i36 = select i1 %i.ca, i32 %i.cc, i32 %i.bz
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.bm
  store i32 %.0.i36, ptr %i.ce, align 4, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cf = phi ptr [ %i.be, %bb.g ], [ %i.cd, %bb.h ]
  %i.cg = add i32 %1, -1                          ; 3 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !37
  %.not34 = icmp eq i32 %i.cj, 0
  br i1 %.not34, label %bb.j, label %bb.k

end_hunk_0
