Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@drwav_write_pcm_frames_be:bb.a
  store i8 %i.cn, ptr %i.ck, align 1
  store i8 %i.cl, ptr %i.cm, align 1
  br label %drwav_write_raw.exit

drwav_write_raw.exit:                             ; preds = %.lr.ph, %.lr.ph72.epil.preheader, %drwav_write_raw.exit.loopexit134.unr-lcssa, %.lr.ph74, %.lr.ph76, %middle.block129, %middle.block112, %vec.epilog.middle.block, %middle.block, %drwav__bswap_samples.exit
  %i.co = load ptr, ptr %i.al, align 8
  %i.cp = load ptr, ptr %i.am, align 8
  %i.cq = call i64 %i.co(ptr noundef %i.cp, ptr noundef nonnull %i.a, i64 noundef %spec.select) #61, !inline_history !836 ; 5 uses
  %i.cr = load i64, ptr %i.an, align 8
  %i.cs = add i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.an, align 8
  %i.ct = icmp eq i64 %i.cq, 0
  br i1 %i.ct, label %.thread, label %bb.i

.thread:                                          ; preds = %drwav_write_raw.exit, %drwav__bswap_samples.exit
  %.04179.lcssa = phi i64 [ %.04179, %drwav_write_raw.exit ], [ 0, %drwav__bswap_samples.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit

bb.i:                                             ; preds = %drwav_write_raw.exit
  %i.cu = sub i64 %.04378, %i.cq                  ; 2 uses
  %i.cv = add i64 %i.cq, %.04179                  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.04080, i64 %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %.not = icmp eq i64 %i.cu, 0
  br i1 %.not, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.i, %.preheader67, %.thread
  %.04169 = phi i64 [ %.04179.lcssa, %.thread ], [ 0, %.preheader67 ], [ %i.cv, %bb.i ]
  %i.cx = shl i64 %.04169, 3
  %i.cy = load i16, ptr %i.f, align 2
  %i.cz = zext i16 %i.cy to i64
  %i.da = load i16, ptr %i.e, align 8
  %i.db = zext i16 %i.da to i64
  %i.dc = mul nuw nsw i64 %i.db, %i.cz
  %i.dd = udiv i64 %i.cx, %i.dc
  br label %bb.j

bb.j:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit, %bb.a, %.loopexit
  %.045 = phi i64 [ 0, %bb.a ], [ %i.dd, %.loopexit ], [ 0, %drwav_get_bytes_per_pcm_frame.exit ]
  ret i64 %.045
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, -7) i64 @drwav_write_pcm_frames(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %drwav_write_pcm_frames_le.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.f = load i16, ptr %i.d, align 8
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = mul i64 %1, %i.g
  %i.i = load i16, ptr %i.e, align 2
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %i.k = mul i64 %i.h, %i.j
  %i.l = lshr i64 %i.k, 3                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not43.i = icmp eq i64 %i.l, 0
  br i1 %.not43.i, label %.thread.i, label %drwav_write_raw.exit.lr.ph.i

drwav_write_raw.exit.lr.ph.i:                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %drwav_write_raw.exit.i

drwav_write_raw.exit.i:                           ; preds = %bb.c, %drwav_write_raw.exit.lr.ph.i
  %.02746.i = phi ptr [ %2, %drwav_write_raw.exit.lr.ph.i ], [ %i.x, %bb.c ] ; 2 uses
  %.02845.i = phi i64 [ 0, %drwav_write_raw.exit.lr.ph.i ], [ %i.w, %bb.c ] ; 2 uses
  %.03044.i = phi i64 [ %i.l, %drwav_write_raw.exit.lr.ph.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = tail call i64 %i.p(ptr noundef %i.q, ptr noundef nonnull %.02746.i, i64 noundef %.03044.i) #61, !inline_history !844 ; 5 uses
  %i.s = load i64, ptr %i.o, align 8
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.o, align 8
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %drwav_write_raw.exit.i
  %i.v = sub i64 %.03044.i, %i.r                  ; 2 uses
  %i.w = add i64 %i.r, %.02845.i                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02746.i, i64 %i.r
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %.thread.loopexit.i, label %drwav_write_raw.exit.i

.thread.loopexit.i:                               ; preds = %bb.c, %drwav_write_raw.exit.i
  %.028.lcssa.ph.i = phi i64 [ %i.w, %bb.c ], [ %.02845.i, %drwav_write_raw.exit.i ]
  %.pre.i = load i16, ptr %i.e, align 2
  %.pre48.i = load i16, ptr %i.d, align 8
  %.pre49.i = zext i16 %.pre.i to i64
  %.pre50.i = zext i16 %.pre48.i to i64
  %i.y = shl i64 %.028.lcssa.ph.i, 3
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.b
  %.pre-phi51.i = phi i64 [ %.pre50.i, %.thread.loopexit.i ], [ %i.g, %bb.b ]
  %.pre-phi.i = phi i64 [ %.pre49.i, %.thread.loopexit.i ], [ %i.j, %bb.b ]
  %.028.lcssa.i = phi i64 [ %i.y, %.thread.loopexit.i ], [ 0, %bb.b ]
  %i.z = mul nuw nsw i64 %.pre-phi.i, %.pre-phi51.i
  %i.aa = udiv i64 %.028.lcssa.i, %i.z
  br label %drwav_write_pcm_frames_le.exit

drwav_write_pcm_frames_le.exit:                   ; preds = %bb.a, %.thread.i
  %.032.i = phi i64 [ %i.aa, %.thread.i ], [ 0, %bb.a ]
  ret i64 %.032.i
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 9 uses
  %i.d = alloca [4096 x i8], align 16             ; 20 uses
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq i64 %1, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i16, ptr %i.i, align 4
  switch i16 %i.j, label %bb.ax [
    i16 1, label %bb.e
    i16 3, label %bb.r
    i16 6, label %bb.af
    i16 7, label %bb.an
    i16 2, label %bb.av
    i16 17, label %bb.aw
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %i.m = icmp eq i16 %i.l, 16
  br i1 %i.m, label %.split.i, label %._crit_edge.i

.split.i:                                         ; preds = %bb.e
  %i.n = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_s16__pcm.exit

._crit_edge.i:                                    ; preds = %bb.e
  %i.o = zext i16 %i.l to i32                     ; 2 uses
  %i.p = and i32 %i.o, 7
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = mul nuw nsw i32 %i.t, %i.o
  %i.v = lshr exact i32 %i.u, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i16, ptr %i.w, align 4
  %i.y = zext i16 %i.x to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.v, %bb.f ], [ %i.y, %bb.g ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.h

bb.h:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %i.ac = udiv i32 %.0.i.i, %i.ab                 ; 5 uses
  %i.ad = urem i32 %.0.i.i, %i.ab
  %i.ae = icmp samesign uge i32 %.0.i.i, %i.ab
  %.not.i = icmp eq i32 %i.ad, 0
  %or.cond218 = and i1 %i.ae, %.not.i
  br i1 %or.cond218, label %.preheader.i, label %drwav_read_pcm_frames_s16__pcm.exit

.preheader.i:                                     ; preds = %bb.h
  %i.af = udiv i32 4096, %.0.i.i
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ai = icmp samesign ugt i32 %i.ac, 8
  %i.aj = shl nuw nsw i32 %i.ac, 3
  %i.ak = sub nuw nsw i32 64, %i.aj               ; 2 uses
  %xtraiter206 = and i64 %i.ah, 3                 ; 3 uses
  %i.al = add nsw i32 %i.ac, -1
  %i.am = icmp ult i32 %i.al, 3
  %unroll_iter211 = and i64 %i.ah, 12
  %lcmp.mod208.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod210 = icmp ne i64 %xtraiter206, 0
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03761.i = phi i64 [ 0, %.preheader.i ], [ %i.fq, %.loopexit.i ] ; 3 uses
  %.03860.i = phi ptr [ %2, %.preheader.i ], [ %i.fo, %.loopexit.i ] ; 11 uses
  %.04059.i = phi i64 [ %1, %.preheader.i ], [ %i.fp, %.loopexit.i ] ; 2 uses
  %.040..i = call i64 @llvm.umin.i64(i64 %.04059.i, i64 %i.ag)
  %i.an = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.040..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i16, ptr %i.z, align 8
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = mul i64 %i.an, %i.aq                    ; 25 uses
  %i.as = mul i64 %i.ar, %i.ah
  %i.at = icmp ugt i64 %i.as, 4096
  br i1 %i.at, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ac, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %.preheader51.i.i
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

.preheader51.i.i:                                 ; preds = %bb.k
  %.not.i49.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i49.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader51.i.i
  %i.au = shl i64 %i.an, 1
  %i.av = mul i64 %i.au, %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03860.i, ptr nonnull align 16 %i.d, i64 %i.av, i1 false)
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %min.iters.check150 = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check151 = icmp ult i64 %i.ar, 16
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.ar, 12
  %n.vec153 = and i64 %i.ar, -16                  ; 4 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next158, %vector.body154 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %index155 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %wide.load156 = load <8 x i8>, ptr %i.ax, align 16
  %wide.load157 = load <8 x i8>, ptr %i.ay, align 8
  %i.az = zext <8 x i8> %wide.load156 to <8 x i16>
  %i.ba = zext <8 x i8> %wide.load157 to <8 x i16>
  %i.bb = shl nuw <8 x i16> %i.az, splat (i16 8)
  %i.bc = shl nuw <8 x i16> %i.ba, splat (i16 8)
  %i.bd = xor <8 x i16> %i.bb, splat (i16 -32768)
  %i.be = xor <8 x i16> %i.bc, splat (i16 -32768)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index155 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %i.bd, ptr %i.bf, align 2
  store <8 x i16> %i.be, ptr %i.bg, align 2
  %index.next158 = add nuw i64 %index155, 16      ; 2 uses
  %i.bh = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.bh, label %middle.block159, label %vector.body154, !llvm.loop !845

middle.block159:                                  ; preds = %vector.body154
  %cmp.n160 = icmp eq i64 %i.ar, %n.vec153
  br i1 %cmp.n160, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block159
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec153, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.ar, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %index162
  %wide.load163 = load <4 x i8>, ptr %i.bi, align 4
  %i.bj = zext <4 x i8> %wide.load163 to <4 x i16>
  %i.bk = shl nuw <4 x i16> %i.bj, splat (i16 8)
  %i.bl = xor <4 x i16> %i.bk, splat (i16 -32768)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index162
  store <4 x i16> %i.bl, ptr %i.bm, align 2
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next164, %n.vec161
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !846

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n165 = icmp eq i64 %i.ar, %n.vec161
  br i1 %cmp.n165, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec153, %vec.epilog.iter.check ], [ %n.vec161, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 %.09.i.i.i
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = xor i16 %i.br, -32768
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.09.i.i.i
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bu, %i.ar
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !847

bb.m:                                             ; preds = %bb.k
  %.not.i44.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i44.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check168 = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check168, label %.lr.ph.i45.i.i.preheader190, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec170 = and i64 %i.ar, -8                   ; 3 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next173, %vector.body171 ] ; 10 uses
  %i.bv = mul i64 %index172, 3
  %i.bw = mul i64 %index172, 3
  %i.bx = mul i64 %index172, 3
  %i.by = mul i64 %index172, 3
  %i.bz = mul i64 %index172, 3
  %i.ca = mul i64 %index172, 3
  %i.cb = mul i64 %index172, 3
  %i.cc = mul i64 %index172, 3
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bv
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bx
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.by
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cb
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.cd, i64 1
  %i.cm = getelementptr i8, ptr %i.ce, i64 4
  %i.cn = getelementptr i8, ptr %i.cf, i64 7
  %i.co = getelementptr i8, ptr %i.cg, i64 10
  %i.cp = getelementptr i8, ptr %i.ch, i64 13
  %i.cq = getelementptr i8, ptr %i.ci, i64 16
  %i.cr = getelementptr i8, ptr %i.cj, i64 19
  %i.cs = getelementptr i8, ptr %i.ck, i64 22
  %i.ct = load i16, ptr %i.cl, align 1
  %i.cu = load i16, ptr %i.cm, align 4
  %i.cv = load i16, ptr %i.cn, align 1
  %i.cw = load i16, ptr %i.co, align 2
  %i.cx = load i16, ptr %i.cp, align 1
  %i.cy = load i16, ptr %i.cq, align 8
  %i.cz = load i16, ptr %i.cr, align 1
  %i.da = load i16, ptr %i.cs, align 2
  %i.db = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 1
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 2
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 3
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 4
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 5
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 6
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 7
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index172
  store <8 x i16> %i.di, ptr %i.dj, align 2
  %index.next173 = add nuw i64 %index172, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next173, %n.vec170
  br i1 %i.dk, label %middle.block174, label %vector.body171, !llvm.loop !848

middle.block174:                                  ; preds = %vector.body171
  %cmp.n175 = icmp eq i64 %i.ar, %n.vec170
  br i1 %cmp.n175, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader190

.lr.ph.i45.i.i.preheader190:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block174
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec170, %middle.block174 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader190, %.lr.ph.i45.i.i
  %.012.i.i.i = phi i64 [ %i.dq, %.lr.ph.i45.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i45.i.i.preheader190 ] ; 3 uses
  %i.dl = mul i64 %.012.i.i.i, 3
  %i.dm = getelementptr i8, ptr %i.d, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i16, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.012.i.i.i
  store i16 %i.do, ptr %i.dp, align 2
  %i.dq = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %i.dq, %i.ar
  br i1 %exitcond.not.i46.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !849

bb.n:                                             ; preds = %bb.k
  %.not.i47.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader

.lr.ph.i48.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check178 = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check178, label %.lr.ph.i48.i.i.preheader192, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i48.i.i.preheader
  %n.vec180 = and i64 %i.ar, -8                   ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next185, %vector.body181 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index182 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load183 = load <4 x i32>, ptr %i.dr, align 16
  %wide.load184 = load <4 x i32>, ptr %i.ds, align 16
  %i.dt = lshr <4 x i32> %wide.load183, splat (i32 16)
  %i.du = lshr <4 x i32> %wide.load184, splat (i32 16)
  %i.dv = trunc nuw <4 x i32> %i.dt to <4 x i16>
  %i.dw = trunc nuw <4 x i32> %i.du to <4 x i16>
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index182 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store <4 x i16> %i.dv, ptr %i.dx, align 2
  store <4 x i16> %i.dw, ptr %i.dy, align 2
  %index.next185 = add nuw i64 %index182, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.dz, label %middle.block186, label %vector.body181, !llvm.loop !850

middle.block186:                                  ; preds = %vector.body181
  %cmp.n187 = icmp eq i64 %i.ar, %n.vec180
  br i1 %cmp.n187, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader192

.lr.ph.i48.i.i.preheader192:                      ; preds = %.lr.ph.i48.i.i.preheader, %middle.block186
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i48.i.i.preheader ], [ %n.vec180, %middle.block186 ]
  br label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %.lr.ph.i48.i.i.preheader192, %.lr.ph.i48.i.i
  %.08.i.i.i = phi i64 [ %i.ef, %.lr.ph.i48.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i48.i.i.preheader192 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.08.i.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  %i.ef = add nuw i64 %.08.i.i.i, 1               ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.ef, %i.ar
  br i1 %exitcond.not.i49.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i, !llvm.loop !851

bb.o:                                             ; preds = %bb.k
  br i1 %i.ai, label %bb.p, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %.not64.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not64.i.i, label %.loopexit.i, label %.lr.ph63.i.i

bb.p:                                             ; preds = %bb.o
  %i.eg = shl i64 %i.ar, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.03860.i, i8 0, i64 %i.eg, i1 false)
  br label %.loopexit.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.162.i.i = phi i64 [ %i.fn, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14161.i.i = phi ptr [ %i.fm, %.epilog-lcssa ], [ %.03860.i, %.preheader.i.i ] ; 2 uses
  %.04260.i.i = phi ptr [ %i.fj, %.epilog-lcssa ], [ %i.d, %.preheader.i.i ] ; 6 uses
  br i1 %i.am, label %.epil.preheader, label %.lr.ph63.i.i.new

.lr.ph63.i.i.new:                                 ; preds = %.lr.ph63.i.i, %.lr.ph63.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ] ; 5 uses
  %.03758.i.i = phi i32 [ %10, %.lr.ph63.i.i.new ], [ %i.ak, %.lr.ph63.i.i ] ; 5 uses
  %.03857.i.i = phi i64 [ %i.fd, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %niter212 = phi i64 [ %niter212.next.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.ei = load i8, ptr %i.eh, align 1
  %3 = zext i8 %i.ei to i64
  %i.ej = zext nneg i32 %.03758.i.i to i64
  %i.ek = shl i64 %3, %i.ej
  %i.el = or i64 %i.ek, %.03857.i.i
  %4 = add i32 %.03758.i.i, 8
  %i.em = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = load i8, ptr %i.en, align 1
  %5 = zext i8 %i.eo to i64
  %i.ep = zext nneg i32 %4 to i64
  %i.eq = shl i64 %5, %i.ep
  %i.er = or i64 %i.eq, %i.el
  %6 = add i32 %.03758.i.i, 16
  %i.es = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %7 = zext i8 %i.eu to i64
  %i.ev = zext nneg i32 %6 to i64
  %i.ew = shl i64 %7, %i.ev
  %i.ex = or i64 %i.ew, %i.er
  %8 = add i32 %.03758.i.i, 24
  %i.ey = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.fa = load i8, ptr %i.ez, align 1
  %9 = zext i8 %i.fa to i64
  %i.fb = zext nneg i32 %8 to i64
  %i.fc = shl i64 %9, %i.fb
  %i.fd = or i64 %i.fc, %i.ex                     ; 3 uses
  %10 = add i32 %.03758.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter212.next.3 = add i64 %niter212, 4         ; 2 uses
  %niter212.ncmp.3 = icmp eq i64 %niter212.next.3, %unroll_iter211
  br i1 %niter212.ncmp.3, label %.unr-lcssa, label %.lr.ph63.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph63.i.i.new
  br i1 %lcmp.mod208.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph63.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph63.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03758.i.i.epil.init = phi i32 [ %i.ak, %.lr.ph63.i.i ], [ %10, %.unr-lcssa ]
  %.03857.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %i.fd, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.q ] ; 2 uses
  %.03758.i.i.epil = phi i32 [ %.03758.i.i.epil.init, %.epil.preheader ], [ %12, %bb.q ] ; 2 uses
  %.03857.i.i.epil = phi i64 [ %.03857.i.i.epil.init, %.epil.preheader ], [ %i.fi, %bb.q ]
  %epil.iter207 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter207.next, %bb.q ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.epil.a
  %i.ff = load i8, ptr %i.fe, align 1
  %11 = zext i8 %i.ff to i64
  %i.fg = zext nneg i32 %.03758.i.i.epil to i64
  %i.fh = shl i64 %11, %i.fg
  %i.fi = or i64 %i.fh, %.03857.i.i.epil          ; 2 uses
  %12 = add i32 %.03758.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter207.next = add i64 %epil.iter207, 1   ; 2 uses
  %epil.iter207.cmp.not = icmp eq i64 %epil.iter207.next, %xtraiter206
  br i1 %epil.iter207.cmp.not, label %.epilog-lcssa, label %bb.q, !llvm.loop !852

.epilog-lcssa:                                    ; preds = %bb.q, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fd, %.unr-lcssa ], [ %i.fi, %bb.q ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %i.ah
  %i.fk = lshr i64 %.lcssa, 48
  %i.fl = trunc nuw i64 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %.14161.i.i, i64 2
  store i16 %i.fl, ptr %.14161.i.i, align 2
  %i.fn = add nuw i64 %.162.i.i, 1                ; 2 uses
  %exitcond72.not.i.i = icmp eq i64 %i.fn, %i.ar
  br i1 %exitcond72.not.i.i, label %.loopexit.i, label %.lr.ph63.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i48.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block186, %middle.block174, %middle.block159, %vec.epilog.middle.block, %bb.p, %.preheader.i.i, %bb.n, %bb.m, %bb.l, %.lr.ph.i.preheader.i, %.preheader51.i.i
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %i.ar
  %i.fp = sub i64 %.04059.i, %i.an                ; 2 uses
  %i.fq = add i64 %i.an, %.03761.i                ; 2 uses
  %.not48.i = icmp eq i64 %i.fp, 0
  br i1 %.not48.i, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.i

drwav_read_pcm_frames_s16__pcm.exit:              ; preds = %bb.i, %bb.j, %.loopexit.i, %.split.i, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.h
  %.042.i = phi i64 [ %i.n, %.split.i ], [ 0, %bb.h ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03761.i, %bb.i ], [ %i.fq, %.loopexit.i ], [ %.03761.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.ax

bb.r:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = and i32 %i.ft, 7
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.fx = load i16, ptr %i.fw, align 2
  %i.fy = zext i16 %i.fx to i32
  %i.fz = mul nuw nsw i32 %i.fy, %i.ft
  %i.ga = lshr exact i32 %i.fz, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i40

bb.t:                                             ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gc = load i16, ptr %i.gb, align 4
  %i.gd = zext i16 %i.gc to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i40

drwav_get_bytes_per_pcm_frame.exit.i40:           ; preds = %bb.s, %bb.t
  %.0.i.i38 = phi i32 [ %i.ga, %bb.s ], [ %i.gd, %bb.t ] ; 5 uses
  %.old.i41 = icmp eq i32 %.0.i.i38, 0
  br i1 %.old.i41, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.u

bb.u:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i40
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.gf = load i16, ptr %i.ge, align 8
  %i.gg = zext i16 %i.gf to i32                   ; 3 uses
  %i.gh = udiv i32 %.0.i.i38, %i.gg
  %i.gi = urem i32 %.0.i.i38, %i.gg
  %.fr.i = freeze i32 %i.gh                       ; 2 uses
  %i.gj = icmp samesign uge i32 %.0.i.i38, %i.gg
  %.not.i42 = icmp eq i32 %i.gi, 0
  %or.cond219 = and i1 %i.gj, %.not.i42
  br i1 %or.cond219, label %.preheader.i43, label %drwav_read_pcm_frames_s16__ieee.exit

.preheader.i43:                                   ; preds = %bb.u
  %i.gk = udiv i32 4096, %.0.i.i38
  %i.gl = zext nneg i32 %i.gk to i64              ; 3 uses
  %i.gm = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us54.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i43, %.loopexit.us.i
  %.03353.us.i = phi i64 [ %i.hu, %.loopexit.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us.i = phi ptr [ %i.hs, %.loopexit.us.i ], [ %2, %.preheader.i43 ] ; 3 uses
  %.03651.us.i = phi i64 [ %i.ht, %.loopexit.us.i ], [ %1, %.preheader.i43 ] ; 2 uses
  %.036..us.i = call i64 @llvm.umin.i64(i64 %.03651.us.i, i64 %i.gl)
  %i.gn = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.v

bb.v:                                             ; preds = %.preheader.split.us.i
  %i.gp = load i16, ptr %i.ge, align 8
  %i.gq = zext i16 %i.gp to i64
  %i.gr = mul i64 %i.gn, %i.gq                    ; 7 uses
  %i.gs = mul i64 %i.gr, %i.gm
  %i.gt = icmp ugt i64 %i.gs, 4096
  br i1 %i.gt, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i.us.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.w
  %min.iters.check = icmp ult i64 %i.gr, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.us.i.preheader194, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load = load <4 x float>, ptr %i.gu, align 16 ; 3 uses
  %i.gv = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.gw = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.gx = select <4 x i1> %i.gw, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.gy = fadd <4 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = fmul <4 x float> %i.gy, splat (float 3.276750e+04)
  %i.ha = fptosi <4 x float> %i.gz to <4 x i32>
  %i.hb = trunc <4 x i32> %i.ha to <4 x i16>
  %i.hc = xor <4 x i16> %i.hb, splat (i16 -32768)
  %predphi = select <4 x i1> %i.gv, <4 x i16> splat (i16 -32768), <4 x i16> %i.hc
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %index
  store <4 x i16> %predphi, ptr %i.hd, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader194

.lr.ph.i.i.us.i.preheader194:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block
  %.014.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader194, %bb.y
  %.014.i.i.us.i = phi i64 [ %i.hr, %bb.y ], [ %.014.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader194 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.014.i.i.us.i
  %i.hg = load float, ptr %i.hf, align 4          ; 3 uses
  %i.hh = fcmp olt float %i.hg, -1.000000e+00
  br i1 %i.hh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.us.i
  %i.hi = fcmp ogt float %i.hg, 1.000000e+00
  %i.hj = select i1 %i.hi, float 1.000000e+00, float %i.hg
  %i.hk = fadd float %i.hj, 1.000000e+00
  %i.hl = fmul float %i.hk, 3.276750e+04
  %i.hm = fptosi float %i.hl to i32
  %i.hn = trunc i32 %i.hm to i16
  %i.ho = xor i16 %i.hn, -32768
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.us.i
  %i.hp = phi i16 [ %i.ho, %bb.x ], [ -32768, %.lr.ph.i.i.us.i ]
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %.014.i.i.us.i
  store i16 %i.hp, ptr %i.hq, align 2
  %i.hr = add nuw i64 %.014.i.i.us.i, 1           ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.hr, %i.gr
  br i1 %exitcond.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !854

.loopexit.us.i:                                   ; preds = %bb.y, %middle.block, %bb.w
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %i.gr
  %i.ht = sub i64 %.03651.us.i, %i.gn             ; 2 uses
  %i.hu = add i64 %i.gn, %.03353.us.i             ; 2 uses
  %.not44.us.i = icmp eq i64 %i.ht, 0
  br i1 %.not44.us.i, label %drwav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.us.i

.preheader.split.us54.i:                          ; preds = %.preheader.i43, %.loopexit50.us.i
  %.03353.us55.i = phi i64 [ %i.ir, %.loopexit50.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us56.i = phi ptr [ %i.ip, %.loopexit50.us.i ], [ %2, %.preheader.i43 ] ; 2 uses
  %.03651.us57.i = phi i64 [ %i.iq, %.loopexit50.us.i ], [ %1, %.preheader.i43 ] ; 2 uses
  %.036..us58.i = call i64 @llvm.umin.i64(i64 %.03651.us57.i, i64 %i.gl)
  %i.hv = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us58.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us54.i
  %i.hx = load i16, ptr %i.ge, align 8
  %i.hy = zext i16 %i.hx to i64
  %i.hz = mul i64 %i.hv, %i.hy                    ; 4 uses
  %i.ia = mul i64 %i.hz, %i.gm
  %i.ib = icmp ugt i64 %i.ia, 4096
  br i1 %i.ib, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i9.i.us.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i9.i.us.i, label %.loopexit50.us.i, label %.lr.ph.i10.i.us.i

.lr.ph.i10.i.us.i:                                ; preds = %bb.aa, %bb.ac
  %.014.i11.i.us.i = phi i64 [ %i.io, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.014.i11.i.us.i
  %i.id = load double, ptr %i.ic, align 8         ; 3 uses
  %i.ie = fcmp olt double %i.id, -1.000000e+00
  br i1 %i.ie, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i10.i.us.i
  %i.if = fcmp ogt double %i.id, 1.000000e+00
  %i.ig = select i1 %i.if, double 1.000000e+00, double %i.id
  %i.ih = fadd double %i.ig, 1.000000e+00
  %i.ii = fmul double %i.ih, 3.276750e+04
  %i.ij = fptosi double %i.ii to i32
  %i.ik = trunc i32 %i.ij to i16
end_hunk_0
begin_hunk_1_@drwav_alaw_to_s16:bb.a
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = add nuw i64 %.06, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.epil = phi i64 [ %i.aj, %.lr.ph.epil ], [ %.06.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.06.epil
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.epil
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !892

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drwav_mulaw_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.06
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06
  store i16 %i.f, ptr %i.g, align 2
  %i.h = or disjoint i64 %.06, 1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  store i16 %i.m, ptr %i.n, align 2
  %i.o = or disjoint i64 %.06, 2                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  store i16 %i.t, ptr %i.u, align 2
  %i.v = or disjoint i64 %.06, 3                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = add nuw i64 %.06, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.epil = phi i64 [ %i.aj, %.lr.ph.epil ], [ %.06.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.06.epil
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.epil
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !893

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i16, ptr %i.j, align 4
  switch i16 %i.k, label %bb.av [
    i16 1, label %bb.e
    i16 2, label %bb.s
    i16 17, label %bb.s
    i16 3, label %bb.v
    i16 6, label %bb.af
    i16 7, label %bb.an
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = and i32 %i.n, 7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, %i.n
  %i.u = lshr exact i32 %i.t, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i16, ptr %i.v, align 4
  %i.x = zext i16 %i.w to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.u, %bb.f ], [ %i.x, %bb.g ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.h

bb.h:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = zext i16 %i.z to i32                    ; 3 uses
  %i.ab = udiv i32 %.0.i.i, %i.aa                 ; 5 uses
  %i.ac = urem i32 %.0.i.i, %i.aa
  %i.ad = icmp samesign uge i32 %.0.i.i, %i.aa
  %.not.i = icmp eq i32 %i.ac, 0
  %or.cond278 = and i1 %i.ad, %.not.i
  br i1 %or.cond278, label %.preheader.i, label %drwav_read_pcm_frames_f32__pcm.exit

.preheader.i:                                     ; preds = %bb.h
  %i.ae = udiv i32 4096, %.0.i.i
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = zext nneg i32 %i.ab to i64              ; 4 uses
  %i.ah = icmp samesign ugt i32 %i.ab, 8
  %i.ai = shl nuw nsw i32 %i.ab, 3
  %i.aj = sub nuw nsw i32 64, %i.ai               ; 2 uses
  %xtraiter264 = and i64 %i.ag, 3                 ; 3 uses
  %i.ak = add nsw i32 %i.ab, -1
  %i.al = icmp ult i32 %i.ak, 3
  %unroll_iter269 = and i64 %i.ag, 12
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03053.i = phi i64 [ 0, %.preheader.i ], [ %i.gm, %.loopexit.i ] ; 3 uses
  %.03152.i = phi ptr [ %2, %.preheader.i ], [ %i.gk, %.loopexit.i ] ; 15 uses
  %.03351.i = phi i64 [ %1, %.preheader.i ], [ %i.gl, %.loopexit.i ] ; 2 uses
  %.033..i = call i64 @llvm.umin.i64(i64 %.03351.i, i64 %i.af)
  %i.am = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i16, ptr %i.y, align 8
  %i.ap = zext i16 %i.ao to i64
  %i.aq = mul i64 %i.am, %i.ap                    ; 25 uses
  %i.ar = mul i64 %i.aq, %i.ag
  %i.as = icmp ugt i64 %i.ar, 4096
  br i1 %i.as, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ab, label %bb.p [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.not50.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not50.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l
  %min.iters.check190 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader242, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec192 = and i64 %i.aq, -8                   ; 4 uses
  %i.at = shl i64 %n.vec192, 2
  %i.au = getelementptr i8, ptr %.03152.i, i64 %i.at
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.av = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.03152.i, i64 %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %index194 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %wide.load196 = load <4 x i8>, ptr %i.aw, align 8
  %wide.load197 = load <4 x i8>, ptr %i.ax, align 4
  %i.ay = uitofp <4 x i8> %wide.load196 to <4 x float>
  %i.az = uitofp <4 x i8> %wide.load197 to <4 x float>
  %i.ba = fmul nnan <4 x float> %i.ay, splat (float f0x3C008081)
  %i.bb = fmul nnan <4 x float> %i.az, splat (float f0x3C008081)
  %i.bc = fadd <4 x float> %i.ba, splat (float -1.000000e+00)
  %i.bd = fadd <4 x float> %i.bb, splat (float -1.000000e+00)
  %i.be = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x float> %i.bc, ptr %next.gep195, align 4
  store <4 x float> %i.bd, ptr %i.be, align 4
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bf, label %middle.block199, label %vector.body193, !llvm.loop !894

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.aq, %n.vec192
  br i1 %cmp.n200, label %.loopexit.i, label %.lr.ph.i.i.i.preheader242

.lr.ph.i.i.i.preheader242:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block199
  %.015.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i.i.i.preheader ], [ %i.au, %middle.block199 ]
  %.01114.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec192, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader242, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %.01114.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i ], [ %.01114.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01114.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fmul nnan float %i.bi, f0x3C008081
  %i.bk = fadd float %i.bj, -1.000000e+00
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  store float %i.bk, ptr %.015.i.i.i, align 4
  %i.bm = add nuw i64 %.01114.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !895

bb.m:                                             ; preds = %bb.k
  %.not49.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not49.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader

.lr.ph.i40.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check204 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check204, label %.lr.ph.i40.i.i.preheader244, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i40.i.i.preheader
  %n.vec206 = and i64 %i.aq, -8                   ; 4 uses
  %i.bn = shl i64 %n.vec206, 2
  %i.bo = getelementptr i8, ptr %.03152.i, i64 %i.bn
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.bp = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03152.i, i64 %i.bp ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.bq, align 16
  %wide.load211 = load <4 x i16>, ptr %i.br, align 8
  %i.bs = sitofp <4 x i16> %wide.load210 to <4 x float>
  %i.bt = sitofp <4 x i16> %wide.load211 to <4 x float>
  %i.bu = fmul nnan <4 x float> %i.bs, splat (float f0x38000000)
  %i.bv = fmul nnan <4 x float> %i.bt, splat (float f0x38000000)
  %i.bw = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x float> %i.bu, ptr %next.gep209, align 4
  store <4 x float> %i.bv, ptr %i.bw, align 4
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.bx, label %middle.block213, label %vector.body207, !llvm.loop !896

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.aq, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader244

.lr.ph.i40.i.i.preheader244:                      ; preds = %.lr.ph.i40.i.i.preheader, %middle.block213
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i40.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i40.i.i.preheader ], [ %i.bo, %middle.block213 ]
  br label %.lr.ph.i40.i.i

.lr.ph.i40.i.i:                                   ; preds = %.lr.ph.i40.i.i.preheader244, %.lr.ph.i40.i.i
  %.012.i.i.i = phi i64 [ %i.cd, %.lr.ph.i40.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i.i.i
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sitofp i16 %i.bz to float
  %i.cb = fmul nnan float %i.ca, f0x38000000
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store float %i.cb, ptr %.0811.i.i.i, align 4
  %i.cd = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i41.i.i = icmp eq i64 %i.cd, %i.aq
  br i1 %exitcond.not.i41.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i, !llvm.loop !897

bb.n:                                             ; preds = %bb.k
  %.not48.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not48.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader

.lr.ph.i42.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check218 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check218, label %.lr.ph.i42.i.i.preheader246, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i42.i.i.preheader
  %n.vec220 = and i64 %i.aq, -4                   ; 4 uses
  %i.ce = shl i64 %n.vec220, 2
  %i.cf = getelementptr i8, ptr %.03152.i, i64 %i.ce
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.cg = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03152.i, i64 %i.cg
  %i.ch = mul i64 %index222, 3
  %i.ci = mul i64 %index222, 3
  %i.cj = mul i64 %index222, 3
  %i.ck = mul i64 %index222, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ch ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ci ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.co = getelementptr i8, ptr %i.e, i64 %i.cj   ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 6
  %i.cq = getelementptr i8, ptr %i.e, i64 %i.ck   ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 9
  %i.cs = load i16, ptr %i.cl, align 4
  %i.ct = load i16, ptr %i.cn, align 1
  %i.cu = load i16, ptr %i.cp, align 2
  %i.cv = load i16, ptr %i.cr, align 1
  %i.cw = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %i.cx = insertelement <4 x i16> %i.cw, i16 %i.ct, i64 1
  %i.cy = insertelement <4 x i16> %i.cx, i16 %i.cu, i64 2
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 3
  %i.da = zext <4 x i16> %i.cz to <4 x i32>
  %i.db = shl nuw nsw <4 x i32> %i.da, splat (i32 8)
  %i.dc = getelementptr i8, ptr %i.cl, i64 2
  %i.dd = getelementptr i8, ptr %i.cm, i64 5
  %i.de = getelementptr i8, ptr %i.co, i64 8
  %i.df = getelementptr i8, ptr %i.cq, i64 11
  %i.dg = load i8, ptr %i.dc, align 2
  %i.dh = load i8, ptr %i.dd, align 1
  %i.di = load i8, ptr %i.de, align 4
  %i.dj = load i8, ptr %i.df, align 1
  %i.dk = insertelement <4 x i8> poison, i8 %i.dg, i64 0
  %i.dl = insertelement <4 x i8> %i.dk, i8 %i.dh, i64 1
  %i.dm = insertelement <4 x i8> %i.dl, i8 %i.di, i64 2
  %i.dn = insertelement <4 x i8> %i.dm, i8 %i.dj, i64 3
  %i.do = zext <4 x i8> %i.dn to <4 x i32>
  %i.dp = shl nuw <4 x i32> %i.do, splat (i32 24)
  %i.dq = or disjoint <4 x i32> %i.dp, %i.db
  %i.dr = ashr exact <4 x i32> %i.dq, splat (i32 8)
  %i.ds = sitofp <4 x i32> %i.dr to <4 x float>
  %i.dt = fmul nnan <4 x float> %i.ds, splat (float f0x34000000)
  store <4 x float> %i.dt, ptr %next.gep223, align 4
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.du, label %middle.block225, label %vector.body221, !llvm.loop !898

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.aq, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader246

.lr.ph.i42.i.i.preheader246:                      ; preds = %.lr.ph.i42.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i42.i.i.preheader ], [ %i.cf, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i42.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %.lr.ph.i42.i.i.preheader246, %.lr.ph.i42.i.i
  %.020.i.i.i = phi ptr [ %i.ei, %.lr.ph.i42.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.ej, %.lr.ph.i42.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %i.dv = mul i64 %.01619.i.i.i, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 1
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = getelementptr i8, ptr %i.dw, i64 2
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw i32 %i.ec, 24
  %i.ee = or disjoint i32 %i.ed, %i.dz
  %i.ef = ashr exact i32 %i.ee, 8
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fmul nnan float %i.eg, f0x34000000
  %i.ei = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store float %i.eh, ptr %.020.i.i.i, align 4
  %i.ej = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %i.ej, %i.aq
  br i1 %exitcond.not.i43.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i, !llvm.loop !899

bb.o:                                             ; preds = %bb.k
  %.not.i41.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i41.i, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader

.lr.ph.i44.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check230 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check230, label %.lr.ph.i44.i.i.preheader248, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i44.i.i.preheader
  %n.vec232 = and i64 %i.aq, -4                   ; 4 uses
  %i.ek = shl i64 %n.vec232, 2
  %i.el = getelementptr i8, ptr %.03152.i, i64 %i.ek
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.em = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03152.i, i64 %i.em
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234
  %wide.load236 = load <4 x i32>, ptr %i.en, align 16
  %i.eo = sitofp <4 x i32> %wide.load236 to <4 x double>
  %i.ep = fmul nnan <4 x double> %i.eo, splat (double f0x3E00000000000000)
  %i.eq = fptrunc <4 x double> %i.ep to <4 x float>
  store <4 x float> %i.eq, ptr %next.gep235, align 4
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.er, label %middle.block238, label %vector.body233, !llvm.loop !900

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %i.aq, %n.vec232
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader248

.lr.ph.i44.i.i.preheader248:                      ; preds = %.lr.ph.i44.i.i.preheader, %middle.block238
  %.012.i45.i.i.ph = phi i64 [ 0, %.lr.ph.i44.i.i.preheader ], [ %n.vec232, %middle.block238 ]
  %.0811.i46.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i44.i.i.preheader ], [ %i.el, %middle.block238 ]
  br label %.lr.ph.i44.i.i

.lr.ph.i44.i.i:                                   ; preds = %.lr.ph.i44.i.i.preheader248, %.lr.ph.i44.i.i
  %.012.i45.i.i = phi i64 [ %i.ey, %.lr.ph.i44.i.i ], [ %.012.i45.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %.0811.i46.i.i = phi ptr [ %i.ex, %.lr.ph.i44.i.i ], [ %.0811.i46.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.012.i45.i.i
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = sitofp i32 %i.et to double
  %i.ev = fmul nnan double %i.eu, f0x3E00000000000000
  %i.ew = fptrunc double %i.ev to float
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i46.i.i, i64 4
  store float %i.ew, ptr %.0811.i46.i.i, align 4
  %i.ey = add nuw i64 %.012.i45.i.i, 1            ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.ey, %i.aq
  br i1 %exitcond.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i44.i.i, !llvm.loop !901

bb.p:                                             ; preds = %bb.k
  br i1 %i.ah, label %bb.q, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.not61.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not61.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.p
  %i.ez = shl i64 %i.aq, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03152.i, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.epilog-lcssa
  %.03660.i.i = phi i32 [ %i.gh, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.03759.i.i = phi ptr [ %i.gg, %.epilog-lcssa ], [ %.03152.i, %.preheader.i.i ] ; 2 uses
  %.03858.i.i = phi ptr [ %i.gc, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %.03456.i.i = phi i32 [ %10, %.lr.ph.i.i.new ], [ %i.aj, %.lr.ph.i.i ] ; 5 uses
  %.03555.i.i = phi i64 [ %i.fw, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fb = load i8, ptr %i.fa, align 1
  %3 = zext i8 %i.fb to i64
  %i.fc = zext nneg i32 %.03456.i.i to i64
  %i.fd = shl i64 %3, %i.fc
  %i.fe = or i64 %i.fd, %.03555.i.i
  %4 = add i32 %.03456.i.i, 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fh = load i8, ptr %i.fg, align 1
  %5 = zext i8 %i.fh to i64
  %i.fi = zext nneg i32 %4 to i64
  %i.fj = shl i64 %5, %i.fi
  %i.fk = or i64 %i.fj, %i.fe
  %6 = add i32 %.03456.i.i, 16
  %i.fl = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fn = load i8, ptr %i.fm, align 1
  %7 = zext i8 %i.fn to i64
  %i.fo = zext nneg i32 %6 to i64
  %i.fp = shl i64 %7, %i.fo
  %i.fq = or i64 %i.fp, %i.fk
  %8 = add i32 %.03456.i.i, 24
  %i.fr = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 3
  %i.ft = load i8, ptr %i.fs, align 1
  %9 = zext i8 %i.ft to i64
  %i.fu = zext nneg i32 %8 to i64
  %i.fv = shl i64 %9, %i.fu
  %i.fw = or i64 %i.fv, %i.fq                     ; 3 uses
  %10 = add i32 %.03456.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod266.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03456.i.i.epil.init = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %10, %.unr-lcssa ]
  %.03555.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fw, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.r ] ; 2 uses
  %.03456.i.i.epil = phi i32 [ %.03456.i.i.epil.init, %.epil.preheader ], [ %12, %bb.r ] ; 2 uses
  %.03555.i.i.epil = phi i64 [ %.03555.i.i.epil.init, %.epil.preheader ], [ %i.gb, %bb.r ]
  %epil.iter265 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter265.next, %bb.r ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.epil.a
  %i.fy = load i8, ptr %i.fx, align 1
  %11 = zext i8 %i.fy to i64
  %i.fz = zext nneg i32 %.03456.i.i.epil to i64
  %i.ga = shl i64 %11, %i.fz
  %i.gb = or i64 %i.ga, %.03555.i.i.epil          ; 2 uses
  %12 = add i32 %.03456.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.epilog-lcssa, label %bb.r, !llvm.loop !902

.epilog-lcssa:                                    ; preds = %bb.r, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fw, %.unr-lcssa ], [ %i.gb, %bb.r ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %i.ag
  %i.gd = sitofp i64 %.lcssa to double
  %i.ge = fmul nnan double %i.gd, f0x3C00000000000000
  %i.gf = fptrunc double %i.ge to float
  %i.gg = getelementptr inbounds nuw i8, ptr %.03759.i.i, i64 4
  store float %i.gf, ptr %.03759.i.i, align 4
  %i.gh = add i32 %.03660.i.i, 1                  ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = icmp ugt i64 %i.aq, %i.gi
  br i1 %i.gj, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i44.i.i, %.lr.ph.i42.i.i, %.lr.ph.i40.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block225, %middle.block213, %middle.block199, %bb.q, %.preheader.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.03152.i, i64 %i.aq
  %i.gl = sub i64 %.03351.i, %i.am                ; 2 uses
  %i.gm = add i64 %i.am, %.03053.i                ; 2 uses
  %.not40.i = icmp eq i64 %i.gl, 0
  br i1 %.not40.i, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.i

drwav_read_pcm_frames_f32__pcm.exit:              ; preds = %bb.i, %bb.j, %.loopexit.i, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.h
  %.035.i = phi i64 [ 0, %bb.h ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03053.i, %bb.i ], [ %i.gm, %.loopexit.i ], [ %.03053.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %bb.av

bb.s:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.pre.i = load i16, ptr %i.gn, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i37, %bb.s
  %i.go = phi i16 [ %.pre.i, %bb.s ], [ %i.hn, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.s ], [ %i.hq, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.s ], [ %i.ho, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %1, %bb.s ], [ %i.hp, %.loopexit.i37 ] ; 2 uses
  %i.gp = udiv i16 2048, %i.go
  %i.gq = zext nneg i16 %i.gp to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gq)
  %i.gr = call i64 @drwav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %drwav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gt = load i16, ptr %i.gn, align 8            ; 2 uses
  %i.gu = zext i16 %i.gt to i64
  %i.gv = mul i64 %i.gr, %i.gu                    ; 5 uses
  %.not39.i = icmp eq i64 %i.gv, 0
  br i1 %.not39.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.u
  %min.iters.check176 = icmp ult i64 %i.gv, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader250, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.gv, -8                   ; 4 uses
  %i.gw = shl i64 %n.vec178, 2
  %i.gx = getelementptr i8, ptr %.02031.i, i64 %i.gw
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.gy = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.gy ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.gz, align 16
  %wide.load183 = load <4 x i16>, ptr %i.ha, align 8
  %i.hb = sitofp <4 x i16> %wide.load182 to <4 x float>
  %i.hc = sitofp <4 x i16> %wide.load183 to <4 x float>
  %i.hd = fmul nnan <4 x float> %i.hb, splat (float f0x38000000)
  %i.he = fmul nnan <4 x float> %i.hc, splat (float f0x38000000)
  %i.hf = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %i.hd, ptr %next.gep181, align 4
  store <4 x float> %i.he, ptr %i.hf, align 4
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hg, label %middle.block185, label %vector.body179, !llvm.loop !903

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.gv, %n.vec178
  br i1 %cmp.n186, label %.loopexit.loopexit.i, label %.lr.ph.i.i35.preheader250

.lr.ph.i.i35.preheader250:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.gx, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader250, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hm, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hl, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = sitofp i16 %i.hi to float
  %i.hk = fmul nnan float %i.hj, f0x38000000
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store float %i.hk, ptr %.0811.i.i, align 4
  %i.hm = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hm, %i.gv
  br i1 %exitcond.not.i.i36, label %.loopexit.loopexit.i, label %.lr.ph.i.i35, !llvm.loop !904

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i35, %middle.block185
  %.pre33.i = load i16, ptr %i.gn, align 8        ; 2 uses
  %.pre34.i = zext i16 %.pre33.i to i64
  %.pre35.i = mul i64 %i.gr, %.pre34.i
  br label %.loopexit.i37

.loopexit.i37:                                    ; preds = %.loopexit.loopexit.i, %bb.u
  %.pre-phi36.i = phi i64 [ %.pre35.i, %.loopexit.loopexit.i ], [ 0, %bb.u ]
  %i.hn = phi i16 [ %.pre33.i, %.loopexit.loopexit.i ], [ %i.gt, %bb.u ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %.pre-phi36.i
  %i.hp = sub i64 %.02230.i, %i.gr                ; 2 uses
  %i.hq = add i64 %i.gr, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hp, 0
  br i1 %.not.i38, label %drwav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.t

drwav_read_pcm_frames_f32__msadpcm_ima.exit:      ; preds = %bb.t, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.t ], [ %i.hq, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.av

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hs = load i16, ptr %i.hr, align 2            ; 2 uses
  %i.ht = icmp eq i16 %i.hs, 32
  br i1 %i.ht, label %bb.w, label %._crit_edge.i

bb.w:                                             ; preds = %bb.v
  %i.hu = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_f32__ieee.exit

._crit_edge.i:                                    ; preds = %bb.v
  %i.hv = zext i16 %i.hs to i32                   ; 2 uses
  %i.hw = and i32 %i.hv, 7
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hz = load i16, ptr %i.hy, align 2
  %i.ia = zext i16 %i.hz to i32
  %i.ib = mul nuw nsw i32 %i.ia, %i.hv
  %i.ic = lshr exact i32 %i.ib, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

bb.y:                                             ; preds = %._crit_edge.i
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ie = load i16, ptr %i.id, align 4
  %i.if = zext i16 %i.ie to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

drwav_get_bytes_per_pcm_frame.exit.i41:           ; preds = %bb.x, %bb.y
  %.0.i.i39 = phi i32 [ %i.ic, %bb.x ], [ %i.if, %bb.y ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.z

bb.z:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i41
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ih = load i16, ptr %i.ig, align 8
  %i.ii = zext i16 %i.ih to i32                   ; 3 uses
  %i.ij = udiv i32 %.0.i.i39, %i.ii
  %i.ik = urem i32 %.0.i.i39, %i.ii
  %.fr.i = freeze i32 %i.ij                       ; 2 uses
  %i.il = icmp samesign uge i32 %.0.i.i39, %i.ii
  %.not.i43 = icmp eq i32 %i.ik, 0
  %or.cond279 = and i1 %i.il, %.not.i43
  br i1 %or.cond279, label %.preheader.i44, label %drwav_read_pcm_frames_f32__ieee.exit

.preheader.i44:                                   ; preds = %bb.z
  %i.im = udiv i32 4096, %.0.i.i39
  %i.in = zext nneg i32 %i.im to i64              ; 3 uses
  %i.io = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us56.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03555.us.i = phi i64 [ %i.js, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03654.us.i = phi ptr [ %i.jq, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 5 uses
  %.03853.us.i = phi i64 [ %i.jr, %.loopexit.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.038..us.i = call i64 @llvm.umin.i64(i64 %.03853.us.i, i64 %i.in)
  %i.ip = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %.preheader.split.us.i
  %i.ir = load i16, ptr %i.ig, align 8
  %i.is = zext i16 %i.ir to i64
  %i.it = mul i64 %i.ip, %i.is                    ; 8 uses
  %i.iu = mul i64 %i.it, %i.io
  %i.iv = icmp ugt i64 %i.iu, 4096
  br i1 %i.iv, label %drwav_read_pcm_frames_f32__ieee.exit, label %.preheader.i.us.i

end_hunk_1
begin_hunk_2_@drwav_alaw_to_f32:bb.a
  %i.at = sitofp i16 %i.as to float
  %i.au = fmul nnan float %i.at, f0x38000000
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.epil, i64 4
  store float %i.au, ptr %.0811.epil, align 4
  %i.aw = add nuw i64 %.012.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !947

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drwav_mulaw_to_f32(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.d = icmp ult i64 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.012 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 5 uses
  %.0811 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul nnan float %i.j, f0x38000000
  %i.l = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  store float %i.k, ptr %.0811, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = sitofp i16 %i.r to float
  %i.t = fmul nnan float %i.s, f0x38000000
  %i.u = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  store float %i.t, ptr %i.l, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = sitofp i16 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x38000000
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811, i64 12
  store float %i.ac, ptr %i.u, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sitofp i16 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x38000000
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 16 ; 2 uses
  store float %i.al, ptr %i.ad, align 4
  %i.an = add nuw i64 %.012, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.012.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.0811.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.am, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.012.epil = phi i64 [ %i.aw, %.lr.ph.epil ], [ %.012.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0811.epil = phi ptr [ %i.av, %.lr.ph.epil ], [ %.0811.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.012.epil
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = sitofp i16 %i.as to float
  %i.au = fmul nnan float %i.at, f0x38000000
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.epil, i64 4
  store float %i.au, ptr %.0811.epil, align 4
  %i.aw = add nuw i64 %.012.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !948

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i16, ptr %i.j, align 4
  switch i16 %i.k, label %bb.av [
    i16 1, label %bb.e
    i16 2, label %bb.s
    i16 17, label %bb.s
    i16 3, label %bb.v
    i16 6, label %bb.af
    i16 7, label %bb.an
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp eq i16 %i.m, 32
  br i1 %i.n, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_s32__pcm.exit

._crit_edge.i:                                    ; preds = %bb.e
  %i.p = zext i16 %i.m to i32                     ; 2 uses
  %i.q = and i32 %i.p, 7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = mul nuw nsw i32 %i.u, %i.p
  %i.w = lshr exact i32 %i.v, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i16, ptr %i.x, align 4
  %i.z = zext i16 %i.y to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.w, %bb.g ], [ %i.z, %bb.h ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.i

bb.i:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = zext i16 %i.ab to i32                   ; 3 uses
  %i.ad = udiv i32 %.0.i.i, %i.ac                 ; 5 uses
  %i.ae = urem i32 %.0.i.i, %i.ac
  %i.af = icmp samesign uge i32 %.0.i.i, %i.ac
  %.not.i = icmp eq i32 %i.ae, 0
  %or.cond279 = and i1 %i.af, %.not.i
  br i1 %or.cond279, label %.preheader.i, label %drwav_read_pcm_frames_s32__pcm.exit

.preheader.i:                                     ; preds = %bb.i
  %i.ag = udiv i32 4096, %.0.i.i
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.aj = icmp samesign ugt i32 %i.ad, 8
  %i.ak = shl nuw nsw i32 %i.ad, 3
  %i.al = sub nuw nsw i32 64, %i.ak               ; 2 uses
  %xtraiter265 = and i64 %i.ai, 3                 ; 3 uses
  %i.am = add nsw i32 %i.ad, -1
  %i.an = icmp ult i32 %i.am, 3
  %unroll_iter270 = and i64 %i.ai, 12
  %lcmp.mod267.not = icmp eq i64 %xtraiter265, 0
  %lcmp.mod269 = icmp ne i64 %xtraiter265, 0
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03558.i = phi i64 [ 0, %.preheader.i ], [ %i.gm, %.loopexit.i ] ; 3 uses
  %.03657.i = phi ptr [ %2, %.preheader.i ], [ %i.gk, %.loopexit.i ] ; 16 uses
  %.03856.i = phi i64 [ %1, %.preheader.i ], [ %i.gl, %.loopexit.i ] ; 2 uses
  %.038..i = call i64 @llvm.umin.i64(i64 %.03856.i, i64 %i.ah)
  %i.ao = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i16, ptr %i.aa, align 8
  %i.ar = zext i16 %i.aq to i64
  %i.as = mul i64 %i.ao, %i.ar                    ; 26 uses
  %i.at = mul i64 %i.as, %i.ai
  %i.au = icmp ugt i64 %i.at, 4096
  br i1 %i.au, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %i.ad, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %.preheader56.i.i
  ]

.preheader56.i.i:                                 ; preds = %bb.l
  %.not67.i.i = icmp eq i64 %i.as, 0
  br i1 %.not67.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader56.i.i
  %min.iters.check229 = icmp ult i64 %i.as, 16
  br i1 %min.iters.check229, label %.lr.ph.i.i.preheader249, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.av = add i64 %i.as, -1                       ; 2 uses
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = icmp eq i64 %i.aw, 4294967295
  %i.ay = icmp ugt i64 %i.av, 4294967295
  %i.az = or i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.preheader249, label %vector.ph230

vector.ph230:                                     ; preds = %vector.scevcheck
  %n.vec231 = and i64 %i.as, 8589934584           ; 5 uses
  %i.ba = trunc i64 %n.vec231 to i32
  %i.bb = shl nuw nsw i64 %n.vec231, 2
  %i.bc = getelementptr i8, ptr %.03657.i, i64 %i.bb
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next237, %vector.body232 ] ; 3 uses
  %i.bd = shl i64 %index233, 2
  %next.gep234 = getelementptr i8, ptr %.03657.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index233 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load235 = load <4 x i32>, ptr %i.be, align 16
  %wide.load236 = load <4 x i32>, ptr %i.bf, align 16
  %i.bg = getelementptr i8, ptr %next.gep234, i64 16
  store <4 x i32> %wide.load235, ptr %next.gep234, align 4
  store <4 x i32> %wide.load236, ptr %i.bg, align 4
  %index.next237 = add nuw i64 %index233, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.bh, label %middle.block238, label %vector.body232, !llvm.loop !949

middle.block238:                                  ; preds = %vector.body232
  %cmp.n239 = icmp eq i64 %i.as, %n.vec231
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i.i.preheader249

.lr.ph.i.i.preheader249:                          ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block238
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec231, %middle.block238 ]
  %.03959.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.ba, %middle.block238 ]
  %.04058.i.i.ph = phi ptr [ %.03657.i, %vector.scevcheck ], [ %.03657.i, %.lr.ph.i.i.preheader ], [ %i.bc, %middle.block238 ]
  br label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.l
  %.not52.i.i = icmp eq i64 %i.as, 0
  br i1 %.not52.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m
  %min.iters.check189 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.preheader243, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec191 = and i64 %i.as, -8                   ; 4 uses
  %i.bi = shl i64 %n.vec191, 2
  %i.bj = getelementptr i8, ptr %.03657.i, i64 %i.bi
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next197, %vector.body192 ] ; 3 uses
  %i.bk = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %.03657.i, i64 %i.bk ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %index193 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %wide.load195 = load <4 x i8>, ptr %i.bl, align 8
  %wide.load196 = load <4 x i8>, ptr %i.bm, align 4
  %i.bn = zext <4 x i8> %wide.load195 to <4 x i32>
  %i.bo = zext <4 x i8> %wide.load196 to <4 x i32>
  %i.bp = shl nuw <4 x i32> %i.bn, splat (i32 24)
  %i.bq = shl nuw <4 x i32> %i.bo, splat (i32 24)
  %i.br = xor <4 x i32> %i.bp, splat (i32 -2147483648)
  %i.bs = xor <4 x i32> %i.bq, splat (i32 -2147483648)
  %i.bt = getelementptr i8, ptr %next.gep194, i64 16
  store <4 x i32> %i.br, ptr %next.gep194, align 4
  store <4 x i32> %i.bs, ptr %i.bt, align 4
  %index.next197 = add nuw i64 %index193, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.bu, label %middle.block198, label %vector.body192, !llvm.loop !950

middle.block198:                                  ; preds = %vector.body192
  %cmp.n199 = icmp eq i64 %i.as, %n.vec191
  br i1 %cmp.n199, label %.loopexit.i, label %.lr.ph.i.i.i.preheader243

.lr.ph.i.i.i.preheader243:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block198
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec191, %middle.block198 ]
  %.0811.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i.i.i.preheader ], [ %i.bj, %middle.block198 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader243, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %.012.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw i32 %i.bx, 24
  %i.bz = xor i32 %i.by, -2147483648
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store i32 %i.bz, ptr %.0811.i.i.i, align 4
  %i.cb = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cb, %i.as
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !951

bb.n:                                             ; preds = %bb.l
  %.not51.i.i = icmp eq i64 %i.as, 0
  br i1 %.not51.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check203 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check203, label %.lr.ph.i45.i.i.preheader245, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec205 = and i64 %i.as, -8                   ; 4 uses
  %i.cc = shl i64 %n.vec205, 2
  %i.cd = getelementptr i8, ptr %.03657.i, i64 %i.cc
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next211, %vector.body206 ] ; 3 uses
  %i.ce = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %.03657.i, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index207 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %wide.load209 = load <4 x i16>, ptr %i.cf, align 16
  %wide.load210 = load <4 x i16>, ptr %i.cg, align 8
  %i.ch = sext <4 x i16> %wide.load209 to <4 x i32>
  %i.ci = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.cj = shl nsw <4 x i32> %i.ch, splat (i32 16)
  %i.ck = shl nsw <4 x i32> %i.ci, splat (i32 16)
  %i.cl = getelementptr i8, ptr %next.gep208, i64 16
  store <4 x i32> %i.cj, ptr %next.gep208, align 4
  store <4 x i32> %i.ck, ptr %i.cl, align 4
  %index.next211 = add nuw i64 %index207, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.cm, label %middle.block212, label %vector.body206, !llvm.loop !952

middle.block212:                                  ; preds = %vector.body206
  %cmp.n213 = icmp eq i64 %i.as, %n.vec205
  br i1 %cmp.n213, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader245

.lr.ph.i45.i.i.preheader245:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block212
  %.012.i46.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec205, %middle.block212 ]
  %.0811.i47.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i45.i.i.preheader ], [ %i.cd, %middle.block212 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader245, %.lr.ph.i45.i.i
  %.012.i46.i.i = phi i64 [ %i.cs, %.lr.ph.i45.i.i ], [ %.012.i46.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %.0811.i47.i.i = phi ptr [ %i.cr, %.lr.ph.i45.i.i ], [ %.0811.i47.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i46.i.i
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = sext i16 %i.co to i32
  %i.cq = shl nsw i32 %i.cp, 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i47.i.i, i64 4
  store i32 %i.cq, ptr %.0811.i47.i.i, align 4
  %i.cs = add nuw i64 %.012.i46.i.i, 1            ; 2 uses
  %exitcond.not.i48.i.i = icmp eq i64 %i.cs, %i.as
  br i1 %exitcond.not.i48.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !953

bb.o:                                             ; preds = %bb.l
  %.not.i46.i = icmp eq i64 %i.as, 0
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader

.lr.ph.i49.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check217 = icmp ult i64 %i.as, 4
  br i1 %min.iters.check217, label %.lr.ph.i49.i.i.preheader247, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i49.i.i.preheader
  %n.vec219 = and i64 %i.as, -4                   ; 4 uses
  %i.ct = shl i64 %n.vec219, 2
  %i.cu = getelementptr i8, ptr %.03657.i, i64 %i.ct
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next223, %vector.body220 ] ; 6 uses
  %i.cv = shl i64 %index221, 2
  %next.gep222 = getelementptr i8, ptr %.03657.i, i64 %i.cv
  %i.cw = mul i64 %index221, 3
  %i.cx = mul i64 %index221, 3
  %i.cy = mul i64 %index221, 3
  %i.cz = mul i64 %index221, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cx ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dd = getelementptr i8, ptr %i.e, i64 %i.cy   ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 6
  %i.df = getelementptr i8, ptr %i.e, i64 %i.cz   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 9
  %i.dh = load i16, ptr %i.da, align 4
  %i.di = load i16, ptr %i.dc, align 1
  %i.dj = load i16, ptr %i.de, align 2
  %i.dk = load i16, ptr %i.dg, align 1
  %i.dl = insertelement <4 x i16> poison, i16 %i.dh, i64 0
  %i.dm = insertelement <4 x i16> %i.dl, i16 %i.di, i64 1
  %i.dn = insertelement <4 x i16> %i.dm, i16 %i.dj, i64 2
  %i.do = insertelement <4 x i16> %i.dn, i16 %i.dk, i64 3
  %i.dp = zext <4 x i16> %i.do to <4 x i32>
  %i.dq = shl nuw nsw <4 x i32> %i.dp, splat (i32 8)
  %i.dr = getelementptr i8, ptr %i.da, i64 2
  %i.ds = getelementptr i8, ptr %i.db, i64 5
  %i.dt = getelementptr i8, ptr %i.dd, i64 8
  %i.du = getelementptr i8, ptr %i.df, i64 11
  %i.dv = load i8, ptr %i.dr, align 2
  %i.dw = load i8, ptr %i.ds, align 1
  %i.dx = load i8, ptr %i.dt, align 4
  %i.dy = load i8, ptr %i.du, align 1
  %i.dz = insertelement <4 x i8> poison, i8 %i.dv, i64 0
  %i.ea = insertelement <4 x i8> %i.dz, i8 %i.dw, i64 1
  %i.eb = insertelement <4 x i8> %i.ea, i8 %i.dx, i64 2
  %i.ec = insertelement <4 x i8> %i.eb, i8 %i.dy, i64 3
  %i.ed = zext <4 x i8> %i.ec to <4 x i32>
  %i.ee = shl nuw <4 x i32> %i.ed, splat (i32 24)
  %i.ef = or disjoint <4 x i32> %i.ee, %i.dq
  store <4 x i32> %i.ef, ptr %next.gep222, align 4
  %index.next223 = add nuw i64 %index221, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next223, %n.vec219
  br i1 %i.eg, label %middle.block224, label %vector.body220, !llvm.loop !954

middle.block224:                                  ; preds = %vector.body220
  %cmp.n225 = icmp eq i64 %i.as, %n.vec219
  br i1 %cmp.n225, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader247

.lr.ph.i49.i.i.preheader247:                      ; preds = %.lr.ph.i49.i.i.preheader, %middle.block224
  %.020.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i49.i.i.preheader ], [ %i.cu, %middle.block224 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i49.i.i.preheader ], [ %n.vec219, %middle.block224 ]
  br label %.lr.ph.i49.i.i

.lr.ph.i49.i.i:                                   ; preds = %.lr.ph.i49.i.i.preheader247, %.lr.ph.i49.i.i
  %.020.i.i.i = phi ptr [ %i.er, %.lr.ph.i49.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.es, %.lr.ph.i49.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %i.eh = mul i64 %.01619.i.i.i, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eh ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 1
  %i.ek = zext i16 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = getelementptr i8, ptr %i.ei, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw i32 %i.eo, 24
  %i.eq = or disjoint i32 %i.ep, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store i32 %i.eq, ptr %.020.i.i.i, align 4
  %i.es = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i50.i.i = icmp eq i64 %i.es, %i.as
  br i1 %exitcond.not.i50.i.i, label %.loopexit.i, label %.lr.ph.i49.i.i, !llvm.loop !955

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader249, %.lr.ph.i.i
  %i.et = phi i64 [ %i.ey, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader249 ]
  %.03959.i.i = phi i32 [ %i.ex, %.lr.ph.i.i ], [ %.03959.i.i.ph, %.lr.ph.i.i.preheader249 ]
  %.04058.i.i = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.04058.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.04058.i.i, i64 4
  store i32 %i.ev, ptr %.04058.i.i, align 4
  %i.ex = add i32 %.03959.i.i, 1                  ; 2 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = icmp ugt i64 %i.as, %i.ey
  br i1 %i.ez, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !956

bb.p:                                             ; preds = %bb.l
  br i1 %i.aj, label %bb.q, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.not68.i.i = icmp eq i64 %i.as, 0
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph66.i.i

bb.q:                                             ; preds = %bb.p
  %i.fa = shl i64 %i.as, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03657.i, i8 0, i64 %i.fa, i1 false)
  br label %.loopexit.i

.lr.ph66.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.165.i.i = phi i32 [ %i.gh, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14164.i.i = phi ptr [ %i.gg, %.epilog-lcssa ], [ %.03657.i, %.preheader.i.i ] ; 2 uses
  %.04263.i.i = phi ptr [ %i.gd, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.an, label %.epil.preheader, label %.lr.ph66.i.i.new

.lr.ph66.i.i.new:                                 ; preds = %.lr.ph66.i.i, %.lr.ph66.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ] ; 5 uses
  %.03761.i.i = phi i32 [ %10, %.lr.ph66.i.i.new ], [ %i.al, %.lr.ph66.i.i ] ; 5 uses
  %.03860.i.i = phi i64 [ %i.fx, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %niter271 = phi i64 [ %niter271.next.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.fc = load i8, ptr %i.fb, align 1
  %3 = zext i8 %i.fc to i64
  %i.fd = zext nneg i32 %.03761.i.i to i64
  %i.fe = shl i64 %3, %i.fd
  %i.ff = or i64 %i.fe, %.03860.i.i
  %4 = add i32 %.03761.i.i, 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fi = load i8, ptr %i.fh, align 1
  %5 = zext i8 %i.fi to i64
  %i.fj = zext nneg i32 %4 to i64
  %i.fk = shl i64 %5, %i.fj
  %i.fl = or i64 %i.fk, %i.ff
  %6 = add i32 %.03761.i.i, 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = load i8, ptr %i.fn, align 1
  %7 = zext i8 %i.fo to i64
  %i.fp = zext nneg i32 %6 to i64
  %i.fq = shl i64 %7, %i.fp
  %i.fr = or i64 %i.fq, %i.fl
  %8 = add i32 %.03761.i.i, 24
  %i.fs = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.fu = load i8, ptr %i.ft, align 1
  %9 = zext i8 %i.fu to i64
  %i.fv = zext nneg i32 %8 to i64
  %i.fw = shl i64 %9, %i.fv
  %i.fx = or i64 %i.fw, %i.fr                     ; 3 uses
  %10 = add i32 %.03761.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.unr-lcssa, label %.lr.ph66.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph66.i.i.new
  br i1 %lcmp.mod267.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph66.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph66.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03761.i.i.epil.init = phi i32 [ %i.al, %.lr.ph66.i.i ], [ %10, %.unr-lcssa ]
  %.03860.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %i.fx, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.r ] ; 2 uses
  %.03761.i.i.epil = phi i32 [ %.03761.i.i.epil.init, %.epil.preheader ], [ %12, %bb.r ] ; 2 uses
  %.03860.i.i.epil = phi i64 [ %.03860.i.i.epil.init, %.epil.preheader ], [ %i.gc, %bb.r ]
  %epil.iter266 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter266.next, %bb.r ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.epil.a
  %i.fz = load i8, ptr %i.fy, align 1
  %11 = zext i8 %i.fz to i64
  %i.ga = zext nneg i32 %.03761.i.i.epil to i64
  %i.gb = shl i64 %11, %i.ga
  %i.gc = or i64 %i.gb, %.03860.i.i.epil          ; 2 uses
  %12 = add i32 %.03761.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter266.next = add i64 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i64 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.epilog-lcssa, label %bb.r, !llvm.loop !957

.epilog-lcssa:                                    ; preds = %bb.r, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fx, %.unr-lcssa ], [ %i.gc, %bb.r ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %i.ai
  %i.ge = lshr i64 %.lcssa, 32
  %i.gf = trunc nuw i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.14164.i.i, i64 4
  store i32 %i.gf, ptr %.14164.i.i, align 4
  %i.gh = add i32 %.165.i.i, 1                    ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = icmp ugt i64 %i.as, %i.gi
  br i1 %i.gj, label %.lr.ph66.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i49.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block224, %middle.block212, %middle.block198, %bb.q, %.preheader.i.i, %bb.o, %bb.n, %bb.m, %.preheader56.i.i
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.03657.i, i64 %i.as
  %i.gl = sub i64 %.03856.i, %i.ao                ; 2 uses
  %i.gm = add i64 %i.ao, %.03558.i                ; 2 uses
  %.not45.i = icmp eq i64 %i.gl, 0
  br i1 %.not45.i, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.j

drwav_read_pcm_frames_s32__pcm.exit:              ; preds = %bb.j, %bb.k, %.loopexit.i, %bb.f, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.i
  %.040.i = phi i64 [ %i.o, %bb.f ], [ 0, %bb.i ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03558.i, %bb.j ], [ %i.gm, %.loopexit.i ], [ %.03558.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %bb.av

bb.s:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.pre.i = load i16, ptr %i.gn, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i37, %bb.s
  %i.go = phi i16 [ %.pre.i, %bb.s ], [ %i.hn, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.s ], [ %i.hq, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.s ], [ %i.ho, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %1, %bb.s ], [ %i.hp, %.loopexit.i37 ] ; 2 uses
  %i.gp = udiv i16 2048, %i.go
  %i.gq = zext nneg i16 %i.gp to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gq)
  %i.gr = call i64 @drwav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %drwav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gt = load i16, ptr %i.gn, align 8            ; 2 uses
  %i.gu = zext i16 %i.gt to i64
  %i.gv = mul i64 %i.gr, %i.gu                    ; 5 uses
  %.not39.i = icmp eq i64 %i.gv, 0
  br i1 %.not39.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.u
  %min.iters.check175 = icmp ult i64 %i.gv, 8
  br i1 %min.iters.check175, label %.lr.ph.i.i35.preheader251, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec177 = and i64 %i.gv, -8                   ; 4 uses
  %i.gw = shl i64 %n.vec177, 2
  %i.gx = getelementptr i8, ptr %.02031.i, i64 %i.gw
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next183, %vector.body178 ] ; 3 uses
  %i.gy = shl i64 %index179, 2
  %next.gep180 = getelementptr i8, ptr %.02031.i, i64 %i.gy ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index179 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %wide.load181 = load <4 x i16>, ptr %i.gz, align 16
  %wide.load182 = load <4 x i16>, ptr %i.ha, align 8
  %i.hb = sext <4 x i16> %wide.load181 to <4 x i32>
  %i.hc = sext <4 x i16> %wide.load182 to <4 x i32>
  %i.hd = shl nsw <4 x i32> %i.hb, splat (i32 16)
  %i.he = shl nsw <4 x i32> %i.hc, splat (i32 16)
  %i.hf = getelementptr i8, ptr %next.gep180, i64 16
  store <4 x i32> %i.hd, ptr %next.gep180, align 4
  store <4 x i32> %i.he, ptr %i.hf, align 4
  %index.next183 = add nuw i64 %index179, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next183, %n.vec177
  br i1 %i.hg, label %middle.block184, label %vector.body178, !llvm.loop !958

middle.block184:                                  ; preds = %vector.body178
  %cmp.n185 = icmp eq i64 %i.gv, %n.vec177
  br i1 %cmp.n185, label %.loopexit.loopexit.i, label %.lr.ph.i.i35.preheader251

.lr.ph.i.i35.preheader251:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block184
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec177, %middle.block184 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.gx, %middle.block184 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader251, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hm, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hl, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = sext i16 %i.hi to i32
  %i.hk = shl nsw i32 %i.hj, 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store i32 %i.hk, ptr %.0811.i.i, align 4
  %i.hm = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hm, %i.gv
  br i1 %exitcond.not.i.i36, label %.loopexit.loopexit.i, label %.lr.ph.i.i35, !llvm.loop !959

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i35, %middle.block184
  %.pre33.i = load i16, ptr %i.gn, align 8        ; 2 uses
  %.pre34.i = zext i16 %.pre33.i to i64
  %.pre35.i = mul i64 %i.gr, %.pre34.i
  br label %.loopexit.i37

.loopexit.i37:                                    ; preds = %.loopexit.loopexit.i, %bb.u
  %.pre-phi36.i = phi i64 [ %.pre35.i, %.loopexit.loopexit.i ], [ 0, %bb.u ]
  %i.hn = phi i16 [ %.pre33.i, %.loopexit.loopexit.i ], [ %i.gt, %bb.u ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %.pre-phi36.i
  %i.hp = sub i64 %.02230.i, %i.gr                ; 2 uses
  %i.hq = add i64 %i.gr, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hp, 0
  br i1 %.not.i38, label %drwav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.t

drwav_read_pcm_frames_s32__msadpcm_ima.exit:      ; preds = %bb.t, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.t ], [ %i.hq, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.av

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hs = load i16, ptr %i.hr, align 2
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = and i32 %i.ht, 7
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i32
  %i.hz = mul nuw nsw i32 %i.hy, %i.ht
  %i.ia = lshr exact i32 %i.hz, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

bb.x:                                             ; preds = %bb.v
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ic = load i16, ptr %i.ib, align 4
  %i.id = zext i16 %i.ic to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

drwav_get_bytes_per_pcm_frame.exit.i41:           ; preds = %bb.w, %bb.x
  %.0.i.i39 = phi i32 [ %i.ia, %bb.w ], [ %i.id, %bb.x ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.y

bb.y:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i41
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.if = load i16, ptr %i.ie, align 8
  %i.ig = zext i16 %i.if to i32                   ; 3 uses
  %i.ih = udiv i32 %.0.i.i39, %i.ig
  %i.ii = urem i32 %.0.i.i39, %i.ig
  %.fr.i = freeze i32 %i.ih                       ; 2 uses
  %i.ij = icmp samesign uge i32 %.0.i.i39, %i.ig
  %.not.i43 = icmp eq i32 %i.ii, 0
  %or.cond280 = and i1 %i.ij, %.not.i43
  br i1 %or.cond280, label %.preheader.i44, label %drwav_read_pcm_frames_s32__ieee.exit

.preheader.i44:                                   ; preds = %bb.y
  %i.ik = udiv i32 4096, %.0.i.i39
  %i.il = zext nneg i32 %i.ik to i64              ; 3 uses
  %i.im = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us51.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03050.us.i = phi i64 [ %i.jn, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.us.i = phi ptr [ %i.jl, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03348.us.i = phi i64 [ %i.jm, %.loopexit.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.033..us.i = call i64 @llvm.umin.i64(i64 %.03348.us.i, i64 %i.il)
  %i.in = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us.i
  %i.ip = load i16, ptr %i.ie, align 8
  %i.iq = zext i16 %i.ip to i64
  %i.ir = mul i64 %i.in, %i.iq                    ; 7 uses
  %i.is = mul i64 %i.ir, %i.im
  %i.it = icmp ugt i64 %i.is, 4096
  br i1 %i.it, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not13.i.us.i = icmp eq i64 %i.ir, 0
  br i1 %.not13.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.aa
  %min.iters.check161 = icmp ult i64 %i.ir, 8
  br i1 %min.iters.check161, label %.lr.ph.i.i.us.i.preheader252, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.us.i.preheader
end_hunk_2
begin_hunk_3_@drmp3_version:bb.a
  store i32 4, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @drmp3_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.172
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @drmp3dec_init(ptr nofree noundef writeonly captures(none) initializes((6152, 6153)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6152
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 1153) i32 @drmp3dec_decode_frame(ptr noundef initializes((6155, 6156)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #27 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 12 uses
  %i.b = alloca [40 x i8], align 16               ; 12 uses
  %5 = alloca [1 x %struct.drmp3_bs], align 16    ; 7 uses
  %6 = alloca [1 x %struct.drmp3_L12_scale_info], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  %i.c = icmp sgt i32 %2, 4
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %.lr.ph125.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.d, label %.lr.ph125.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1               ; 4 uses
  %i.k = zext i8 %i.j to i32                      ; 7 uses
  %i.l = and i32 %i.k, 240
  %i.m = icmp ne i32 %i.l, 240
  %i.n = and i32 %i.k, 254
  %i.o = icmp ne i32 %i.n, 226
  %or.cond.not11.i.i = and i1 %i.m, %i.o
  %i.p = and i8 %i.j, 6                           ; 2 uses
  %.not.i.i = icmp eq i8 %i.p, 0
  %or.cond8.i.i = or i1 %.not.i.i, %or.cond.not11.i.i
  br i1 %or.cond8.i.i, label %.lr.ph125.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1               ; 7 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.mask.i.i = and i32 %i.s, 240
  %.not6.i.i = icmp eq i32 %.mask.i.i, 240
  %i.t = and i32 %i.s, 12
  %.not8.i = icmp eq i32 %i.t, 12
  %or.cond.i = or i1 %.not6.i.i, %.not8.i
  br i1 %or.cond.i, label %.lr.ph125.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6153
  %i.v = load i8, ptr %i.u, align 1
  %i.w = xor i8 %i.v, %i.j
  %i.x = icmp ult i8 %i.w, 2
  br i1 %i.x, label %bb.g, label %.lr.ph125.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.z = load i8, ptr %i.y, align 2               ; 2 uses
  %i.aa = xor i8 %i.z, %i.r
  %i.ab = and i8 %i.aa, 12
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %drmp3_hdr_compare.exit, label %.lr.ph125.preheader.i

drmp3_hdr_compare.exit:                           ; preds = %bb.g
  %i.ad = icmp ult i8 %i.z, 16
  %i.ae = icmp ult i8 %i.r, 16                    ; 2 uses
  %.not = xor i1 %i.ae, %i.ad
  br i1 %.not, label %.lr.ph125.preheader.i, label %drmp3_hdr_padding.exit

drmp3_hdr_padding.exit:                           ; preds = %drmp3_hdr_compare.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6148
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.k, 6
  %i.ai = icmp eq i32 %i.ah, 6
  %i.aj = and i32 %i.k, 14
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = zext i1 %i.ak to i32
  %i.am = lshr exact i32 1152, %i.al
  %i.an = lshr i32 %i.k, 3
  %.lobit.i.i = and i32 %i.an, 1                  ; 2 uses
  %i.ao = zext nneg i32 %.lobit.i.i to i64
  %i.ap = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.ao
  %i.aq = lshr i32 %i.k, 1
  %i.ar = and i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr [15 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -15
  %i.av = lshr i8 %i.r, 4
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.am, 250
  %i.bb = select i1 %i.ai, i32 96000, i32 %i.ba
  %i.bc = mul nuw nsw i32 %i.bb, %i.az
  %i.bd = lshr i8 %i.r, 2
  %i.be = and i8 %i.bd, 3
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = xor i32 %.lobit.i.i, 1
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = lshr i32 %i.k, 4
  %.lobit3.i.i = and i32 %i.bk, 1
  %i.bl = xor i32 %.lobit3.i.i, 1
  %i.bm = lshr i32 %i.bj, %i.bl
  %i.bn = udiv i32 %i.bc, %i.bm                   ; 2 uses
  %i.bo = icmp eq i8 %i.p, 6                      ; 2 uses
  %i.bp = and i32 %i.bn, 134217724
  %spec.select.i = select i1 %i.bo, i32 %i.bp, i32 %i.bn ; 2 uses
  %.not.i = icmp eq i32 %spec.select.i, 0
  %i.bq = select i1 %.not.i, i32 %i.ag, i32 %spec.select.i
  %i.br = and i8 %i.r, 2
  %.not.i127 = icmp eq i8 %i.br, 0
  %i.bs = select i1 %i.bo, i32 4, i32 1
  %spec.select = select i1 %.not.i127, i32 0, i32 %i.bs
  %i.bt = add nsw i32 %i.bq, %spec.select         ; 5 uses
  %.not110 = icmp eq i32 %i.bt, %2
  br i1 %.not110, label %.thread216, label %bb.h

bb.h:                                             ; preds = %drmp3_hdr_padding.exit
  %i.bu = add nsw i32 %i.bt, 4
  %i.bv = icmp sgt i32 %i.bu, %2
  br i1 %i.bv, label %.lr.ph125.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, -1
  br i1 %i.bz, label %bb.j, label %.lr.ph125.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1             ; 3 uses
  %i.cc = zext i8 %i.cb to i32                    ; 2 uses
  %i.cd = and i32 %i.cc, 240
  %i.ce = icmp ne i32 %i.cd, 240
  %i.cf = and i32 %i.cc, 254
  %i.cg = icmp ne i32 %i.cf, 226
  %or.cond.not11.i.i128 = and i1 %i.ce, %i.cg
  %i.ch = and i8 %i.cb, 6
  %.not.i.i129 = icmp eq i8 %i.ch, 0
  %or.cond8.i.i130 = or i1 %.not.i.i129, %or.cond.not11.i.i128
  br i1 %or.cond8.i.i130, label %.lr.ph125.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cj = load i8, ptr %i.ci, align 1             ; 3 uses
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %.mask.i.i131 = and i32 %i.ck, 240
  %.not6.i.i132 = icmp ne i32 %.mask.i.i131, 240
  %i.cl = and i32 %i.ck, 12
  %.not8.i133 = icmp ne i32 %i.cl, 12
  %or.cond.i134.not233 = and i1 %.not6.i.i132, %.not8.i133
  %i.cm = xor i8 %i.cb, %i.j
  %i.cn = icmp ult i8 %i.cm, 2
  %or.cond232 = and i1 %i.cn, %or.cond.i134.not233
  br i1 %or.cond232, label %bb.l, label %.lr.ph125.preheader.i

bb.l:                                             ; preds = %bb.k
  %i.co = xor i8 %i.cj, %i.r
  %i.cp = and i8 %i.co, 12
  %i.cq = icmp ne i8 %i.cp, 0
  %i.cr = icmp ult i8 %i.cj, 16
  %.not111 = xor i1 %i.ae, %i.cr
  %or.cond576 = or i1 %i.cq, %.not111
  %.not112 = icmp eq i32 %i.bt, 0
  %or.cond577 = or i1 %or.cond576, %.not112
  br i1 %or.cond577, label %.lr.ph125.preheader.i, label %.thread216

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  br label %drmp3d_find_frame.exit.thread

.lr.ph125.preheader.i:                            ; preds = %bb.h, %bb.l, %bb.i, %bb.k, %bb.j, %bb.d, %bb.e, %bb.c, %bb.f, %bb.g, %bb.b, %drmp3_hdr_compare.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 6148 ; 2 uses
  %i.ct = add nsw i32 %2, -4                      ; 2 uses
  %i.cu = zext nneg i32 %2 to i64
  %wide.trip.count.i.a = zext nneg i32 %i.ct to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %drmp3_hdr_valid.exit.thread.i, %.lr.ph125.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %indvars.iv.next141.i, %drmp3_hdr_valid.exit.thread.i ] ; 6 uses
  %.063121.i = phi ptr [ %1, %.lr.ph125.preheader.i ], [ %i.ke, %drmp3_hdr_valid.exit.thread.i ] ; 6 uses
  %i.cv = load i8, ptr %.063121.i, align 1
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.n, label %drmp3_hdr_valid.exit.thread.i

bb.n:                                             ; preds = %.lr.ph125.i
  %i.cx = getelementptr i8, ptr %.063121.i, i64 1 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 7 uses
  %i.da = and i32 %i.cz, 240
  %i.db = icmp ne i32 %i.da, 240
  %i.dc = and i32 %i.cz, 254
  %i.dd = icmp ne i32 %i.dc, 226
  %or.cond.not11.i.i136 = and i1 %i.db, %i.dd
  %i.de = and i8 %i.cy, 6                         ; 2 uses
  %.not.i.i137 = icmp eq i8 %i.de, 0
  %or.cond8.i.i138 = or i1 %.not.i.i137, %or.cond.not11.i.i136
  br i1 %or.cond8.i.i138, label %drmp3_hdr_valid.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr i8, ptr %.063121.i, i64 2 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1             ; 4 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %.mask.i.i139 = and i32 %i.dh, 240
  %.not6.i.i140 = icmp eq i32 %.mask.i.i139, 240
  %i.di = and i32 %i.dh, 12
  %.not105.i = icmp eq i32 %i.di, 12
  %or.cond107.i = or i1 %.not6.i.i140, %.not105.i
  br i1 %or.cond107.i, label %drmp3_hdr_valid.exit.thread.i, label %drmp3_hdr_padding.exit.i

drmp3_hdr_padding.exit.i:                         ; preds = %bb.o
  %i.dj = and i32 %i.cz, 6
  %i.dk = icmp eq i32 %i.dj, 6
  %i.dl = and i32 %i.cz, 14
  %i.dm = icmp eq i32 %i.dl, 2
  %i.dn = zext i1 %i.dm to i32
  %i.do = lshr exact i32 1152, %i.dn
  %i.dp = lshr i32 %i.cz, 3
  %.lobit.i.i.i = and i32 %i.dp, 1                ; 2 uses
  %i.dq = zext nneg i32 %.lobit.i.i.i to i64
  %i.dr = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.dq
  %i.ds = lshr i32 %i.cz, 1
  %i.dt = and i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr [15 x i8], ptr %i.dr, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -15
  %i.dx = lshr i8 %i.dg, 4
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.do, 250
  %i.ed = select i1 %i.dk, i32 96000, i32 %i.ec
  %i.ee = mul nuw nsw i32 %i.ed, %i.eb
  %i.ef = lshr i8 %i.dg, 2
  %i.eg = and i8 %i.ef, 3
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = xor i32 %.lobit.i.i.i, 1
  %i.el = lshr i32 %i.ej, %i.ek
  %i.em = lshr i32 %i.cz, 4
  %.lobit3.i.i.i = and i32 %i.em, 1
  %i.en = xor i32 %.lobit3.i.i.i, 1
  %i.eo = lshr i32 %i.el, %i.en
  %i.ep = udiv i32 %i.ee, %i.eo                   ; 2 uses
  %i.eq = icmp eq i8 %i.de, 6                     ; 2 uses
  %i.er = and i32 %i.ep, 134217724
  %spec.select.i.i = select i1 %i.eq, i32 %i.er, i32 %i.ep ; 3 uses
  %i.es = and i8 %i.dg, 2
  %.not.i76.i = icmp eq i8 %i.es, 0
  %i.et = select i1 %i.eq, i32 4, i32 1
  %spec.select.i141 = select i1 %.not.i76.i, i32 0, i32 %i.et
  %i.eu = add nuw nsw i32 %spec.select.i.i, %spec.select.i141 ; 2 uses
  %i.ev = icmp eq i32 %spec.select.i.i, 0
  %i.ew = trunc nuw nsw i64 %indvars.iv140.i to i32 ; 3 uses
  br i1 %i.ev, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %drmp3_hdr_padding.exit.i
  %i.ex = add nuw nsw i64 %indvars.iv140.i, 4
  br label %bb.p

bb.p:                                             ; preds = %drmp3_hdr_compare.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 4, %.lr.ph.i ], [ %indvars.iv.next.i, %drmp3_hdr_compare.exit.thread.i ] ; 6 uses
  %.054118.i = phi i32 [ %i.eu, %.lr.ph.i ], [ %.2.i, %drmp3_hdr_compare.exit.thread.i ] ; 12 uses
  %i.ey = shl nuw nsw i64 %indvars.iv.i, 1
  %i.ez = add nuw nsw i64 %i.ey, %indvars.iv140.i
  %7 = trunc nuw i64 %i.ez to i32
  %8 = icmp sgt i32 %i.ct, %7
  br i1 %8, label %bb.q, label %.critedge.thread.i

bb.q:                                             ; preds = %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %.063121.i, i64 %indvars.iv.i ; 4 uses
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = icmp eq i8 %i.fb, -1
  br i1 %i.fc, label %bb.r, label %drmp3_hdr_compare.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fe = load i8, ptr %i.fd, align 1             ; 3 uses
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = and i32 %i.ff, 240
  %i.fh = icmp ne i32 %i.fg, 240
  %i.fi = and i32 %i.ff, 254
  %i.fj = icmp ne i32 %i.fi, 226
  %or.cond.not11.i.i.i = and i1 %i.fh, %i.fj
  %i.fk = and i8 %i.fe, 6                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fk, 0
  %or.cond8.i.i.i = or i1 %.not.i.i.i, %or.cond.not11.i.i.i
  br i1 %or.cond8.i.i.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fm = load i8, ptr %i.fl, align 1             ; 4 uses
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %.mask.i.i.i = and i32 %i.fn, 240
  %.not6.i.i.i = icmp eq i32 %.mask.i.i.i, 240
  %i.fo = and i32 %i.fn, 12
  %.not8.i.i = icmp eq i32 %i.fo, 12
  %or.cond.i.i = or i1 %.not6.i.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = load i8, ptr %i.cx, align 1             ; 3 uses
  %i.fq = xor i8 %i.fp, %i.fe
  %i.fr = icmp ult i8 %i.fq, 2
  br i1 %i.fr, label %bb.u, label %drmp3_hdr_compare.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.fs = load i8, ptr %i.df, align 1             ; 4 uses
  %i.ft = xor i8 %i.fs, %i.fm
  %i.fu = and i8 %i.ft, 12
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %drmp3_hdr_compare.exit.i, label %drmp3_hdr_compare.exit.thread.i

drmp3_hdr_compare.exit.i:                         ; preds = %bb.u
  %i.fw = icmp ult i8 %i.fs, 16                   ; 2 uses
  %i.fx = icmp ult i8 %i.fm, 16
  %.not70.i = xor i1 %i.fx, %i.fw
  br i1 %.not70.i, label %drmp3_hdr_compare.exit.thread.i, label %drmp3_hdr_padding.exit78.i

drmp3_hdr_padding.exit78.i:                       ; preds = %drmp3_hdr_compare.exit.i
  %i.fy = and i8 %i.fs, 2
  %.not.i77.i = icmp eq i8 %i.fy, 0
  %i.fz = and i8 %i.fp, 6
  %i.ga = icmp eq i8 %i.fz, 6
  %.neg.i = select i1 %i.ga, i32 -4, i32 -1
  %.neg106.i = select i1 %.not.i77.i, i32 0, i32 %.neg.i
  %i.gb = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.gc = add nsw i32 %.neg106.i, %i.gb           ; 3 uses
  %i.gd = and i8 %i.fm, 2
  %.not.i79.i = icmp eq i8 %i.gd, 0
  %i.ge = icmp eq i8 %i.fk, 6
  %i.gf = select i1 %i.ge, i32 4, i32 1
  %i.gg = select i1 %.not.i79.i, i32 0, i32 %i.gf
  %i.gh = add nsw i32 %i.gc, %i.gg                ; 2 uses
  %i.gi = add nuw nsw i64 %i.ex, %indvars.iv.i
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = add i32 %i.gh, %i.gj
  %i.gl = icmp sgt i32 %i.gk, %2
  br i1 %i.gl, label %drmp3_hdr_compare.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %drmp3_hdr_padding.exit78.i
  %i.gm = sext i32 %i.gh to i64
  %i.gn = getelementptr inbounds i8, ptr %i.fa, i64 %i.gm ; 3 uses
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = icmp eq i8 %i.go, -1
  br i1 %i.gp, label %bb.w, label %drmp3_hdr_compare.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gr = load i8, ptr %i.gq, align 1             ; 3 uses
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = and i32 %i.gs, 240
  %i.gu = icmp ne i32 %i.gt, 240
  %i.gv = and i32 %i.gs, 254
  %i.gw = icmp ne i32 %i.gv, 226
  %or.cond.not11.i.i81.i = and i1 %i.gu, %i.gw
  %i.gx = and i8 %i.gr, 6
  %.not.i.i82.i = icmp eq i8 %i.gx, 0
  %or.cond8.i.i83.i = or i1 %.not.i.i82.i, %or.cond.not11.i.i81.i
  br i1 %or.cond8.i.i83.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.gz = load i8, ptr %i.gy, align 1             ; 3 uses
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %.mask.i.i84.i = and i32 %i.ha, 240
  %.not6.i.i85.i = icmp ne i32 %.mask.i.i84.i, 240
  %i.hb = and i32 %i.ha, 12
  %.not8.i86.i = icmp ne i32 %i.hb, 12
  %or.cond.i87.not157.i = and i1 %.not6.i.i85.i, %.not8.i86.i
  %i.hc = xor i8 %i.gr, %i.fp
  %i.hd = icmp ult i8 %i.hc, 2
  %or.cond155.i = and i1 %i.hd, %or.cond.i87.not157.i
  br i1 %or.cond155.i, label %bb.y, label %drmp3_hdr_compare.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.he = xor i8 %i.gz, %i.fs
  %i.hf = and i8 %i.he, 12
  %i.hg = icmp ne i8 %i.hf, 0
  %i.hh = icmp ult i8 %i.gz, 16
  %.not71.i = xor i1 %i.fw, %i.hh
  %or.cond156.i = or i1 %.not71.i, %i.hg
  br i1 %or.cond156.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.gc, ptr %i.cs, align 4
  br label %drmp3_hdr_compare.exit.thread.i

drmp3_hdr_compare.exit.thread.i:                  ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %drmp3_hdr_padding.exit78.i, %drmp3_hdr_compare.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.257.i = phi i32 [ 0, %drmp3_hdr_compare.exit.i ], [ %i.gc, %bb.z ], [ 0, %bb.x ], [ 0, %drmp3_hdr_padding.exit78.i ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %.2.i = phi i32 [ %.054118.i, %drmp3_hdr_compare.exit.i ], [ %i.gb, %bb.z ], [ %.054118.i, %bb.x ], [ %.054118.i, %drmp3_hdr_padding.exit78.i ], [ %.054118.i, %bb.r ], [ %.054118.i, %bb.u ], [ %.054118.i, %bb.t ], [ %.054118.i, %bb.q ], [ %.054118.i, %bb.s ], [ %.054118.i, %bb.y ], [ %.054118.i, %bb.w ], [ %.054118.i, %bb.v ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hi = icmp eq i32 %.257.i, 0                  ; 2 uses
  %i.hj = icmp samesign ult i64 %indvars.iv.i, 2303
  %or.cond.i143 = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond.i143, label %bb.p, label %.critedge.i

.critedge.i:                                      ; preds = %drmp3_hdr_compare.exit.thread.i, %drmp3_hdr_padding.exit.i
  %.055.lcssa.i = phi i32 [ %spec.select.i.i, %drmp3_hdr_padding.exit.i ], [ %.257.i, %drmp3_hdr_compare.exit.thread.i ]
  %.054.lcssa.i = phi i32 [ %i.eu, %drmp3_hdr_padding.exit.i ], [ %.2.i, %drmp3_hdr_compare.exit.thread.i ] ; 9 uses
  %.lcssa.i = phi i1 [ false, %drmp3_hdr_padding.exit.i ], [ %i.hi, %drmp3_hdr_compare.exit.thread.i ]
  %i.hk = add nsw i32 %.054.lcssa.i, %i.ew        ; 2 uses
  %.not67.i = icmp sgt i32 %i.hk, %2
  %or.cond72.i = select i1 %.lcssa.i, i1 true, i1 %.not67.i
  br i1 %or.cond72.i, label %.critedge.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %i.hl = sub nuw nsw i64 %i.cu, %indvars.iv140.i
  %.val.pre.i.i = load i8, ptr %i.cx, align 1     ; 2 uses
  %.val16.pre.i.i = load i8, ptr %i.df, align 1   ; 3 uses
  %i.hm = icmp ult i8 %.val16.pre.i.i, 16
  br label %drmp3_hdr_padding.exit.i.i

drmp3_hdr_padding.exit.i.i:                       ; preds = %bb.af, %bb.aa
  %.val16.i.i = phi i8 [ %.val16.pre.i.i, %bb.aa ], [ %i.jt, %bb.af ] ; 3 uses
  %.val.i.i = phi i8 [ %.val.pre.i.i, %bb.aa ], [ %i.jl, %bb.af ] ; 2 uses
  %.021.i.i = phi i32 [ 0, %bb.aa ], [ %i.kc, %bb.af ] ; 2 uses
  %.01420.i.i = phi i32 [ 0, %bb.aa ], [ %i.jc, %bb.af ]
  %i.hn = zext i8 %.val.i.i to i32                ; 5 uses
  %i.ho = and i32 %i.hn, 6
  %i.hp = icmp eq i32 %i.ho, 6
  %i.hq = and i32 %i.hn, 14
  %i.hr = icmp eq i32 %i.hq, 2
  %i.hs = zext i1 %i.hr to i32
  %i.ht = lshr exact i32 1152, %i.hs
  %i.hu = lshr i32 %i.hn, 3
  %.lobit.i.i.i.i = and i32 %i.hu, 1              ; 2 uses
  %i.hv = zext nneg i32 %.lobit.i.i.i.i to i64
  %i.hw = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.hv
  %i.hx = lshr i32 %i.hn, 1
  %i.hy = and i32 %i.hx, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr [15 x i8], ptr %i.hw, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 -15
  %i.ic = lshr i8 %.val16.i.i, 4
  %i.id = zext nneg i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.ht, 250
  %i.ii = select i1 %i.hp, i32 96000, i32 %i.ih
  %i.ij = mul nuw nsw i32 %i.ii, %i.ig
  %i.ik = lshr i8 %.val16.i.i, 2
  %i.il = and i8 %i.ik, 3
  %i.im = zext nneg i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = xor i32 %.lobit.i.i.i.i, 1
  %i.iq = lshr i32 %i.io, %i.ip
  %i.ir = lshr i32 %i.hn, 4
  %.lobit3.i.i.i.i = and i32 %i.ir, 1
  %i.is = xor i32 %.lobit3.i.i.i.i, 1
  %i.it = lshr i32 %i.iq, %i.is
  %i.iu = udiv i32 %i.ij, %i.it                   ; 2 uses
  %i.iv = and i8 %.val.i.i, 6
  %i.iw = icmp eq i8 %i.iv, 6                     ; 2 uses
  %i.ix = and i32 %i.iu, 134217724
  %spec.select.i.i.i = select i1 %i.iw, i32 %i.ix, i32 %i.iu ; 2 uses
  %.not.i.i89.i = icmp eq i32 %spec.select.i.i.i, 0
  %i.iy = select i1 %.not.i.i89.i, i32 %.055.lcssa.i, i32 %spec.select.i.i.i
  %i.iz = and i8 %.val16.i.i, 2
  %.not.i17.i.i = icmp eq i8 %i.iz, 0
  %i.ja = select i1 %i.iw, i32 4, i32 1
  %spec.select.i90.i = select i1 %.not.i17.i.i, i32 0, i32 %i.ja
  %i.jb = add i32 %spec.select.i90.i, %.01420.i.i
  %i.jc = add i32 %i.jb, %i.iy                    ; 3 uses
  %i.jd = add nsw i32 %i.jc, 4
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %i.hl, %i.je
  br i1 %i.jf, label %drmp3d_match_frame.exit.i, label %bb.ab

bb.ab:                                            ; preds = %drmp3_hdr_padding.exit.i.i
  %i.jg = sext i32 %i.jc to i64
  %i.jh = getelementptr inbounds i8, ptr %.063121.i, i64 %i.jg ; 3 uses
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = icmp eq i8 %i.ji, -1
  br i1 %i.jj, label %bb.ac, label %.critedge.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jl = load i8, ptr %i.jk, align 1             ; 4 uses
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = and i32 %i.jm, 240
  %i.jo = icmp ne i32 %i.jn, 240
  %i.jp = and i32 %i.jm, 254
  %i.jq = icmp ne i32 %i.jp, 226
  %or.cond.not11.i.i.i.i = and i1 %i.jo, %i.jq
  %i.jr = and i8 %i.jl, 6
  %.not.i.i.i.i = icmp eq i8 %i.jr, 0
  %or.cond8.i.i.i.i = or i1 %.not.i.i.i.i, %or.cond.not11.i.i.i.i
  br i1 %or.cond8.i.i.i.i, label %.critedge.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jt = load i8, ptr %i.js, align 1             ; 4 uses
  %i.ju = zext i8 %i.jt to i32                    ; 2 uses
  %.mask.i.i.i.i = and i32 %i.ju, 240
  %.not6.i.i.i.i = icmp ne i32 %.mask.i.i.i.i, 240
  %i.jv = and i32 %i.ju, 12
  %.not8.i.i.i = icmp ne i32 %i.jv, 12
  %or.cond.i.not28.i.i = and i1 %.not6.i.i.i.i, %.not8.i.i.i
  %i.jw = xor i8 %i.jl, %.val.pre.i.i
  %i.jx = icmp ult i8 %i.jw, 2
  %or.cond.i91.i = select i1 %or.cond.i.not28.i.i, i1 %i.jx, i1 false
  br i1 %or.cond.i91.i, label %bb.ae, label %.critedge.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.jy = xor i8 %i.jt, %.val16.pre.i.i
  %i.jz = and i8 %i.jy, 12
  %i.ka = icmp ne i8 %i.jz, 0
  %i.kb = icmp ult i8 %i.jt, 16
  %.not.i92.i = xor i1 %i.hm, %i.kb
  %or.cond27.i.i = select i1 %i.ka, i1 true, i1 %.not.i92.i
  br i1 %or.cond27.i.i, label %.critedge.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kc = add nuw nsw i32 %.021.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.kc, 10
  br i1 %exitcond.not.i.i, label %drmp3d_find_frame.exit, label %drmp3_hdr_padding.exit.i.i

drmp3d_match_frame.exit.i:                        ; preds = %drmp3_hdr_padding.exit.i.i
  %.not.i142 = icmp eq i32 %.021.i.i, 0
  br i1 %.not.i142, label %.critedge.thread.i, label %drmp3d_find_frame.exit.loopexit339

.critedge.thread.i:                               ; preds = %bb.p, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %drmp3d_match_frame.exit.i, %.critedge.i
  %.054112.i = phi i32 [ %.054.lcssa.i, %bb.ae ], [ %.054.lcssa.i, %.critedge.i ], [ %.054.lcssa.i, %drmp3d_match_frame.exit.i ], [ %.054.lcssa.i, %bb.ab ], [ %.054.lcssa.i, %bb.ac ], [ %.054.lcssa.i, %bb.ad ], [ %.054118.i, %bb.p ]
  %.not69.i = icmp eq i64 %indvars.iv140.i, 0
  %i.kd = icmp eq i32 %.054112.i, %2
  %or.cond73.i = select i1 %.not69.i, i1 %i.kd, i1 false
  br i1 %or.cond73.i, label %drmp3d_find_frame.exit.loopexit339, label %.thread.i

.thread.i:                                        ; preds = %.critedge.thread.i
  store i32 0, ptr %i.cs, align 4
  br label %drmp3_hdr_valid.exit.thread.i

drmp3_hdr_valid.exit.thread.i:                    ; preds = %.thread.i, %bb.o, %bb.n, %.lr.ph125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.063121.i, i64 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i.a
  br i1 %exitcond.not.i, label %drmp3d_find_frame.exit.thread, label %.lr.ph125.i

drmp3d_find_frame.exit.loopexit339:               ; preds = %drmp3d_match_frame.exit.i, %.critedge.thread.i
  %storemerge.i.ph = phi i32 [ %2, %.critedge.thread.i ], [ %.054.lcssa.i, %drmp3d_match_frame.exit.i ] ; 2 uses
  %.3.i.ph = phi i32 [ 0, %.critedge.thread.i ], [ %i.ew, %drmp3d_match_frame.exit.i ] ; 2 uses
  %.pre419 = add nsw i32 %.3.i.ph, %storemerge.i.ph
  br label %drmp3d_find_frame.exit

drmp3d_find_frame.exit:                           ; preds = %bb.af, %drmp3d_find_frame.exit.loopexit339
  %.pre-phi = phi i32 [ %.pre419, %drmp3d_find_frame.exit.loopexit339 ], [ %i.hk, %bb.af ]
  %storemerge.i = phi i32 [ %storemerge.i.ph, %drmp3d_find_frame.exit.loopexit339 ], [ %.054.lcssa.i, %bb.af ] ; 2 uses
  %.3.i = phi i32 [ %.3.i.ph, %drmp3d_find_frame.exit.loopexit339 ], [ %i.ew, %bb.af ] ; 2 uses
  %.not113 = icmp eq i32 %storemerge.i, 0
  %i.kf = icmp sgt i32 %.pre-phi, %2
  %or.cond117 = select i1 %.not113, i1 true, i1 %i.kf
  br i1 %or.cond117, label %drmp3d_find_frame.exit.thread, label %.thread216

drmp3d_find_frame.exit.thread:                    ; preds = %drmp3_hdr_valid.exit.thread.i, %bb.m, %drmp3d_find_frame.exit
  %.3.i226 = phi i32 [ %.3.i, %drmp3d_find_frame.exit ], [ %2, %bb.m ], [ %2, %drmp3_hdr_valid.exit.thread.i ]
  store i32 %.3.i226, ptr %4, align 4
  br label %bb.gb

.thread216:                                       ; preds = %bb.l, %drmp3_hdr_padding.exit, %drmp3d_find_frame.exit
  %.1 = phi i32 [ %storemerge.i, %drmp3d_find_frame.exit ], [ %i.bt, %bb.l ], [ %2, %drmp3_hdr_padding.exit ] ; 2 uses
  %.095 = phi i32 [ %.3.i, %drmp3d_find_frame.exit ], [ 0, %bb.l ], [ 0, %drmp3_hdr_padding.exit ] ; 2 uses
  %i.kg = sext i32 %.095 to i64
  %i.kh = getelementptr inbounds i8, ptr %1, i64 %i.kg ; 6 uses
  %i.ki = load i32, ptr %i.kh, align 1
  store i32 %i.ki, ptr %i.d, align 8
  %i.kj = add nsw i32 %.095, %.1
  store i32 %i.kj, ptr %4, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 3 ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = icmp ugt i8 %i.kl, -65
  %i.kn = select i1 %i.km, i32 1, i32 2
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  store i32 %i.kn, ptr %i.ko, align 4
  %i.kp = getelementptr i8, ptr %i.kh, i64 1      ; 5 uses
  %.val121 = load i8, ptr %i.kp, align 1
  %i.kq = getelementptr i8, ptr %i.kh, i64 2      ; 3 uses
  %.val122 = load i8, ptr %i.kq, align 1
  %i.kr = lshr i8 %.val122, 2
  %i.ks = and i8 %i.kr, 3
  %i.kt = zext nneg i8 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = zext i8 %.val121 to i32                 ; 2 uses
  %i.kx = lshr i32 %i.kw, 3
  %.lobit.i = and i32 %i.kx, 1
  %i.ky = xor i32 %.lobit.i, 1
  %i.kz = lshr i32 %i.kv, %i.ky
  %i.la = lshr i32 %i.kw, 4
  %.lobit3.i = and i32 %i.la, 1
  %i.lb = xor i32 %.lobit3.i, 1
  %i.lc = lshr i32 %i.kz, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.lc, ptr %i.ld, align 4
  %i.le = load i8, ptr %i.kp, align 1
  %i.lf = lshr i8 %i.le, 1
  %i.lg = and i8 %i.lf, 3                         ; 2 uses
  %narrow = sub nuw nsw i8 4, %i.lg
  %i.lh = zext nneg i8 %narrow to i32
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.lh, ptr %i.li, align 4
  %.val119 = load i8, ptr %i.kp, align 1
  %.val120 = load i8, ptr %i.kq, align 1
  %i.lj = zext i8 %.val119 to i32                 ; 2 uses
  %i.lk = lshr i32 %i.lj, 3
  %.lobit.i144 = and i32 %i.lk, 1
  %i.ll = zext nneg i32 %.lobit.i144 to i64
  %i.lm = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.ll
  %i.ln = lshr i32 %i.lj, 1
  %i.lo = and i32 %i.ln, 3
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr [15 x i8], ptr %i.lm, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -15
  %i.ls = lshr i8 %.val120, 4
  %i.lt = zext nneg i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1
  %i.lw = zext i8 %i.lv to i32
  %i.lx = shl nuw nsw i32 %i.lw, 1
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.lx, ptr %i.ly, align 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kh, i64 4 ; 9 uses
  store ptr %i.lz, ptr %5, align 16
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.ma, align 8
  %i.mb = shl i32 %.1, 3
  %i.mc = add i32 %i.mb, -32                      ; 10 uses
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %i.mc, ptr %i.md, align 4
  %i.me = load i8, ptr %i.kp, align 1
  %.fr = freeze i8 %i.me                          ; 4 uses
  %i.mf = and i8 %.fr, 1
  %.not114 = icmp eq i8 %i.mf, 0
  br i1 %.not114, label %bb.ag, label %drmp3_bs_get_bits.exit

bb.ag:                                            ; preds = %.thread216
  store i32 16, ptr %i.ma, align 8
  br label %drmp3_bs_get_bits.exit

drmp3_bs_get_bits.exit:                           ; preds = %bb.ag, %.thread216
  %.promoted = phi i32 [ 0, %.thread216 ], [ 16, %bb.ag ]
  %i.mg = icmp eq i8 %i.lg, 1
  br i1 %i.mg, label %bb.ah, label %bb.eo

bb.ah:                                            ; preds = %drmp3_bs_get_bits.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 6672 ; 7 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.mj = call fastcc i32 @drmp3_L3_read_side_info(ptr noundef %5, ptr noundef nonnull %i.mi, ptr noundef nonnull %i.kh) ; 4 uses
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ml = load i32, ptr %i.ma, align 8            ; 3 uses
  %i.mm = load i32, ptr %i.md, align 4            ; 2 uses
  %i.mn = icmp sgt i32 %i.ml, %i.mm
  br i1 %i.mn, label %.critedge, label %bb.aj

.critedge:                                        ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.d, align 8
  br label %bb.gb

bb.aj:                                            ; preds = %bb.ai
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.mp = load i32, ptr %i.mo, align 8            ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.mp, i32 range(i32 0, -2147483648) %i.mj) ; 2 uses
  %i.mq = sub nsw i32 %i.mp, %i.mj
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.mq, i32 0)
  %i.mr = zext nneg i32 %narrow.i to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mr
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 6688 ; 4 uses
  %i.mv = sub nsw i32 %i.mm, %i.ml
  %i.mw = lshr i32 %i.mv, 3                       ; 2 uses
  %i.mx = sext i32 %..i to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mu, ptr nonnull readonly align 1 %i.mt, i64 %i.mx, i1 false)
  %i.my = getelementptr inbounds i8, ptr %i.mu, i64 %i.mx
  %i.mz = load ptr, ptr %5, align 16
  %i.na = sdiv i32 %i.ml, 8
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds i8, ptr %i.mz, i64 %i.nb
  %i.nd = zext nneg i32 %i.mw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.my, ptr align 1 %i.nc, i64 %i.nd, i1 false)
  %i.ne = add nsw i32 %..i, %i.mw
  store ptr %i.mu, ptr %i.mh, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 6680 ; 8 uses
  store i32 0, ptr %i.nf, align 8
  %i.ng = shl nsw i32 %i.ne, 3                    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 6684 ; 6 uses
  store i32 %i.ng, ptr %i.nh, align 4
  %i.ni = load i32, ptr %i.mo, align 8
  %i.nj = icmp sge i32 %i.ni, %i.mj               ; 2 uses
  %i.nk = zext i1 %i.nj to i32
  %i.nl = icmp ne ptr %3, null
  %or.cond = and i1 %i.nl, %i.nj
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aj
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 9 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 6155 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 22848
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 14240 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 6153 ; 7 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 19 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 22887 ; 7 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 14400 ; 4 uses
  %i.oa = ptrtoint ptr %i.nz to i64               ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %drmp3_L3_decode.exit
  %i.oe = phi i1 [ true, %.preheader ], [ false, %drmp3_L3_decode.exit ]
  %.093331 = phi i32 [ 0, %.preheader ], [ 1, %drmp3_L3_decode.exit ]
  %.0100330 = phi ptr [ %3, %.preheader ], [ %i.bmd, %drmp3_L3_decode.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.nm, i8 0, i64 4608, i1 false)
  %i.of = load i32, ptr %i.ko, align 4            ; 4 uses
  %i.og = mul nuw nsw i32 %i.of, %.093331
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [32 x i8], ptr %i.mi, i64 %i.oh ; 7 uses
  %i.oj = icmp sgt i32 %i.of, 0                   ; 2 uses
  br i1 %i.oj, label %.lr.ph.i150, label %._crit_edge.i146

.lr.ph.i150:                                      ; preds = %bb.ak
  %wide.trip.count.i151 = zext nneg i32 %i.of to i64
  %.pre.i = load i32, ptr %i.nf, align 8
  br label %bb.al

bb.al:                                            ; preds = %drmp3_L3_huffman.exit.i, %.lr.ph.i150
  %.promoted.i = phi i32 [ %.pre.i, %.lr.ph.i150 ], [ %i.oo, %drmp3_L3_huffman.exit.i ] ; 5 uses
  %indvars.iv.i152 = phi i64 [ 0, %.lr.ph.i150 ], [ %indvars.iv.next.i156, %drmp3_L3_huffman.exit.i ] ; 5 uses
end_hunk_3
