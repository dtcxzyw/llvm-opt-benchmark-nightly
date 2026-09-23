Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi__create_png_image_raw:bb.a
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.zk = load i8, ptr %.0249380.epil, align 1
  %i.zl = zext i8 %i.zk to i16
  %i.zm = shl nuw i16 %i.zl, 8
  %i.zn = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = zext i8 %i.zo to i16
  %i.zq = or disjoint i16 %i.zm, %i.zp
  store i16 %i.zq, ptr %.0381.epil, align 2
  %i.zr = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter764
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !234

.loopexit.loopexit741.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod762.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit741.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.di, %.lr.ph378.preheader ], [ %i.yf, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.cz, %.lr.ph378.preheader ], [ %i.yg, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.zt = load i8, ptr %.1250376.epil.init, align 1
  %i.zu = zext i8 %i.zt to i16
  %i.zv = shl nuw i16 %i.zu, 8
  %i.zw = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.zx = load i8, ptr %i.zw, align 1
  %i.zy = zext i8 %i.zx to i16
  %i.zz = or disjoint i16 %i.zv, %i.zy
  store i16 %i.zz, ptr %.1377.epil.init, align 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.aaa, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit741.unr-lcssa, %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.ao) #52
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  store ptr @.str.108, ptr @stbi__g_failure_reason, align 8
  tail call void @free(ptr noundef %i.ao) #52
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @stbi__get32le(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  %i.b = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  %i.c = shl nuw i32 %i.b, 16
  %i.d = or disjoint i32 %i.c, %i.a
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 65536) i32 @stbi__get16le(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #52, !inline_history !6 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %bb.c, %stbi__refill_buffer.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ai, align 1
  br label %stbi__get8.exit7

bb.h:                                             ; preds = %stbi__get8.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %stbi__get8.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au) #52, !inline_history !6 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8
  br label %stbi__refill_buffer.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8
  br label %stbi__refill_buffer.exit.i4

stbi__refill_buffer.exit.i4:                      ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8
  br label %stbi__get8.exit7

stbi__get8.exit7:                                 ; preds = %bb.g, %bb.h, %stbi__refill_buffer.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %stbi__refill_buffer.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = zext i8 %.0.i6 to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bo, %i.bm
  ret i32 %i.bp
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %stbi__get8.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #52, !inline_history !6 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %stbi__refill_buffer.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit.i ]
  %.not = icmp eq i8 %.0.i, 66
  br i1 %.not, label %bb.g, label %stbi__get8.exit.thread

bb.g:                                             ; preds = %stbi__get8.exit
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ai, align 1
  br label %stbi__get8.exit125

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %.not.i120 = icmp eq i32 %i.an, 0
  br i1 %.not.i120, label %stbi__get8.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au) #52, !inline_history !6 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8
  br label %stbi__refill_buffer.exit.i122

bb.l:                                             ; preds = %bb.j
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i121 = load i8, ptr %i.as, align 8
  br label %stbi__refill_buffer.exit.i122

stbi__refill_buffer.exit.i122:                    ; preds = %bb.l, %bb.k
  %i.bk = phi i8 [ 0, %bb.k ], [ %.pre.i121, %bb.l ]
  %.sink.i.i123 = phi ptr [ %i.bh, %bb.k ], [ %i.bj, %bb.l ]
  store ptr %.sink.i.i123, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8
  br label %stbi__get8.exit125

stbi__get8.exit125:                               ; preds = %bb.h, %stbi__refill_buffer.exit.i122
  %.0.i124 = phi i8 [ %i.al, %bb.h ], [ %i.bk, %stbi__refill_buffer.exit.i122 ]
  %.not115 = icmp eq i8 %.0.i124, 77
  br i1 %.not115, label %bb.m, label %stbi__get8.exit.thread

stbi__get8.exit.thread:                           ; preds = %bb.i, %bb.c, %stbi__get8.exit125, %stbi__get8.exit
  store ptr @.str.115, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.m:                                             ; preds = %stbi__get8.exit125
  %i.bm = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bn = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.bo = tail call fastcc i32 @stbi__get16le(ptr noundef %0) ; 0 uses
  %i.bp = tail call fastcc i32 @stbi__get16le(ptr noundef %0) ; 0 uses
  %i.bq = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.br = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bs = shl nuw i32 %i.br, 16
  %i.bt = or disjoint i32 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bw = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.bx = shl nuw i32 %i.bw, 16
  %i.by = or disjoint i32 %i.bx, %i.bv            ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.by, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store i32 14, ptr %i.ce, align 4
  %i.cf = load i32, ptr %i.bu, align 4
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr @.str.116, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %.not131 = icmp eq i32 %i.by, 12
  %i.ch = add i32 %i.by, -12                      ; 2 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 30)
  switch i32 %i.ci, label %bb.p [
    i32 0, label %bb.q
    i32 7, label %bb.r
    i32 11, label %bb.r
    i32 24, label %bb.r
    i32 28, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  store ptr @.str.117, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.cj = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  store i32 %i.cj, ptr %0, align 8
  %i.ck = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.cl = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cm = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cn = shl nuw i32 %i.cm, 16
  %i.co = or disjoint i32 %i.cn, %i.cl
  store i32 %i.co, ptr %0, align 8
  %i.cp = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cq = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cr = shl nuw i32 %i.cq, 16
  %i.cs = or disjoint i32 %i.cr, %i.cp
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ %i.cs, %bb.r ], [ %i.ck, %bb.q ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.ct, align 4
  %i.cu = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  %.not116 = icmp eq i32 %i.cu, 1
  br i1 %.not116, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @.str.116, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.cv = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  store i32 %i.cv, ptr %1, align 4
  br i1 %.not131, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cx = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = or disjoint i32 %i.cy, %i.cw            ; 5 uses
  %i.da = add i32 %i.cz, -1
  %or.cond10 = icmp ult i32 %i.da, 2
  br i1 %or.cond10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr @.str.118, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.db = icmp sgt i32 %i.cz, 3
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr @.str.119, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.dc = icmp eq i32 %i.cz, 3                    ; 3 uses
  br i1 %i.dc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i32, ptr %1, align 4
  switch i32 %i.dd, label %bb.ab [
    i32 16, label %bb.ac
    i32 32, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str.116, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.z
  %i.de = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.df = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.dg = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.dh = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.di = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.dj = add i32 %i.by, -40                      ; 2 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 30)
  switch i32 %i.dk, label %bb.ar [
    i32 4, label %bb.ad
    i32 0, label %bb.ae
    i32 21, label %bb.ao
    i32 17, label %bb.ao
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.dm = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.dn = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.do = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dp = load i32, ptr %1, align 4               ; 2 uses
  switch i32 %i.dp, label %stbi__bmp_set_mask_defaults.exit [
    i32 16, label %bb.af
    i32 32, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.dq = icmp eq i32 %i.cz, 0
  br i1 %i.dq, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.dp, label %bb.aj [
    i32 16, label %bb.ah
    i32 32, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store i32 31744, ptr %i.cd, align 4
  store i32 992, ptr %i.cc, align 4
  store i32 31, ptr %i.cb, align 4
  br label %stbi__bmp_set_mask_defaults.exit

bb.ai:                                            ; preds = %bb.ag
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.cd, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.dr, align 4
  br label %stbi__bmp_set_mask_defaults.exit

bb.aj:                                            ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %stbi__bmp_set_mask_defaults.exit

bb.ak:                                            ; preds = %bb.af
  br i1 %i.dc, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ds = tail call fastcc i32 @stbi__get32le(ptr noundef %0)
  store i32 %i.ds, ptr %i.cd, align 4
  %i.dt = tail call fastcc i32 @stbi__get32le(ptr noundef %0)
  store i32 %i.dt, ptr %i.cc, align 4
  %i.du = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 2 uses
  store i32 %i.du, ptr %i.cb, align 4
  %i.dv = load i32, ptr %i.ce, align 4
  %i.dw = add nsw i32 %i.dv, 12
  store i32 %i.dw, ptr %i.ce, align 4
  %i.dx = load i32, ptr %i.cd, align 4
  %i.dy = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.dz = icmp eq i32 %i.dx, %i.dy
  %i.ea = icmp eq i32 %i.dy, %i.du
  %or.cond = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond, label %bb.am, label %stbi__bmp_set_mask_defaults.exit

bb.am:                                            ; preds = %bb.al
  store ptr @.str.116, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.an:                                            ; preds = %bb.ak
  store ptr @.str.116, ptr @stbi__g_failure_reason, align 8
  br label %.critedge

bb.ao:                                            ; preds = %bb.ac, %bb.ac
  %i.eb = tail call fastcc i32 @stbi__get32le(ptr noundef %0)
  store i32 %i.eb, ptr %i.cd, align 4
  %i.ec = tail call fastcc i32 @stbi__get32le(ptr noundef %0)
  store i32 %i.ec, ptr %i.cc, align 4
  %i.ed = tail call fastcc i32 @stbi__get32le(ptr noundef %0)
  store i32 %i.ed, ptr %i.cb, align 4
  %i.ee = tail call fastcc i32 @stbi__get32le(ptr noundef %0)
  store i32 %i.ee, ptr %i.ca, align 4
  br i1 %i.dc, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @stbi__bmp_set_mask_defaults(ptr noundef %1, i32 noundef %i.cz)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ef = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.eg = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.eh = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ei = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ej = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ek = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.el = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.em = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.en = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.eo = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ep = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.eq = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.er = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.es = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.et = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.eu = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ev = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ew = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ex = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ey = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.ez = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fa = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fb = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fc = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  %i.fd = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) ; 0 uses
  switch i32 %i.by, label %.critedge [
    i32 124, label %.thread
    i32 108, label %stbi__bmp_set_mask_defaults.exit
  ]

.thread:                                          ; preds = %bb.aq
  %i.fe = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.ff = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.fg = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  %i.fh = tail call fastcc i32 @stbi__get32le(ptr noundef %0) ; 0 uses
  br label %stbi__bmp_set_mask_defaults.exit

bb.ar:                                            ; preds = %bb.ac
  store ptr @.str.116, ptr @stbi__g_failure_reason, align 8
  switch i32 %i.by, label %.critedge [
    i32 124, label %stbi__bmp_set_mask_defaults.exit
    i32 108, label %stbi__bmp_set_mask_defaults.exit
  ]

stbi__bmp_set_mask_defaults.exit:                 ; preds = %.thread, %bb.aj, %bb.ai, %bb.ah, %bb.aq, %bb.ar, %bb.ar, %bb.ae, %bb.al
  br label %.critedge

.critedge:                                        ; preds = %bb.aq, %bb.w, %bb.y, %bb.ab, %bb.am, %bb.an, %bb.ar, %bb.u, %stbi__bmp_set_mask_defaults.exit, %bb.t, %bb.p, %bb.n, %stbi__get8.exit.thread
  %.3 = phi ptr [ null, %stbi__get8.exit.thread ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %stbi__bmp_set_mask_defaults.exit ], [ null, %bb.ar ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.ab ], [ null, %bb.y ], [ null, %bb.w ], [ null, %bb.aq ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -1, 32) i32 @stbi__high_bit(i32 noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 65535                   ; 2 uses
  %i.c = lshr i32 %0, 16
  %spec.select = select i1 %i.b, i32 %i.c, i32 %0 ; 3 uses
  %spec.select23 = select i1 %i.b, i32 16, i32 0  ; 2 uses
  %i.d = icmp samesign ugt i32 %spec.select, 255  ; 2 uses
  %i.e = or disjoint i32 %spec.select23, 8
  %i.f = lshr i32 %spec.select, 8
  %.118 = select i1 %i.d, i32 %i.f, i32 %spec.select ; 3 uses
  %.1 = select i1 %i.d, i32 %i.e, i32 %spec.select23 ; 2 uses
  %i.g = icmp samesign ugt i32 %.118, 15          ; 2 uses
  %i.h = or disjoint i32 %.1, 4
  %i.i = lshr i32 %.118, 4
  %.219 = select i1 %i.g, i32 %i.i, i32 %.118     ; 3 uses
  %.2 = select i1 %i.g, i32 %i.h, i32 %.1         ; 2 uses
  %i.j = icmp samesign ugt i32 %.219, 3           ; 2 uses
  %i.k = or disjoint i32 %.2, 2
  %i.l = lshr i32 %.219, 2
  %.320 = select i1 %i.j, i32 %i.l, i32 %.219
  %.3 = select i1 %i.j, i32 %i.k, i32 %.2
  %i.m = icmp samesign ugt i32 %.320, 1
  %i.n = zext i1 %i.m to i32
  %.4 = add nuw nsw i32 %.3, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %.4, %bb.b ], [ -1, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 64) i32 @stbi__bitcount(i32 noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 1431655765
  %i.b = lshr i32 %0, 1
  %i.c = and i32 %i.b, 1431655765
  %i.d = add nuw i32 %i.c, %i.a                   ; 2 uses
  %i.e = and i32 %i.d, 858993459
  %i.f = lshr i32 %i.d, 2
  %i.g = and i32 %i.f, 858993459
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = and i32 %i.j, 252645135                  ; 2 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = add nuw nsw i32 %i.l, %i.k               ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = add nuw nsw i32 %i.n, %i.m
  %i.p = and i32 %i.o, 63
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @stbi__bmp_set_mask_defaults(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483648, 3) %1) unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  switch i32 %i.b, label %bb.e [
    i32 16, label %bb.c
    i32 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31744, ptr %i.c, align 4
  store i32 992, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 31, ptr %i.e, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.f, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not179 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not179, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @stbi__gif_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %.not166 = icmp eq i32 %i.c, 0
  br i1 %.not166, label %stbi__skip.exit221.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %.not23.i = icmp ugt i32 %i.d, 536870911
  br i1 %.not23.i, label %stbi__skip.exit221.thread.sink.split, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %bb.c
  %i.g = shl nuw nsw i32 %i.d, 2
  %or.cond.not.i10.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i, label %bb.d, label %stbi__skip.exit221.thread.sink.split

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.d
  %i.i = udiv i32 2147483647, %i.f
  %.not.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i, label %stbi__skip.exit221.thread.sink.split, label %stbi__mad3sizes_valid.exit

stbi__mad3sizes_valid.exit:                       ; preds = %stbi__mul2sizes_valid.exit12.i, %bb.d
  %i.j = mul nuw nsw i32 %i.f, %i.d               ; 2 uses
  %i.k = shl nsw i32 %i.j, 2
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #53 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #53 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.p) #53 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.q, ptr %i.r, align 8
  %.not168 = icmp eq ptr %i.m, null
  br i1 %.not168, label %stbi__skip.exit221.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %stbi__mad3sizes_valid.exit
  %.not169 = icmp eq ptr %i.n, null
  %.not170 = icmp eq ptr %i.q, null
  %or.cond180 = or i1 %.not169, %.not170
  br i1 %or.cond180, label %stbi__skip.exit221.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = load i32, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = mul i32 %i.y, %i.w                       ; 8 uses
  %i.aa = icmp eq i32 %i.v, 3
  %i.ab = icmp eq ptr %3, null
  %or.cond = and i1 %i.ab, %i.aa
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.v
  switch i32 %spec.store.select, label %.loopexit [
    i32 3, label %.preheader252
    i32 2, label %.preheader253
  ]

.preheader253:                                    ; preds = %bb.g
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader253
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.z, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

.preheader252:                                    ; preds = %bb.g
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph267, label %.loopexit

.lr.ph267:                                        ; preds = %.preheader252
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %wide.trip.count284 = zext nneg i32 %i.z to i64 ; 2 uses
end_hunk_0
