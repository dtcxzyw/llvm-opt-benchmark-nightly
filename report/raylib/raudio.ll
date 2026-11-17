Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@ExportWave:bb.a
  store ptr %i.b, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr %i.c, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ak = call fastcc i32 @drwav_init_write__internal(ptr noundef nonnull %2, ptr noundef nonnull readonly %3, i64 noundef 0)
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %drwav_init_memory_write__internal.exit.thread, label %bb.b

bb.b:                                             ; preds = %drwav_init_memory_write__internal.exit
  %i.al = load i32, ptr %0, align 8               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq i32 %i.al, 0
  %i.ap = icmp eq ptr %i.an, null
  %or.cond3.i.i = or i1 %i.ao, %i.ap
  br i1 %or.cond3.i.i, label %drwav_init_memory_write__internal.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = zext i32 %i.al to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 122 ; 2 uses
  %i.at = load i16, ptr %i.ar, align 8
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, %i.aq
  %i.aw = load i16, ptr %i.as, align 2
  %i.ax = zext i16 %i.aw to i64                   ; 2 uses
  %i.ay = mul nuw i64 %i.av, %i.ax
  %i.az = lshr i64 %i.ay, 3                       ; 2 uses
  %.not43.i.i = icmp eq i64 %i.az, 0
  br i1 %.not43.i.i, label %.thread.i.i, label %drwav_write_raw.exit.lr.ph.i.i

drwav_write_raw.exit.lr.ph.i.i:                   ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  br label %drwav_write_raw.exit.i.i

drwav_write_raw.exit.i.i:                         ; preds = %bb.d, %drwav_write_raw.exit.lr.ph.i.i
  %.02746.i.i = phi ptr [ %i.an, %drwav_write_raw.exit.lr.ph.i.i ], [ %i.bj, %bb.d ] ; 2 uses
  %.02845.i.i = phi i64 [ 0, %drwav_write_raw.exit.lr.ph.i.i ], [ %i.bi, %bb.d ] ; 2 uses
  %.03044.i.i = phi i64 [ %i.az, %drwav_write_raw.exit.lr.ph.i.i ], [ %i.bh, %bb.d ] ; 2 uses
  %i.bb = load ptr, ptr %i.p, align 8
  %i.bc = load ptr, ptr %i.r, align 8
  %i.bd = call i64 %i.bb(ptr noundef %i.bc, ptr noundef nonnull %.02746.i.i, i64 noundef %.03044.i.i) #61, !inline_history !1151 ; 5 uses
  %i.be = load i64, ptr %i.ba, align 8
  %i.bf = add i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.ba, align 8
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %.thread.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %drwav_write_raw.exit.i.i
  %i.bh = sub i64 %.03044.i.i, %i.bd              ; 2 uses
  %i.bi = add i64 %i.bd, %.02845.i.i              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02746.i.i, i64 %i.bd
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %.thread.loopexit.i.i, label %drwav_write_raw.exit.i.i

.thread.loopexit.i.i:                             ; preds = %bb.d, %drwav_write_raw.exit.i.i
  %.028.lcssa.ph.i.i = phi i64 [ %i.bi, %bb.d ], [ %.02845.i.i, %drwav_write_raw.exit.i.i ]
  %.pre.i.i = load i16, ptr %i.as, align 2
  %.pre48.i.i = load i16, ptr %i.ar, align 8
  %.pre49.i.i = zext i16 %.pre.i.i to i64
  %.pre50.i.i = zext i16 %.pre48.i.i to i64
  %i.bk = shl i64 %.028.lcssa.ph.i.i, 3
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.loopexit.i.i, %bb.c
  %.pre-phi51.i.i = phi i64 [ %.pre50.i.i, %.thread.loopexit.i.i ], [ %i.au, %bb.c ]
  %.pre-phi.i.i = phi i64 [ %.pre49.i.i, %.thread.loopexit.i.i ], [ %i.ax, %bb.c ]
  %.028.lcssa.i.i = phi i64 [ %i.bk, %.thread.loopexit.i.i ], [ 0, %bb.c ]
  %i.bl = mul nuw nsw i64 %.pre-phi.i.i, %.pre-phi51.i.i
  %i.bm = udiv i64 %.028.lcssa.i.i, %i.bl
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp ne i64 %i.bn, 0
  br label %drwav_init_memory_write__internal.exit.thread

drwav_init_memory_write__internal.exit.thread:    ; preds = %.thread.i.i, %bb.b, %drwav_init_memory_write__internal.exit
  %.0 = phi i1 [ false, %bb.b ], [ false, %drwav_init_memory_write__internal.exit ], [ %i.bo, %.thread.i.i ]
  %i.bp = call i32 @drwav_uninit(ptr noundef nonnull %2)
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.e, label %.split

bb.e:                                             ; preds = %drwav_init_memory_write__internal.exit.thread
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = load i64, ptr %i.c, align 8
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = call zeroext i1 @SaveFileData(ptr noundef %1, ptr noundef %i.br, i32 noundef %i.bt) #61 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.e, %drwav_init_memory_write__internal.exit.thread
  %i.bv = load ptr, ptr %i.b, align 8
  call void @free(ptr noundef %i.bv) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #61
  br i1 %.0, label %bb.n, label %.thread

bb.f:                                             ; preds = %bb.a
  %i.bw = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.244) #61
  br i1 %i.bw, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = icmp eq i32 %i.by, 16
  br i1 %i.bz, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ca, i8 0, i64 256, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cc = load i32, ptr %i.cb, align 4
  store i32 %i.cc, ptr %4, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ce = load <2 x i32>, ptr %0, align 8
  %i.cf = shufflevector <2 x i32> %i.ce, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cf, ptr %i.cd, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noalias ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.173) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %.thread22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = call ptr @qoa_encode(ptr noundef readonly %i.ch, ptr noundef nonnull %4, ptr noundef nonnull %i.a) ; 3 uses
  %.not12.i = icmp eq ptr %i.cj, null
  br i1 %.not12.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ck = tail call i32 @fclose(ptr noundef nonnull %i.ci) ; 0 uses
  br label %.thread22

bb.k:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.252) #61
  br label %.thread

bb.l:                                             ; preds = %bb.f
  %i.cl = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.253) #61
  br i1 %i.cl, label %.split20, label %.thread

.split20:                                         ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = load i32, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = mul i32 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = mul i32 %i.cr, %i.ct
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = tail call zeroext i1 @SaveFileData(ptr noundef %1, ptr noundef %i.cn, i32 noundef %i.cv) #61
  br i1 %i.cw, label %bb.n, label %.thread

.thread22:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br label %.thread

bb.m:                                             ; preds = %bb.i
  %i.cx = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = tail call i64 @fwrite(ptr noundef nonnull %i.cj, i64 noundef 1, i64 noundef %i.cy, ptr noundef nonnull %i.ci) ; 0 uses
  %i.da = tail call i32 @fclose(ptr noundef nonnull %i.ci) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.cj) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.db = icmp sgt i32 %i.cx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  br i1 %i.db, label %bb.n, label %.thread

bb.n:                                             ; preds = %.split20, %.split, %bb.m
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.254, ptr noundef %1) #61
  br label %bb.o

.thread:                                          ; preds = %bb.l, %bb.k, %.thread22, %.split20, %.split, %bb.m
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.255, ptr noundef %1) #61
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %.217 = phi i1 [ false, %.thread ], [ true, %bb.n ]
  ret i1 %.217
}

declare zeroext i1 @IsFileExtension(ptr noundef, ptr noundef) local_unnamed_addr #54

declare zeroext i1 @SaveFileData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #54

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ExportWaveAsCode(ptr nofree noundef readonly byval(%struct.Wave) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 13 uses
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = mul i32 %i.e, %i.g                       ; 4 uses
  %i.i = lshr i32 %i.h, 3                         ; 3 uses
  %i.j = mul nuw nsw i32 %i.i, 12
  %i.k = add nuw nsw i32 %i.j, 2000
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 1) #80 ; 22 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(85) %i.m, ptr noundef nonnull align 1 dereferenceable(85) @.str.256, i64 84, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.n, ptr noundef nonnull align 1 dereferenceable(84) @.str.257, i64 83, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 167
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.o, ptr noundef nonnull align 1 dereferenceable(84) @.str.258, i64 83, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 250
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.p, ptr noundef nonnull align 1 dereferenceable(84) @.str.257, i64 83, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.q, ptr noundef nonnull align 1 dereferenceable(84) @.str.259, i64 83, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.r, ptr noundef nonnull align 1 dereferenceable(84) @.str.260, i64 83, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 499
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.s, ptr noundef nonnull align 1 dereferenceable(84) @.str.257, i64 83, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 582
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.t, ptr noundef nonnull align 1 dereferenceable(84) @.str.261, i64 83, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 665
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.u, ptr noundef nonnull align 1 dereferenceable(84) @.str.257, i64 83, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 748
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(85) %i.v, ptr noundef nonnull align 1 dereferenceable(85) @.str.262, i64 84, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = tail call ptr @GetFileNameWithoutExt(ptr noundef %1) #61
  %i.y = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 255) #61 ; 0 uses
  %i.z = load i8, ptr %i.a, align 16              ; 2 uses
  %.not97 = icmp eq i8 %i.z, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.aa, ptr noundef nonnull align 1 dereferenceable(26) @.str.263, i64 26, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 857
  %i.ac = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) @.str.264, ptr noundef nonnull %i.a, i32 noundef %i.b) #61
  %i.ad = add nsw i32 %i.ac, 857                  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.m, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) @.str.265, ptr noundef nonnull %i.a, i32 noundef %i.ah) #61
  %i.aj = add nsw i32 %i.ai, %i.ad                ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.m, i64 %i.ak
  %i.am = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) @.str.266, ptr noundef nonnull %i.a, i32 noundef %i.g) #61
  %i.an = add nsw i32 %i.aj, %i.am                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.m, i64 %i.ao
  %i.aq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.267, ptr noundef nonnull %i.a, i32 noundef %i.d) #61
  %i.ar = add nsw i32 %i.an, %i.aq                ; 3 uses
  %i.as = icmp eq i32 %i.g, 32
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.at ; 2 uses
  br i1 %i.as, label %bb.d, label %bb.f

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.av = phi i8 [ %i.az, %bb.c ], [ %i.z, %bb.a ] ; 2 uses
  %i.aw = add i8 %i.av, -97
  %or.cond = icmp ult i8 %i.aw, 26
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %narrow = add nsw i8 %i.av, -32
  store i8 %narrow, ptr %i.ax, align 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %.not = icmp eq i8 %i.az, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.ba = lshr exact i32 %i.h, 5                  ; 3 uses
  %i.bb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) @.str.268, ptr noundef nonnull %i.a, i32 noundef %i.ba) #61
  %i.bc = add nsw i32 %i.bb, %i.ar                ; 2 uses
  %i.bd = icmp ugt i32 %i.h, 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  br i1 %i.bd, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.d
  %umax117 = call i32 @llvm.umax.i32(i32 %i.ba, i32 2)
  %wide.trip.count118 = zext nneg i32 %umax117 to i64
  br label %bb.e

._crit_edge108:                                   ; preds = %bb.e, %bb.d
  %.093.lcssa = phi i32 [ %i.bc, %bb.d ], [ %i.bz, %bb.e ]
  %i.bg = sext i32 %.093.lcssa to i64
  %i.bh = getelementptr inbounds i8, ptr %i.m, i64 %i.bg
  %i.bi = zext nneg i32 %i.ba to i64
  %i.bj = getelementptr [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = fpext float %i.bl to double
  %i.bn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(1) @.str.271, double noundef %i.bm) #61 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph107, %bb.e
  %indvars.iv114 = phi i64 [ 1, %.lr.ph107 ], [ %indvars.iv.next115, %bb.e ] ; 3 uses
  %.093104 = phi i32 [ %i.bc, %.lr.ph107 ], [ %i.bz, %bb.e ] ; 2 uses
  %i.bo = sext i32 %.093104 to i64
  %i.bp = getelementptr inbounds i8, ptr %i.m, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv114 to i32
  %i.br = urem i32 %i.bq, 20
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bs, ptr @.str.269, ptr @.str.270
  %i.bu = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv114
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = fpext float %i.bw to double
  %i.by = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.bt, double noundef %i.bx) #61
  %i.bz = add nsw i32 %i.by, %.093104             ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge108, label %bb.e

bb.f:                                             ; preds = %._crit_edge
  %i.ca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) @.str.272, ptr noundef nonnull %i.a, i32 noundef %i.i) #61
  %i.cb = add nsw i32 %i.ca, %i.ar                ; 2 uses
  %i.cc = icmp ugt i32 %i.h, 15
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  br i1 %i.cc, label %bb.g, label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.g, %bb.f
  %.1.lcssa = phi i32 [ %i.cb, %bb.f ], [ %i.cx, %bb.g ]
  %i.cf = sext i32 %.1.lcssa to i64
  %i.cg = getelementptr inbounds i8, ptr %i.m, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.ce, i64 %wide.trip.count
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cg, ptr noundef nonnull dereferenceable(1) @.str.275, i32 noundef %i.ck) #61 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.g
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %.199 = phi i32 [ %i.cx, %bb.g ], [ %i.cb, %bb.f ] ; 2 uses
  %i.cm = sext i32 %.199 to i64
  %i.cn = getelementptr inbounds i8, ptr %i.m, i64 %i.cm
  %i.co = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.cp = urem i32 %i.co, 20
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = select i1 %i.cq, ptr @.str.273, ptr @.str.274
  %i.cs = getelementptr i8, ptr %i.ce, i64 %indvars.iv111
  %i.ct = getelementptr i8, ptr %i.cs, i64 -1
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.cr, i32 noundef %i.cv) #61
  %i.cx = add nsw i32 %i.cw, %.199                ; 2 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge103, label %bb.g

bb.h:                                             ; preds = %._crit_edge103, %._crit_edge108
  %i.cy = call zeroext i1 @SaveFileText(ptr noundef %1, ptr noundef nonnull %i.m) #61 ; 2 uses
  call void @free(ptr noundef nonnull %i.m) #61
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.276, ptr noundef %1) #61
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.277, ptr noundef %1) #61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i1 %i.cy
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #57

declare ptr @GetFileNameWithoutExt(ptr noundef) local_unnamed_addr #54

declare zeroext i1 @SaveFileText(ptr noundef, ptr noundef) local_unnamed_addr #54

; Function Attrs: nounwind uwtable
define void @PlaySound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PlayAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  store i8 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.h, align 1
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PlayAudioBuffer.exit

PlayAudioBuffer.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @PauseSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %PauseAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 1, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %PauseAudioBuffer.exit

PauseAudioBuffer.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResumeSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %ResumeAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  store i8 0, ptr %i.c, align 1
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %ResumeAudioBuffer.exit

ResumeAudioBuffer.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @StopSound(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %StopAudioBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !66, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %IsAudioBufferPlayingInLockedState.exit.i.i, label %StopAudioBuffer.exit

IsAudioBufferPlayingInLockedState.exit.i.i:       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  %i.g = load i8, ptr %i.f, align 1, !range !66, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %StopAudioBuffer.exit, label %bb.c

bb.c:                                             ; preds = %IsAudioBufferPlayingInLockedState.exit.i.i
  store i8 0, ptr %i.c, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i8 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 365
  store i8 1, ptr %i.l, align 1
  br label %StopAudioBuffer.exit

StopAudioBuffer.exit:                             ; preds = %bb.a, %bb.b, %IsAudioBufferPlayingInLockedState.exit.i.i, %bb.c
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @IsSoundPlaying(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %IsAudioBufferPlaying.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.d = load i8, ptr %i.c, align 4, !range !66, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %IsAudioBufferPlaying.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 357
  %i.g = load i8, ptr %i.f, align 1, !range !66, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  br label %IsAudioBufferPlaying.exit

IsAudioBufferPlaying.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  ret i1 %.0.i.i
}

; Function Attrs: nounwind uwtable
define void @SetSoundVolume(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %SetAudioBufferVolume.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store float %1, ptr %i.c, align 8
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %SetAudioBufferVolume.exit

SetAudioBufferVolume.exit:                        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetSoundPitch(ptr nofree noundef readonly byval(%struct.Sound) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 9 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = fcmp ogt float %1, 0.000000e+00
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %SetAudioBufferPitch.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
