Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u16?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.ag = icmp eq i32 %i.af, 220
  br i1 %i.ag, label %bb.j, label %.thread

iter.check:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.ai = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.aj = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 9 uses
  %i.al = trunc i64 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.al, ptr %i.am, align 8, !tbaa !31
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.ak
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = sub i64 %i.c, %i.aj
  %i.ao = add i64 %i.an, 64
  %diff.check = icmp ult i64 %i.ao, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ak, 24
  %n.vec = and i64 %i.ak, -32                     ; 5 uses
  %i.aq = getelementptr i8, ptr %i.h, i64 %n.vec
  %i.ar = getelementptr i8, ptr %i.ah, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ah, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !30
  %wide.load71 = load <16 x i8>, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr i8, ptr %next.gep70, i64 16
  store <16 x i8> %wide.load, ptr %next.gep70, align 1, !tbaa !30
  store <16 x i8> %wide.load71, ptr %i.at, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.ak, -8                    ; 4 uses
  %i.av = getelementptr i8, ptr %i.h, i64 %n.vec73
  %i.aw = getelementptr i8, ptr %i.ah, i64 %n.vec73
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.h, i64 %index74
  %next.gep76 = getelementptr i8, ptr %i.ah, i64 %index74
  %wide.load77 = load <8 x i8>, ptr %next.gep75, align 1, !tbaa !30
  store <8 x i8> %wide.load77, ptr %next.gep76, align 1, !tbaa !30
  %index.next78 = add nuw i64 %index74, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.ak, %n.vec73
  br i1 %cmp.n79, label %.thread62, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.151.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 3 uses
  %.048.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 2 uses
  %.151.ph82 = ptrtoaddr ptr %.151.ph to i64      ; 2 uses
  %i.ay = sub i64 %i.ai, %.151.ph82
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.151.prol = phi ptr [ %i.az, %vec.epilog.scalar.ph.prol ], [ %.151.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.048.prol = phi ptr [ %i.bb, %vec.epilog.scalar.ph.prol ], [ %.048.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.151.prol, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.151.prol, align 1, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %.048.prol, i64 1 ; 2 uses
  store i8 %i.ba, ptr %.048.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !59

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.151.unr = phi ptr [ %.151.ph, %vec.epilog.scalar.ph.preheader ], [ %i.az, %vec.epilog.scalar.ph.prol ]
  %.048.unr = phi ptr [ %.048.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bb, %vec.epilog.scalar.ph.prol ]
  %i.bc = sub i64 %.151.ph82, %i.ai
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.thread62, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.151 = phi ptr [ %i.bz, %vec.epilog.scalar.ph ], [ %.151.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.048 = phi ptr [ %i.cb, %vec.epilog.scalar.ph ], [ %.048.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.151, i64 1
  %i.bf = load i8, ptr %.151, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.048, i64 1
  store i8 %i.bf, ptr %.048, align 1, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %.151, i64 2
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.048, i64 2
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.151, i64 3
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.048, i64 3
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.151, i64 4
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.048, i64 4
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.151, i64 5
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.048, i64 5
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %.151, i64 6
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.048, i64 6
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.151, i64 7
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %.048, i64 7
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %.151, i64 8 ; 2 uses
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %.048, i64 8
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !30
  %exitcond.not.7 = icmp eq ptr %i.bz, %i.j
  br i1 %exitcond.not.7, label %.thread62, label %vec.epilog.scalar.ph, !llvm.loop !60

.thread62:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = shl nuw nsw i32 %i.ae, 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cc, %i.cf
  %i.ch = shl nuw nsw i32 %i.x, 10
  %i.ci = add nsw i32 %i.ch, -56613888
  %i.cj = add nuw nsw i32 %i.ci, %i.cg
  br label %bb.k

.thread:                                          ; preds = %bb.g, %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 2, ptr %i.cl, align 8, !tbaa !31
  %i.cm = load i8, ptr %i.h, align 1, !tbaa !30
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !30
  %i.cn = load i8, ptr %i.u, align 1, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !30
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread62, %.thread, %bb.f
  %.3 = phi ptr [ %i.k, %.thread ], [ %i.ac, %bb.j ], [ %i.k, %bb.f ], [ %scevgep, %.thread62 ]
  %.2 = phi i32 [ 65535, %.thread ], [ %i.cj, %bb.j ], [ %i.x, %bb.f ], [ 65535, %.thread62 ]
  store ptr %.3, ptr %i.g, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.e, %bb.c
  %.0 = phi i32 [ %.2, %bb.k ], [ 65535, %bb.c ], [ 65535, %bb.e ], [ -9, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @_ZL15_UTF16BEGetNamePK10UConverter(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = and i32 %i.b, 15
  %i.d = icmp eq i32 %i.c, 0
  %.str..str.1 = select i1 %i.d, ptr @.str, ptr @.str.1
  ret ptr %.str..str.1
}

declare void @ucnv_getNonSurrogateUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL26_UTF16ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.k = icmp ult ptr %i.d, %i.f
  br i1 %i.k, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.n = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.0.ph133 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.1, %.outer ] ; 3 uses
  %.077.ph132 = phi i32 [ %i.j, %.lr.ph.lr.ph ], [ %.2, %.outer ]
  %.080.ph131 = phi ptr [ %i.d, %.lr.ph.lr.ph ], [ %.282, %.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.077113 = phi i32 [ %.077.ph132, %.lr.ph ], [ %.3, %bb.n ] ; 3 uses
  %.080112 = phi ptr [ %.080.ph131, %.lr.ph ], [ %.383, %bb.n ] ; 11 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !17
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %2

2:                                                ; preds = %bb.b
  switch i32 %.077113, label %bb.n [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 8, label %bb.l
    i32 9, label %bb.m
  ]

bb.c:                                             ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %.080112, i64 1
  %4 = load i8, ptr %.080112, align 1, !tbaa !30
  store i8 %4, ptr %i.l, align 1, !tbaa !30
  store i8 1, ptr %i.m, align 8, !tbaa !31
  br label %bb.n

bb.d:                                             ; preds = %2
  %i.r = load i8, ptr %.080112, align 1, !tbaa !30 ; 3 uses
  %i.s = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  %i.t = icmp eq i8 %i.s, -2
  %i.u = icmp eq i8 %i.r, -1
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.split, label %bb.e

.split:                                           ; preds = %bb.d
  %.val93 = load ptr, ptr %i.n, align 8, !tbaa !51
  %.not108 = icmp eq ptr %.val93, @_UTF16LEData_78
  br i1 %.not108, label %.thread101, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i8 %i.s, -1
  %i.w = icmp eq i8 %i.r, -2
  %or.cond5 = select i1 %i.v, i1 %i.w, i1 false
  %.val94 = load ptr, ptr %i.n, align 8, !tbaa !51 ; 4 uses
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq ptr %.val94, @_UTF16Data_78
  %i.y = icmp eq ptr %.val94, @_UTF16v2Data_78
  %spec.select.i = or i1 %i.x, %i.y
  br i1 %spec.select.i, label %bb.i, label %.thread104

bb.g:                                             ; preds = %bb.e
  %.not107 = icmp eq ptr %.val94, @_UTF16BEData_78
  br i1 %.not107, label %.thread101, label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.17899 = phi i32 [ 8, %.split ], [ 9, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %.080112, i64 1 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !31
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  br label %.outer

bb.i:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.o, align 8, !tbaa !13
  %i.ag = and i32 %i.af, 15
  %.not = icmp eq i32 %i.ag, 1
  br i1 %.not, label %.thread101, label %.thread104

.thread104:                                       ; preds = %bb.f, %bb.i
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %.not87 = icmp eq ptr %.080112, %i.ah
  br i1 %.not87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread104
  store i8 0, ptr %i.m, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread104
  %.181 = phi ptr [ %i.ah, %bb.j ], [ %.080112, %.thread104 ]
  %i.ai = icmp eq ptr %.val94, @_UTF16LEData_78
  %.92 = select i1 %i.ai, i32 9, i32 8
  br label %.outer

.thread101:                                       ; preds = %bb.i, %bb.g, %.split
  %i.aj = phi i8 [ -2, %bb.g ], [ -1, %.split ], [ %i.r, %bb.i ]
  %.17897103 = phi i32 [ 8, %bb.g ], [ 9, %.split ], [ 8, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.aj, ptr %i.ak, align 2, !tbaa !30
  store i8 2, ptr %i.m, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %.080112, i64 1
  store ptr %i.al, ptr %i.c, align 8, !tbaa !24
  store i32 %.17897103, ptr %i.i, align 4, !tbaa !14
  store i32 18, ptr %1, align 4, !tbaa !17
  br label %bb.u

.outer:                                           ; preds = %bb.k, %bb.h
  %.282 = phi ptr [ %i.z, %bb.h ], [ %.181, %bb.k ] ; 3 uses
  %.2 = phi i32 [ %.17899, %bb.h ], [ %.92, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %i.ae, %bb.h ], [ %.0.ph133, %bb.k ] ; 2 uses
  store i32 %.2, ptr %i.i, align 4, !tbaa !14
  %i.am = icmp ult ptr %.282, %i.f
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !61

bb.l:                                             ; preds = %2
  store ptr %.080112, ptr %i.c, align 8, !tbaa !24
  tail call void @_ZL28_UTF16BEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef nonnull %1)
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.n

bb.m:                                             ; preds = %2
  store ptr %.080112, ptr %i.c, align 8, !tbaa !24
  tail call void @_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef nonnull %1)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %2, %bb.m, %bb.l, %bb.c
  %.383 = phi ptr [ %.080112, %2 ], [ %3, %bb.c ], [ %i.an, %bb.l ], [ %i.ao, %bb.m ] ; 3 uses
  %.3 = phi i32 [ %.077113, %2 ], [ 1, %bb.c ], [ 8, %bb.l ], [ 9, %bb.m ] ; 2 uses
  %i.ap = icmp ult ptr %.383, %i.f
  br i1 %i.ap, label %bb.b, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %.outer, %bb.b, %bb.n
  %.0.ph.lcssa = phi i32 [ %.0.ph133, %bb.b ], [ %.0.ph133, %bb.n ], [ %.1, %.outer ] ; 3 uses
  %.080.lcssa = phi ptr [ %.080112, %bb.b ], [ %.383, %bb.n ], [ %.282, %.outer ] ; 4 uses
  %.077.lcssa = phi i32 [ %.077113, %bb.b ], [ %.3, %bb.n ], [ %.2, %.outer ] ; 4 uses
  %i.aq = icmp ne ptr %i.h, null
  %i.ar = icmp ne i32 %.0.ph.lcssa, 0
  %or.cond7 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond7, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.critedge
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !29  ; 3 uses
  %i.at = icmp ult ptr %i.h, %i.as
  br i1 %i.at, label %.lr.ph138.preheader, label %.loopexit

.lr.ph138.preheader:                              ; preds = %bb.o
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = ptrtoaddr ptr %i.h to i64
  %i.aw = xor i64 %i.av, -1
  %i.ax = add i64 %i.aw, %i.au                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph138.preheader183, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph138.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.h, i64 %i.ba
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.ph.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bc ; 3 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !34
  %wide.load182 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !34
  %i.be = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.bf = add nsw <4 x i32> %wide.load182, %broadcast.splat
  store <4 x i32> %i.be, ptr %next.gep, align 4, !tbaa !34
  store <4 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph138.preheader183

.lr.ph138.preheader183:                           ; preds = %.lr.ph138.preheader, %middle.block
  %.079137.ph = phi ptr [ %i.h, %.lr.ph138.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader183, %.lr.ph138
  %.079137 = phi ptr [ %i.bh, %.lr.ph138 ], [ %.079137.ph, %.lr.ph138.preheader183 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.079137, i64 4 ; 2 uses
  %i.bi = load i32, ptr %.079137, align 4, !tbaa !34
  %i.bj = add nsw i32 %i.bi, %.0.ph.lcssa
  store i32 %i.bj, ptr %.079137, align 4, !tbaa !34
  %i.bk = icmp ult ptr %i.bh, %i.as
  br i1 %i.bk, label %.lr.ph138, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.lr.ph138, %middle.block, %bb.a, %bb.o, %.critedge
  %.077.lcssa159 = phi i32 [ %i.j, %bb.a ], [ %.077.lcssa, %.critedge ], [ %.077.lcssa, %bb.o ], [ %.077.lcssa, %middle.block ], [ %.077.lcssa, %.lr.ph138 ] ; 2 uses
  %.080.lcssa158 = phi ptr [ %i.d, %bb.a ], [ %.080.lcssa, %.critedge ], [ %.080.lcssa, %bb.o ], [ %.080.lcssa, %middle.block ], [ %.080.lcssa, %.lr.ph138 ] ; 2 uses
  store ptr %.080.lcssa158, ptr %i.c, align 8, !tbaa !24
  %i.bl = icmp eq ptr %.080.lcssa158, %i.f
  br i1 %i.bl, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !64
  %.not86 = icmp eq i8 %i.bn, 0
  br i1 %.not86, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %.077.lcssa159, label %bb.t [
    i32 9, label %bb.s
    i32 8, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @_ZL28_UTF16BEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.p, %.loopexit
  store i32 %.077.lcssa159, ptr %i.i, align 4, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread101
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = icmp slt i32 %i.d, 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZL26_UTF16ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %.not = icmp ult ptr %i.s, %i.u
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %1, align 4, !tbaa !17
  br label %bb.aw

bb.g:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 1
  %i.z = trunc i64 %i.y to i32                    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not249 = icmp eq i32 %i.ad, 0
  br i1 %.not249, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.not250 = icmp eq i8 %.pre, 0
  br i1 %.not250, label %bb.z, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.aj = phi ptr [ %i.ah, %.thread ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ak = phi i8 [ 1, %.thread ], [ %.pre, %bb.h ]
  %i.al = sext i8 %i.ak to i32                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  %i.an = sub nsw i32 4, %i.al                    ; 2 uses
  %i.ao = trunc i64 %i.j to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = add i32 %i.ap, -4
  %i.ar = trunc i64 %i.k to i32
  %i.as = sub i32 %i.aq, %i.ar                    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %bb.i
  %.0219 = phi ptr [ %i.g, %bb.i ], [ %i.at, %bb.y ] ; 4 uses
  %.0191 = phi i32 [ %i.m, %bb.i ], [ %i.az, %bb.y ]
  %.0184 = phi i32 [ %i.al, %bb.i ], [ %i.av, %bb.y ] ; 2 uses
  %.0178 = phi i32 [ 0, %bb.i ], [ %i.ay, %bb.y ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0219, i64 1 ; 3 uses
  %i.au = load i8, ptr %.0219, align 1, !tbaa !30
  %i.av = add i32 %.0184, 1                       ; 3 uses
  %i.aw = zext i32 %.0184 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !30
  %i.ay = add i32 %.0178, 1                       ; 3 uses
  %i.az = add i32 %.0191, -1                      ; 4 uses
  switch i32 %i.av, label %bb.y [
    i32 2, label %bb.k
end_hunk_0
