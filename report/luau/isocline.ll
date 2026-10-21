Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ic_env_free:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !147
  %i.fi = getelementptr i8, ptr %i.ff, i64 16
  %.val24 = load ptr, ptr %i.fi, align 8, !tbaa !82
  tail call void %.val24(ptr noundef %i.fh) #28, !inline_history !10
  %i.fj = load ptr, ptr %0, align 8, !tbaa !108
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !181
  %i.fm = getelementptr i8, ptr %i.fj, i64 16
  %.val23 = load ptr, ptr %i.fm, align 8, !tbaa !82
  tail call void %.val23(ptr noundef %i.fl) #28, !inline_history !10
  %i.fn = load ptr, ptr %0, align 8, !tbaa !108
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !183
  %i.fq = getelementptr i8, ptr %i.fn, i64 16
  %.val22 = load ptr, ptr %i.fq, align 8, !tbaa !82
  tail call void %.val22(ptr noundef %i.fp) #28, !inline_history !10
  store ptr null, ptr %i.fg, align 8, !tbaa !147
  %i.fr = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 16     ; 2 uses
  %.val21 = load ptr, ptr %i.fs, align 8, !tbaa !82
  tail call void %.val21(ptr noundef nonnull %0) #28, !inline_history !10
  %.val = load ptr, ptr %i.fs, align 8, !tbaa !82
  tail call void %.val(ptr noundef %i.fr) #28, !inline_history !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ic_env_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  %3 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %4 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.c = alloca [128 x i8], align 16              ; 3 uses
  %5 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.d = alloca [128 x i8], align 16              ; 3 uses
  %6 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 3 uses
  %7 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.f = alloca [128 x i8], align 16              ; 3 uses
  %8 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.g = alloca [128 x i8], align 16              ; 3 uses
  %9 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.h = alloca [128 x i8], align 16              ; 3 uses
  %10 = alloca %struct.tag_s, align 8             ; 5 uses
  %i.i = alloca [128 x i8], align 16              ; 3 uses
  %11 = alloca %struct.tag_s, align 8             ; 5 uses
  %i.j = alloca [128 x i8], align 16              ; 3 uses
  %12 = alloca %struct.tag_s, align 8             ; 5 uses
  %i.k = alloca [128 x i8], align 16              ; 3 uses
  %13 = alloca %struct.tag_s, align 8             ; 5 uses
  %i.l = alloca [128 x i8], align 16              ; 3 uses
  %14 = alloca %struct.tag_s, align 8             ; 5 uses
  %i.m = alloca [128 x i8], align 16              ; 3 uses
  %15 = alloca %struct.tag_s, align 8             ; 5 uses
  %i.n = alloca [128 x i8], align 16              ; 3 uses
  %16 = alloca %struct.tag_s, align 8             ; 5 uses
  %i.o = alloca [48 x i8], align 16               ; 55 uses
  %17 = alloca %struct.sigaction, align 8         ; 7 uses
  %i.p = icmp eq ptr %0, null
  %spec.store.select = select i1 %i.p, ptr @malloc, ptr %0 ; 3 uses
  %i.q = tail call ptr %spec.store.select(i64 noundef 24) #28 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ce, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %2, null
  %spec.store.select1 = select i1 %i.s, ptr @free, ptr %2
  %i.t = icmp eq ptr %1, null
  %spec.store.select2 = select i1 %i.t, ptr @realloc, ptr %1
  store ptr %spec.store.select, ptr %i.q, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %spec.store.select2, ptr %i.u, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %spec.store.select1, ptr %i.v, align 8, !tbaa !82
  %i.w = tail call ptr %spec.store.select(i64 noundef 128) #28, !inline_history !315 ; 22 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !82
  tail call void %i.x(ptr noundef nonnull %i.q) #28
  br label %bb.ce

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.y, i8 0, i64 120, i1 false)
  store ptr %i.q, ptr %i.w, align 8, !tbaa !108
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.z = tail call ptr %.val.i(i64 noundef 328) #28, !inline_history !316 ; 24 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %mem_zalloc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(324) %i.aa, i8 0, i64 324, i1 false)
  br label %mem_zalloc.exit.i

mem_zalloc.exit.i:                                ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.ab, align 8, !tbaa !199
  store i32 0, ptr %i.z, align 8, !tbaa !142
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  store i64 100, ptr %i.ac, align 8, !tbaa !176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  store i64 10, ptr %i.ad, align 8, !tbaa !177
  %i.ae = tail call i32 @isatty(i32 noundef 0) #28
  %.not.i60 = icmp eq i32 %i.ae, 0
  br i1 %.not.i60, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %mem_zalloc.exit.i
  %i.af = load i32, ptr %i.z, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 208 ; 2 uses
  %i.ah = tail call i32 @tcgetattr(i32 noundef %i.af, ptr noundef nonnull %i.ag) #28
  %.not16.i = icmp eq i32 %i.ah, -1
  br i1 %.not16.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 268 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.ai, ptr noundef nonnull align 8 dereferenceable(60) %i.ag, i64 60, i1 false), !tbaa.struct !328
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !329
  %i.ak = and i32 %i.aj, -1331
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !329
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 276 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !330
  %i.an = or i32 %i.am, 48
  store i32 %i.an, ptr %i.al, align 4, !tbaa !330
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 280 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !331
  %i.aq = and i32 %i.ap, -32780
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !331
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 290
  store i8 0, ptr %i.ar, align 2, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 291
  store i8 1, ptr %i.as, align 1, !tbaa !48
  store ptr %i.z, ptr @sig_tty, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %17, i8 0, i64 152, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.au = call i32 @sigemptyset(ptr noundef nonnull %i.at) #28 ; 0 uses
  store ptr @sig_handler, ptr %17, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 136
  store i32 268435456, ptr %i.av, align 8, !tbaa !334
  %i.aw = load i32, ptr @sighandlers, align 16, !tbaa !197 ; 2 uses
  %.not12.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not12.i.i.i, label %tty_init_raw.exit.thread15.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.m
  %i.ax = phi i32 [ %i.bk, %bb.m ], [ %i.aw, %bb.g ]
  %.013.i.i.i = phi ptr [ %i.bj, %bb.m ], [ @sighandlers, %bb.g ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8 ; 4 uses
  %i.az = call i32 @sigaction(i32 noundef %i.ax, ptr noundef null, ptr noundef nonnull %i.ay) #28
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !48
  %.not11.i.i.i = icmp eq ptr %i.bb, inttoptr (i64 1 to ptr)
  br i1 %.not11.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %.013.i.i.i, align 8, !tbaa !197
  %i.bd = call i32 @sigaction(i32 noundef %i.bc, ptr noundef nonnull %17, ptr noundef nonnull %i.ay) #28
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ay, align 8, !tbaa !48
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %.013.i.i.i, align 8, !tbaa !197
  %i.bg = icmp eq i32 %i.bf, 28
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr @sig_tty, align 8, !tbaa !198
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  store i8 1, ptr %i.bi, align 2, !tbaa !200
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i, label %tty_init_raw.exit.thread15.i, label %.lr.ph.i.i.i, !llvm.loop !317

tty_init_raw.exit.thread15.i:                     ; preds = %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.bl = call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.3) #28 ; 9 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.thread43.i.i, label %bb.n

bb.n:                                             ; preds = %tty_init_raw.exit.thread15.i
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !48
  %.fr.i.i.i.i = freeze i8 %i.bn                  ; 6 uses
  %.not25.i.i.not.i.i = icmp eq i8 %.fr.i.i.i.i, 0
  br i1 %.not25.i.i.not.i.i, label %ic_strlen.exit.i.i.thread.i, label %.lr.ph.i.preheader.i.i.i.i

ic_strnicmp.exit.i.i.thread.i.i:                  ; preds = %ic_strnicmp.exit.i.i.i.i
  %i.bo = add nuw nsw i64 %.01527.i.i.i.i, 1      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !48  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.preheader.i.i11.i.i, label %.lr.ph.i.preheader.i.i.i.i, !llvm.loop !318

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.n, %ic_strnicmp.exit.i.i.thread.i.i
  %i.br = phi i8 [ %i.bq, %ic_strnicmp.exit.i.i.thread.i.i ], [ %.fr.i.i.i.i, %bb.n ] ; 3 uses
  %.01527.i.i.i.i = phi i64 [ %i.bo, %ic_strnicmp.exit.i.i.thread.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.01527.i.i.i.i ; 4 uses
  %i.bt = add i8 %i.br, -65
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.bt, 26
  %i.bu = add nuw nsw i8 %i.br, 32
  %i.bv = select i1 %or.cond.i.i.i.i.i.i, i8 %i.bu, i8 %i.br ; 2 uses
  %.not.i.i.i.i.i = icmp slt i8 %i.bv, 117
  %.1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 -1, i32 1 ; 2 uses
  %cond.i.i.i.i.i = icmp eq i8 %i.bv, 117
  br i1 %cond.i.i.i.i.i, label %bb.o, label %ic_strnicmp.exit.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.preheader.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !48  ; 4 uses
  %.not = icmp eq i8 %i.bx, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.o
  %i.by = add i8 %i.bx, -65
  %or.cond.i.i.i.i.i.i.1 = icmp ult i8 %i.by, 26
  %i.bz = add nuw nsw i8 %i.bx, 32
  %i.ca = select i1 %or.cond.i.i.i.i.i.i.1, i8 %i.bz, i8 %i.bx ; 3 uses
  %.not.i.i.i.i.i.1 = icmp slt i8 %i.ca, 116
  %.not31.i.i.i.i.i.1 = icmp sgt i8 %i.ca, 116
  %..024.i.i.i.i.i.1 = select i1 %.not31.i.i.i.i.i.1, i32 1, i32 %.1.i.i.i.i.i
  %.1.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.1, i32 -1, i32 %..024.i.i.i.i.i.1 ; 2 uses
  %cond.i.i.i.i.i.1 = icmp eq i8 %i.ca, 116
  br i1 %cond.i.i.i.i.i.1, label %bb.p, label %ic_strnicmp.exit.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !48  ; 4 uses
  %.not321 = icmp eq i8 %i.cc, 0
  br i1 %.not321, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %bb.p
  %i.cd = add i8 %i.cc, -65
  %or.cond.i.i.i.i.i.i.2 = icmp ult i8 %i.cd, 26
  %i.ce = add nuw nsw i8 %i.cc, 32
  %i.cf = select i1 %or.cond.i.i.i.i.i.i.2, i8 %i.ce, i8 %i.cc ; 3 uses
  %.not.i.i.i.i.i.2 = icmp slt i8 %i.cf, 102
  %.not31.i.i.i.i.i.2 = icmp sgt i8 %i.cf, 102
  %..024.i.i.i.i.i.2 = select i1 %.not31.i.i.i.i.i.2, i32 1, i32 %.1.i.i.i.i.i.1
  %.1.i.i.i.i.i.2 = select i1 %.not.i.i.i.i.i.2, i32 -1, i32 %..024.i.i.i.i.i.2 ; 2 uses
  %cond.i.i.i.i.i.2 = icmp eq i8 %i.cf, 102
  br i1 %cond.i.i.i.i.i.2, label %bb.q, label %ic_strnicmp.exit.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !48  ; 4 uses
  %.not322 = icmp eq i8 %i.ch, 0
  br i1 %.not322, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %bb.q
  %i.ci = add i8 %i.ch, -65
  %or.cond.i.i.i.i.i.i.3 = icmp ult i8 %i.ci, 26
  %i.cj = add nuw nsw i8 %i.ch, 32
  %i.ck = select i1 %or.cond.i.i.i.i.i.i.3, i8 %i.cj, i8 %i.ch ; 3 uses
  %.not.i.i.i.i.i.3 = icmp slt i8 %i.ck, 45
  %.not31.i.i.i.i.i.3 = icmp sgt i8 %i.ck, 45
  %..024.i.i.i.i.i.3 = select i1 %.not31.i.i.i.i.i.3, i32 1, i32 %.1.i.i.i.i.i.2
  %.1.i.i.i.i.i.3 = select i1 %.not.i.i.i.i.i.3, i32 -1, i32 %..024.i.i.i.i.i.3 ; 2 uses
  %cond.i.i.i.i.i.3 = icmp eq i8 %i.ck, 45
  br i1 %cond.i.i.i.i.i.3, label %bb.r, label %ic_strnicmp.exit.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !48  ; 4 uses
  %.not323 = icmp eq i8 %i.cm, 0
  br i1 %.not323, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %bb.r
  %i.cn = add i8 %i.cm, -65
  %or.cond.i.i.i.i.i.i.4 = icmp ult i8 %i.cn, 26
  %i.co = add nuw nsw i8 %i.cm, 32
  %i.cp = select i1 %or.cond.i.i.i.i.i.i.4, i8 %i.co, i8 %i.cm ; 3 uses
  %.not.i.i.i.i.i.4 = icmp slt i8 %i.cp, 56
  %.not31.i.i.i.i.i.4 = icmp sgt i8 %i.cp, 56
  %..024.i.i.i.i.i.4 = select i1 %.not31.i.i.i.i.i.4, i32 1, i32 %.1.i.i.i.i.i.3
  %.1.i.i.i.i.i.4 = select i1 %.not.i.i.i.i.i.4, i32 -1, i32 %..024.i.i.i.i.i.4
  %cond.i.i.i.i.i.4 = icmp eq i8 %i.cp, 56
  br i1 %cond.i.i.i.i.i.4, label %.thread40.i.i, label %ic_strnicmp.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %18 = sext i1 true to i32
  br label %ic_strnicmp.exit.i.i.i.i

ic_strnicmp.exit.i.i.i.i:                         ; preds = %.lr.ph.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %._crit_edge.i.i.i.i.i
  %.3.i.i.i.i.i = phi i32 [ %18, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ], [ %.1.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.1 ], [ %.1.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.2 ], [ %.1.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.3 ], [ %.1.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.4 ]
  %19 = icmp eq i32 %.3.i.i.i.i.i, 0
  br i1 %19, label %.thread40.i.i, label %ic_strnicmp.exit.i.i.thread.i.i

ic_strnicmp.exit.i.i23.thread.i.i:                ; preds = %.lr.ph.i.i.i13.i.i.3, %.lr.ph.i.i.i13.i.i.2, %.lr.ph.i.i.i13.i.i.1, %.lr.ph.i.preheader.i.i11.i.i, %._crit_edge.i.i.i26.i.i
  %i.cq = add nuw nsw i64 %.01527.i.i12.i.i, 1    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !48  ; 2 uses
  %.not.not.i.i25.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not.not.i.i25.i.i, label %ic_strlen.exit.i.i.i, label %.lr.ph.i.preheader.i.i11.i.i, !llvm.loop !318

.lr.ph.i.preheader.i.i11.i.i:                     ; preds = %ic_strnicmp.exit.i.i.thread.i.i, %ic_strnicmp.exit.i.i23.thread.i.i
  %i.ct = phi i8 [ %i.cs, %ic_strnicmp.exit.i.i23.thread.i.i ], [ %.fr.i.i.i.i, %ic_strnicmp.exit.i.i.thread.i.i ] ; 3 uses
  %.01527.i.i12.i.i = phi i64 [ %i.cq, %ic_strnicmp.exit.i.i23.thread.i.i ], [ 0, %ic_strnicmp.exit.i.i.thread.i.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.01527.i.i12.i.i ; 3 uses
  %i.cv = add i8 %i.ct, -65
  %or.cond.i.i.i.i16.i.i = icmp ult i8 %i.cv, 26
  %i.cw = add nuw nsw i8 %i.ct, 32
  %i.cx = select i1 %or.cond.i.i.i.i16.i.i, i8 %i.cw, i8 %i.ct
  %cond.i.i.i22.i.i = icmp eq i8 %i.cx, 117
  br i1 %cond.i.i.i22.i.i, label %bb.s, label %ic_strnicmp.exit.i.i23.thread.i.i

bb.s:                                             ; preds = %.lr.ph.i.preheader.i.i11.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !48  ; 4 uses
  %.not339 = icmp eq i8 %i.cz, 0
  br i1 %.not339, label %._crit_edge.i.i.i26.i.i, label %.lr.ph.i.i.i13.i.i.1

.lr.ph.i.i.i13.i.i.1:                             ; preds = %bb.s
  %i.da = add i8 %i.cz, -65
  %or.cond.i.i.i.i16.i.i.1 = icmp ult i8 %i.da, 26
  %i.db = add nuw nsw i8 %i.cz, 32
  %i.dc = select i1 %or.cond.i.i.i.i16.i.i.1, i8 %i.db, i8 %i.cz
  %cond.i.i.i22.i.i.1 = icmp eq i8 %i.dc, 116
  br i1 %cond.i.i.i22.i.i.1, label %bb.t, label %ic_strnicmp.exit.i.i23.thread.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i13.i.i.1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !48  ; 4 uses
  %.not340 = icmp eq i8 %i.de, 0
  br i1 %.not340, label %._crit_edge.i.i.i26.i.i, label %.lr.ph.i.i.i13.i.i.2

.lr.ph.i.i.i13.i.i.2:                             ; preds = %bb.t
  %i.df = add i8 %i.de, -65
  %or.cond.i.i.i.i16.i.i.2 = icmp ult i8 %i.df, 26
  %i.dg = add nuw nsw i8 %i.de, 32
  %i.dh = select i1 %or.cond.i.i.i.i16.i.i.2, i8 %i.dg, i8 %i.de
  %cond.i.i.i22.i.i.2 = icmp eq i8 %i.dh, 102
  br i1 %cond.i.i.i22.i.i.2, label %bb.u, label %ic_strnicmp.exit.i.i23.thread.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i13.i.i.2
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !48  ; 4 uses
  %.not341 = icmp eq i8 %i.dj, 0
  br i1 %.not341, label %._crit_edge.i.i.i26.i.i, label %.lr.ph.i.i.i13.i.i.3

.lr.ph.i.i.i13.i.i.3:                             ; preds = %bb.u
  %i.dk = add i8 %i.dj, -65
  %or.cond.i.i.i.i16.i.i.3 = icmp ult i8 %i.dk, 26
  %i.dl = add nuw nsw i8 %i.dj, 32
  %i.dm = select i1 %or.cond.i.i.i.i16.i.i.3, i8 %i.dl, i8 %i.dj
  %cond.i.i.i22.i.i.3 = icmp eq i8 %i.dm, 56
  br i1 %cond.i.i.i22.i.i.3, label %.thread40.i.i, label %ic_strnicmp.exit.i.i23.thread.i.i

._crit_edge.i.i.i26.i.i:                          ; preds = %bb.s, %bb.t, %bb.u
  %20 = xor i1 true, true
  br i1 %20, label %.thread40.i.i, label %ic_strnicmp.exit.i.i23.thread.i.i

ic_strlen.exit.i.i.i:                             ; preds = %ic_strnicmp.exit.i.i23.thread.i.i
  %i.dn = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bl) #29
  %.not.i13.i = icmp eq i64 %i.dn, 1
  br i1 %.not.i13.i, label %.preheader.i.i.i.i, label %.thread43.i.i

ic_strlen.exit.i.i.thread.i:                      ; preds = %bb.n
  %i.do = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bl) #29
  %.not.i1335.i = icmp eq i64 %i.do, 1
  br i1 %.not.i1335.i, label %.critedge51.i.i, label %.thread43.i.i

.preheader.i.i.i.i:                               ; preds = %ic_strlen.exit.i.i.i
  %i.dp = add i8 %.fr.i.i.i.i, -65
  %or.cond.i.i.i.i.i = icmp ult i8 %i.dp, 26
  %i.dq = add nuw nsw i8 %.fr.i.i.i.i, 32
  %i.dr = select i1 %or.cond.i.i.i.i.i, i8 %i.dq, i8 %.fr.i.i.i.i
  %cond.i.i.i.i = icmp eq i8 %i.dr, 99
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 5 ; 2 uses
  br i1 %cond.i.i.i.i, label %.thread46.i.i, label %.critedge50.i.i, !llvm.loop !25

.thread46.i.i:                                    ; preds = %.preheader.i.i.i.i
  store i8 1, ptr %i.ds, align 1, !tbaa !201
  br label %tty_init_utf8.exit.i

.thread40.i.i:                                    ; preds = %ic_strnicmp.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.4, %._crit_edge.i.i.i26.i.i, %.lr.ph.i.i.i13.i.i.3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  store i8 1, ptr %i.dt, align 1, !tbaa !201
  br label %tty_init_utf8.exit.i

.thread43.i.i:                                    ; preds = %ic_strlen.exit.i.i.thread.i, %ic_strlen.exit.i.i.i, %tty_init_raw.exit.thread15.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  store i8 0, ptr %i.du, align 1, !tbaa !201
  br label %tty_init_utf8.exit.i

.critedge50.i.i:                                  ; preds = %.preheader.i.i.i.i
  store i8 0, ptr %i.ds, align 1, !tbaa !201
  br label %tty_init_utf8.exit.i

.critedge51.i.i:                                  ; preds = %ic_strlen.exit.i.i.thread.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  store i8 0, ptr %i.dv, align 1, !tbaa !201
  br label %tty_init_utf8.exit.i

tty_init_utf8.exit.i:                             ; preds = %.critedge51.i.i, %.critedge50.i.i, %.thread43.i.i, %.thread40.i.i, %.thread46.i.i
  %i.dw = phi ptr [ @.str.22, %.critedge50.i.i ], [ @.str.22, %.critedge51.i.i ], [ @.str.22, %.thread43.i.i ], [ @.str.19, %.thread46.i.i ], [ @.str.19, %.thread40.i.i ]
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.452, ptr noundef nonnull %i.dw, ptr noundef %i.bl)
  br label %tty_new.exit

.thread.i:                                        ; preds = %bb.f, %mem_zalloc.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !141, !range !136, !noundef !137
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.v, label %tty_end_raw.exit.i.i

bb.v:                                             ; preds = %.thread.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  store i64 0, ptr %i.ea, align 8, !tbaa !146
  %i.eb = load i32, ptr %i.z, align 8, !tbaa !142
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  %i.ed = tail call i32 @tcsetattr(i32 noundef %i.eb, i32 noundef 2, ptr noundef nonnull %i.ec) #28
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %tty_end_raw.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.dx, align 4, !tbaa !141
  br label %tty_end_raw.exit.i.i

tty_end_raw.exit.i.i:                             ; preds = %bb.w, %bb.v, %.thread.i
  %i.ef = load i32, ptr @sighandlers, align 16, !tbaa !197 ; 2 uses
  %.not5.i.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not5.i.i.i.i, label %tty_done_raw.exit.i.i, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %tty_end_raw.exit.i.i, %bb.y
  %i.eg = phi i32 [ %i.el, %bb.y ], [ %i.ef, %tty_end_raw.exit.i.i ]
  %.06.i.i.i.i = phi ptr [ %i.ek, %bb.y ], [ @sighandlers, %tty_end_raw.exit.i.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.eh, align 8, !tbaa !48
  %i.ei = icmp ult ptr %.val.i.i.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.ei, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i14.i
  %i.ej = tail call i32 @sigaction(i32 noundef %i.eg, ptr noundef nonnull %i.eh, ptr noundef null) #28 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.i14.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 160 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i.i, label %tty_done_raw.exit.i.i, label %.lr.ph.i.i.i14.i, !llvm.loop !24

tty_done_raw.exit.i.i:                            ; preds = %bb.y, %tty_end_raw.exit.i.i
  store ptr null, ptr @sig_tty, align 8, !tbaa !198
  %i.em = load ptr, ptr %i.ab, align 8, !tbaa !199
  %i.en = getelementptr i8, ptr %i.em, i64 16
  %.val.i.i = load ptr, ptr %i.en, align 8, !tbaa !82
  tail call void %.val.i.i(ptr noundef nonnull %i.z) #28, !inline_history !319
  br label %tty_new.exit

tty_new.exit:                                     ; preds = %tty_init_utf8.exit.i, %tty_done_raw.exit.i.i
  %.0.i = phi ptr [ %i.z, %tty_init_utf8.exit.i ], [ null, %tty_done_raw.exit.i.i ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %.0.i, ptr %i.eo, align 8, !tbaa !138
  %i.ep = load ptr, ptr %i.w, align 8, !tbaa !108 ; 4 uses
  %.val.i61 = load ptr, ptr %i.ep, align 8, !tbaa !70
  %i.eq = call ptr %.val.i61(i64 noundef 80) #28, !inline_history !320 ; 18 uses
  %.not.i.i62 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i62, label %term_new.exit, label %bb.z

bb.z:                                             ; preds = %tty_new.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.er, i8 0, i64 76, i1 false)
  store i32 1, ptr %i.eq, align 8, !tbaa !187
  %i.es = call i32 @isatty(i32 noundef 1) #28
  %i.et = icmp eq i32 %i.es, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.ev = zext i1 %i.et to i8
  store i8 %i.ev, ptr %i.eu, align 8, !tbaa !160
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 33
  store i8 0, ptr %i.ew, align 1, !tbaa !159
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  store ptr %i.ep, ptr %i.ex, align 8, !tbaa !195
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  store ptr %.0.i, ptr %i.ey, align 8, !tbaa !202
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  store i64 80, ptr %i.ez, align 8, !tbaa !203
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  store i64 25, ptr %i.fa, align 8, !tbaa !204
  %i.fb = icmp eq ptr %.0.i, null
  br i1 %i.fb, label %tty_is_utf8.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i, i64 5
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !201, !range !136, !noundef !137
  br label %tty_is_utf8.exit.i

tty_is_utf8.exit.i:                               ; preds = %bb.aa, %bb.z
  %.0.i.i = phi i8 [ %i.fd, %bb.aa ], [ 1, %bb.z ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 34
  store i8 %.0.i.i, ptr %i.fe, align 2, !tbaa !205
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 48 ; 9 uses
  store i32 2, ptr %i.ff, align 8, !tbaa !188
  %.val.i.i63 = load ptr, ptr %i.ep, align 8, !tbaa !70
  %i.fg = call ptr %.val.i.i63(i64 noundef 32) #28, !inline_history !321 ; 4 uses
  %.not.i.i.i64 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i64, label %sbuf_new.exit.i, label %bb.ab

bb.ab:                                            ; preds = %tty_is_utf8.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store ptr %i.ep, ptr %i.fh, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  br label %sbuf_new.exit.i

sbuf_new.exit.i:                                  ; preds = %bb.ab, %tty_is_utf8.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !186
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 52
  store i32 1, ptr %i.fj, align 4, !tbaa !206
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store i64 -1152921333076590553, ptr %i.fk, align 8, !tbaa !48
  %i.fl = call ptr @getenv(ptr noundef nonnull @.str.453) #28
  %.not.i65 = icmp eq ptr %i.fl, null
  br i1 %.not.i65, label %bb.ac, label %.thread.i66

.thread.i66:                                      ; preds = %sbuf_new.exit.i
  store i8 1, ptr %i.eu, align 8, !tbaa !160
  br label %bb.aj

bb.ac:                                            ; preds = %sbuf_new.exit.i
  %.pre.i = load i8, ptr %i.eu, align 8, !tbaa !160, !range !136
  %i.fm = trunc nuw i8 %.pre.i to i1
  br i1 %i.fm, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = call ptr @getenv(ptr noundef nonnull @.str.454) #28 ; 15 uses
  %i.fo = call ptr @getenv(ptr noundef nonnull @.str.455) #28 ; 13 uses
  %i.fp = icmp eq ptr %i.fn, null                 ; 2 uses
  br i1 %i.fp, label %ic_contains.exit107.thread.i, label %ic_contains.exit.i

ic_contains.exit.i:                               ; preds = %bb.ad
  %i.fq = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.456) #29
  %.not190.i = icmp eq ptr %i.fq, null
  br i1 %.not190.i, label %ic_contains.exit87.i, label %.thread176.sink.split.i

ic_contains.exit87.i:                             ; preds = %ic_contains.exit.i
  %i.fr = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.457) #29
  %.not191.i = icmp eq ptr %i.fr, null
  br i1 %.not191.i, label %ic_contains.exit89.i, label %.thread176.sink.split.i

ic_contains.exit89.i:                             ; preds = %ic_contains.exit87.i
  %i.fs = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.458) #29
  %.not192.i = icmp eq ptr %i.fs, null
  br i1 %.not192.i, label %ic_contains.exit91.i, label %.thread176.sink.split.i

ic_contains.exit91.i:                             ; preds = %ic_contains.exit89.i
  %i.ft = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.459) #29
  %.not193.i = icmp eq ptr %i.ft, null
  br i1 %.not193.i, label %ic_contains.exit93.i, label %.thread188.sink.split.i

ic_contains.exit93.i:                             ; preds = %ic_contains.exit91.i
  %i.fu = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.460) #29
  %.not194.i = icmp eq ptr %i.fu, null
  br i1 %.not194.i, label %ic_contains.exit95.i, label %.thread188.sink.split.i

ic_contains.exit95.i:                             ; preds = %ic_contains.exit93.i
  %i.fv = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.461) #29
  %.not195.i = icmp eq ptr %i.fv, null
  br i1 %.not195.i, label %ic_contains.exit97.i, label %.thread179.sink.split.i

ic_contains.exit97.i:                             ; preds = %ic_contains.exit95.i
  %i.fw = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.462) #29
  %.not196.i = icmp eq ptr %i.fw, null
  br i1 %.not196.i, label %ic_contains.exit99.i, label %.thread179.sink.split.i

ic_contains.exit99.i:                             ; preds = %ic_contains.exit97.i
  %i.fx = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.463) #29
  %.not197.i = icmp eq ptr %i.fx, null
  br i1 %.not197.i, label %ic_contains.exit101.i, label %.thread185.sink.split.i

ic_contains.exit101.i:                            ; preds = %ic_contains.exit99.i
  %i.fy = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.464) #29
  %.not198.i = icmp eq ptr %i.fy, null
  br i1 %.not198.i, label %ic_contains.exit103.i, label %.thread185.sink.split.i

ic_contains.exit103.i:                            ; preds = %ic_contains.exit101.i
  %i.fz = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.465) #29
end_hunk_0
