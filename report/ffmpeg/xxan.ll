Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xxan?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@xan_decode_frame:bb.a
  %i.iz = sext i32 %i.iy to i64
  %i.ja = icmp slt i64 %indvars.iv.next.i35, %i.iz
  br i1 %i.ja, label %.lr.ph.i33, label %._crit_edge.i27, !llvm.loop !54

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.u
  %.pre-phi.i28 = phi i8 [ %i.ih, %bb.u ], [ %i.iw, %.lr.ph.i33 ]
  %.0.lcssa.i = phi i64 [ 1, %bb.u ], [ %indvars.iv.next.i35, %.lr.ph.i33 ]
  %.161.lcssa.i = phi ptr [ %.16172.i, %bb.u ], [ %.161.i, %.lr.ph.i33 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.06278.i, i64 %.0.lcssa.i
  store i8 %.pre-phi.i28, ptr %i.jb, align 1, !tbaa !43
  %i.jc = load i32, ptr %i.hz, align 8, !tbaa !34 ; 3 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %.06278.i, i64 %i.jd
  %i.jf = add nuw nsw i32 %.05780.i, 1            ; 2 uses
  %i.jg = load i32, ptr %i.hv, align 4, !tbaa !33 ; 3 uses
  %i.jh = icmp slt i32 %i.jf, %i.jg
  br i1 %i.jh, label %bb.u, label %._crit_edge83.i, !llvm.loop !55

._crit_edge83.i:                                  ; preds = %._crit_edge.i27
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.jj = icmp sgt i32 %i.jg, 0
  %i.jk = icmp sgt i32 %i.jc, 0
  %or.cond = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond, label %.preheader.preheader.i30, label %.loopexit

.preheader.preheader.i30:                         ; preds = %._crit_edge83.i
  %i.jl = load ptr, ptr %i.hu, align 8, !tbaa !36
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !38 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !42
  br label %.preheader.i31

.preheader.i31:                                   ; preds = %._crit_edge86.i, %.preheader.preheader.i30
  %i.jo = phi i32 [ %i.kb, %._crit_edge86.i ], [ %i.jg, %.preheader.preheader.i30 ]
  %i.jp = phi ptr [ %i.kc, %._crit_edge86.i ], [ %i.jm, %.preheader.preheader.i30 ]
  %i.jq = phi i32 [ %i.kd, %._crit_edge86.i ], [ %i.jc, %.preheader.preheader.i30 ] ; 3 uses
  %.190.i = phi i32 [ %i.kj, %._crit_edge86.i ], [ 0, %.preheader.preheader.i30 ]
  %.289.i = phi ptr [ %i.ke, %._crit_edge86.i ], [ %i.jl, %.preheader.preheader.i30 ] ; 2 uses
  %.16388.i = phi ptr [ %i.ki, %._crit_edge86.i ], [ %i.jn, %.preheader.preheader.i30 ] ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph85.i, label %.preheader.._crit_edge86_crit_edge.i

.preheader.._crit_edge86_crit_edge.i:             ; preds = %.preheader.i31
  %.pre101.i = sext i32 %i.jq to i64
  br label %._crit_edge86.i

.lr.ph85.i:                                       ; preds = %.preheader.i31, %.lr.ph85.i
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %.lr.ph85.i ], [ 0, %.preheader.i31 ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.289.i, i64 %indvars.iv97.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !43  ; 2 uses
  %i.ju = shl i8 %i.jt, 2
  %i.jv = lshr i8 %i.jt, 3
  %i.jw = or i8 %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %.16388.i, i64 %indvars.iv97.i
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !43
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %i.jy = load i32, ptr %i.hz, align 8, !tbaa !34 ; 2 uses
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = icmp slt i64 %indvars.iv.next98.i, %i.jz
  br i1 %i.ka, label %.lr.ph85.i, label %._crit_edge86.loopexit.i, !llvm.loop !56

._crit_edge86.loopexit.i:                         ; preds = %.lr.ph85.i
  %.pre.i32 = load ptr, ptr %i.ji, align 8, !tbaa !38
  %.pre100.i = load i32, ptr %i.hv, align 4, !tbaa !33
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %._crit_edge86.loopexit.i, %.preheader.._crit_edge86_crit_edge.i
  %.pre-phi102.i = phi i64 [ %.pre101.i, %.preheader.._crit_edge86_crit_edge.i ], [ %i.jz, %._crit_edge86.loopexit.i ]
  %i.kb = phi i32 [ %i.jo, %.preheader.._crit_edge86_crit_edge.i ], [ %.pre100.i, %._crit_edge86.loopexit.i ] ; 2 uses
  %i.kc = phi ptr [ %i.jp, %.preheader.._crit_edge86_crit_edge.i ], [ %.pre.i32, %._crit_edge86.loopexit.i ] ; 2 uses
  %i.kd = phi i32 [ %i.jq, %.preheader.._crit_edge86_crit_edge.i ], [ %i.jy, %._crit_edge86.loopexit.i ]
  %i.ke = getelementptr inbounds i8, ptr %.289.i, i64 %.pre-phi102.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !45
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %.16388.i, i64 %i.kh
  %i.kj = add nuw nsw i32 %.190.i, 1              ; 2 uses
  %i.kk = icmp slt i32 %i.kj, %i.kb
  br i1 %i.kk, label %.preheader.i31, label %.loopexit, !llvm.loop !57

bb.v:                                             ; preds = %bytestream2_get_le32.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.t) #9
  br label %xan_decode_frame_type0.exit

.loopexit:                                        ; preds = %._crit_edge86.i, %._crit_edge167.i, %.preheader.lr.ph.i, %.loopexit136.i, %._crit_edge83.i, %bb.t
  %i.kl = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.km = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.kl) #9 ; 2 uses
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %xan_decode_frame_type0.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  store i32 1, ptr %2, align 4, !tbaa !45
  %i.ko = load i32, ptr %i.j, align 8, !tbaa !60
  br label %xan_decode_frame_type0.exit

xan_decode_frame_type0.exit:                      ; preds = %bytestream2_get_le32.exit.i, %bb.k, %bytestream2_get_le32.exit.i23, %bb.s, %.loopexit, %bb.a, %bb.w, %bb.v
  %.020 = phi i32 [ %i.ko, %bb.w ], [ -1094995529, %bb.v ], [ %i.e, %bb.a ], [ %i.km, %.loopexit ], [ %i.ht, %bb.s ], [ %i.am, %bytestream2_get_le32.exit.i ], [ %i.ba, %bb.k ], [ %i.hg, %bytestream2_get_le32.exit.i23 ]
  ret i32 %.020
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @xan_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @xan_decode_chroma(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, 4                            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.h = ptrtoint ptr %i.f to i64                 ; 7 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %.not153 = icmp ult i32 %i.c, %i.k
  br i1 %.not153, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10) #9
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.h, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp slt i32 %i.c, 0
  %..i165 = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.p)
  %.0.i166 = select i1 %i.q, i32 0, i32 %..i165
  %i.r = sext i32 %.0.i166 to i64
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.r ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.h, %i.t
  %i.v = icmp slt i64 %i.u, 2
  br i1 %i.v, label %bytestream2_get_le16.exit164, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !42
  %i.x = load i16, ptr %i.s, align 1, !tbaa !43
  %i.y = icmp eq i16 %i.x, 0
  %.pre232 = ptrtoint ptr %i.w to i64
  br label %bytestream2_get_le16.exit164

bytestream2_get_le16.exit164:                     ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %.pre232, %bb.e ], [ %i.h, %bb.d ]
  %i.z = phi ptr [ %i.w, %bb.e ], [ %i.f, %bb.d ] ; 4 uses
  %.0.i163 = phi i1 [ %i.y, %bb.e ], [ true, %bb.d ]
  %i.aa = sub i64 %i.h, %.pre-phi
  %i.ab = icmp slt i64 %i.aa, 2
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bytestream2_get_le16.exit164
  store ptr %i.f, ptr %i.d, align 8, !tbaa !39
  br label %bytestream2_get_le16.exit

bb.g:                                             ; preds = %bytestream2_get_le16.exit164
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 3 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !42
  %i.ad = load i16, ptr %i.z, align 1, !tbaa !43
  %i.ae = zext i16 %i.ad to i32
  %.pre233 = ptrtoint ptr %i.ac to i64
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.f, %bb.g
  %.pre-phi234 = phi i64 [ %i.h, %bb.f ], [ %.pre233, %bb.g ]
  %i.af = phi ptr [ %i.f, %bb.f ], [ %i.ac, %bb.g ]
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.ae, %bb.g ]  ; 2 uses
  %i.ag = shl nuw nsw i32 %.0.i, 1                ; 2 uses
  %2 = add nuw nsw i32 %.0.i, 1                   ; 2 uses
  %i.ah = sub i64 %i.h, %.pre-phi234              ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %.not154 = icmp slt i32 %i.ag, %i.ai
  br i1 %.not154, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bytestream2_get_le16.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11) #9
  br label %.thread

bb.i:                                             ; preds = %bytestream2_get_le16.exit
  %i.aj = zext nneg i32 %i.ag to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 %i.aj)
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %..i
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !35
  %i.as = tail call fastcc i32 @xan_unpack(ptr noundef nonnull %i.b, ptr noundef %i.aq, i32 noundef %i.ar) ; 3 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12) #9
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !38 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 5 uses
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !37 ; 3 uses
  %i.bb = zext nneg i32 %i.as to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !33 ; 6 uses
  br i1 %.0.i163, label %bb.p, label %.preheader171

.preheader171:                                    ; preds = %bb.k
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %.preheader168.lr.ph, label %._crit_edge189

.preheader168.lr.ph:                              ; preds = %.preheader171
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %.pre = load i32, ptr %i.bg, align 8, !tbaa !34 ; 2 uses
  br label %.preheader168

.preheader168:                                    ; preds = %.preheader168.lr.ph, %._crit_edge
  %i.bi = phi i32 [ %i.be, %.preheader168.lr.ph ], [ %i.cr, %._crit_edge ]
  %i.bj = phi ptr [ %i.av, %.preheader168.lr.ph ], [ %i.cs, %._crit_edge ]
  %i.bk = phi i32 [ %.pre, %.preheader168.lr.ph ], [ %i.ct, %._crit_edge ] ; 2 uses
  %i.bl = phi i32 [ %.pre, %.preheader168.lr.ph ], [ %i.cu, %._crit_edge ] ; 2 uses
  %.0135188 = phi ptr [ %i.ba, %.preheader168.lr.ph ], [ %.1136.lcssa, %._crit_edge ] ; 3 uses
  %.0137187 = phi i32 [ 0, %.preheader168.lr.ph ], [ %i.dd, %._crit_edge ]
  %.0141186 = phi ptr [ %i.az, %.preheader168.lr.ph ], [ %i.dc, %._crit_edge ] ; 2 uses
  %.0143185 = phi ptr [ %i.ax, %.preheader168.lr.ph ], [ %i.cy, %._crit_edge ] ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader168
  %i.bn = ptrtoint ptr %.0135188 to i64
  %i.bo = sub i64 %i.bh, %i.bn
  %i.bp = icmp slt i64 %i.bo, 1
  br i1 %i.bp, label %.thread, label %.lr.ph281

.lr.ph:                                           ; preds = %bb.n
  %i.bq = ptrtoint ptr %i.bu to i64
  %i.br = sub i64 %i.bh, %i.bq
  %i.bs = icmp slt i64 %i.br, 1
  br i1 %i.bs, label %.thread, label %.lr.ph281, !llvm.loop !62

.lr.ph281:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.1136184280 = phi ptr [ %i.bu, %.lr.ph ], [ %.0135188, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bt = phi i32 [ %i.cn, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.1136184280, i64 1 ; 3 uses
  %i.bv = load i8, ptr %.1136184280, align 1, !tbaa !43 ; 2 uses
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %.not161 = icmp eq i8 %i.bv, 0
  br i1 %.not161, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph281
  %.not162 = icmp samesign ugt i32 %2, %i.bw
  br i1 %.not162, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !43 ; 2 uses
  %i.cb = lshr i16 %i.ca, 3
  %i.cc = and i16 %i.cb, 248                      ; 2 uses
  %i.cd = lshr i16 %i.ca, 8
  %i.ce = trunc nuw i16 %i.cd to i8               ; 2 uses
  %i.cf = and i8 %i.ce, -8
  %i.cg = lshr i16 %i.cc, 5
  %i.ch = or disjoint i16 %i.cg, %i.cc
  %i.ci = trunc nuw i16 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.0143185, i64 %indvars.iv279
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !43
  %i.ck = lshr i8 %i.ce, 5
  %i.cl = or disjoint i8 %i.ck, %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %.0141186, i64 %indvars.iv279
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !43
  %.pre225 = load i32, ptr %i.bg, align 8, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph281, %bb.m
  %i.cn = phi i32 [ %i.bt, %.lr.ph281 ], [ %.pre225, %bb.m ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.co = ashr i32 %i.cn, 1
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !62

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre226 = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre227 = load i32, ptr %i.bd, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader168
  %i.cr = phi i32 [ %i.bi, %.preheader168 ], [ %.pre227, %._crit_edge.loopexit ] ; 3 uses
  %i.cs = phi ptr [ %i.bj, %.preheader168 ], [ %.pre226, %._crit_edge.loopexit ] ; 4 uses
  %i.ct = phi i32 [ %i.bk, %.preheader168 ], [ %i.cn, %._crit_edge.loopexit ]
  %i.cu = phi i32 [ %i.bl, %.preheader168 ], [ %i.cn, %._crit_edge.loopexit ]
  %.1136.lcssa = phi ptr [ %.0135188, %.preheader168 ], [ %i.bu, %._crit_edge.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 68
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !45
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %.0143185, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !45
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %.0141186, i64 %i.db ; 2 uses
  %i.dd = add nuw nsw i32 %.0137187, 1            ; 2 uses
  %i.de = ashr i32 %i.cr, 1
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %.preheader168, label %._crit_edge189, !llvm.loop !63

._crit_edge189:                                   ; preds = %._crit_edge, %.preheader171
  %i.dg = phi ptr [ %i.av, %.preheader171 ], [ %i.cs, %._crit_edge ]
  %.0143.lcssa = phi ptr [ %i.ax, %.preheader171 ], [ %i.cy, %._crit_edge ] ; 2 uses
  %.0141.lcssa = phi ptr [ %i.az, %.preheader171 ], [ %i.dc, %._crit_edge ] ; 2 uses
  %.lcssa179 = phi i32 [ %i.be, %.preheader171 ], [ %i.cr, %._crit_edge ]
  %i.dh = and i32 %.lcssa179, 1
  %.not160 = icmp eq i32 %i.dh, 0
  br i1 %.not160, label %.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge189
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 68
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !45
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sub nsw i64 0, %i.dk
  %i.dm = getelementptr inbounds i8, ptr %.0143.lcssa, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !34
  %i.dp = ashr i32 %i.do, 1
  %i.dq = sext i32 %i.dp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0143.lcssa, ptr align 1 %i.dm, i64 %i.dq, i1 false)
  %i.dr = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !45
  %i.du = sext i32 %i.dt to i64
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds i8, ptr %.0141.lcssa, i64 %i.dv
  %i.dx = load i32, ptr %i.dn, align 8, !tbaa !34
  %i.dy = ashr i32 %i.dx, 1
  %i.dz = sext i32 %i.dy to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0141.lcssa, ptr align 1 %i.dw, i64 %i.dz, i1 false)
  br label %.thread

bb.p:                                             ; preds = %bb.k
  %i.ea = ashr i32 %i.be, 2                       ; 2 uses
  %.not159198 = icmp sgt i32 %i.ea, 0
  br i1 %.not159198, label %.preheader.lr.ph, label %._crit_edge205

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !45
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.az, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.av, i64 68
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !45
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ax, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ek = ptrtoint ptr %i.bc to i64               ; 2 uses
  %.pre228 = load i32, ptr %i.ej, align 8, !tbaa !34 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge196
  %i.el = phi i32 [ %i.be, %.preheader.lr.ph ], [ %i.gb, %._crit_edge196 ]
  %i.em = phi ptr [ %i.av, %.preheader.lr.ph ], [ %i.gc, %._crit_edge196 ]
  %i.en = phi i32 [ %.pre228, %.preheader.lr.ph ], [ %i.gd, %._crit_edge196 ] ; 2 uses
  %i.eo = phi i32 [ %.pre228, %.preheader.lr.ph ], [ %i.ge, %._crit_edge196 ] ; 2 uses
  %.0132204 = phi ptr [ %i.ee, %.preheader.lr.ph ], [ %i.gq, %._crit_edge196 ] ; 3 uses
  %.0133203 = phi ptr [ %i.ei, %.preheader.lr.ph ], [ %i.gp, %._crit_edge196 ] ; 3 uses
  %.2202 = phi ptr [ %i.ba, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge196 ] ; 3 uses
  %.1138201 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.gr, %._crit_edge196 ]
  %.1142200 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %i.go, %._crit_edge196 ] ; 3 uses
  %.1144199 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %i.gj, %._crit_edge196 ] ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %.lr.ph195.preheader, label %._crit_edge196

.lr.ph195.preheader:                              ; preds = %.preheader
  %i.eq = ptrtoint ptr %.2202 to i64
  %i.er = sub i64 %i.ek, %i.eq
  %i.es = icmp slt i64 %i.er, 1
  br i1 %i.es, label %.thread, label %.lr.ph286

.lr.ph195:                                        ; preds = %bb.s
  %i.et = ptrtoint ptr %i.ex to i64
  %i.eu = sub i64 %i.ek, %i.et
  %i.ev = icmp slt i64 %i.eu, 1
  br i1 %i.ev, label %.thread, label %.lr.ph286, !llvm.loop !64

.lr.ph286:                                        ; preds = %.lr.ph195.preheader, %.lr.ph195
  %.3194285 = phi ptr [ %i.ex, %.lr.ph195 ], [ %.2202, %.lr.ph195.preheader ] ; 2 uses
  %indvars.iv222284 = phi i64 [ %indvars.iv.next223, %.lr.ph195 ], [ 0, %.lr.ph195.preheader ] ; 6 uses
  %i.ew = phi i32 [ %i.fx, %.lr.ph195 ], [ %i.en, %.lr.ph195.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.3194285, i64 1 ; 3 uses
  %i.ey = load i8, ptr %.3194285, align 1, !tbaa !43 ; 2 uses
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %.not157 = icmp eq i8 %i.ey, 0
  br i1 %.not157, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph286
  %.not158 = icmp samesign ugt i32 %2, %i.ez
  br i1 %.not158, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 1, !tbaa !43 ; 2 uses
  %i.fe = lshr i16 %i.fd, 3
  %i.ff = and i16 %i.fe, 248                      ; 2 uses
  %i.fg = lshr i16 %i.fd, 8
  %i.fh = trunc nuw i16 %i.fg to i8               ; 2 uses
  %i.fi = and i8 %i.fh, -8
  %i.fj = lshr i16 %i.ff, 5
  %i.fk = or disjoint i16 %i.fj, %i.ff
  %i.fl = trunc nuw i16 %i.fk to i8               ; 4 uses
  %i.fm = or disjoint i64 %indvars.iv222284, 1    ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0133203, i64 %i.fm
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !43
  %i.fo = getelementptr inbounds nuw i8, ptr %.0133203, i64 %indvars.iv222284
  store i8 %i.fl, ptr %i.fo, align 1, !tbaa !43
  %i.fp = getelementptr inbounds nuw i8, ptr %.1144199, i64 %i.fm
  store i8 %i.fl, ptr %i.fp, align 1, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %.1144199, i64 %indvars.iv222284
  store i8 %i.fl, ptr %i.fq, align 1, !tbaa !43
  %i.fr = lshr i8 %i.fh, 5
  %i.fs = or disjoint i8 %i.fr, %i.fi             ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0132204, i64 %i.fm
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !43
  %i.fu = getelementptr inbounds nuw i8, ptr %.0132204, i64 %indvars.iv222284
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !43
  %i.fv = getelementptr inbounds nuw i8, ptr %.1142200, i64 %i.fm
  store i8 %i.fs, ptr %i.fv, align 1, !tbaa !43
  %i.fw = getelementptr inbounds nuw i8, ptr %.1142200, i64 %indvars.iv222284
  store i8 %i.fs, ptr %i.fw, align 1, !tbaa !43
  %.pre229 = load i32, ptr %i.ej, align 8, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph286, %bb.r
  %i.fx = phi i32 [ %i.ew, %.lr.ph286 ], [ %.pre229, %bb.r ] ; 4 uses
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222284, 2 ; 2 uses
  %i.fy = ashr i32 %i.fx, 1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next223, %i.fz
  br i1 %i.ga, label %.lr.ph195, label %._crit_edge196.loopexit, !llvm.loop !64

._crit_edge196.loopexit:                          ; preds = %bb.s
  %.pre230 = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre231 = load i32, ptr %i.bd, align 4, !tbaa !33
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %._crit_edge196.loopexit, %.preheader
  %i.gb = phi i32 [ %i.el, %.preheader ], [ %.pre231, %._crit_edge196.loopexit ] ; 3 uses
  %i.gc = phi ptr [ %i.em, %.preheader ], [ %.pre230, %._crit_edge196.loopexit ] ; 4 uses
  %i.gd = phi i32 [ %i.en, %.preheader ], [ %i.fx, %._crit_edge196.loopexit ]
  %i.ge = phi i32 [ %i.eo, %.preheader ], [ %i.fx, %._crit_edge196.loopexit ]
  %.3.lcssa = phi ptr [ %.2202, %.preheader ], [ %i.ex, %._crit_edge196.loopexit ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 68
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !45
  %i.gh = shl nsw i32 %i.gg, 1
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.1144199, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !45
  %i.gm = shl nsw i32 %i.gl, 1
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.1142200, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.0133203, i64 %i.gi
  %i.gq = getelementptr inbounds i8, ptr %.0132204, i64 %i.gn
  %i.gr = add nuw nsw i32 %.1138201, 1            ; 2 uses
  %i.gs = ashr i32 %i.gb, 2                       ; 2 uses
  %.not159 = icmp slt i32 %i.gr, %i.gs
  br i1 %.not159, label %.preheader, label %._crit_edge205, !llvm.loop !65

._crit_edge205:                                   ; preds = %._crit_edge196, %bb.p
  %i.gt = phi ptr [ %i.av, %bb.p ], [ %i.gc, %._crit_edge196 ]
  %.1144.lcssa = phi ptr [ %i.ax, %bb.p ], [ %i.gj, %._crit_edge196 ] ; 2 uses
  %.1142.lcssa = phi ptr [ %i.az, %bb.p ], [ %i.go, %._crit_edge196 ] ; 2 uses
  %.lcssa174 = phi i32 [ %i.be, %bb.p ], [ %i.gb, %._crit_edge196 ] ; 2 uses
  %.lcssa = phi i32 [ %i.ea, %bb.p ], [ %i.gs, %._crit_edge196 ]
  %i.gu = and i32 %.lcssa174, 3
  %.not156 = icmp eq i32 %i.gu, 0
  br i1 %.not156, label %.thread, label %bb.t

bb.t:                                             ; preds = %._crit_edge205
  %i.gv = add nsw i32 %.lcssa174, 1
  %i.gw = ashr i32 %i.gv, 1
  %i.gx = shl nsw i32 %.lcssa, 1
  %i.gy = sub nsw i32 %i.gw, %i.gx                ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 68
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !45
  %i.hb = mul nsw i32 %i.ha, %i.gy
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = getelementptr inbounds i8, ptr %.1144.lcssa, i64 %i.hd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1144.lcssa, ptr align 1 %i.he, i64 %i.hc, i1 false)
  %i.hf = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !45
  %i.hi = mul nsw i32 %i.hh, %i.gy
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds i8, ptr %.1142.lcssa, i64 %i.hk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1142.lcssa, ptr align 1 %i.hl, i64 %i.hj, i1 false)
  br label %.thread

.thread:                                          ; preds = %.lr.ph.preheader, %.lr.ph, %bb.l, %.lr.ph195.preheader, %bb.q, %.lr.ph195, %bb.o, %._crit_edge189, %._crit_edge205, %bb.t, %bb.a, %bb.j, %bb.h, %bb.c
  %.1 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.h ], [ %i.as, %bb.j ], [ 0, %bb.a ], [ 0, %._crit_edge205 ], [ 0, %._crit_edge189 ], [ 0, %.lr.ph195.preheader ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %.lr.ph ], [ 0, %.lr.ph195 ], [ -1094995529, %bb.q ], [ -1094995529, %bb.l ], [ 0, %.lr.ph.preheader ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @xan_unpack_luma(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i32 noundef range(i32 -1073741824, 1073741824) %2) unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !42 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !42 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !42 ; 9 uses
  %i.d = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 2 uses
  %i.e = ptrtoint ptr %.sroa.12.0.copyload to i64 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = ptrtoint ptr %.sroa.10.0.copyload to i64 ; 15 uses
  %i.i = sub i64 %i.h, %i.d
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bytestream2_get_byte.exit57, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1 ; 3 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !42
  %i.l = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !43
  %i.m = zext i8 %i.l to i32
  %.pre = ptrtoint ptr %i.k to i64
  br label %bytestream2_get_byte.exit57

bytestream2_get_byte.exit57:                      ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.b ], [ %i.h, %bb.a ]
  %i.n = phi ptr [ %i.k, %bb.b ], [ %.sroa.10.0.copyload, %bb.a ] ; 2 uses
  %.0.i56 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = sub i64 %i.h, %.pre-phi
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %bytestream2_get_byte.exit55, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_byte.exit57
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !42
  %i.r = load i8, ptr %i.n, align 1, !tbaa !43
  %i.s = zext i8 %i.r to i32
  %.pre71 = ptrtoint ptr %i.q to i64
  br label %bytestream2_get_byte.exit55

bytestream2_get_byte.exit55:                      ; preds = %bytestream2_get_byte.exit57, %bb.c
  %.pre-phi72 = phi i64 [ %.pre71, %bb.c ], [ %i.h, %bytestream2_get_byte.exit57 ]
  %i.t = phi ptr [ %i.q, %bb.c ], [ %.sroa.10.0.copyload, %bytestream2_get_byte.exit57 ]
  %.0.i54 = phi i32 [ %i.s, %bb.c ], [ 0, %bytestream2_get_byte.exit57 ] ; 18 uses
  %i.u = add nuw nsw i32 %.0.i54, %.0.i56         ; 9 uses
  %i.v = shl nuw nsw i32 %.0.i56, 1
  %i.w = sub i64 %i.h, %.pre-phi72
  %i.x = zext nneg i32 %i.v to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.x)
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %..i ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.h, %i.z
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bytestream2_get_byte.exit55
  store ptr %.sroa.10.0.copyload, ptr %i.c, align 8, !tbaa !39
  br label %bytestream2_get_byte.exit53

bb.e:                                             ; preds = %bytestream2_get_byte.exit55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !42
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !43
  %i.ae = zext i8 %i.ad to i32
  br label %bytestream2_get_byte.exit53

bytestream2_get_byte.exit53:                      ; preds = %bb.d, %bb.e
  %.0.i52 = phi i32 [ 0, %bb.d ], [ %i.ae, %bb.e ]
  %i.af = shl nuw nsw i32 %.0.i54, 1
  %i.ag = sub i32 %i.g, %i.af                     ; 8 uses
  %i.ah = sub i64 %i.h, %i.e
  %i.ai = trunc i64 %i.ah to i32                  ; 8 uses
  br label %.outer

.outer:                                           ; preds = %bb.al, %bytestream2_get_byte.exit53
  %.039.ph = phi ptr [ %.140.7, %bb.al ], [ %1, %bytestream2_get_byte.exit53 ] ; 4 uses
  %.036.ph = phi i32 [ %i.fy, %bb.al ], [ %.0.i52, %bytestream2_get_byte.exit53 ] ; 8 uses
  %.032.ph = phi i32 [ %.1.7, %bb.al ], [ %i.u, %bytestream2_get_byte.exit53 ]
  %i.aj = lshr i32 %.036.ph, 7
  %.lobit = and i32 %i.aj, 1
  %i.ak = shl nuw nsw i32 %.032.ph, 1
  %i.al = add i32 %i.ag, %i.ak
  %i.am = add i32 %i.al, %.lobit                  ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  %..i50 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ai)
  %.0.i = select i1 %i.an, i32 0, i32 %..i50
  %i.ao = sext i32 %.0.i to i64
end_hunk_0
