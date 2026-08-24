Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/av1_parse?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_av1_extract_obu:bb.a
  %i.cq = or disjoint i64 %i.cp, %i.cc            ; 2 uses
  %.not.4.i.i = icmp slt i32 %i.cj, 0
  br i1 %.not.4.i.i, label %bb.k, label %get_leb128.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cr = lshr i32 %i.cm, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 1, !tbaa !9
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cw = and i32 %i.cm, 7
  %i.cx = shl i32 %i.cv, %i.cw                    ; 2 uses
  %i.cy = lshr i32 %i.cx, 24
  %i.cz = add nuw nsw i32 %i.cm, 8
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.cz) ; 4 uses
  %i.db = and i32 %i.cy, 127
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 35
  %i.de = or disjoint i64 %i.dd, %i.cq            ; 2 uses
  %.not.5.i.i = icmp slt i32 %i.cx, 0
  br i1 %.not.5.i.i, label %bb.l, label %get_leb128.exit.i

bb.l:                                             ; preds = %bb.k
  %i.df = lshr i32 %i.da, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !9
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = and i32 %i.da, 7
  %i.dl = shl i32 %i.dj, %i.dk                    ; 2 uses
  %i.dm = lshr i32 %i.dl, 24
  %i.dn = add nuw nsw i32 %i.da, 8
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.dn) ; 4 uses
  %i.dp = and i32 %i.dm, 127
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 42
  %i.ds = or disjoint i64 %i.dr, %i.de            ; 2 uses
  %.not.6.i.i = icmp slt i32 %i.dl, 0
  br i1 %.not.6.i.i, label %bb.m, label %get_leb128.exit.i

bb.m:                                             ; preds = %bb.l
  %i.dt = lshr i32 %i.do, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !9
  %i.dx = tail call i32 @llvm.bswap.i32(i32 %i.dw)
  %i.dy = and i32 %i.do, 7
  %i.dz = shl i32 %i.dx, %i.dy
  %i.ea = lshr i32 %i.dz, 24
  %i.eb = add nuw nsw i32 %i.do, 8
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.eb)
  %i.ed = and i32 %i.ea, 127
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 49
  %i.eg = or i64 %i.ef, %i.ds
  br label %get_leb128.exit.i

bb.n:                                             ; preds = %bb.e
  %i.eh = xor i8 %i.l, -1
  %i.ei = sext i8 %i.eh to i32
  %i.ej = add i32 %2, %i.ei
  %i.ek = sext i32 %i.ej to i64
  br label %get_leb128.exit.i

get_leb128.exit.i:                                ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.10.1.i = phi i32 [ %.sroa.10.0.i, %bb.n ], [ %i.ec, %bb.m ], [ %i.do, %bb.l ], [ %i.da, %bb.k ], [ %i.cm, %bb.j ], [ %i.by, %bb.i ], [ %i.bl, %bb.h ], [ %i.ay, %bb.g ], [ %i.an, %bb.f ] ; 2 uses
  %i.el = phi i64 [ %i.ek, %bb.n ], [ %i.eg, %bb.m ], [ %i.ds, %bb.l ], [ %i.de, %bb.k ], [ %i.cq, %bb.j ], [ %i.cc, %bb.i ], [ %i.bp, %bb.h ], [ %i.bc, %bb.g ], [ %i.ap, %bb.f ] ; 2 uses
  %i.em = icmp samesign ult i32 %i.c, %.sroa.10.1.i
  br i1 %i.em, label %parse_obu_header.exit.thread, label %bb.o

bb.o:                                             ; preds = %get_leb128.exit.i
  %i.en = lshr i32 %.sroa.10.1.i, 3
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ep = add nsw i64 %i.el, %i.eo                ; 2 uses
  %i.eq = sext i32 %2 to i64
  %i.er = icmp sgt i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.ep to i32                  ; 4 uses
  br i1 %i.er, label %parse_obu_header.exit.thread, label %parse_obu_header.exit

parse_obu_header.exit:                            ; preds = %bb.o
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %parse_obu_header.exit.thread, label %bb.p

bb.p:                                             ; preds = %parse_obu_header.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.i, ptr %i.eu, align 8, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.024, ptr %i.ev, align 4, !tbaa !14
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0, ptr %i.ew, align 8, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.eo
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !16
  %i.ez = trunc i64 %i.el to i32                  ; 2 uses
  store i32 %i.ez, ptr %0, align 8, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.fa, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.es, ptr %i.fb, align 4, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 48, ptr noundef nonnull @.str, i32 noundef %i.i, i32 noundef %.024, i32 noundef %.0, i32 noundef %i.ez) #7
  br label %parse_obu_header.exit.thread

parse_obu_header.exit.thread:                     ; preds = %bb.o, %get_leb128.exit.i, %bb.b, %bb.a, %parse_obu_header.exit, %bb.p
  %.0.i35 = phi i32 [ %i.es, %bb.p ], [ %i.es, %parse_obu_header.exit ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -1094995529, %get_leb128.exit.i ], [ -1094995529, %bb.o ]
  ret i32 %.0.i35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_av1_packet_split(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp sgt i32 %2, -1
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = ptrtoint ptr %i.d to i64
  %.not92 = icmp eq i32 %2, 0
  br i1 %.not92, label %.thread65, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_init.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.r
  %i.i = phi i32 [ %2, %.lr.ph ], [ %i.bh, %bb.r ]
  %i.j = phi i64 [ %i.c, %.lr.ph ], [ %i.bg, %bb.r ]
  %.sroa.0.071 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %bb.r ] ; 2 uses
  %i.k = load i32, ptr %i.g, align 4, !tbaa !23   ; 2 uses
  %i.l = load i32, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %.not = icmp sgt i32 %i.k, %i.l
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.k, 1                      ; 3 uses
  %i.n = icmp ugt i32 %i.m, 44739241
  br i1 %i.n, label %.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !24
  %narrow = mul nuw nsw i32 %i.m, 48
  %i.p = zext nneg i32 %narrow to i64
  %i.q = tail call ptr @av_fast_realloc(ptr noundef %i.o, ptr noundef nonnull %i.h, i64 noundef %i.p) #7 ; 3 uses
  %.not46 = icmp eq ptr %i.q, null
  br i1 %.not46, label %.thread65, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !24
  %i.r = load i32, ptr %i.g, align 4, !tbaa !23
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [48 x i8], ptr %i.q, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  store i32 %i.m, ptr %i.g, align 4, !tbaa !23
  %.pre = load i32, ptr %i.e, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.u = phi i32 [ %.pre, %bb.f ], [ %i.l, %bb.c ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !24
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [48 x i8], ptr %i.v, i64 %i.w ; 7 uses
  %i.y = tail call i32 @ff_av1_extract_obu(ptr noundef %i.x, ptr noundef %.sroa.0.071, i32 noundef %i.i, ptr noundef %3) ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.thread65, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i32 %i.y to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %i.aa)
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.071, i64 %..i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !17  ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !10 ; 3 uses
  switch i32 %i.ag, label %.preheader.i [
    i32 8, label %bb.i
    i32 6, label %bb.i
    i32 4, label %bb.i
  ]

.preheader.i:                                     ; preds = %bb.h
  %i.ah = icmp sgt i32 %i.ae, 0
  br i1 %i.ah, label %.lr.ph.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ai = icmp sgt i32 %i.ae, 268435455
  %i.aj = shl nsw i32 %i.ae, 3
  br i1 %i.ai, label %get_obu_bit_length.exit.thread, label %get_obu_bit_length.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %.02129.i = phi i32 [ %5, %bb.j ], [ %i.ae, %.preheader.i ] ; 5 uses
  %4 = zext nneg i32 %.02129.i to i64
  %i.ak = getelementptr i8, ptr %i.ad, i64 %4
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %5 = add nsw i32 %.02129.i, -1
  %i.ao = icmp sgt i32 %.02129.i, 1
  br i1 %i.ao, label %.lr.ph.i, label %.thread62, !llvm.loop !25

.critedge.i:                                      ; preds = %.preheader.i
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %.thread62, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ap = icmp samesign ugt i32 %.02129.i, 268435455
  br i1 %i.ap, label %get_obu_bit_length.exit.thread, label %.thread36.i

.thread36.i:                                      ; preds = %bb.k
  %i.aq = shl nuw nsw i32 %.02129.i, 3
  br label %bb.m

bb.l:                                             ; preds = %.critedge.i
  %i.ar = sext i32 %i.ae to i64
  %.pn.phi.trans.insert.i = getelementptr i8, ptr %i.ad, i64 %i.ar
  %.in.phi.trans.insert.i = getelementptr i8, ptr %.pn.phi.trans.insert.i, i64 -1
  %.pre.i = load i8, ptr %.in.phi.trans.insert.i, align 1, !tbaa !9 ; 2 uses
  %i.as = shl nsw i32 %i.ae, 3                    ; 2 uses
  %.not24.i = icmp eq i8 %.pre.i, 0
  br i1 %.not24.i, label %get_obu_bit_length.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread36.i
  %i.at = phi i32 [ %i.aq, %.thread36.i ], [ %i.as, %bb.l ]
  %i.au = phi i8 [ %i.am, %.thread36.i ], [ %.pre.i, %bb.l ]
  %i.av = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.au, i1 true)
  %i.aw = xor i8 %i.av, -1
  %.neg.i = sext i8 %i.aw to i32
  %i.ax = add i32 %i.at, %.neg.i
  br label %get_obu_bit_length.exit

get_obu_bit_length.exit.thread:                   ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.ph = phi i32 [ %i.as, %bb.l ], [ -34, %bb.k ], [ -34, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %.0.i.ph, ptr %i.ay, align 8, !tbaa !27
  br label %bb.p

.thread62:                                        ; preds = %bb.j, %.critedge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !27
  br label %bb.o

get_obu_bit_length.exit:                          ; preds = %bb.i, %bb.m
  %.0.i = phi i32 [ %i.aj, %bb.i ], [ %i.ax, %bb.m ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %.0.i, ptr %i.ba, align 8, !tbaa !27
  %i.bb = icmp slt i32 %.0.i, 0
  br i1 %i.bb, label %bb.p, label %bb.n

bb.n:                                             ; preds = %get_obu_bit_length.exit
  %i.bc = icmp eq i32 %.0.i, 0
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread62, %bb.n
  switch i32 %i.ag, label %bb.p [
    i32 2, label %bb.q
    i32 15, label %bb.q
  ]

bb.p:                                             ; preds = %get_obu_bit_length.exit.thread, %bb.o, %get_obu_bit_length.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.ag) #7
  br label %bb.r, !llvm.loop !28

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.n
  %i.bd = load i32, ptr %i.e, align 8, !tbaa !20
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.e, align 8, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = ptrtoint ptr %i.ab to i64
  %i.bg = sub i64 %i.f, %i.bf                     ; 2 uses
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.c, label %.thread65

.thread65:                                        ; preds = %bb.r, %bb.g, %bb.d, %bb.e, %bytestream2_init.exit
  %.4 = phi i32 [ 0, %bytestream2_init.exit ], [ %i.y, %bb.g ], [ -12, %bb.d ], [ -12, %bb.e ], [ 0, %bb.r ]
  ret i32 %.4
}

declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define void @ff_av1_packet_uninit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @av_freep(ptr noundef %0) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !23
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @ff_av1_framerate(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.AVRational, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = icmp ne i64 %0, 0
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 9223372036854775807, %1
  %i.e = icmp slt i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = mul nsw i64 %1, %0
  %i.h = call i32 @av_reduce(ptr noundef nonnull %i.f, ptr noundef nonnull %3, i64 noundef %i.g, i64 noundef %2, i64 noundef 2147483647) #7
  %.not = icmp eq i32 %i.h, 0
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %spec.select = select i1 %.not, i64 4294967296, i64 %.sroa.0.0.copyload
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0.insert.insert = phi i64 [ 4294967296, %bb.a ], [ %spec.select, %bb.c ], [ 4294967296, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i64 %.sroa.0.0.insert.insert
}

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 32}
!11 = !{!"AV1OBU", !6, i64 0, !12, i64 8, !6, i64 16, !6, i64 20, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!11, !6, i64 36}
!15 = !{!11, !6, i64 40}
!16 = !{!11, !12, i64 8}
!17 = !{!11, !6, i64 0}
!18 = !{!11, !12, i64 24}
!19 = !{!11, !6, i64 20}
!20 = !{!21, !6, i64 8}
!21 = !{!"AV1Packet", !22, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!22 = !{!"p1 _ZTS6AV1OBU", !13, i64 0}
!23 = !{!21, !6, i64 12}
!24 = !{!21, !22, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!11, !6, i64 16}
!28 = distinct !{!28, !26}
!29 = !{!21, !6, i64 16}
end_hunk_0
