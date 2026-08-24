Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@_m3d_gettx:bb.a
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.ax
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i16 %i.by, ptr %i.cb, align 8
  %i.cc = load i32, ptr %i.c, align 4
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = load ptr, ptr %i.ap, align 8
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.ax
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 18
  store i16 %i.cd, ptr %i.cg, align 2
  %i.ch = load i32, ptr %i.a, align 4
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = load ptr, ptr %i.ap, align 8
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ax
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  store i8 %i.ci, ptr %i.cl, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.not101 = icmp eq ptr %.085, null
  br i1 %.not101, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void %.085(ptr noundef nonnull %.2) #54
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.p
  %i.cm = load ptr, ptr %i.ap, align 8
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ax
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %.not102 = icmp eq ptr %i.cp, null
  br i1 %.not102, label %bb.y, label %.loopexit107

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -68, ptr %i.cq, align 1
  br label %.loopexit107

.loopexit107.loopexit:                            ; preds = %bb.c
  %i.cr = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit107

.loopexit107:                                     ; preds = %.loopexit107.loopexit, %bb.x, %bb.y, %.thread, %bb.a, %bb.b, %bb.o, %bb.j
  %.084 = phi i32 [ -1, %bb.a ], [ -1, %.thread ], [ -1, %bb.o ], [ %i.an, %bb.x ], [ -1, %bb.j ], [ -1, %bb.b ], [ %i.an, %bb.y ], [ %i.cr, %.loopexit107.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret i32 %.084
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @_m3dstbi__png_load(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #10 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 16 uses
  %i.b = alloca [3 x i8], align 1                 ; 11 uses
  %i.c = alloca [3 x i16], align 2                ; 9 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct._m3dstbi__png, align 8      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  store ptr %0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 52 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %i.i, align 8              ; 10 uses
  %.promoted.i.i.i = load ptr, ptr %i.h, align 8  ; 10 uses
  %i.k = icmp ult ptr %.promoted.i.i.i, %i.j
  br i1 %i.k, label %_m3dstbi__get8.exit.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit.1.i.i.i:                      ; preds = %_m3dstbi__get8.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 2 ; 3 uses
  store ptr %i.l, ptr %i.h, align 8
  %i.m = load i8, ptr %i.ap, align 1
  %i.n = icmp eq i8 %i.m, 80
  %i.o = icmp ult ptr %i.l, %i.j
  %or.cond26.i.i.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond26.i.i.i, label %_m3dstbi__get8.exit.2.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit.2.i.i.i:                      ; preds = %_m3dstbi__get8.exit.1.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 3 ; 3 uses
  store ptr %i.p, ptr %i.h, align 8
  %i.q = load i8, ptr %i.l, align 1
  %i.r = icmp eq i8 %i.q, 78
  %i.s = icmp ult ptr %i.p, %i.j
  %or.cond27.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond27.i.i.i, label %_m3dstbi__get8.exit.3.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit.3.i.i.i:                      ; preds = %_m3dstbi__get8.exit.2.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 4 ; 3 uses
  store ptr %i.t, ptr %i.h, align 8
  %i.u = load i8, ptr %i.p, align 1
  %i.v = icmp eq i8 %i.u, 71
  %i.w = icmp ult ptr %i.t, %i.j
  %or.cond28.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond28.i.i.i, label %_m3dstbi__get8.exit.4.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit.4.i.i.i:                      ; preds = %_m3dstbi__get8.exit.3.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 5 ; 3 uses
  store ptr %i.x, ptr %i.h, align 8
  %i.y = load i8, ptr %i.t, align 1
  %i.z = icmp eq i8 %i.y, 13
  %i.aa = icmp ult ptr %i.x, %i.j
  %or.cond29.i.i.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond29.i.i.i, label %_m3dstbi__get8.exit.5.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit.5.i.i.i:                      ; preds = %_m3dstbi__get8.exit.4.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 6 ; 3 uses
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = load i8, ptr %i.x, align 1
  %i.ad = icmp eq i8 %i.ac, 10
  %i.ae = icmp ult ptr %i.ab, %i.j
  %or.cond30.i.i.i = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond30.i.i.i, label %_m3dstbi__get8.exit.6.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit.6.i.i.i:                      ; preds = %_m3dstbi__get8.exit.5.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 7 ; 3 uses
  store ptr %i.af, ptr %i.h, align 8
  %i.ag = load i8, ptr %i.ab, align 1
  %i.ah = icmp eq i8 %i.ag, 26
  %i.ai = icmp ult ptr %i.af, %i.j
  %or.cond31.i.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond31.i.i.i, label %_m3dstbi__get8.exit.7.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit.7.i.i.i:                      ; preds = %_m3dstbi__get8.exit.6.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 8 ; 3 uses
  store ptr %i.aj, ptr %i.h, align 8
  %i.ak = load i8, ptr %i.af, align 1
  %i.al = icmp eq i8 %i.ak, 10
  br i1 %i.al, label %_m3dstbi__check_png_header.exit.preheader.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__check_png_header.exit.preheader.i.i:    ; preds = %_m3dstbi__get8.exit.7.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.promoted28 = load i32, ptr %i.an, align 8
  br label %_m3dstbi__check_png_header.exit.i.i

_m3dstbi__get8.exit.i.i.i:                        ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i, i64 1 ; 3 uses
  store ptr %i.ap, ptr %i.h, align 8
  %i.aq = load i8, ptr %.promoted.i.i.i, align 1
  %i.ar = icmp eq i8 %i.aq, -119
  %i.as = icmp ult ptr %i.ap, %i.j
  %or.cond.i.i.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond.i.i.i, label %_m3dstbi__get8.exit.1.i.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__check_png_header.exit.i.i:              ; preds = %_m3dstbi__check_png_header.exit.i.i.backedge, %_m3dstbi__check_png_header.exit.preheader.i.i
  %i.at = phi ptr [ %i.j, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %i.aaf, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 21 uses
  %i.au = phi ptr [ %i.aj, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.be, %_m3dstbi__check_png_header.exit.i.i.backedge ]
  %i.av = phi i32 [ %.promoted28, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %i.aah, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 19 uses
  %i.aw = phi ptr [ null, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %i.aai, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 14 uses
  %i.ax = phi ptr [ %i.j, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %i.aaj, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 51 uses
  %i.ay = phi ptr [ %i.aj, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.be44, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 4 uses
  %.0220.i.i = phi i8 [ 0, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.3223.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 14 uses
  %.0217.i.i = phi i8 [ 0, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.1218.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 14 uses
  %.0214.i.i = phi i32 [ 0, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.1215.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 19 uses
  %.0210.i.i = phi i32 [ 0, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.4.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 19 uses
  %.0205.i.i = phi i32 [ 0, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.1206.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 17 uses
  %.0201.i.i = phi i32 [ 1, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.2203.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 8 uses
  %.0195.i.i = phi i32 [ 0, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.2197.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 15 uses
  %.0191.i.i = phi i32 [ 0, %_m3dstbi__check_png_header.exit.preheader.i.i ], [ %.2193.i.i, %_m3dstbi__check_png_header.exit.i.i.backedge ] ; 16 uses
  %i.az = icmp ult ptr %i.ay, %i.ax
  br i1 %i.az, label %bb.b, label %_m3dstbi__get8.exit.i.i.i.i.i

bb.b:                                             ; preds = %_m3dstbi__check_png_header.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.h, align 8
  %i.bb = load i8, ptr %i.ay, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  br label %_m3dstbi__get8.exit.i.i.i.i.i

_m3dstbi__get8.exit.i.i.i.i.i:                    ; preds = %bb.b, %_m3dstbi__check_png_header.exit.i.i
  %i.be = phi ptr [ %i.ba, %bb.b ], [ %i.au, %_m3dstbi__check_png_header.exit.i.i ]
  %i.bf = phi ptr [ %i.ba, %bb.b ], [ %i.ay, %_m3dstbi__check_png_header.exit.i.i ] ; 4 uses
  %.0.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.b ], [ 0, %_m3dstbi__check_png_header.exit.i.i ] ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.ax
  br i1 %i.bg, label %bb.c, label %_m3dstbi__get16be.exit.i.i.i.i

bb.c:                                             ; preds = %_m3dstbi__get8.exit.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 3 uses
  store ptr %i.bh, ptr %i.h, align 8
  %i.bi = load i8, ptr %i.bf, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %.0.i.i.i.i.i.i, %i.bj
  br label %_m3dstbi__get16be.exit.i.i.i.i

_m3dstbi__get16be.exit.i.i.i.i:                   ; preds = %bb.c, %_m3dstbi__get8.exit.i.i.i.i.i
  %i.bl = phi ptr [ %i.bh, %bb.c ], [ %i.be, %_m3dstbi__get8.exit.i.i.i.i.i ]
  %i.bm = phi ptr [ %i.bh, %bb.c ], [ %i.bf, %_m3dstbi__get8.exit.i.i.i.i.i ] ; 4 uses
  %.0.i2.i.i.i.i.i = phi i32 [ %i.bk, %bb.c ], [ %.0.i.i.i.i.i.i, %_m3dstbi__get8.exit.i.i.i.i.i ]
  %i.bn = icmp ult ptr %i.bm, %i.ax
  br i1 %i.bn, label %bb.d, label %_m3dstbi__get8.exit.i2.i.i.i.i

bb.d:                                             ; preds = %_m3dstbi__get16be.exit.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 3 uses
  store ptr %i.bo, ptr %i.h, align 8
  %i.bp = load i8, ptr %i.bm, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  br label %_m3dstbi__get8.exit.i2.i.i.i.i

_m3dstbi__get8.exit.i2.i.i.i.i:                   ; preds = %bb.d, %_m3dstbi__get16be.exit.i.i.i.i
  %i.bs = phi ptr [ %i.bo, %bb.d ], [ %i.bl, %_m3dstbi__get16be.exit.i.i.i.i ]
  %i.bt = phi ptr [ %i.bo, %bb.d ], [ %i.bm, %_m3dstbi__get16be.exit.i.i.i.i ] ; 4 uses
  %.0.i.i3.i.i.i.i = phi i32 [ %i.br, %bb.d ], [ 0, %_m3dstbi__get16be.exit.i.i.i.i ] ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.ax
  br i1 %i.bu, label %bb.e, label %_m3dstbi__get32be.exit.i.i.i

bb.e:                                             ; preds = %_m3dstbi__get8.exit.i2.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  store ptr %i.bv, ptr %i.h, align 8
  %i.bw = load i8, ptr %i.bt, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %.0.i.i3.i.i.i.i, %i.bx
  br label %_m3dstbi__get32be.exit.i.i.i

_m3dstbi__get32be.exit.i.i.i:                     ; preds = %bb.e, %_m3dstbi__get8.exit.i2.i.i.i.i
  %i.bz = phi ptr [ %i.bv, %bb.e ], [ %i.bs, %_m3dstbi__get8.exit.i2.i.i.i.i ]
  %i.ca = phi ptr [ %i.bv, %bb.e ], [ %i.bt, %_m3dstbi__get8.exit.i2.i.i.i.i ] ; 4 uses
  %.0.i2.i4.i.i.i.i = phi i32 [ %i.by, %bb.e ], [ %.0.i.i3.i.i.i.i, %_m3dstbi__get8.exit.i2.i.i.i.i ] ; 4 uses
  %i.cb = icmp ult ptr %i.ca, %i.ax
  br i1 %i.cb, label %bb.f, label %_m3dstbi__get8.exit.i.i2.i.i.i

bb.f:                                             ; preds = %_m3dstbi__get32be.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 3 uses
  store ptr %i.cc, ptr %i.h, align 8
  %i.cd = load i8, ptr %i.ca, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  br label %_m3dstbi__get8.exit.i.i2.i.i.i

_m3dstbi__get8.exit.i.i2.i.i.i:                   ; preds = %bb.f, %_m3dstbi__get32be.exit.i.i.i
  %i.cg = phi ptr [ %i.cc, %bb.f ], [ %i.bz, %_m3dstbi__get32be.exit.i.i.i ]
  %i.ch = phi ptr [ %i.cc, %bb.f ], [ %i.ca, %_m3dstbi__get32be.exit.i.i.i ] ; 4 uses
  %.0.i.i.i3.i.i.i = phi i32 [ %i.cf, %bb.f ], [ 0, %_m3dstbi__get32be.exit.i.i.i ] ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.ax
  br i1 %i.ci, label %bb.g, label %_m3dstbi__get16be.exit.i4.i.i.i

bb.g:                                             ; preds = %_m3dstbi__get8.exit.i.i2.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  store ptr %i.cj, ptr %i.h, align 8
  %i.ck = load i8, ptr %i.ch, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %.0.i.i.i3.i.i.i, %i.cl
  br label %_m3dstbi__get16be.exit.i4.i.i.i

_m3dstbi__get16be.exit.i4.i.i.i:                  ; preds = %bb.g, %_m3dstbi__get8.exit.i.i2.i.i.i
  %i.cn = phi ptr [ %i.cj, %bb.g ], [ %i.cg, %_m3dstbi__get8.exit.i.i2.i.i.i ]
  %i.co = phi ptr [ %i.cj, %bb.g ], [ %i.ch, %_m3dstbi__get8.exit.i.i2.i.i.i ] ; 4 uses
  %.0.i2.i.i5.i.i.i = phi i32 [ %i.cm, %bb.g ], [ %.0.i.i.i3.i.i.i, %_m3dstbi__get8.exit.i.i2.i.i.i ]
  %i.cp = icmp ult ptr %i.co, %i.ax
  br i1 %i.cp, label %bb.h, label %_m3dstbi__get8.exit.i2.i6.i.i.i

bb.h:                                             ; preds = %_m3dstbi__get16be.exit.i4.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 3 uses
  store ptr %i.cq, ptr %i.h, align 8
  %i.cr = load i8, ptr %i.co, align 1
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 8
  br label %_m3dstbi__get8.exit.i2.i6.i.i.i

_m3dstbi__get8.exit.i2.i6.i.i.i:                  ; preds = %bb.h, %_m3dstbi__get16be.exit.i4.i.i.i
  %i.cu = phi ptr [ %i.cq, %bb.h ], [ %i.cn, %_m3dstbi__get16be.exit.i4.i.i.i ]
  %i.cv = phi ptr [ %i.cq, %bb.h ], [ %i.co, %_m3dstbi__get16be.exit.i4.i.i.i ] ; 4 uses
  %.0.i.i3.i7.i.i.i = phi i32 [ %i.ct, %bb.h ], [ 0, %_m3dstbi__get16be.exit.i4.i.i.i ] ; 2 uses
  %i.cw = icmp ult ptr %i.cv, %i.ax
  br i1 %i.cw, label %bb.i, label %_m3dstbi__get_chunk_header.exit.i.i

bb.i:                                             ; preds = %_m3dstbi__get8.exit.i2.i6.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 3 uses
  store ptr %i.cx, ptr %i.h, align 8
  %i.cy = load i8, ptr %i.cv, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %.0.i.i3.i7.i.i.i, %i.cz
  br label %_m3dstbi__get_chunk_header.exit.i.i

_m3dstbi__get_chunk_header.exit.i.i:              ; preds = %bb.i, %_m3dstbi__get8.exit.i2.i6.i.i.i
  %i.db = phi ptr [ %i.cx, %bb.i ], [ %i.cu, %_m3dstbi__get8.exit.i2.i6.i.i.i ] ; 11 uses
  %i.dc = phi ptr [ %i.cx, %bb.i ], [ %i.cv, %_m3dstbi__get8.exit.i2.i6.i.i.i ] ; 23 uses
  %.0.i2.i4.i8.i.i.i = phi i32 [ %i.da, %bb.i ], [ %.0.i.i3.i7.i.i.i, %_m3dstbi__get8.exit.i2.i6.i.i.i ]
  %i.dd = shl nuw i32 %.0.i2.i.i.i.i.i, 16
  %i.de = add i32 %.0.i2.i4.i.i.i.i, %i.dd        ; 15 uses
  %i.df = shl nuw i32 %.0.i2.i.i5.i.i.i, 16
  %i.dg = add nuw nsw i32 %.0.i2.i4.i8.i.i.i, %i.df ; 2 uses
  switch i32 %i.dg, label %bb.cw [
    i32 1130840649, label %bb.j
    i32 1229472850, label %bb.m
    i32 1347179589, label %bb.af
    i32 1951551059, label %bb.al
    i32 1229209940, label %bb.ba
    i32 1229278788, label %bb.bj
  ]

bb.j:                                             ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %i.dh = icmp slt i32 %i.de, 0
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ax, ptr %i.h, align 8
  br label %_m3dstbi__skip.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.di = zext nneg i32 %i.de to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.di ; 3 uses
  store ptr %i.dj, ptr %i.h, align 8
  br label %_m3dstbi__skip.exit.i.i

bb.m:                                             ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not257.i.i = icmp ne i32 %.0201.i.i, 0
  %.not258.i.i = icmp eq i32 %i.de, 13
  %or.cond.i = select i1 %.not257.i.i, i1 %.not258.i.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.dk = icmp ult ptr %i.dc, %i.ax
  br i1 %i.dk, label %bb.o, label %_m3dstbi__get8.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 3 uses
  store ptr %i.dl, ptr %i.h, align 8
  %i.dm = load i8, ptr %i.dc, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  br label %_m3dstbi__get8.exit.i.i.i.i

_m3dstbi__get8.exit.i.i.i.i:                      ; preds = %bb.o, %bb.n
  %i.dp = phi ptr [ %i.dl, %bb.o ], [ %i.db, %bb.n ]
  %i.dq = phi ptr [ %i.dl, %bb.o ], [ %i.dc, %bb.n ] ; 4 uses
  %.0.i.i.i.i.i = phi i32 [ %i.do, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.ax
  br i1 %i.dr, label %bb.p, label %_m3dstbi__get16be.exit.i.i.i

bb.p:                                             ; preds = %_m3dstbi__get8.exit.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 3 uses
  store ptr %i.ds, ptr %i.h, align 8
  %i.dt = load i8, ptr %i.dq, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %.0.i.i.i.i.i, %i.du
  br label %_m3dstbi__get16be.exit.i.i.i

_m3dstbi__get16be.exit.i.i.i:                     ; preds = %bb.p, %_m3dstbi__get8.exit.i.i.i.i
  %i.dw = phi ptr [ %i.ds, %bb.p ], [ %i.dp, %_m3dstbi__get8.exit.i.i.i.i ]
  %i.dx = phi ptr [ %i.ds, %bb.p ], [ %i.dq, %_m3dstbi__get8.exit.i.i.i.i ] ; 4 uses
  %.0.i2.i.i.i.i = phi i32 [ %i.dv, %bb.p ], [ %.0.i.i.i.i.i, %_m3dstbi__get8.exit.i.i.i.i ]
  %i.dy = icmp ult ptr %i.dx, %i.ax
  br i1 %i.dy, label %bb.q, label %_m3dstbi__get8.exit.i2.i.i.i

bb.q:                                             ; preds = %_m3dstbi__get16be.exit.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 3 uses
  store ptr %i.dz, ptr %i.h, align 8
  %i.ea = load i8, ptr %i.dx, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  br label %_m3dstbi__get8.exit.i2.i.i.i

_m3dstbi__get8.exit.i2.i.i.i:                     ; preds = %bb.q, %_m3dstbi__get16be.exit.i.i.i
  %i.ed = phi ptr [ %i.dz, %bb.q ], [ %i.dw, %_m3dstbi__get16be.exit.i.i.i ]
  %i.ee = phi ptr [ %i.dz, %bb.q ], [ %i.dx, %_m3dstbi__get16be.exit.i.i.i ] ; 4 uses
  %.0.i.i3.i.i.i = phi i32 [ %i.ec, %bb.q ], [ 0, %_m3dstbi__get16be.exit.i.i.i ] ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.ax
  br i1 %i.ef, label %bb.r, label %_m3dstbi__get32be.exit.i.i

bb.r:                                             ; preds = %_m3dstbi__get8.exit.i2.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 3 uses
  store ptr %i.eg, ptr %i.h, align 8
  %i.eh = load i8, ptr %i.ee, align 1
  %i.ei = zext i8 %i.eh to i32
  %i.ej = or disjoint i32 %.0.i.i3.i.i.i, %i.ei
  br label %_m3dstbi__get32be.exit.i.i

_m3dstbi__get32be.exit.i.i:                       ; preds = %bb.r, %_m3dstbi__get8.exit.i2.i.i.i
  %i.ek = phi ptr [ %i.eg, %bb.r ], [ %i.ed, %_m3dstbi__get8.exit.i2.i.i.i ]
  %i.el = phi ptr [ %i.eg, %bb.r ], [ %i.ee, %_m3dstbi__get8.exit.i2.i.i.i ] ; 4 uses
  %.0.i2.i4.i.i.i = phi i32 [ %i.ej, %bb.r ], [ %.0.i.i3.i.i.i, %_m3dstbi__get8.exit.i2.i.i.i ]
  %i.em = shl nuw i32 %.0.i2.i.i.i.i, 16
  %i.en = add nuw nsw i32 %.0.i2.i4.i.i.i, %i.em  ; 5 uses
  store i32 %i.en, ptr %0, align 8
  %i.eo = icmp ugt i32 %i.en, 16777216
  br i1 %i.eo, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.s

bb.s:                                             ; preds = %_m3dstbi__get32be.exit.i.i
  %i.ep = icmp ult ptr %i.el, %i.ax
  br i1 %i.ep, label %bb.t, label %_m3dstbi__get8.exit.i.i279.i.i

bb.t:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 3 uses
  store ptr %i.eq, ptr %i.h, align 8
  %i.er = load i8, ptr %i.el, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 8
  br label %_m3dstbi__get8.exit.i.i279.i.i

_m3dstbi__get8.exit.i.i279.i.i:                   ; preds = %bb.t, %bb.s
  %i.eu = phi ptr [ %i.eq, %bb.t ], [ %i.ek, %bb.s ]
  %i.ev = phi ptr [ %i.eq, %bb.t ], [ %i.el, %bb.s ] ; 4 uses
  %.0.i.i.i280.i.i = phi i32 [ %i.et, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %i.ax
  br i1 %i.ew, label %bb.u, label %_m3dstbi__get16be.exit.i281.i.i

bb.u:                                             ; preds = %_m3dstbi__get8.exit.i.i279.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 3 uses
  store ptr %i.ex, ptr %i.h, align 8
  %i.ey = load i8, ptr %i.ev, align 1
  %i.ez = zext i8 %i.ey to i32
  %i.fa = or disjoint i32 %.0.i.i.i280.i.i, %i.ez
  br label %_m3dstbi__get16be.exit.i281.i.i

_m3dstbi__get16be.exit.i281.i.i:                  ; preds = %bb.u, %_m3dstbi__get8.exit.i.i279.i.i
  %i.fb = phi ptr [ %i.ex, %bb.u ], [ %i.eu, %_m3dstbi__get8.exit.i.i279.i.i ]
  %i.fc = phi ptr [ %i.ex, %bb.u ], [ %i.ev, %_m3dstbi__get8.exit.i.i279.i.i ] ; 4 uses
  %.0.i2.i.i282.i.i = phi i32 [ %i.fa, %bb.u ], [ %.0.i.i.i280.i.i, %_m3dstbi__get8.exit.i.i279.i.i ]
  %i.fd = icmp ult ptr %i.fc, %i.ax
  br i1 %i.fd, label %bb.v, label %_m3dstbi__get8.exit.i2.i283.i.i

bb.v:                                             ; preds = %_m3dstbi__get16be.exit.i281.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 1 ; 3 uses
  store ptr %i.fe, ptr %i.h, align 8
  %i.ff = load i8, ptr %i.fc, align 1
  %i.fg = zext i8 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fg, 8
  br label %_m3dstbi__get8.exit.i2.i283.i.i

_m3dstbi__get8.exit.i2.i283.i.i:                  ; preds = %bb.v, %_m3dstbi__get16be.exit.i281.i.i
  %i.fi = phi ptr [ %i.fe, %bb.v ], [ %i.fb, %_m3dstbi__get16be.exit.i281.i.i ]
  %i.fj = phi ptr [ %i.fe, %bb.v ], [ %i.fc, %_m3dstbi__get16be.exit.i281.i.i ] ; 4 uses
  %.0.i.i3.i284.i.i = phi i32 [ %i.fh, %bb.v ], [ 0, %_m3dstbi__get16be.exit.i281.i.i ] ; 2 uses
  %i.fk = icmp ult ptr %i.fj, %i.ax
  br i1 %i.fk, label %bb.w, label %_m3dstbi__get32be.exit286.i.i

bb.w:                                             ; preds = %_m3dstbi__get8.exit.i2.i283.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 3 uses
  store ptr %i.fl, ptr %i.h, align 8
  %i.fm = load i8, ptr %i.fj, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = or disjoint i32 %.0.i.i3.i284.i.i, %i.fn
  br label %_m3dstbi__get32be.exit286.i.i

_m3dstbi__get32be.exit286.i.i:                    ; preds = %bb.w, %_m3dstbi__get8.exit.i2.i283.i.i
  %i.fp = phi ptr [ %i.fl, %bb.w ], [ %i.fi, %_m3dstbi__get8.exit.i2.i283.i.i ]
  %i.fq = phi ptr [ %i.fl, %bb.w ], [ %i.fj, %_m3dstbi__get8.exit.i2.i283.i.i ] ; 3 uses
  %.0.i2.i4.i285.i.i = phi i32 [ %i.fo, %bb.w ], [ %.0.i.i3.i284.i.i, %_m3dstbi__get8.exit.i2.i283.i.i ]
  %i.fr = shl nuw i32 %.0.i2.i.i282.i.i, 16
  %i.fs = add nuw nsw i32 %.0.i2.i4.i285.i.i, %i.fr ; 5 uses
  store i32 %i.fs, ptr %i.ao, align 4
  %i.ft = icmp ugt i32 %i.fs, 16777216
  br i1 %i.ft, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.x

bb.x:                                             ; preds = %_m3dstbi__get32be.exit286.i.i
  %i.fu = icmp ult ptr %i.fq, %i.ax
  br i1 %i.fu, label %bb.y, label %_m3dstbi__get8.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 2 uses
  store ptr %i.fv, ptr %i.h, align 8
  %i.fw = load i8, ptr %i.fq, align 1
  br label %_m3dstbi__get8.exit.i.i

_m3dstbi__get8.exit.i.i:                          ; preds = %bb.y, %bb.x
  %i.fx = phi ptr [ %i.fv, %bb.y ], [ %i.fp, %bb.x ] ; 4 uses
  %.0.i.i.i = phi i8 [ %i.fw, %bb.y ], [ 0, %bb.x ] ; 4 uses
  %i.fy = zext i8 %.0.i.i.i to i32                ; 3 uses
  store i32 %i.fy, ptr %i.an, align 8
  %i.fz = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.0.i.i.i)
  %i.ga = icmp eq i8 %i.fz, 1
  %i.gb = and i8 %.0.i.i.i, 31
  %switch.i.i = icmp ne i8 %i.gb, 0
  %or.cond273.i.i = and i1 %i.ga, %switch.i.i
  br i1 %or.cond273.i.i, label %bb.z, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.z:                                             ; preds = %_m3dstbi__get8.exit.i.i
  %i.gc = icmp ult ptr %i.fx, %i.at
  br i1 %i.gc, label %_m3dstbi__get8.exit288.i.i, label %.critedge.thread.i.i

_m3dstbi__get8.exit288.i.i:                       ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 3 uses
  store ptr %i.gd, ptr %i.h, align 8
  %i.ge = load i8, ptr %i.fx, align 1             ; 4 uses
  %i.gf = zext nneg i8 %i.ge to i32               ; 2 uses
  %i.gg = icmp ugt i8 %i.ge, 6
  br i1 %i.gg, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %_m3dstbi__get8.exit288.i.i
  %i.gh = icmp eq i8 %i.ge, 3
  br i1 %i.gh, label %bb.ab, label %.critedge.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gi = icmp eq i8 %.0.i.i.i, 16
  br i1 %i.gi, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %.critedge.thread.i.i

.critedge.i.i:                                    ; preds = %bb.aa
  %i.gj = and i32 %i.gf, 1
  %.not264.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not264.i.i, label %.critedge.thread.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.ab, %bb.z
  %i.gk = phi ptr [ %i.gd, %.critedge.i.i ], [ %i.gd, %bb.ab ], [ %i.fx, %bb.z ] ; 4 uses
  %.0.i287345347.i.i = phi i8 [ %i.ge, %.critedge.i.i ], [ 3, %bb.ab ], [ 0, %bb.z ]
  %i.gl = phi i32 [ %i.gf, %.critedge.i.i ], [ 3, %bb.ab ], [ 0, %bb.z ] ; 3 uses
  %.1221.i.i = phi i8 [ %.0220.i.i, %.critedge.i.i ], [ 3, %bb.ab ], [ %.0220.i.i, %bb.z ] ; 2 uses
  %i.gm = icmp ult ptr %i.gk, %i.at
  br i1 %i.gm, label %_m3dstbi__get8.exit290.i.i, label %_m3dstbi__get8.exit290.thread.i.i

_m3dstbi__get8.exit290.i.i:                       ; preds = %.critedge.thread.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  store ptr %i.gn, ptr %i.h, align 8
  %i.go = load i8, ptr %i.gk, align 1
  %.not265.i.i = icmp eq i8 %i.go, 0
  br i1 %.not265.i.i, label %_m3dstbi__get8.exit290.thread.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit290.thread.i.i:                ; preds = %_m3dstbi__get8.exit290.i.i, %.critedge.thread.i.i
  %i.gp = phi ptr [ %i.gk, %.critedge.thread.i.i ], [ %i.gn, %_m3dstbi__get8.exit290.i.i ] ; 4 uses
  %i.gq = icmp ult ptr %i.gp, %i.at
  br i1 %i.gq, label %_m3dstbi__get8.exit292.i.i, label %_m3dstbi__get8.exit292.thread.i.i

_m3dstbi__get8.exit292.i.i:                       ; preds = %_m3dstbi__get8.exit290.thread.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 2 uses
  store ptr %i.gr, ptr %i.h, align 8
  %i.gs = load i8, ptr %i.gp, align 1
  %.not266.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not266.i.i, label %_m3dstbi__get8.exit292.thread.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

_m3dstbi__get8.exit292.thread.i.i:                ; preds = %_m3dstbi__get8.exit292.i.i, %_m3dstbi__get8.exit290.thread.i.i
  %i.gt = phi ptr [ %i.gp, %_m3dstbi__get8.exit290.thread.i.i ], [ %i.gr, %_m3dstbi__get8.exit292.i.i ] ; 4 uses
  %i.gu = icmp ult ptr %i.gt, %i.at
  br i1 %i.gu, label %_m3dstbi__get8.exit294.i.i, label %_m3dstbi__get8.exit294.thread.i.i

_m3dstbi__get8.exit294.i.i:                       ; preds = %_m3dstbi__get8.exit292.thread.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  store ptr %i.gv, ptr %i.h, align 8
  %i.gw = load i8, ptr %i.gt, align 1             ; 2 uses
  %i.gx = zext nneg i8 %i.gw to i32
  %i.gy = icmp ugt i8 %i.gw, 1
  br i1 %i.gy, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__get8.exit294.thread.i.i

_m3dstbi__get8.exit294.thread.i.i:                ; preds = %_m3dstbi__get8.exit294.i.i, %_m3dstbi__get8.exit292.thread.i.i
  %i.gz = phi ptr [ %i.gv, %_m3dstbi__get8.exit294.i.i ], [ %i.gt, %_m3dstbi__get8.exit292.thread.i.i ] ; 4 uses
  %i.ha = phi i32 [ %i.gx, %_m3dstbi__get8.exit294.i.i ], [ 0, %_m3dstbi__get8.exit292.thread.i.i ] ; 2 uses
  %.not267.i.i = icmp eq i32 %i.en, 0
  %.not268.i.i = icmp eq i32 %i.fs, 0
  %or.cond = or i1 %.not267.i.i, %.not268.i.i
  br i1 %or.cond, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %_m3dstbi__get8.exit294.thread.i.i
  %.not269.i.i = icmp eq i8 %.1221.i.i, 0
  br i1 %.not269.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hb = and i32 %i.gl, 2
  %i.hc = or disjoint i32 %i.hb, 1
  %.not271.i.i = icmp samesign ugt i8 %.0.i287345347.i.i, 3
  %i.hd = zext i1 %.not271.i.i to i32
  %i.he = add nuw nsw i32 %i.hc, %i.hd            ; 2 uses
  store i32 %i.he, ptr %i.am, align 8
  %i.hf = mul nuw nsw i32 %i.he, %i.en
  %i.hg = udiv i32 1073741824, %i.hf
  %i.hh = icmp samesign ult i32 %i.hg, %i.fs
  br i1 %i.hh, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__skip.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  store i32 1, ptr %i.am, align 8
  %i.hi = udiv i32 1073741824, %i.en
  %i.hj = lshr i32 %i.hi, 2
  %i.hk = icmp samesign ult i32 %i.hj, %i.fs
  br i1 %i.hk, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %_m3dstbi__skip.exit.i.i

bb.af:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not255.i.i = icmp ne i32 %.0201.i.i, 0
  %i.hl = icmp ugt i32 %i.de, 768
  %or.cond714.i = select i1 %.not255.i.i, i1 true, i1 %i.hl
  br i1 %or.cond714.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.lhs.trunc.i.i = trunc nuw i32 %.0.i2.i4.i.i.i.i to i16
  %i.hm = udiv i16 %.lhs.trunc.i.i, 3             ; 2 uses
  %.zext.i.i = zext nneg i16 %i.hm to i32         ; 3 uses
  %i.hn = mul nuw nsw i32 %.zext.i.i, 3
  %.not256.i.i = icmp eq i32 %i.hn, %i.de
  br i1 %.not256.i.i, label %.preheader.i.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

.preheader.i.i:                                   ; preds = %bb.ag
  %.not586.i.i = icmp samesign ult i32 %.0.i2.i4.i.i.i.i, 3
  br i1 %.not586.i.i, label %_m3dstbi__skip.exit.i.i, label %.lr.ph584.i.i

.lr.ph584.i.i:                                    ; preds = %.preheader.i.i
  %wide.trip.count785.i.i = zext nneg i16 %i.hm to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_m3dstbi__get8.exit300.i.i, %.lr.ph584.i.i
  %i.ho = phi ptr [ %i.db, %.lr.ph584.i.i ], [ %i.ij, %_m3dstbi__get8.exit300.i.i ]
  %i.hp = phi ptr [ %i.dc, %.lr.ph584.i.i ], [ %i.ik, %_m3dstbi__get8.exit300.i.i ]
  %indvars.iv782.i.i = phi i64 [ 0, %.lr.ph584.i.i ], [ %indvars.iv.next783.i.i, %_m3dstbi__get8.exit300.i.i ] ; 2 uses
  %i.hq = phi ptr [ %i.dc, %.lr.ph584.i.i ], [ %i.il, %_m3dstbi__get8.exit300.i.i ] ; 4 uses
  %i.hr = icmp ult ptr %i.hq, %i.ax
  br i1 %i.hr, label %bb.ai, label %_m3dstbi__get8.exit296.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 4 uses
  store ptr %i.hs, ptr %i.h, align 8
  %i.ht = load i8, ptr %i.hq, align 1
  br label %_m3dstbi__get8.exit296.i.i

_m3dstbi__get8.exit296.i.i:                       ; preds = %bb.ai, %bb.ah
  %i.hu = phi ptr [ %i.hs, %bb.ai ], [ %i.ho, %bb.ah ]
  %i.hv = phi ptr [ %i.hs, %bb.ai ], [ %i.hp, %bb.ah ]
  %i.hw = phi ptr [ %i.hs, %bb.ai ], [ %i.hq, %bb.ah ] ; 4 uses
  %.0.i295.i.i = phi i8 [ %i.ht, %bb.ai ], [ 0, %bb.ah ]
  %i.hx = shl nuw nsw i64 %indvars.iv782.i.i, 2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hx ; 4 uses
  store i8 %.0.i295.i.i, ptr %i.hy, align 4
  %i.hz = icmp ult ptr %i.hw, %i.ax
  br i1 %i.hz, label %bb.aj, label %_m3dstbi__get8.exit298.i.i

bb.aj:                                            ; preds = %_m3dstbi__get8.exit296.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 4 uses
  store ptr %i.ia, ptr %i.h, align 8
  %i.ib = load i8, ptr %i.hw, align 1
  br label %_m3dstbi__get8.exit298.i.i

_m3dstbi__get8.exit298.i.i:                       ; preds = %bb.aj, %_m3dstbi__get8.exit296.i.i
  %i.ic = phi ptr [ %i.ia, %bb.aj ], [ %i.hu, %_m3dstbi__get8.exit296.i.i ]
  %i.id = phi ptr [ %i.ia, %bb.aj ], [ %i.hv, %_m3dstbi__get8.exit296.i.i ]
  %i.ie = phi ptr [ %i.ia, %bb.aj ], [ %i.hw, %_m3dstbi__get8.exit296.i.i ] ; 4 uses
  %.0.i297.i.i = phi i8 [ %i.ib, %bb.aj ], [ 0, %_m3dstbi__get8.exit296.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  store i8 %.0.i297.i.i, ptr %i.if, align 1
  %i.ig = icmp ult ptr %i.ie, %i.ax
  br i1 %i.ig, label %bb.ak, label %_m3dstbi__get8.exit300.i.i

bb.ak:                                            ; preds = %_m3dstbi__get8.exit298.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 4 uses
  store ptr %i.ih, ptr %i.h, align 8
  %i.ii = load i8, ptr %i.ie, align 1
  br label %_m3dstbi__get8.exit300.i.i

_m3dstbi__get8.exit300.i.i:                       ; preds = %bb.ak, %_m3dstbi__get8.exit298.i.i
  %i.ij = phi ptr [ %i.ih, %bb.ak ], [ %i.ic, %_m3dstbi__get8.exit298.i.i ] ; 2 uses
  %i.ik = phi ptr [ %i.ih, %bb.ak ], [ %i.id, %_m3dstbi__get8.exit298.i.i ] ; 2 uses
  %i.il = phi ptr [ %i.ih, %bb.ak ], [ %i.ie, %_m3dstbi__get8.exit298.i.i ]
  %.0.i299.i.i = phi i8 [ %i.ii, %bb.ak ], [ 0, %_m3dstbi__get8.exit298.i.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  store i8 %.0.i299.i.i, ptr %i.im, align 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 3
  store i8 -1, ptr %i.in, align 1
  %indvars.iv.next783.i.i = add nuw nsw i64 %indvars.iv782.i.i, 1 ; 2 uses
  %exitcond786.not.i.i = icmp eq i64 %indvars.iv.next783.i.i, %wide.trip.count785.i.i
  br i1 %exitcond786.not.i.i, label %_m3dstbi__skip.exit.i.i, label %bb.ah

bb.al:                                            ; preds = %_m3dstbi__get_chunk_header.exit.i.i
  %.not250.i.i = icmp eq i32 %.0201.i.i, 0
  %.not251.i.i = icmp eq ptr %i.aw, null
  %or.cond5 = select i1 %.not250.i.i, i1 %.not251.i.i, i1 false
  br i1 %or.cond5, label %bb.am, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.am:                                            ; preds = %bb.al
  %.not252.i.i = icmp eq i8 %.0220.i.i, 0
  br i1 %.not252.i.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.io = icmp eq i32 %.0205.i.i, 0
  %i.ip = icmp ult i32 %.0205.i.i, %i.de
  %or.cond715.i = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond715.i, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i, label %.preheader395.i.i

.preheader395.i.i:                                ; preds = %bb.an
  %.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i, label %_m3dstbi__skip.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader395.i.i
  %wide.trip.count.i.i = zext i32 %i.de to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.iq = icmp eq i32 %i.de, 1
  br i1 %i.iq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.ao

bb.ao:                                            ; preds = %_m3dstbi__get8.exit302.i.i.1, %.lr.ph.i.i.new
  %i.ir = phi ptr [ %i.db, %.lr.ph.i.i.new ], [ %i.jg, %_m3dstbi__get8.exit302.i.i.1 ]
  %i.is = phi ptr [ %i.dc, %.lr.ph.i.i.new ], [ %i.jh, %_m3dstbi__get8.exit302.i.i.1 ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %_m3dstbi__get8.exit302.i.i.1 ] ; 3 uses
  %i.it = phi ptr [ %i.dc, %.lr.ph.i.i.new ], [ %i.ji, %_m3dstbi__get8.exit302.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_m3dstbi__get8.exit302.i.i.1 ]
  %i.iu = icmp ult ptr %i.it, %i.ax
  br i1 %i.iu, label %bb.ap, label %_m3dstbi__get8.exit302.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 1 ; 4 uses
  store ptr %i.iv, ptr %i.h, align 8
  %i.iw = load i8, ptr %i.it, align 1
  br label %_m3dstbi__get8.exit302.i.i

_m3dstbi__get8.exit302.i.i:                       ; preds = %bb.ap, %bb.ao
  %i.ix = phi ptr [ %i.iv, %bb.ap ], [ %i.ir, %bb.ao ]
  %i.iy = phi ptr [ %i.iv, %bb.ap ], [ %i.is, %bb.ao ]
  %i.iz = phi ptr [ %i.iv, %bb.ap ], [ %i.it, %bb.ao ] ; 4 uses
  %.0.i301.i.i = phi i8 [ %i.iw, %bb.ap ], [ 0, %bb.ao ]
  %i.ja = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  store i8 %.0.i301.i.i, ptr %i.jc, align 1
  %i.jd = icmp ult ptr %i.iz, %i.ax
  br i1 %i.jd, label %bb.aq, label %_m3dstbi__get8.exit302.i.i.1

bb.aq:                                            ; preds = %_m3dstbi__get8.exit302.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 1 ; 4 uses
  store ptr %i.je, ptr %i.h, align 8
  %i.jf = load i8, ptr %i.iz, align 1
  br label %_m3dstbi__get8.exit302.i.i.1

_m3dstbi__get8.exit302.i.i.1:                     ; preds = %bb.aq, %_m3dstbi__get8.exit302.i.i
  %i.jg = phi ptr [ %i.je, %bb.aq ], [ %i.ix, %_m3dstbi__get8.exit302.i.i ] ; 3 uses
  %i.jh = phi ptr [ %i.je, %bb.aq ], [ %i.iy, %_m3dstbi__get8.exit302.i.i ] ; 3 uses
  %i.ji = phi ptr [ %i.je, %bb.aq ], [ %i.iz, %_m3dstbi__get8.exit302.i.i ] ; 2 uses
  %.0.i301.i.i.1 = phi i8 [ %i.jf, %bb.aq ], [ 0, %_m3dstbi__get8.exit302.i.i ]
  %indvars.iv.next.i.i = shl i64 %indvars.iv.i.i, 2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 7
  store i8 %.0.i301.i.i.1, ptr %i.jk, align 1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_m3dstbi__skip.exit.i.i.loopexit40.unr-lcssa, label %bb.ao

bb.ar:                                            ; preds = %bb.am
  %i.jl = load i32, ptr %i.am, align 8            ; 6 uses
  %.not253.i.i = trunc i32 %i.jl to i1
  %i.jm = shl i32 %i.jl, 1
  %.not254.i.i = icmp eq i32 %i.jm, %i.de
  %or.cond716.i = select i1 %.not253.i.i, i1 %.not254.i.i, i1 false
  br i1 %or.cond716.i, label %bb.as, label %_m3dstbi__parse_png_file.exit.thread.sink.split.i

bb.as:                                            ; preds = %bb.ar
  %i.jn = icmp eq i32 %i.av, 16
  %i.jo = icmp sgt i32 %i.jl, 0                   ; 2 uses
  br i1 %i.jn, label %.preheader391.i.i, label %.preheader393.i.i

.preheader393.i.i:                                ; preds = %bb.as
  br i1 %i.jo, label %.lr.ph579.preheader.i.i, label %_m3dstbi__skip.exit.i.i

.lr.ph579.preheader.i.i:                          ; preds = %.preheader393.i.i
  %i.jp = sext i32 %i.av to i64
  %i.jq = getelementptr inbounds i8, ptr @_m3dstbi__depth_scale_table, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1             ; 3 uses
  %i.js = icmp eq i32 %i.jl, 1
  br i1 %i.js, label %.lr.ph579.i.i.epil, label %.lr.ph579.preheader.i.i.new

.lr.ph579.preheader.i.i.new:                      ; preds = %.lr.ph579.preheader.i.i
  %i.jt = zext nneg i32 %i.jl to i64
  %i.ju = add nsw i64 %i.jt, -3
  br label %.lr.ph579.i.i

.preheader391.i.i:                                ; preds = %bb.as
  br i1 %i.jo, label %.lr.ph581.i.i, label %_m3dstbi__skip.exit.i.i

.lr.ph581.i.i:                                    ; preds = %.preheader391.i.i
  %i.jv = zext nneg i32 %i.jl to i64
  br label %bb.at

bb.at:                                            ; preds = %_m3dstbi__get16be.exit.i.i, %.lr.ph581.i.i
  %i.jw = phi ptr [ %i.db, %.lr.ph581.i.i ], [ %i.km, %_m3dstbi__get16be.exit.i.i ]
  %i.jx = phi ptr [ %i.dc, %.lr.ph581.i.i ], [ %i.kn, %_m3dstbi__get16be.exit.i.i ]
  %indvars.iv779.i.i = phi i64 [ 0, %.lr.ph581.i.i ], [ %indvars.iv.next780.i.i, %_m3dstbi__get16be.exit.i.i ] ; 2 uses
  %i.jy = phi ptr [ %i.dc, %.lr.ph581.i.i ], [ %i.ko, %_m3dstbi__get16be.exit.i.i ] ; 4 uses
  %i.jz = icmp ult ptr %i.jy, %i.ax
  br i1 %i.jz, label %bb.au, label %_m3dstbi__get8.exit.i303.i.i

bb.au:                                            ; preds = %bb.at
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 1 ; 4 uses
  store ptr %i.ka, ptr %i.h, align 8
  %i.kb = load i8, ptr %i.jy, align 1
  %i.kc = zext i8 %i.kb to i16
  %i.kd = shl nuw i16 %i.kc, 8
  br label %_m3dstbi__get8.exit.i303.i.i

_m3dstbi__get8.exit.i303.i.i:                     ; preds = %bb.au, %bb.at
  %i.ke = phi ptr [ %i.ka, %bb.au ], [ %i.jw, %bb.at ]
  %i.kf = phi ptr [ %i.ka, %bb.au ], [ %i.jx, %bb.at ]
  %i.kg = phi ptr [ %i.ka, %bb.au ], [ %i.jy, %bb.at ] ; 4 uses
  %.0.i.i.i.i = phi i16 [ %i.kd, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.kh = icmp ult ptr %i.kg, %i.ax
  br i1 %i.kh, label %bb.av, label %_m3dstbi__get16be.exit.i.i

bb.av:                                            ; preds = %_m3dstbi__get8.exit.i303.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 1 ; 4 uses
  store ptr %i.ki, ptr %i.h, align 8
  %i.kj = load i8, ptr %i.kg, align 1
  %i.kk = zext i8 %i.kj to i16
  %i.kl = or disjoint i16 %.0.i.i.i.i, %i.kk
  br label %_m3dstbi__get16be.exit.i.i

_m3dstbi__get16be.exit.i.i:                       ; preds = %bb.av, %_m3dstbi__get8.exit.i303.i.i
  %i.km = phi ptr [ %i.ki, %bb.av ], [ %i.ke, %_m3dstbi__get8.exit.i303.i.i ] ; 2 uses
  %i.kn = phi ptr [ %i.ki, %bb.av ], [ %i.kf, %_m3dstbi__get8.exit.i303.i.i ] ; 2 uses
  %i.ko = phi ptr [ %i.ki, %bb.av ], [ %i.kg, %_m3dstbi__get8.exit.i303.i.i ]
  %.0.i2.i.i.i = phi i16 [ %i.kl, %bb.av ], [ %.0.i.i.i.i, %_m3dstbi__get8.exit.i303.i.i ]
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv779.i.i
  store i16 %.0.i2.i.i.i, ptr %i.kp, align 2
  %indvars.iv.next780.i.i = add nuw nsw i64 %indvars.iv779.i.i, 1 ; 2 uses
  %exitcond434.not.i = icmp eq i64 %indvars.iv.next780.i.i, %i.jv
  br i1 %exitcond434.not.i, label %_m3dstbi__skip.exit.i.i, label %bb.at

.lr.ph579.i.i:                                    ; preds = %_m3dstbi__get16be.exit307.i.i.1, %.lr.ph579.preheader.i.i.new
  %i.kq = phi ptr [ %i.db, %.lr.ph579.preheader.i.i.new ], [ %i.lp, %_m3dstbi__get16be.exit307.i.i.1 ]
  %i.kr = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i.new ], [ %i.lq, %_m3dstbi__get16be.exit307.i.i.1 ]
  %i.ks = phi ptr [ %i.dc, %.lr.ph579.preheader.i.i.new ], [ %i.lr, %_m3dstbi__get16be.exit307.i.i.1 ] ; 3 uses
  %indvars.iv776.i.i = phi i64 [ 0, %.lr.ph579.preheader.i.i.new ], [ %indvars.iv.next777.i.i.1, %_m3dstbi__get16be.exit307.i.i.1 ] ; 3 uses
  %niter89 = phi i64 [ 0, %.lr.ph579.preheader.i.i.new ], [ %niter89.next.1, %_m3dstbi__get16be.exit307.i.i.1 ] ; 2 uses
  %i.kt = icmp ult ptr %i.ks, %i.ax
  br i1 %i.kt, label %bb.aw, label %_m3dstbi__get8.exit.i304.i.i

bb.aw:                                            ; preds = %.lr.ph579.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 4 uses
  store ptr %i.ku, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i

_m3dstbi__get8.exit.i304.i.i:                     ; preds = %bb.aw, %.lr.ph579.i.i
  %i.kv = phi ptr [ %i.ku, %bb.aw ], [ %i.kq, %.lr.ph579.i.i ]
  %i.kw = phi ptr [ %i.ku, %bb.aw ], [ %i.kr, %.lr.ph579.i.i ]
  %i.kx = phi ptr [ %i.ku, %bb.aw ], [ %i.ks, %.lr.ph579.i.i ] ; 4 uses
  %i.ky = icmp ult ptr %i.kx, %i.ax
  br i1 %i.ky, label %bb.ax, label %_m3dstbi__get16be.exit307.i.i

bb.ax:                                            ; preds = %_m3dstbi__get8.exit.i304.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 1 ; 4 uses
  store ptr %i.kz, ptr %i.h, align 8
  %i.la = load i8, ptr %i.kx, align 1
  %i.lb = mul i8 %i.jr, %i.la
  br label %_m3dstbi__get16be.exit307.i.i

_m3dstbi__get16be.exit307.i.i:                    ; preds = %bb.ax, %_m3dstbi__get8.exit.i304.i.i
  %i.lc = phi ptr [ %i.kz, %bb.ax ], [ %i.kv, %_m3dstbi__get8.exit.i304.i.i ]
  %i.ld = phi ptr [ %i.kz, %bb.ax ], [ %i.kw, %_m3dstbi__get8.exit.i304.i.i ]
  %i.le = phi ptr [ %i.kz, %bb.ax ], [ %i.kx, %_m3dstbi__get8.exit.i304.i.i ] ; 3 uses
  %.0.i2.i306.i.i = phi i8 [ %i.lb, %bb.ax ], [ 0, %_m3dstbi__get8.exit.i304.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv776.i.i
  store i8 %.0.i2.i306.i.i, ptr %i.lf, align 1
  %i.lg = icmp ult ptr %i.le, %i.ax
  br i1 %i.lg, label %bb.ay, label %_m3dstbi__get8.exit.i304.i.i.1

bb.ay:                                            ; preds = %_m3dstbi__get16be.exit307.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 1 ; 4 uses
  store ptr %i.lh, ptr %i.h, align 8
  br label %_m3dstbi__get8.exit.i304.i.i.1

_m3dstbi__get8.exit.i304.i.i.1:                   ; preds = %bb.ay, %_m3dstbi__get16be.exit307.i.i
  %i.li = phi ptr [ %i.lh, %bb.ay ], [ %i.lc, %_m3dstbi__get16be.exit307.i.i ]
  %i.lj = phi ptr [ %i.lh, %bb.ay ], [ %i.ld, %_m3dstbi__get16be.exit307.i.i ]
  %i.lk = phi ptr [ %i.lh, %bb.ay ], [ %i.le, %_m3dstbi__get16be.exit307.i.i ] ; 4 uses
  %i.ll = icmp ult ptr %i.lk, %i.ax
  br i1 %i.ll, label %bb.az, label %_m3dstbi__get16be.exit307.i.i.1

bb.az:                                            ; preds = %_m3dstbi__get8.exit.i304.i.i.1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 4 uses
  store ptr %i.lm, ptr %i.h, align 8
  %i.ln = load i8, ptr %i.lk, align 1
  %i.lo = mul i8 %i.jr, %i.ln
  br label %_m3dstbi__get16be.exit307.i.i.1

_m3dstbi__get16be.exit307.i.i.1:                  ; preds = %bb.az, %_m3dstbi__get8.exit.i304.i.i.1
  %i.lp = phi ptr [ %i.lm, %bb.az ], [ %i.li, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %i.lq = phi ptr [ %i.lm, %bb.az ], [ %i.lj, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %i.lr = phi ptr [ %i.lm, %bb.az ], [ %i.lk, %_m3dstbi__get8.exit.i304.i.i.1 ] ; 2 uses
  %.0.i2.i306.i.i.1 = phi i8 [ %i.lo, %bb.az ], [ 0, %_m3dstbi__get8.exit.i304.i.i.1 ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv776.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  store i8 %.0.i2.i306.i.i.1, ptr %i.lt, align 1
  %indvars.iv.next777.i.i.1 = add nuw nsw i64 %indvars.iv776.i.i, 2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2
  %niter89.ncmp.1 = icmp eq i64 %niter89, %i.ju
  br i1 %niter89.ncmp.1, label %.lr.ph579.i.i.epil, label %.lr.ph579.i.i
end_hunk_0
