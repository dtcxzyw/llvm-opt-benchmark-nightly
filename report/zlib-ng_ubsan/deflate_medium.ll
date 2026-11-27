Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/deflate_medium?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0_@deflate_medium:bb.a
  %i.k = icmp slt i32 %i.j, 5                     ; 2 uses
  %invariant.op = and i1 %i.a, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 11 uses
  %i.m = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 5 uses
  %i.q = and i64 %i.p, 63
  %i.r = icmp eq i64 %i.q, 0                      ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5952 ; 10 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 6 uses
  %i.z = and i64 %i.y, 63
  %i.aa = icmp eq i64 %i.z, 0                     ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5944 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5976 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5956 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 15 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.sroa.25.0 = phi i16 [ 0, %bb.e ], [ %.sroa.25.2, %.backedge ] ; 4 uses
  %.sroa.19.0 = phi i16 [ 0, %bb.e ], [ %.sroa.19.2, %.backedge ] ; 4 uses
  %.sroa.10.0 = phi i16 [ 0, %bb.e ], [ %.sroa.10.3, %.backedge ] ; 2 uses
  %.sroa.0.0 = phi i16 [ 0, %bb.e ], [ %.sroa.0.2, %.backedge ] ; 4 uses
  br i1 %i.e, label %bb.h, label %bb.g, !prof !16, !nosanitize !15

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @4, i64 %i.b) #4, !nosanitize !15
  br label %bb.h, !nosanitize !15

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !31
  %i.ak = icmp ult i32 %i.aj, 262
  br i1 %i.ak, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @zng_fill_window(ptr noundef nonnull %0) #4
  br i1 %i.e, label %bb.k, label %bb.j, !prof !16, !nosanitize !15

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @6, i64 %i.b) #4, !nosanitize !15
  br label %bb.k, !nosanitize !15

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.al = load i32, ptr %i.l, align 4, !tbaa !31
  %i.am = icmp ult i32 %i.al, 262
  %or.cond = and i1 %i.m, %i.am
  br i1 %or.cond, label %.thread97, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.e, label %bb.n, label %bb.m, !prof !16, !nosanitize !15

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @7, i64 %i.b) #4, !nosanitize !15
  br label %bb.n, !nosanitize !15

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.an = load i32, ptr %i.l, align 4, !tbaa !31
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.jl, label %.thread233, !prof !32

bb.o:                                             ; preds = %bb.h
  %.not = icmp eq i16 %.sroa.10.0, 0
  %or.cond101 = select i1 %i.k, i1 true, i1 %.not
  br i1 %or.cond101, label %.thread233, label %bb.ao

.thread233:                                       ; preds = %bb.n, %bb.o
  br i1 %i.e, label %bb.q, label %bb.p, !prof !16, !nosanitize !15

bb.p:                                             ; preds = %.thread233
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @9, i64 %i.b) #4, !nosanitize !15
  br label %bb.q, !nosanitize !15

bb.q:                                             ; preds = %.thread233, %bb.p
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !31
  %i.aq = icmp ugt i32 %i.ap, 3
  br i1 %i.aq, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.e, label %bb.t, label %bb.s, !prof !16, !nosanitize !15

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @10, i64 %i.b) #4, !nosanitize !15
  br label %bb.t, !nosanitize !15

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !33
  %i.as = call zeroext i16 @quick_insert_string(ptr noundef nonnull %0, i32 noundef %i.ar) #4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.089 = phi i16 [ %i.as, %bb.t ], [ 0, %bb.q ]  ; 3 uses
  br i1 %i.e, label %bb.w, label %bb.v, !prof !16, !nosanitize !15

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @11, i64 %i.b) #4, !nosanitize !15
  br label %bb.w, !nosanitize !15

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.at = load i32, ptr %i.n, align 4, !tbaa !33
  %i.au = trunc i32 %i.at to i16                  ; 7 uses
  br i1 %i.e, label %bb.y, label %bb.x, !prof !16, !nosanitize !15

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @12, i64 %i.b) #4, !nosanitize !15
  br label %bb.y, !nosanitize !15

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.av = load i32, ptr %i.n, align 4, !tbaa !33
  %i.aw = zext i32 %i.av to i64
  %i.ax = zext i16 %.089 to i64
  %i.ay = sub nsw i64 %i.aw, %i.ax                ; 2 uses
  br i1 %i.e, label %bb.aa, label %bb.z, !prof !16, !nosanitize !15

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @13, i64 %i.b) #4, !nosanitize !15
  br label %bb.aa, !nosanitize !15

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.r, label %bb.ac, label %bb.ab, !prof !16, !nosanitize !15

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @14, i64 %i.p) #4, !nosanitize !15
  br label %bb.ac, !nosanitize !15

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.az = load i32, ptr %i.o, align 64, !tbaa !34 ; 2 uses
  %i.ba = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.az, i32 262), !nosanitize !15 ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 0, !nosanitize !15
  %i.bc = extractvalue { i32, i1 } %i.ba, 1, !nosanitize !15
  br i1 %i.bc, label %bb.ad, label %bb.ae, !prof !35, !nosanitize !15

bb.ad:                                            ; preds = %bb.ac
  %i.bd = zext nneg i32 %i.az to i64, !nosanitize !15
  call void @__ubsan_handle_sub_overflow(ptr nonnull @15, i64 %i.bd, i64 262) #5, !nosanitize !15
  br label %bb.ae, !nosanitize !15

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.be = zext i32 %i.bb to i64
  %i.bf = icmp sle i64 %i.ay, %i.be
  %i.bg = icmp sgt i64 %i.ay, 0
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp ne i16 %.089, 0
  %or.cond6 = select i1 %or.cond3, i1 %i.bh, i1 false
  br i1 %or.cond6, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 88), align 8, !tbaa !37 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !nosanitize !15
  %i.bl = icmp eq i32 %i.bk, -1056584962, !nosanitize !15
  br i1 %i.bl, label %bb.ag, label %bb.ai, !nosanitize !15

bb.ag:                                            ; preds = %bb.af
  %i.bm = getelementptr i8, ptr %i.bi, i64 -4
  %i.bn = load i32, ptr %i.bm, align 8, !nosanitize !15
  %i.bo = icmp eq i32 %i.bn, 953073260, !nosanitize !15
  br i1 %i.bo, label %bb.ai, label %bb.ah, !prof !16, !nosanitize !15

bb.ah:                                            ; preds = %bb.ag
  %i.bp = ptrtoint ptr %i.bi to i64, !nosanitize !15
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @17, i64 %i.bp) #4, !nosanitize !15
  br label %bb.ai, !nosanitize !15

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.bq = call i32 %i.bi(ptr noundef nonnull %0, i16 noundef zeroext %.089) #4
  %i.br = trunc i32 %i.bq to i16                  ; 2 uses
  br i1 %i.e, label %bb.ak, label %bb.aj, !prof !16, !nosanitize !15

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @18, i64 %i.b) #4, !nosanitize !15
  br label %bb.ak, !nosanitize !15

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.bs = load i32, ptr %i.s, align 8, !tbaa !38
  %i.bt = trunc i32 %i.bs to i16                  ; 3 uses
  %i.bu = icmp ult i16 %i.br, 4
  br i1 %i.bu, label %bb.al, label %bb.am, !prof !32

bb.al:                                            ; preds = %bb.ak
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.10137.0 = phi i16 [ 1, %bb.al ], [ %i.br, %bb.ak ]
  %.not91 = icmp ugt i16 %i.au, %i.bt
  br i1 %.not91, label %bb.ao, label %bb.an, !prof !39

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ae, %bb.o, %bb.an, %bb.am
  %.sroa.28.0 = phi i16 [ %.sroa.10137.0, %bb.am ], [ 1, %bb.an ], [ %.sroa.10.0, %bb.o ], [ 1, %bb.ae ] ; 13 uses
  %.sroa.23.0 = phi i16 [ %i.bt, %bb.am ], [ %i.bt, %bb.an ], [ %.sroa.0.0, %bb.o ], [ 0, %bb.ae ] ; 2 uses
  %.sroa.10137.1 = phi i16 [ %i.au, %bb.am ], [ %i.au, %bb.an ], [ %.sroa.25.0, %bb.o ], [ %i.au, %bb.ae ] ; 4 uses
  %.sroa.0127.0 = phi i16 [ %i.au, %bb.am ], [ %i.au, %bb.an ], [ %.sroa.19.0, %bb.o ], [ %i.au, %bb.ae ] ; 4 uses
  %.sroa.0127.sroa.10.0.insert.ext = zext i16 %.sroa.28.0 to i32 ; 7 uses
  %.sroa.0127.sroa.10.0.insert.shift = shl nuw i32 %.sroa.0127.sroa.10.0.insert.ext, 16
  %.sroa.0127.sroa.0.0.insert.ext = zext i16 %.sroa.23.0 to i32
  %.sroa.0127.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0127.sroa.10.0.insert.shift, %.sroa.0127.sroa.0.0.insert.ext
  %.sroa.27.0.insert.ext = zext i16 %.sroa.10137.1 to i64
  %.sroa.27.0.insert.shift = shl nuw i64 %.sroa.27.0.insert.ext, 48
  %.sroa.10137.0.insert.ext = zext i16 %.sroa.0127.0 to i64
  %.sroa.10137.0.insert.shift = shl nuw nsw i64 %.sroa.10137.0.insert.ext, 32
  %.sroa.10137.0.insert.insert = or disjoint i64 %.sroa.27.0.insert.shift, %.sroa.10137.0.insert.shift ; 2 uses
  %.sroa.0127.0.insert.ext = zext i32 %.sroa.0127.sroa.0.0.insert.insert to i64
  %.sroa.0127.0.insert.insert = or disjoint i64 %.sroa.10137.0.insert.insert, %.sroa.0127.0.insert.ext ; 4 uses
  %.sroa.1.0.extract.shift.i = lshr i64 %.sroa.0127.0.insert.insert, 16 ; 5 uses
  %.sroa.1.0.extract.trunc.i = trunc i64 %.sroa.1.0.extract.shift.i to i16 ; 8 uses
  %.sroa.21.0.extract.shift.i = lshr exact i64 %.sroa.10137.0.insert.insert, 32 ; 4 uses
  %.sroa.21.0.extract.trunc.i = trunc i64 %.sroa.21.0.extract.shift.i to i16 ; 3 uses
  br i1 %i.e, label %bb.aq, label %bb.ap, !prof !16, !nosanitize !15

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @87, i64 %i.b) #4, !nosanitize !15
  br label %bb.aq, !nosanitize !15

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.bv = load i32, ptr %i.l, align 4, !tbaa !31
  %i.bw = trunc i64 %.sroa.1.0.extract.shift.i to i32
  %i.bx = and i32 %i.bw, 65535                    ; 2 uses
  %i.by = add nuw nsw i32 %i.bx, 4
  %.not.i = icmp ugt i32 %i.bv, %i.by
  br i1 %.not.i, label %bb.ar, label %insert_match.exit, !prof !39

bb.ar:                                            ; preds = %bb.aq
  %i.bz = icmp ult i16 %.sroa.1.0.extract.trunc.i, 4
  br i1 %i.bz, label %bb.as, label %bb.av, !prof !39

bb.as:                                            ; preds = %bb.ar
  %i.ca = add i16 %.sroa.21.0.extract.trunc.i, 1  ; 2 uses
  %i.cb = add nsw i16 %.sroa.1.0.extract.trunc.i, -1 ; 2 uses
  %.not13.i = icmp eq i16 %i.cb, 0
  br i1 %.not13.i, label %insert_match.exit, label %bb.at, !prof !39

bb.at:                                            ; preds = %bb.as
  %.not14.i = icmp ult i16 %i.ca, %.sroa.10137.1
  br i1 %.not14.i, label %insert_match.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cc = zext i16 %i.ca to i32
  %i.cd = zext i16 %i.cb to i32
  call void @insert_string(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %i.cd) #4
  br label %insert_match.exit

bb.av:                                            ; preds = %bb.ar
  br i1 %i.e, label %bb.ax, label %bb.aw, !prof !16, !nosanitize !15

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @88, i64 %i.b) #4, !nosanitize !15
  br label %bb.ax, !nosanitize !15

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ce = load i32, ptr %i.t, align 4, !tbaa !40  ; 3 uses
  %i.cf = shl i32 %i.ce, 4
  %i.cg = icmp ult i32 %i.ce, 268435456
  br i1 %i.cg, label %bb.az, label %bb.ay, !prof !16, !nosanitize !15

bb.ay:                                            ; preds = %bb.ax
  %i.ch = zext i32 %i.ce to i64, !nosanitize !15
  call void @__ubsan_handle_mul_overflow(ptr nonnull @89, i64 16, i64 %i.ch) #5, !nosanitize !15
  br label %bb.az, !nosanitize !15

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.not9.i = icmp ult i32 %i.cf, %i.bx
  br i1 %.not9.i, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.e, label %bb.bc, label %bb.bb, !prof !16, !nosanitize !15

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @90, i64 %i.b) #4, !nosanitize !15
  br label %bb.bc, !nosanitize !15

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.ci = load i32, ptr %i.l, align 4, !tbaa !31
  %i.cj = icmp ugt i32 %i.ci, 3
  br i1 %i.cj, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.ck = add i16 %.sroa.1.0.extract.trunc.i, -1  ; 2 uses
  %i.cl = add i16 %.sroa.21.0.extract.trunc.i, 1  ; 3 uses
  %.not11.i = icmp ult i16 %i.cl, %.sroa.10137.1
  br i1 %.not11.i, label %bb.bf, label %bb.be, !prof !32

bb.be:                                            ; preds = %bb.bd
  %i.cm = zext i16 %i.cl to i32
  %i.cn = zext i16 %i.ck to i32
  call void @insert_string(ptr noundef nonnull %0, i32 noundef %i.cm, i32 noundef %i.cn) #4
  br label %insert_match.exit

bb.bf:                                            ; preds = %bb.bd
  %i.co = zext i16 %.sroa.10137.1 to i32          ; 3 uses
  %i.cp = zext i16 %i.cl to i32
  %i.cq = zext i16 %i.ck to i32
  %i.cr = add nuw nsw i32 %i.cp, %i.cq            ; 2 uses
  %i.cs = icmp samesign ugt i32 %i.cr, %i.co
  br i1 %i.cs, label %bb.bg, label %insert_match.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ct = sub nuw nsw i32 %i.cr, %i.co
  call void @insert_string(ptr noundef nonnull %0, i32 noundef %i.co, i32 noundef %i.ct) #4
  br label %insert_match.exit

bb.bh:                                            ; preds = %bb.bc, %bb.az
  %i.cu = add i16 %.sroa.21.0.extract.trunc.i, %.sroa.1.0.extract.trunc.i ; 2 uses
  %.not10.i = icmp eq i16 %i.cu, 0
  br i1 %.not10.i, label %insert_match.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -1
  %i.cx = call zeroext i16 @quick_insert_string(ptr noundef nonnull %0, i32 noundef %i.cw) #4 ; 0 uses
  br label %insert_match.exit

insert_match.exit:                                ; preds = %bb.aq, %bb.as, %bb.at, %bb.au, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi
  br i1 %i.k, label %.critedge, label %bb.bj, !prof !32

bb.bj:                                            ; preds = %insert_match.exit
  br i1 %i.e, label %bb.bl, label %bb.bk, !prof !16, !nosanitize !15

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @19, i64 %i.b) #4, !nosanitize !15
  br label %bb.bl, !nosanitize !15

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.cy = load i32, ptr %i.l, align 4, !tbaa !31
  %i.cz = icmp ugt i32 %i.cy, 262
  br i1 %i.cz, label %bb.bm, label %.critedge, !prof !39

bb.bm:                                            ; preds = %bb.bl
  %i.da = zext i16 %.sroa.0127.0 to i32           ; 8 uses
  %i.db = add nuw nsw i32 %.sroa.0127.sroa.10.0.insert.ext, %i.da ; 3 uses
  br i1 %i.e, label %bb.bo, label %bb.bn, !prof !16, !nosanitize !15

bb.bn:                                            ; preds = %bb.bm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @20, i64 %i.b) #4, !nosanitize !15
  br label %bb.bo, !nosanitize !15

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.dc = load i32, ptr %i.u, align 4, !tbaa !41  ; 2 uses
  %i.dd = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.dc, i32 262), !nosanitize !15 ; 2 uses
  %i.de = extractvalue { i32, i1 } %i.dd, 0, !nosanitize !15
  %i.df = extractvalue { i32, i1 } %i.dd, 1, !nosanitize !15
  br i1 %i.df, label %bb.bp, label %bb.bq, !prof !35, !nosanitize !15

bb.bp:                                            ; preds = %bb.bo
  %i.dg = zext nneg i32 %i.dc to i64, !nosanitize !15
  call void @__ubsan_handle_sub_overflow(ptr nonnull @21, i64 %i.dg, i64 262) #5, !nosanitize !15
  br label %bb.bq, !nosanitize !15

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.dh = icmp ult i32 %i.db, %i.de
  br i1 %i.dh, label %bb.br, label %.critedge, !prof !39

bb.br:                                            ; preds = %bb.bq
  br i1 %i.e, label %.critedge239, label %bb.bs, !prof !16, !nosanitize !15

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @22, i64 %i.b) #4, !nosanitize !15
  store i32 %i.db, ptr %i.n, align 4, !tbaa !33
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @23, i64 %i.b) #4, !nosanitize !15
  br label %bb.bt, !nosanitize !15

.critedge239:                                     ; preds = %bb.br
  store i32 %i.db, ptr %i.n, align 4, !tbaa !33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.critedge239
  %i.di = load i32, ptr %i.n, align 4, !tbaa !33
  %i.dj = call zeroext i16 @quick_insert_string(ptr noundef nonnull %0, i32 noundef %i.di) #4 ; 3 uses
  br i1 %i.e, label %bb.bv, label %bb.bu, !prof !16, !nosanitize !15

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @24, i64 %i.b) #4, !nosanitize !15
  br label %bb.bv, !nosanitize !15

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.dk = load i32, ptr %i.n, align 4, !tbaa !33  ; 6 uses
  %i.dl = trunc i32 %i.dk to i16                  ; 15 uses
  br i1 %i.e, label %bb.bx, label %bb.bw, !prof !16, !nosanitize !15

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @25, i64 %i.b) #4, !nosanitize !15
  br label %bb.bx, !nosanitize !15

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.dm = load i32, ptr %i.n, align 4, !tbaa !33
  %i.dn = zext i32 %i.dm to i64
  %i.do = zext i16 %i.dj to i64
  %i.dp = sub nsw i64 %i.dn, %i.do                ; 2 uses
  br i1 %i.e, label %bb.bz, label %bb.by, !prof !16, !nosanitize !15

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @26, i64 %i.b) #4, !nosanitize !15
  br label %bb.bz, !nosanitize !15

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.r, label %bb.cb, label %bb.ca, !prof !16, !nosanitize !15

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @27, i64 %i.p) #4, !nosanitize !15
  br label %bb.cb, !nosanitize !15

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.dq = load i32, ptr %i.o, align 64, !tbaa !34 ; 2 uses
  %i.dr = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.dq, i32 262), !nosanitize !15 ; 2 uses
  %i.ds = extractvalue { i32, i1 } %i.dr, 0, !nosanitize !15
  %i.dt = extractvalue { i32, i1 } %i.dr, 1, !nosanitize !15
  br i1 %i.dt, label %bb.cc, label %bb.cd, !prof !35, !nosanitize !15

bb.cc:                                            ; preds = %bb.cb
  %i.du = zext nneg i32 %i.dq to i64, !nosanitize !15
  call void @__ubsan_handle_sub_overflow(ptr nonnull @28, i64 %i.du, i64 262) #5, !nosanitize !15
  br label %bb.cd, !nosanitize !15

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.dv = zext i32 %i.ds to i64
  %i.dw = icmp sle i64 %i.dp, %i.dv
  %i.dx = icmp sgt i64 %i.dp, 0
  %or.cond8 = and i1 %i.dx, %i.dw
  %i.dy = icmp ne i16 %i.dj, 0
  %or.cond11 = select i1 %or.cond8, i1 %i.dy, i1 false
  br i1 %or.cond11, label %bb.ce, label %fizzle_matches.exit

bb.ce:                                            ; preds = %bb.cd
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 88), align 8, !tbaa !37 ; 4 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !nosanitize !15
  %i.ec = icmp eq i32 %i.eb, -1056584962, !nosanitize !15
  br i1 %i.ec, label %bb.cf, label %bb.ch, !nosanitize !15

bb.cf:                                            ; preds = %bb.ce
  %i.ed = getelementptr i8, ptr %i.dz, i64 -4
  %i.ee = load i32, ptr %i.ed, align 8, !nosanitize !15
  %i.ef = icmp eq i32 %i.ee, 953073260, !nosanitize !15
  br i1 %i.ef, label %bb.ch, label %bb.cg, !prof !16, !nosanitize !15

bb.cg:                                            ; preds = %bb.cf
  %i.eg = ptrtoint ptr %i.dz to i64, !nosanitize !15
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @29, i64 %i.eg) #4, !nosanitize !15
  br label %bb.ch, !nosanitize !15

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %bb.ce
  %i.eh = call i32 %i.dz(ptr noundef nonnull %0, i16 noundef zeroext %i.dj) #4 ; 2 uses
  %i.ei = trunc i32 %i.eh to i16                  ; 6 uses
  br i1 %i.e, label %bb.cj, label %bb.ci, !prof !16, !nosanitize !15

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.b) #4, !nosanitize !15
  br label %bb.cj, !nosanitize !15

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %i.ej = load i32, ptr %i.s, align 8, !tbaa !38  ; 4 uses
  %i.ek = trunc i32 %i.ej to i16                  ; 7 uses
  %.not92 = icmp ule i16 %i.dl, %i.ek
  %i.el = icmp ult i16 %i.ei, 4
  %or.cond237 = select i1 %.not92, i1 true, i1 %i.el, !prof !42
  br i1 %or.cond237, label %fizzle_matches.exit, label %bb.ck, !prof !42

bb.ck:                                            ; preds = %bb.cj
  %i.em = icmp ult i16 %.sroa.28.0, 2
  br i1 %i.em, label %fizzle_matches.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.en = and i32 %i.ej, 65535
  %i.eo = add nuw nsw i32 %i.en, 1
  %i.ep = icmp samesign ult i32 %i.eo, %.sroa.0127.sroa.10.0.insert.ext
  br i1 %i.ep, label %fizzle_matches.exit, label %bb.cm, !prof !32

bb.cm:                                            ; preds = %bb.cl
  %i.eq = and i32 %i.dk, 65535                    ; 2 uses
  %i.er = add nuw nsw i32 %i.eq, 1
  %i.es = icmp samesign ult i32 %i.er, %.sroa.0127.sroa.10.0.insert.ext
  br i1 %i.es, label %fizzle_matches.exit, label %bb.cn, !prof !32

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.e, label %bb.cp, label %bb.co, !prof !16, !nosanitize !15

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @91, i64 %i.b) #4, !nosanitize !15
  br label %bb.cp, !nosanitize !15

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %i.et = load ptr, ptr %i.v, align 8, !tbaa !43  ; 3 uses
  %2 = zext i16 %.sroa.28.0 to i64                ; 5 uses
  %i.eu = sub nsw i64 0, %2                       ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %i.eu ; 3 uses
  %i.ew = ptrtoint ptr %i.et to i64, !nosanitize !15 ; 3 uses
  %i.ex = icmp ne ptr %i.et, null, !nosanitize !15
  %i.ey = icmp ugt i64 %i.ew, %2
  br i1 %i.ey, label %bb.cr, label %bb.cq, !prof !16, !nosanitize !15

bb.cq:                                            ; preds = %bb.cp
  %i.ez = sub nsw i64 %i.ew, %2
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @92, i64 %i.ew, i64 %i.ez) #4, !nosanitize !15
  br label %bb.cr, !nosanitize !15

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  %i.fb = ptrtoint ptr %i.ev to i64, !nosanitize !15 ; 2 uses
  %i.fc = add i64 %i.fb, 1, !nosanitize !15       ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  %i.fe = xor i1 %i.ex, %i.fd
  %i.ff = icmp ne ptr %i.ev, inttoptr (i64 -1 to ptr)
  %i.fg = and i1 %i.ff, %i.fe, !nosanitize !15
  br i1 %i.fg, label %bb.ct, label %bb.cs, !prof !16, !nosanitize !15

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @93, i64 %i.fb, i64 %i.fc) #4, !nosanitize !15
  br label %bb.ct, !nosanitize !15

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.mask = and i32 %i.ej, 65535
  %i.fh = zext nneg i32 %.mask to i64             ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fh
  %i.fj = ptrtoint ptr %i.fa to i64, !nosanitize !15 ; 3 uses
  %i.fk = add i64 %i.fh, %i.fj, !nosanitize !15   ; 2 uses
  %.not.i95 = icmp ult i64 %i.fk, %i.fj, !nosanitize !15
  br i1 %.not.i95, label %bb.cu, label %bb.cv, !prof !35, !nosanitize !15

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @94, i64 %i.fj, i64 %i.fk) #4, !nosanitize !15
  br label %bb.cv, !nosanitize !15

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.e, label %bb.cx, label %bb.cw, !prof !16, !nosanitize !15

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @95, i64 %i.b) #4, !nosanitize !15
  br label %bb.cx, !nosanitize !15

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.fl = load ptr, ptr %i.v, align 8, !tbaa !43  ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.eu ; 3 uses
  %i.fn = ptrtoint ptr %i.fl to i64, !nosanitize !15 ; 3 uses
  %i.fo = icmp ne ptr %i.fl, null, !nosanitize !15
  %i.fp = icmp ugt i64 %i.fn, %2
  br i1 %i.fp, label %bb.cz, label %bb.cy, !prof !16, !nosanitize !15

bb.cy:                                            ; preds = %bb.cx
  %i.fq = sub nsw i64 %i.fn, %2
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @96, i64 %i.fn, i64 %i.fq) #4, !nosanitize !15
  br label %bb.cz, !nosanitize !15

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  %i.fs = ptrtoint ptr %i.fm to i64, !nosanitize !15 ; 2 uses
  %i.ft = add i64 %i.fs, 1, !nosanitize !15       ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = xor i1 %i.fo, %i.fu
  %i.fw = icmp ne ptr %i.fm, inttoptr (i64 -1 to ptr)
  %i.fx = and i1 %i.fw, %i.fv, !nosanitize !15
  br i1 %i.fx, label %bb.db, label %bb.da, !prof !16, !nosanitize !15

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @97, i64 %i.fs, i64 %i.ft) #4, !nosanitize !15
  br label %bb.db, !nosanitize !15

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.mask231 = and i32 %i.dk, 65535
  %i.fy = zext nneg i32 %.mask231 to i64          ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fy
  %i.ga = ptrtoint ptr %i.fr to i64, !nosanitize !15 ; 3 uses
  %i.gb = add i64 %i.fy, %i.ga, !nosanitize !15   ; 2 uses
  %.not31.i = icmp ult i64 %i.gb, %i.ga, !nosanitize !15
  br i1 %.not31.i, label %bb.dc, label %bb.dd, !prof !35, !nosanitize !15

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @98, i64 %i.ga, i64 %i.gb) #4, !nosanitize !15
  br label %bb.dd, !nosanitize !15

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.gc = load i8, ptr %i.fi, align 1, !tbaa !44
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !44
  %.not34.i = icmp eq i8 %i.gc, %i.gd
  br i1 %.not34.i, label %.critedge.i, label %fizzle_matches.exit, !prof !32

.critedge.i:                                      ; preds = %bb.dd
  %.sroa.0.0.i = trunc i32 %i.ej to i16
  %.sroa.9.0.i = trunc i32 %i.eh to i16
  %.sroa.13.0.i = trunc i32 %i.dk to i16
  br i1 %i.e, label %bb.df, label %bb.de, !prof !16, !nosanitize !15

bb.de:                                            ; preds = %.critedge.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @100, i64 %i.b) #4, !nosanitize !15
  br label %bb.df, !nosanitize !15

bb.df:                                            ; preds = %bb.de, %.critedge.i
  br i1 %i.r, label %bb.dh, label %bb.dg, !prof !16, !nosanitize !15

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @101, i64 %i.p) #4, !nosanitize !15
  br label %bb.dh, !nosanitize !15

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.ge = load i32, ptr %i.o, align 64, !tbaa !34 ; 2 uses
  %i.gf = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ge, i32 262), !nosanitize !15 ; 2 uses
  %i.gg = extractvalue { i32, i1 } %i.gf, 0, !nosanitize !15
  %i.gh = extractvalue { i32, i1 } %i.gf, 1, !nosanitize !15
  br i1 %i.gh, label %bb.di, label %bb.dj, !prof !35, !nosanitize !15

bb.di:                                            ; preds = %bb.dh
  %i.gi = zext nneg i32 %i.ge to i64, !nosanitize !15
  call void @__ubsan_handle_sub_overflow(ptr nonnull @102, i64 %i.gi, i64 262) #5, !nosanitize !15
  br label %bb.dj, !nosanitize !15

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.gj = icmp ult i32 %i.gg, %i.eq
  br i1 %i.gj, label %bb.dk, label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.e, label %bb.dm, label %bb.dl, !prof !16, !nosanitize !15

bb.dl:                                            ; preds = %bb.dk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @103, i64 %i.b) #4, !nosanitize !15
  br label %bb.dm, !nosanitize !15

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br i1 %i.r, label %bb.do, label %bb.dn, !prof !16, !nosanitize !15

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @104, i64 %i.p) #4, !nosanitize !15
  br label %bb.do, !nosanitize !15

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.gk = load i32, ptr %i.o, align 64, !tbaa !34 ; 2 uses
  %i.gl = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.gk, i32 262), !nosanitize !15 ; 2 uses
  %i.gm = extractvalue { i32, i1 } %i.gl, 0, !nosanitize !15
  %i.gn = extractvalue { i32, i1 } %i.gl, 1, !nosanitize !15
  br i1 %i.gn, label %bb.dp, label %bb.dq, !prof !35, !nosanitize !15

bb.dp:                                            ; preds = %bb.do
  %i.go = zext nneg i32 %i.gk to i64, !nosanitize !15
  call void @__ubsan_handle_sub_overflow(ptr nonnull @105, i64 %i.go, i64 262) #5, !nosanitize !15
  br label %bb.dq, !nosanitize !15

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.gp = sub i32 %i.dk, %i.gm
  %i.gq = and i32 %i.gp, 65535
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dj
  %i.gr = phi i32 [ %i.gq, %bb.dq ], [ 0, %bb.dj ]
  br i1 %i.e, label %bb.dt, label %bb.ds, !prof !16, !nosanitize !15

bb.ds:                                            ; preds = %bb.dr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @106, i64 %i.b) #4, !nosanitize !15
  br label %bb.dt, !nosanitize !15

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.gs = load ptr, ptr %i.v, align 8, !tbaa !43  ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.fh ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64, !nosanitize !15 ; 3 uses
  %i.gv = add i64 %i.fh, %i.gu, !nosanitize !15   ; 3 uses
  %i.gw = icmp ne ptr %i.gs, null, !nosanitize !15 ; 2 uses
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = xor i1 %i.gw, %i.gx
  %i.gz = icmp uge i64 %i.gv, %i.gu, !nosanitize !15
  %i.ha = and i1 %i.gz, %i.gy, !nosanitize !15
  br i1 %i.ha, label %bb.dv, label %bb.du, !prof !16, !nosanitize !15

bb.du:                                            ; preds = %bb.dt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @107, i64 %i.gu, i64 %i.gv) #4, !nosanitize !15
  br label %bb.dv, !nosanitize !15

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.hb = ptrtoint ptr %i.gt to i64, !nosanitize !15 ; 2 uses
  %i.hc = add i64 %i.hb, -1, !nosanitize !15      ; 2 uses
  %i.hd = icmp ne i64 %i.hc, 0
  %i.he = and i1 %i.gw, %i.hd
  br i1 %i.he, label %bb.dx, label %bb.dw, !prof !16, !nosanitize !15

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @108, i64 %i.hb, i64 %i.hc) #4, !nosanitize !15
  br label %bb.dx, !nosanitize !15

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  br i1 %i.e, label %bb.dz, label %bb.dy, !prof !16, !nosanitize !15

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @109, i64 %i.b) #4, !nosanitize !15
  br label %bb.dz, !nosanitize !15

bb.dz:                                            ; preds = %bb.dx, %bb.dy
  %i.hf = load ptr, ptr %i.v, align 8, !tbaa !43  ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.fy ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64, !nosanitize !15 ; 3 uses
  %i.hi = add i64 %i.fy, %i.hh, !nosanitize !15   ; 3 uses
  %i.hj = icmp ne ptr %i.hf, null, !nosanitize !15 ; 2 uses
  %i.hk = icmp eq i64 %i.hi, 0
  %i.hl = xor i1 %i.hj, %i.hk
  %i.hm = icmp uge i64 %i.hi, %i.hh, !nosanitize !15
  %i.hn = and i1 %i.hm, %i.hl, !nosanitize !15
  br i1 %i.hn, label %bb.eb, label %bb.ea, !prof !16, !nosanitize !15

bb.ea:                                            ; preds = %bb.dz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @110, i64 %i.hh, i64 %i.hi) #4, !nosanitize !15
  br label %bb.eb, !nosanitize !15

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.ho = ptrtoint ptr %i.hg to i64, !nosanitize !15 ; 2 uses
  %i.hp = add i64 %i.ho, -1, !nosanitize !15      ; 2 uses
  %i.hq = icmp ne i64 %i.hp, 0
  %i.hr = and i1 %i.hj, %i.hq
  br i1 %i.hr, label %.preheader, label %bb.ec, !prof !16, !nosanitize !15

bb.ec:                                            ; preds = %bb.eb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @111, i64 %i.ho, i64 %i.hp) #4, !nosanitize !15
  br label %.preheader, !nosanitize !15

.preheader:                                       ; preds = %bb.ec, %bb.eb
  br label %bb.ed

bb.ed:                                            ; preds = %.preheader, %bb.ek
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ek ], [ 0, %.preheader ] ; 2 uses
  %.sroa.4.0.i = phi i16 [ %i.ic, %bb.ek ], [ %.sroa.1.0.extract.trunc.i, %.preheader ] ; 4 uses
  %.sroa.13.1.i = phi i16 [ %i.hz, %bb.ek ], [ %.sroa.13.0.i, %.preheader ] ; 3 uses
  %.sroa.9.1.i = phi i16 [ %i.ib, %bb.ek ], [ %.sroa.9.0.i, %.preheader ] ; 4 uses
  %.sroa.0.1.i = phi i16 [ %i.ia, %bb.ek ], [ %.sroa.0.0.i, %.preheader ] ; 3 uses
  %.pn.i = phi ptr [ %.030.i, %bb.ek ], [ %i.gt, %.preheader ]
  %.pn39.i = phi ptr [ %.029.i, %bb.ek ], [ %i.hg, %.preheader ]
  %.029.i = getelementptr inbounds i8, ptr %.pn39.i, i64 -1 ; 3 uses
  %.030.i = getelementptr inbounds i8, ptr %.pn.i, i64 -1 ; 3 uses
  %i.hs = load i8, ptr %.030.i, align 1, !tbaa !44
  %i.ht = load i8, ptr %.029.i, align 1, !tbaa !44
  %i.hu = icmp eq i8 %i.hs, %i.ht
  br i1 %i.hu, label %bb.ee, label %bb.el

bb.ee:                                            ; preds = %bb.ed
  %i.hv = icmp ne i16 %.sroa.4.0.i, 0
  %i.hw = zext i16 %.sroa.13.1.i to i32
  %.not37.i = icmp samesign ult i32 %i.gr, %i.hw
  %or.cond.i = select i1 %i.hv, i1 %.not37.i, i1 false, !prof !45
  br i1 %or.cond.i, label %bb.ef, label %bb.el, !prof !45

bb.ef:                                            ; preds = %bb.ee
  %i.hx = icmp ugt i16 %.sroa.9.1.i, 255
  %i.hy = icmp ult i16 %.sroa.0.1.i, 2
  %or.cond45.i = select i1 %i.hx, i1 true, i1 %i.hy, !prof !46
  br i1 %or.cond45.i, label %bb.el, label %bb.eg, !prof !46

bb.eg:                                            ; preds = %bb.ef
  %i.hz = add i16 %.sroa.13.1.i, -1
  %i.ia = add i16 %.sroa.0.1.i, -1
  %i.ib = add nuw nsw i16 %.sroa.9.1.i, 1
  %i.ic = add i16 %.sroa.4.0.i, -1
  %.not38.i = icmp eq ptr %.030.i, inttoptr (i64 1 to ptr)
  br i1 %.not38.i, label %bb.eh, label %bb.ei, !prof !35, !nosanitize !15

bb.eh:                                            ; preds = %bb.eg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @112, i64 1, i64 0) #4, !nosanitize !15
  br label %bb.ei, !nosanitize !15

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.not40.i = icmp eq ptr %.029.i, inttoptr (i64 1 to ptr)
  br i1 %.not40.i, label %bb.ej, label %bb.ek, !prof !35, !nosanitize !15

bb.ej:                                            ; preds = %bb.ei
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @113, i64 1, i64 0) #4, !nosanitize !15
  br label %bb.ek, !nosanitize !15

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.ed, !llvm.loop !12

bb.el:                                            ; preds = %bb.ef, %bb.ee, %bb.ed
  %.not41.i = icmp eq i64 %indvars.iv.i, 0
  %i.id = icmp ugt i16 %.sroa.4.0.i, 1
  %or.cond48.not69.i = select i1 %.not41.i, i1 true, i1 %i.id
  %.not42.i = icmp eq i16 %.sroa.9.1.i, 2
  %or.cond50.i = select i1 %or.cond48.not69.i, i1 true, i1 %.not42.i
  br i1 %or.cond50.i, label %fizzle_matches.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ie = trunc i32 %i.dk to i16
  %.sroa.25.0.extract.trunc = add i16 %i.ie, 1
  %.pre197 = zext i16 %.sroa.0127.0 to i32
  br label %fizzle_matches.exit

fizzle_matches.exit:                              ; preds = %bb.cd, %bb.cj, %bb.em, %bb.el, %bb.dd, %bb.cm, %bb.cl, %bb.ck
  %.pre-phi = phi i32 [ %.pre197, %bb.em ], [ %i.da, %bb.el ], [ %i.da, %bb.dd ], [ %i.da, %bb.cm ], [ %i.da, %bb.cl ], [ %i.da, %bb.ck ], [ %i.da, %bb.cd ], [ %i.da, %bb.cj ]
  %.sroa.10137.2 = phi i16 [ %.sroa.4.0.i, %bb.em ], [ %.sroa.28.0, %bb.el ], [ %.sroa.28.0, %bb.dd ], [ %.sroa.28.0, %bb.cm ], [ %.sroa.28.0, %bb.cl ], [ %.sroa.28.0, %bb.ck ], [ %.sroa.28.0, %bb.cd ], [ %.sroa.28.0, %bb.cj ] ; 2 uses
  %.sroa.25.1 = phi i16 [ %.sroa.25.0.extract.trunc, %bb.em ], [ %i.dl, %bb.el ], [ %i.dl, %bb.dd ], [ %i.dl, %bb.cm ], [ %i.dl, %bb.cl ], [ %i.dl, %bb.ck ], [ %i.dl, %bb.cd ], [ %i.dl, %bb.cj ]
  %.sroa.19.1 = phi i16 [ %.sroa.13.1.i, %bb.em ], [ %i.dl, %bb.el ], [ %i.dl, %bb.dd ], [ %i.dl, %bb.cm ], [ %i.dl, %bb.cl ], [ %i.dl, %bb.ck ], [ %i.dl, %bb.cd ], [ %i.dl, %bb.cj ]
  %.sroa.10.2 = phi i16 [ %.sroa.9.1.i, %bb.em ], [ %i.ei, %bb.el ], [ %i.ei, %bb.dd ], [ %i.ei, %bb.cm ], [ %i.ei, %bb.cl ], [ %i.ei, %bb.ck ], [ 1, %bb.cd ], [ 1, %bb.cj ]
  %.sroa.0.1 = phi i16 [ %.sroa.0.1.i, %bb.em ], [ %i.ek, %bb.el ], [ %i.ek, %bb.dd ], [ %i.ek, %bb.cm ], [ %i.ek, %bb.cl ], [ %i.ek, %bb.ck ], [ 0, %bb.cd ], [ %i.ek, %bb.cj ]
  br i1 %i.e, label %bb.eo, label %bb.en, !prof !16, !nosanitize !15

bb.en:                                            ; preds = %fizzle_matches.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @31, i64 %i.b) #4, !nosanitize !15
  br label %bb.eo, !nosanitize !15

bb.eo:                                            ; preds = %fizzle_matches.exit, %bb.en
  store i32 %.pre-phi, ptr %i.n, align 4, !tbaa !33
  %.pre = zext i16 %.sroa.10137.2 to i32          ; 2 uses
  %.pre200 = shl nuw i32 %.pre, 16
  %.pre201 = zext i16 %.sroa.23.0 to i32
  %.pre202 = or disjoint i32 %.pre200, %.pre201
  %.pre205 = zext i16 %.sroa.0127.0 to i64        ; 2 uses
  %.pre206 = shl nuw nsw i64 %.pre205, 32
  %.pre192 = zext i32 %.pre202 to i64
  %.pre193 = or disjoint i64 %.pre206, %.pre192   ; 2 uses
  %.pre194 = lshr i64 %.pre193, 16                ; 2 uses
  %.pre195 = trunc i64 %.pre194 to i16
  br label %.critedge

.critedge:                                        ; preds = %bb.bq, %insert_match.exit, %bb.bl, %bb.eo
  %.sroa.8.0.extract.shift.i.pre-phi = phi i64 [ %.pre205, %bb.eo ], [ %.sroa.21.0.extract.shift.i, %bb.bl ], [ %.sroa.21.0.extract.shift.i, %insert_match.exit ], [ %.sroa.21.0.extract.shift.i, %bb.bq ] ; 2 uses
  %.sroa.2.0.extract.trunc.i.pre-phi = phi i16 [ %.pre195, %bb.eo ], [ %.sroa.1.0.extract.trunc.i, %bb.bl ], [ %.sroa.1.0.extract.trunc.i, %insert_match.exit ], [ %.sroa.1.0.extract.trunc.i, %bb.bq ] ; 3 uses
  %.sroa.2.0.extract.shift.i.pre-phi = phi i64 [ %.pre194, %bb.eo ], [ %.sroa.1.0.extract.shift.i, %bb.bl ], [ %.sroa.1.0.extract.shift.i, %insert_match.exit ], [ %.sroa.1.0.extract.shift.i, %bb.bq ] ; 2 uses
  %.sroa.0127.0.insert.insert131.pre-phi = phi i64 [ %.pre193, %bb.eo ], [ %.sroa.0127.0.insert.insert, %bb.bl ], [ %.sroa.0127.0.insert.insert, %insert_match.exit ], [ %.sroa.0127.0.insert.insert, %bb.bq ]
  %.sroa.0127.sroa.10.0.insert.ext190.pre-phi = phi i32 [ %.pre, %bb.eo ], [ %.sroa.0127.sroa.10.0.insert.ext, %bb.bl ], [ %.sroa.0127.sroa.10.0.insert.ext, %insert_match.exit ], [ %.sroa.0127.sroa.10.0.insert.ext, %bb.bq ]
  %.sroa.10137.3 = phi i16 [ %.sroa.10137.2, %bb.eo ], [ %.sroa.28.0, %bb.bl ], [ %.sroa.28.0, %insert_match.exit ], [ %.sroa.28.0, %bb.bq ]
  %.sroa.25.2 = phi i16 [ %.sroa.25.1, %bb.eo ], [ %.sroa.25.0, %bb.bl ], [ %.sroa.25.0, %insert_match.exit ], [ %.sroa.25.0, %bb.bq ]
  %.sroa.19.2 = phi i16 [ %.sroa.19.1, %bb.eo ], [ %.sroa.19.0, %bb.bl ], [ %.sroa.19.0, %insert_match.exit ], [ %.sroa.19.0, %bb.bq ]
  %.sroa.10.3 = phi i16 [ %.sroa.10.2, %bb.eo ], [ 0, %bb.bl ], [ 0, %insert_match.exit ], [ 0, %bb.bq ]
  %.sroa.0.2 = phi i16 [ %.sroa.0.1, %bb.eo ], [ %.sroa.0.0, %bb.bl ], [ %.sroa.0.0, %insert_match.exit ], [ %.sroa.0.0, %bb.bq ]
  %i.if = icmp ult i16 %.sroa.2.0.extract.trunc.i.pre-phi, 4
  br i1 %i.if, label %.preheader.i, label %bb.ge

.preheader.i:                                     ; preds = %.critedge
  %.not19.i = icmp eq i16 %.sroa.2.0.extract.trunc.i.pre-phi, 0
  br i1 %.not19.i, label %emit_match.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %.sroa.8.0.extract.trunc.i = trunc i64 %.sroa.8.0.extract.shift.i.pre-phi to i16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.gd
  %.022.i = phi i32 [ %i.kl, %bb.gd ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.8.021.i = phi i16 [ %i.ku, %bb.gd ], [ %.sroa.8.0.extract.trunc.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.2.020.i = phi i16 [ %i.kv, %bb.gd ], [ %.sroa.2.0.extract.trunc.i.pre-phi, %.lr.ph.i.preheader ]
  br i1 %i.e, label %bb.eq, label %bb.ep, !prof !16, !nosanitize !15

bb.ep:                                            ; preds = %.lr.ph.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @114, i64 %i.b) #4, !nosanitize !15
  br label %bb.eq, !nosanitize !15

bb.eq:                                            ; preds = %.lr.ph.i, %bb.ep
  %i.ig = load ptr, ptr %i.v, align 8, !tbaa !43  ; 3 uses
  %i.ih = zext i16 %.sroa.8.021.i to i64          ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ih ; 2 uses
  %i.ij = ptrtoint ptr %i.ig to i64, !nosanitize !15 ; 3 uses
  %i.ik = add i64 %i.ij, %i.ih, !nosanitize !15   ; 3 uses
  %i.il = icmp ne ptr %i.ig, null, !nosanitize !15 ; 2 uses
  %i.im = icmp eq i64 %i.ik, 0
  %i.in = xor i1 %i.il, %i.im
  %i.io = icmp uge i64 %i.ik, %i.ij, !nosanitize !15
  %i.ip = and i1 %i.io, %i.in, !nosanitize !15
  br i1 %i.ip, label %bb.es, label %bb.er, !prof !16, !nosanitize !15

bb.er:                                            ; preds = %bb.eq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @115, i64 %i.ij, i64 %i.ik) #4, !nosanitize !15
  br label %bb.es, !nosanitize !15

bb.es:                                            ; preds = %bb.er, %bb.eq
  br i1 %i.il, label %bb.eu, label %bb.et, !prof !16, !nosanitize !15

bb.et:                                            ; preds = %bb.es
  %i.iq = ptrtoint ptr %i.ii to i64, !nosanitize !15
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @116, i64 %i.iq) #4, !nosanitize !15
  br label %bb.eu, !nosanitize !15

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.ir = load i8, ptr %i.ii, align 1, !tbaa !44  ; 2 uses
  br i1 %i.e, label %bb.ew, label %bb.ev, !prof !16, !nosanitize !15

bb.ev:                                            ; preds = %bb.eu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @122, i64 %i.b) #4, !nosanitize !15
  br label %bb.ew, !nosanitize !15

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.is = load ptr, ptr %i.w, align 16, !tbaa !48 ; 3 uses
  br i1 %i.e, label %bb.ey, label %bb.ex, !prof !16, !nosanitize !15

bb.ex:                                            ; preds = %bb.ew
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @123, i64 %i.b) #4, !nosanitize !15
  br label %bb.ey, !nosanitize !15

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  br i1 %i.aa, label %bb.fa, label %bb.ez, !prof !16, !nosanitize !15

bb.ez:                                            ; preds = %bb.ey
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @124, i64 %i.y) #4, !nosanitize !15
  br label %bb.fa, !nosanitize !15

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.it = load i32, ptr %i.x, align 64, !tbaa !49
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.iu ; 2 uses
  %i.iw = shl nuw nsw i64 %i.iu, 1
  %i.ix = ptrtoint ptr %i.is to i64, !nosanitize !15 ; 3 uses
  %i.iy = add i64 %i.iw, %i.ix, !nosanitize !15   ; 3 uses
  %i.iz = icmp ne ptr %i.is, null, !nosanitize !15 ; 2 uses
  %i.ja = icmp eq i64 %i.iy, 0
  %i.jb = xor i1 %i.iz, %i.ja
  %i.jc = icmp uge i64 %i.iy, %i.ix, !nosanitize !15
  %i.jd = and i1 %i.jc, %i.jb, !nosanitize !15
  br i1 %i.jd, label %bb.fc, label %bb.fb, !prof !16, !nosanitize !15

bb.fb:                                            ; preds = %bb.fa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @125, i64 %i.ix, i64 %i.iy) #4, !nosanitize !15
  br label %bb.fc, !nosanitize !15

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.je = ptrtoint ptr %i.iv to i64, !nosanitize !15 ; 2 uses
  %i.jf = and i64 %i.je, 1, !nosanitize !15
  %i.jg = icmp eq i64 %i.jf, 0, !nosanitize !15
  %i.jh = and i1 %i.iz, %i.jg
  br i1 %i.jh, label %bb.fe, label %bb.fd, !prof !16, !nosanitize !15

bb.fd:                                            ; preds = %bb.fc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @126, i64 %i.je) #4, !nosanitize !15
  br label %bb.fe, !nosanitize !15

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  store i16 0, ptr %i.iv, align 2, !tbaa !50
  br i1 %i.e, label %bb.fg, label %bb.ff, !prof !16, !nosanitize !15

bb.ff:                                            ; preds = %bb.fe
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @127, i64 %i.b) #4, !nosanitize !15
  br label %bb.fg, !nosanitize !15

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  %i.ji = load ptr, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  br i1 %i.e, label %bb.fi, label %bb.fh, !prof !16, !nosanitize !15

bb.fh:                                            ; preds = %bb.fg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @128, i64 %i.b) #4, !nosanitize !15
  br label %bb.fi, !nosanitize !15

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.jj = load i32, ptr %i.x, align 64, !tbaa !49 ; 2 uses
  %i.jk = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.jj, i32 1), !nosanitize !15 ; 2 uses
  %i.jl = extractvalue { i32, i1 } %i.jk, 0, !nosanitize !15
  %i.jm = extractvalue { i32, i1 } %i.jk, 1, !nosanitize !15
  %i.jn = zext i32 %i.jj to i64                   ; 2 uses
  br i1 %i.jm, label %bb.fj, label %._crit_edge.i.i, !prof !35, !nosanitize !15

bb.fj:                                            ; preds = %bb.fi
  call void @__ubsan_handle_add_overflow(ptr nonnull @129, i64 %i.jn, i64 1) #5, !nosanitize !15
  br label %._crit_edge.i.i, !nosanitize !15

._crit_edge.i.i:                                  ; preds = %bb.fj, %bb.fi
  %.pre-phi.i.i = phi i64 [ 4294967295, %bb.fj ], [ %i.jn, %bb.fi ] ; 2 uses
  store i32 %i.jl, ptr %i.x, align 64, !tbaa !49
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.pre-phi.i.i ; 2 uses
  %i.jp = ptrtoint ptr %i.ji to i64, !nosanitize !15 ; 3 uses
  %i.jq = add i64 %.pre-phi.i.i, %i.jp, !nosanitize !15 ; 3 uses
  %i.jr = icmp ne ptr %i.ji, null, !nosanitize !15 ; 2 uses
  %i.js = icmp eq i64 %i.jq, 0
  %i.jt = xor i1 %i.jr, %i.js
  %i.ju = icmp uge i64 %i.jq, %i.jp, !nosanitize !15
  %i.jv = and i1 %i.ju, %i.jt, !nosanitize !15
  br i1 %i.jv, label %bb.fl, label %bb.fk, !prof !16, !nosanitize !15

bb.fk:                                            ; preds = %._crit_edge.i.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @130, i64 %i.jp, i64 %i.jq) #4, !nosanitize !15
  br label %bb.fl, !nosanitize !15

bb.fl:                                            ; preds = %bb.fk, %._crit_edge.i.i
  br i1 %i.jr, label %bb.fn, label %bb.fm, !prof !16, !nosanitize !15

bb.fm:                                            ; preds = %bb.fl
  %i.jw = ptrtoint ptr %i.jo to i64, !nosanitize !15
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @131, i64 %i.jw) #4, !nosanitize !15
  br label %bb.fn, !nosanitize !15

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  store i8 %i.ir, ptr %i.jo, align 1, !tbaa !44
  br i1 %i.e, label %bb.fp, label %bb.fo, !prof !16, !nosanitize !15

bb.fo:                                            ; preds = %bb.fn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @132, i64 %i.b) #4, !nosanitize !15
  br label %bb.fp, !nosanitize !15

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.jx = zext i8 %i.ir to i64, !nosanitize !15   ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.jx ; 3 uses
  %i.jz = shl nuw nsw i64 %i.jx, 2
  %i.ka = add i64 %i.jz, %i.ae, !nosanitize !15   ; 2 uses
  %.not.i.i = icmp ult i64 %i.ka, %i.ae, !nosanitize !15
  br i1 %.not.i.i, label %bb.fq, label %bb.fr, !prof !35, !nosanitize !15

bb.fq:                                            ; preds = %bb.fp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @133, i64 %i.ae, i64 %i.ka) #4, !nosanitize !15
  br label %bb.fr, !nosanitize !15

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.kb = ptrtoint ptr %i.jy to i64, !nosanitize !15 ; 3 uses
  %i.kc = and i64 %i.kb, 3, !nosanitize !15
  %i.kd = icmp eq i64 %i.kc, 0, !nosanitize !15
  br i1 %i.kd, label %.critedge241, label %bb.fs, !prof !16, !nosanitize !15

bb.fs:                                            ; preds = %bb.fr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @135, i64 %i.kb) #4, !nosanitize !15
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @137, i64 %i.kb) #4, !nosanitize !15
  br label %.critedge241, !nosanitize !15

.critedge241:                                     ; preds = %bb.fr, %bb.fs
  %i.ke = load i16, ptr %i.jy, align 4, !tbaa !44
  %i.kf = add i16 %i.ke, 1
  store i16 %i.kf, ptr %i.jy, align 4, !tbaa !44
  br i1 %i.e, label %bb.fu, label %bb.ft, !prof !16, !nosanitize !15

bb.ft:                                            ; preds = %.critedge241
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @138, i64 %i.b) #4, !nosanitize !15
  br label %bb.fu, !nosanitize !15

bb.fu:                                            ; preds = %bb.ft, %.critedge241
  br i1 %i.aa, label %bb.fw, label %bb.fv, !prof !16, !nosanitize !15

bb.fv:                                            ; preds = %bb.fu
end_hunk_0
begin_hunk_1_@deflate_medium:bb.a
  br i1 %i.e, label %bb.gz, label %bb.gy, !prof !16, !nosanitize !15

bb.gy:                                            ; preds = %bb.gx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @151, i64 %i.b) #4, !nosanitize !15
  br label %bb.gz, !nosanitize !15

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.mk = load i32, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ml = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.mk, i32 1), !nosanitize !15 ; 2 uses
  %i.mm = extractvalue { i32, i1 } %i.ml, 0, !nosanitize !15
  %i.mn = extractvalue { i32, i1 } %i.ml, 1, !nosanitize !15
  br i1 %i.mn, label %bb.ha, label %bb.hb, !prof !35, !nosanitize !15

bb.ha:                                            ; preds = %bb.gz
  %i.mo = zext i32 %i.mk to i64, !nosanitize !15
  call void @__ubsan_handle_add_overflow(ptr nonnull @152, i64 %i.mo, i64 1) #5, !nosanitize !15
  br label %bb.hb, !nosanitize !15

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  store i32 %i.mm, ptr %i.ac, align 8, !tbaa !53
  %i.mp = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 range(i32 -65535, 65536) %i.kz, i32 1), !nosanitize !15 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.mp, 0, !nosanitize !15 ; 3 uses
  %i.mr = extractvalue { i32, i1 } %i.mp, 1, !nosanitize !15
  br i1 %i.mr, label %bb.hc, label %bb.hd, !prof !35, !nosanitize !15

bb.hc:                                            ; preds = %bb.hb
  %i.ms = zext nneg i32 %i.kz to i64, !nosanitize !15
  call void @__ubsan_handle_sub_overflow(ptr nonnull @153, i64 %i.ms, i64 1) #5, !nosanitize !15
  br label %bb.hd, !nosanitize !15

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  br i1 %i.e, label %bb.hf, label %bb.he, !prof !16, !nosanitize !15

bb.he:                                            ; preds = %bb.hd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @154, i64 %i.b) #4, !nosanitize !15
  br label %bb.hf, !nosanitize !15

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.mt = zext nneg i32 %i.lc to i64              ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr @zng_length_code, i64 %i.mt
  %i.mv = add i64 %i.mt, ptrtoint (ptr @zng_length_code to i64), !nosanitize !15 ; 2 uses
  %.not.i12.i = icmp ult i64 %i.mv, ptrtoint (ptr @zng_length_code to i64), !nosanitize !15
  br i1 %.not.i12.i, label %bb.hg, label %bb.hh, !prof !35, !nosanitize !15

bb.hg:                                            ; preds = %bb.hf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @155, i64 ptrtoint (ptr @zng_length_code to i64), i64 %i.mv) #4, !nosanitize !15
  br label %bb.hh, !nosanitize !15

bb.hh:                                            ; preds = %bb.hf, %bb.hg
  %i.mw = load i8, ptr %i.mu, align 1, !tbaa !44
  %i.mx = zext i8 %i.mw to i64
  %i.my = add nuw nsw i64 %i.mx, 257              ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.my ; 3 uses
  %i.na = shl nuw nsw i64 %i.my, 2
  %i.nb = add i64 %i.na, %i.ae, !nosanitize !15   ; 2 uses
  %.not18.i.i = icmp ult i64 %i.nb, %i.ae, !nosanitize !15
  br i1 %.not18.i.i, label %bb.hi, label %bb.hj, !prof !35, !nosanitize !15

bb.hi:                                            ; preds = %bb.hh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @156, i64 %i.ae, i64 %i.nb) #4, !nosanitize !15
  br label %bb.hj, !nosanitize !15

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.nc = ptrtoint ptr %i.mz to i64, !nosanitize !15 ; 3 uses
  %i.nd = and i64 %i.nc, 3, !nosanitize !15
  %i.ne = icmp eq i64 %i.nd, 0, !nosanitize !15
  br i1 %i.ne, label %.critedge243, label %bb.hk, !prof !16, !nosanitize !15

bb.hk:                                            ; preds = %bb.hj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @157, i64 %i.nc) #4, !nosanitize !15
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @158, i64 %i.nc) #4, !nosanitize !15
  br label %.critedge243, !nosanitize !15

.critedge243:                                     ; preds = %bb.hj, %bb.hk
  %i.nf = load i16, ptr %i.mz, align 4, !tbaa !44
  %i.ng = add i16 %i.nf, 1
  store i16 %i.ng, ptr %i.mz, align 4, !tbaa !44
  br i1 %i.e, label %bb.hm, label %bb.hl, !prof !16, !nosanitize !15

bb.hl:                                            ; preds = %.critedge243
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @159, i64 %i.b) #4, !nosanitize !15
  br label %bb.hm, !nosanitize !15

bb.hm:                                            ; preds = %bb.hl, %.critedge243
  %i.nh = icmp ult i32 %i.mq, 256
  br i1 %i.nh, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.ni = zext nneg i32 %i.mq to i64              ; 3 uses
  %i.nj = add i64 %i.ni, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !15 ; 2 uses
  %.not21.i.i = icmp ult i64 %i.nj, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !15
  br i1 %.not21.i.i, label %bb.ho, label %bb.hr, !prof !35, !nosanitize !15

bb.ho:                                            ; preds = %bb.hn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @160, i64 ptrtoint (ptr @zng_dist_code to i64), i64 %i.nj) #4, !nosanitize !15
  br label %bb.hr, !nosanitize !15

bb.hp:                                            ; preds = %bb.hm
  %i.nk = lshr i32 %i.mq, 7
  %i.nl = add nuw nsw i32 %i.nk, 256
  %i.nm = zext nneg i32 %i.nl to i64              ; 3 uses
  %i.nn = add i64 %i.nm, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !15 ; 2 uses
  %.not19.i.i = icmp ult i64 %i.nn, ptrtoint (ptr @zng_dist_code to i64), !nosanitize !15
  br i1 %.not19.i.i, label %bb.hq, label %bb.hr, !prof !35, !nosanitize !15

bb.hq:                                            ; preds = %bb.hp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @161, i64 ptrtoint (ptr @zng_dist_code to i64), i64 %i.nn) #4, !nosanitize !15
  br label %bb.hr, !nosanitize !15

bb.hr:                                            ; preds = %bb.hp, %bb.hq, %bb.hn, %bb.ho
  %.pn = phi i64 [ %i.ni, %bb.hn ], [ %i.ni, %bb.ho ], [ %i.nm, %bb.hq ], [ %i.nm, %bb.hp ]
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %.pn
  %.in.i.i = load i8, ptr %.in.in.i.i, align 1, !tbaa !44 ; 2 uses
  %i.no = zext i8 %.in.i.i to i64                 ; 3 uses
  %i.np = icmp ult i8 %.in.i.i, 61
  br i1 %i.np, label %bb.ht, label %bb.hs, !prof !16, !nosanitize !15

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @163, i64 %i.no) #4, !nosanitize !15
  br label %bb.ht, !nosanitize !15

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.no ; 3 uses
  %i.nr = shl nuw nsw i64 %i.no, 2
  %i.ns = add i64 %i.nr, %i.ag, !nosanitize !15   ; 2 uses
  %.not23.i.i = icmp ult i64 %i.ns, %i.ag, !nosanitize !15
  br i1 %.not23.i.i, label %bb.hu, label %bb.hv, !prof !35, !nosanitize !15

bb.hu:                                            ; preds = %bb.ht
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @164, i64 %i.ag, i64 %i.ns) #4, !nosanitize !15
  br label %bb.hv, !nosanitize !15

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.nt = ptrtoint ptr %i.nq to i64, !nosanitize !15 ; 3 uses
  %i.nu = and i64 %i.nt, 3, !nosanitize !15
  %i.nv = icmp eq i64 %i.nu, 0, !nosanitize !15
  br i1 %i.nv, label %.critedge245, label %bb.hw, !prof !16, !nosanitize !15

bb.hw:                                            ; preds = %bb.hv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @165, i64 %i.nt) #4, !nosanitize !15
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.nt) #4, !nosanitize !15
  br label %.critedge245, !nosanitize !15

.critedge245:                                     ; preds = %bb.hv, %bb.hw
  %i.nw = load i16, ptr %i.nq, align 4, !tbaa !44
  %i.nx = add i16 %i.nw, 1
  store i16 %i.nx, ptr %i.nq, align 4, !tbaa !44
  br i1 %i.e, label %bb.hy, label %bb.hx, !prof !16, !nosanitize !15

bb.hx:                                            ; preds = %.critedge245
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @167, i64 %i.b) #4, !nosanitize !15
  br label %bb.hy, !nosanitize !15

bb.hy:                                            ; preds = %bb.hx, %.critedge245
  br i1 %i.aa, label %bb.ia, label %bb.hz, !prof !16, !nosanitize !15

bb.hz:                                            ; preds = %bb.hy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.y) #4, !nosanitize !15
  br label %bb.ia, !nosanitize !15

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.ny = load i32, ptr %i.x, align 64, !tbaa !49
  br i1 %i.e, label %zng_tr_tally_dist.exit.i, label %bb.ib, !prof !16, !nosanitize !15

bb.ib:                                            ; preds = %bb.ia
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @169, i64 %i.b) #4, !nosanitize !15
  br label %zng_tr_tally_dist.exit.i, !nosanitize !15

zng_tr_tally_dist.exit.i:                         ; preds = %bb.ia, %bb.ib
  %i.nz = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.oa = icmp ne i32 %i.ny, %i.nz
  br i1 %i.e, label %bb.id, label %bb.ic, !prof !16, !nosanitize !15

bb.ic:                                            ; preds = %zng_tr_tally_dist.exit.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.b) #4, !nosanitize !15
  br label %bb.id, !nosanitize !15

bb.id:                                            ; preds = %zng_tr_tally_dist.exit.i, %bb.ic
  %i.ob = load i32, ptr %i.l, align 4, !tbaa !31  ; 2 uses
  %i.oc = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ob, i32 %i.lb), !nosanitize !15 ; 2 uses
  %i.od = extractvalue { i32, i1 } %i.oc, 0, !nosanitize !15
  %i.oe = extractvalue { i32, i1 } %i.oc, 1, !nosanitize !15
  br i1 %i.oe, label %bb.ie, label %bb.if, !prof !35, !nosanitize !15

bb.ie:                                            ; preds = %bb.id
  %i.of = zext i32 %i.ob to i64, !nosanitize !15
  %i.og = and i64 %.sroa.2.0.extract.shift.i.pre-phi, 65535
  call void @__ubsan_handle_sub_overflow(ptr nonnull @121, i64 %i.of, i64 %i.og) #5, !nosanitize !15
  br label %bb.if, !nosanitize !15

bb.if:                                            ; preds = %bb.ie, %bb.id
  store i32 %i.od, ptr %i.l, align 4, !tbaa !31
  br label %emit_match.exit

emit_match.exit.loopexit:                         ; preds = %bb.gd
  %i.oh = icmp eq i32 %i.kl, 0
  br label %emit_match.exit

emit_match.exit:                                  ; preds = %emit_match.exit.loopexit, %.preheader.i, %bb.if
  %.09.i = phi i1 [ %i.oa, %bb.if ], [ true, %.preheader.i ], [ %i.oh, %emit_match.exit.loopexit ]
  br i1 %i.e, label %bb.ih, label %bb.ig, !prof !16, !nosanitize !15

bb.ig:                                            ; preds = %emit_match.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @32, i64 %i.b) #4, !nosanitize !15
  br label %bb.ih, !nosanitize !15

bb.ih:                                            ; preds = %emit_match.exit, %bb.ig
  %i.oi = load i32, ptr %i.n, align 4, !tbaa !33  ; 2 uses
  %i.oj = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.oi, i32 %.sroa.0127.sroa.10.0.insert.ext190.pre-phi), !nosanitize !15 ; 2 uses
  %i.ok = extractvalue { i32, i1 } %i.oj, 0, !nosanitize !15
  %i.ol = extractvalue { i32, i1 } %i.oj, 1, !nosanitize !15
  br i1 %i.ol, label %bb.ii, label %bb.ij, !prof !35, !nosanitize !15

bb.ii:                                            ; preds = %bb.ih
  %i.om = zext i32 %i.oi to i64, !nosanitize !15
  %3 = zext i16 %.sroa.10137.3 to i64
  call void @__ubsan_handle_add_overflow(ptr nonnull @33, i64 %i.om, i64 %3) #5, !nosanitize !15
  br label %bb.ij, !nosanitize !15

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  store i32 %i.ok, ptr %i.n, align 4, !tbaa !33
  br i1 %.09.i, label %.backedge, label %bb.ik, !prof !39

.backedge:                                        ; preds = %bb.ij, %bb.jk
  br label %bb.f

bb.ik:                                            ; preds = %bb.ij
  br i1 %i.e, label %bb.im, label %bb.il, !prof !16, !nosanitize !15

bb.il:                                            ; preds = %bb.ik
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @34, i64 %i.b) #4, !nosanitize !15
  br label %bb.im, !nosanitize !15

bb.im:                                            ; preds = %bb.ik, %bb.il
  %i.on = load i32, ptr %i.ai, align 4, !tbaa !54
  %i.oo = icmp sgt i32 %i.on, -1
  br i1 %i.oo, label %bb.in, label %bb.it

bb.in:                                            ; preds = %bb.im
  br i1 %i.e, label %bb.ip, label %bb.io, !prof !16, !nosanitize !15

bb.io:                                            ; preds = %bb.in
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @35, i64 %i.b) #4, !nosanitize !15
  br label %bb.ip, !nosanitize !15

bb.ip:                                            ; preds = %bb.in, %bb.io
  %i.op = load ptr, ptr %i.v, align 8, !tbaa !43  ; 3 uses
  br i1 %i.e, label %bb.ir, label %bb.iq, !prof !16, !nosanitize !15

bb.iq:                                            ; preds = %bb.ip
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @36, i64 %i.b) #4, !nosanitize !15
  br label %bb.ir, !nosanitize !15

bb.ir:                                            ; preds = %bb.ip, %bb.iq
  %i.oq = load i32, ptr %i.ai, align 4, !tbaa !54
  %i.or = zext i32 %i.oq to i64                   ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.or ; 2 uses
  %i.ot = ptrtoint ptr %i.op to i64, !nosanitize !15 ; 3 uses
  %i.ou = add i64 %i.or, %i.ot, !nosanitize !15   ; 3 uses
  %i.ov = icmp ne ptr %i.op, null, !nosanitize !15
  %i.ow = icmp eq i64 %i.ou, 0
  %i.ox = xor i1 %i.ov, %i.ow
  %i.oy = icmp uge i64 %i.ou, %i.ot, !nosanitize !15
  %i.oz = and i1 %i.oy, %i.ox, !nosanitize !15
  br i1 %i.oz, label %bb.it, label %bb.is, !prof !16, !nosanitize !15

bb.is:                                            ; preds = %bb.ir
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @37, i64 %i.ot, i64 %i.ou) #4, !nosanitize !15
  br label %bb.it, !nosanitize !15

bb.it:                                            ; preds = %bb.im, %bb.ir, %bb.is
  %i.pa = phi ptr [ %i.os, %bb.ir ], [ %i.os, %bb.is ], [ null, %bb.im ]
  br i1 %i.e, label %bb.iv, label %bb.iu, !prof !16, !nosanitize !15

bb.iu:                                            ; preds = %bb.it
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @38, i64 %i.b) #4, !nosanitize !15
  br label %bb.iv, !nosanitize !15

bb.iv:                                            ; preds = %bb.it, %bb.iu
  %i.pb = load i32, ptr %i.n, align 4, !tbaa !33  ; 2 uses
  br i1 %i.e, label %bb.ix, label %bb.iw, !prof !16, !nosanitize !15

bb.iw:                                            ; preds = %bb.iv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @39, i64 %i.b) #4, !nosanitize !15
  br label %bb.ix, !nosanitize !15

bb.ix:                                            ; preds = %bb.iv, %bb.iw
  %i.pc = load i32, ptr %i.ai, align 4, !tbaa !54 ; 2 uses
  %i.pd = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.pb, i32 %i.pc), !nosanitize !15 ; 2 uses
  %i.pe = extractvalue { i32, i1 } %i.pd, 0, !nosanitize !15
  %i.pf = extractvalue { i32, i1 } %i.pd, 1, !nosanitize !15
  br i1 %i.pf, label %bb.iy, label %bb.iz, !prof !35, !nosanitize !15

bb.iy:                                            ; preds = %bb.ix
  %i.pg = zext i32 %i.pb to i64, !nosanitize !15
  %i.ph = zext i32 %i.pc to i64, !nosanitize !15
  call void @__ubsan_handle_sub_overflow(ptr nonnull @40, i64 %i.pg, i64 %i.ph) #4, !nosanitize !15
  br label %bb.iz, !nosanitize !15

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  call void @zng_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.pa, i32 noundef %i.pe, i32 noundef 0) #4
  br i1 %i.e, label %bb.jb, label %bb.ja, !prof !16, !nosanitize !15

bb.ja:                                            ; preds = %bb.iz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @41, i64 %i.b) #4, !nosanitize !15
  br label %bb.jb, !nosanitize !15

bb.jb:                                            ; preds = %bb.iz, %bb.ja
  %i.pi = load i32, ptr %i.n, align 4, !tbaa !33  ; 2 uses
  br i1 %i.e, label %.critedge247, label %bb.jc, !prof !16, !nosanitize !15

bb.jc:                                            ; preds = %bb.jb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @42, i64 %i.b) #4, !nosanitize !15
  store i32 %i.pi, ptr %i.ai, align 4, !tbaa !54
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @43, i64 %i.b) #4, !nosanitize !15
  br label %bb.jd, !nosanitize !15

.critedge247:                                     ; preds = %bb.jb
  store i32 %i.pi, ptr %i.ai, align 4, !tbaa !54
  br label %bb.jd

bb.jd:                                            ; preds = %.critedge247, %bb.jc
  br i1 %invariant.op, label %bb.jf, label %bb.je, !prof !16, !nosanitize !15

bb.je:                                            ; preds = %bb.jd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @45, i64 %i.b) #4, !nosanitize !15
  br label %bb.jf, !nosanitize !15

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.pj = load ptr, ptr %0, align 64, !tbaa !55
  call void @zng_flush_pending(ptr noundef %i.pj) #4
  br i1 %i.d, label %.critedge249, label %bb.jg, !prof !16, !nosanitize !15

bb.jg:                                            ; preds = %bb.jf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @46, i64 %i.b) #4, !nosanitize !15
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @47, i64 %i.b) #4, !nosanitize !15
  br label %.critedge249, !nosanitize !15

.critedge249:                                     ; preds = %bb.jf, %bb.jg
  %i.pk = load ptr, ptr %0, align 64, !tbaa !55   ; 3 uses
  %i.pl = icmp ne ptr %i.pk, null, !nosanitize !15
  %i.pm = ptrtoint ptr %i.pk to i64, !nosanitize !15 ; 2 uses
  %i.pn = and i64 %i.pm, 7, !nosanitize !15
  %i.po = icmp eq i64 %i.pn, 0, !nosanitize !15
  %i.pp = and i1 %i.pl, %i.po, !nosanitize !15
  br i1 %i.pp, label %bb.ji, label %bb.jh, !prof !16, !nosanitize !15

bb.jh:                                            ; preds = %.critedge249
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @49, i64 %i.pm) #4, !nosanitize !15
  br label %bb.ji, !nosanitize !15

bb.ji:                                            ; preds = %bb.jh, %.critedge249
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 32 ; 2 uses
  %i.pr = ptrtoint ptr %i.pq to i64, !nosanitize !15 ; 2 uses
  %i.ps = and i64 %i.pr, 7, !nosanitize !15
  %i.pt = icmp eq i64 %i.ps, 0, !nosanitize !15
  br i1 %i.pt, label %bb.jk, label %bb.jj, !prof !16, !nosanitize !15

bb.jj:                                            ; preds = %bb.ji
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @51, i64 %i.pr) #4, !nosanitize !15
  br label %bb.jk, !nosanitize !15

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.pu = load i32, ptr %i.pq, align 8, !tbaa !58
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %.thread97, label %.backedge

bb.jl:                                            ; preds = %bb.n
  br i1 %i.e, label %bb.jn, label %bb.jm, !prof !16, !nosanitize !15

bb.jm:                                            ; preds = %bb.jl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @52, i64 %i.b) #4, !nosanitize !15
  br label %bb.jn, !nosanitize !15

bb.jn:                                            ; preds = %bb.jl, %bb.jm
  %i.pw = load i32, ptr %i.n, align 4, !tbaa !33
  %i.px = icmp ult i32 %i.pw, 2
  br i1 %i.px, label %bb.jo, label %bb.jr

bb.jo:                                            ; preds = %bb.jn
  br i1 %i.e, label %bb.jq, label %bb.jp, !prof !16, !nosanitize !15

bb.jp:                                            ; preds = %bb.jo
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @53, i64 %i.b) #4, !nosanitize !15
  br label %bb.jq, !nosanitize !15

bb.jq:                                            ; preds = %bb.jo, %bb.jp
  %i.py = load i32, ptr %i.n, align 4, !tbaa !33
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jn, %bb.jq
  %i.pz = phi i32 [ %i.py, %bb.jq ], [ 2, %bb.jn ]
  br i1 %i.e, label %bb.jt, label %bb.js, !prof !16, !nosanitize !15

bb.js:                                            ; preds = %bb.jr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @54, i64 %i.b) #4, !nosanitize !15
  br label %bb.jt, !nosanitize !15

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 5980
  store i32 %i.pz, ptr %i.qa, align 4, !tbaa !59
  %i.qb = icmp eq i32 %1, 4
  br i1 %i.qb, label %bb.ju, label %bb.kv

bb.ju:                                            ; preds = %bb.jt
  br i1 %i.e, label %bb.jw, label %bb.jv, !prof !16, !nosanitize !15

bb.jv:                                            ; preds = %bb.ju
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @55, i64 %i.b) #4, !nosanitize !15
  br label %bb.jw, !nosanitize !15

bb.jw:                                            ; preds = %bb.ju, %bb.jv
  %i.qc = load i32, ptr %i.ai, align 4, !tbaa !54
  %i.qd = icmp sgt i32 %i.qc, -1
  br i1 %i.qd, label %bb.jx, label %bb.kd

bb.jx:                                            ; preds = %bb.jw
end_hunk_1
