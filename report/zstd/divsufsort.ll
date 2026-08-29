Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.1 = type { ptr, ptr, ptr, i32, i32 }
%struct.anon = type { ptr, ptr, i32, i32 }
%struct.anon.0 = type { ptr, ptr, ptr, i32 }

@lg_table = internal unnamed_addr constant [256 x i32] [i32 -1, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], align 16
@sqq_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 16, i32 22, i32 27, i32 32, i32 35, i32 39, i32 42, i32 45, i32 48, i32 50, i32 53, i32 55, i32 57, i32 59, i32 61, i32 64, i32 65, i32 67, i32 69, i32 71, i32 73, i32 75, i32 76, i32 78, i32 80, i32 81, i32 83, i32 84, i32 86, i32 87, i32 89, i32 90, i32 91, i32 93, i32 94, i32 96, i32 97, i32 98, i32 99, i32 101, i32 102, i32 103, i32 104, i32 106, i32 107, i32 108, i32 109, i32 110, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 128, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 160, i32 161, i32 162, i32 163, i32 163, i32 164, i32 165, i32 166, i32 167, i32 167, i32 168, i32 169, i32 170, i32 170, i32 171, i32 172, i32 173, i32 173, i32 174, i32 175, i32 176, i32 176, i32 177, i32 178, i32 178, i32 179, i32 180, i32 181, i32 181, i32 182, i32 183, i32 183, i32 184, i32 185, i32 185, i32 186, i32 187, i32 187, i32 188, i32 189, i32 189, i32 190, i32 191, i32 192, i32 192, i32 193, i32 193, i32 194, i32 195, i32 195, i32 196, i32 197, i32 197, i32 198, i32 199, i32 199, i32 200, i32 201, i32 201, i32 202, i32 203, i32 203, i32 204, i32 204, i32 205, i32 206, i32 206, i32 207, i32 208, i32 208, i32 209, i32 209, i32 210, i32 211, i32 211, i32 212, i32 212, i32 213, i32 214, i32 214, i32 215, i32 215, i32 216, i32 217, i32 217, i32 218, i32 218, i32 219, i32 219, i32 220, i32 221, i32 221, i32 222, i32 222, i32 223, i32 224, i32 224, i32 225, i32 225, i32 226, i32 226, i32 227, i32 227, i32 228, i32 229, i32 229, i32 230, i32 230, i32 231, i32 231, i32 232, i32 232, i32 233, i32 234, i32 234, i32 235, i32 235, i32 236, i32 236, i32 237, i32 237, i32 238, i32 238, i32 239, i32 240, i32 240, i32 241, i32 241, i32 242, i32 242, i32 243, i32 243, i32 244, i32 244, i32 245, i32 245, i32 246, i32 246, i32 247, i32 247, i32 248, i32 248, i32 249, i32 249, i32 250, i32 250, i32 251, i32 251, i32 252, i32 252, i32 253, i32 253, i32 254, i32 254, i32 255], align 16

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2, 1) i32 @divsufsort(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.e [
    i32 0, label %bb.x
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = icmp ult i8 %i.d, %i.f                   ; 2 uses
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  store i32 0, ptr %i.j, align 4, !tbaa !8
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  store i32 1, ptr %i.l, align 4, !tbaa !8
  br label %bb.x

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #7 ; 7 uses
  %i.n = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #7 ; 6 uses
  %i.o = icmp ne ptr %i.m, null
  %i.p = icmp ne ptr %i.n, null
  %or.cond5 = and i1 %i.o, %i.p
  br i1 %or.cond5, label %bb.f, label %construct_SA.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %1, ptr noundef %i.m, ptr noundef %i.n, i32 noundef %2)
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  br i1 %i.r, label %.preheader.i, label %.lr.ph108.i

.preheader.i:                                     ; preds = %bb.f, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 254, %bb.f ] ; 4 uses
  %indvars112.i = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.t = add nuw nsw i32 %indvars112.i, 1
  %i.u = shl i32 %indvars112.i, 8                 ; 3 uses
  %i.v = or i32 %i.u, %i.t
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = sext i32 %i.y to i64
  %.idx.i = shl nsw i64 %i.z, 2                   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = sext i32 %i.ad to i64
  %.idx110.i = shl nsw i64 %i.ae, 2               ; 2 uses
  %.not9599.not.i = icmp slt i64 %.idx.i, %.idx110.i
  br i1 %.not9599.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.af = getelementptr i8, ptr %1, i64 %.idx110.i
  %.08498.i = getelementptr i8, ptr %i.af, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.084102.i = phi ptr [ %.084.i, %bb.n ], [ %.08498.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0101.i = phi i32 [ %.2.i, %bb.n ], [ -1, %.lr.ph.preheader.i ] ; 5 uses
  %.078100.i = phi ptr [ %.280.i, %bb.n ], [ null, %.lr.ph.preheader.i ] ; 3 uses
  %i.ag = load i32, ptr %.084102.i, align 4, !tbaa !8 ; 6 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = xor i32 %i.ag, -1
  store i32 %i.ai, ptr %.084102.i, align 4, !tbaa !8
  br i1 %i.ah, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %.not96.i = icmp eq i32 %i.ag, 1
  br i1 %.not96.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %i.ag to i64
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp ugt i8 %i.ar, %i.am
  %i.at = sub nsw i32 0, %i.ag
  %spec.select.i = select i1 %i.as, i32 %i.at, i32 %i.aj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.076.i = phi i32 [ 0, %bb.g ], [ %spec.select.i, %bb.h ]
  %.not97.i = icmp eq i32 %.0101.i, %i.an
  br i1 %.not97.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = icmp sgt i32 %.0101.i, -1
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = ptrtoint ptr %.078100.i to i64
  %i.aw = sub i64 %i.av, %i.s
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = trunc i64 %i.ax to i32
  %i.az = or i32 %.0101.i, %i.u
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ba
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = or disjoint i32 %i.u, %i.an
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.179.i = phi ptr [ %i.bh, %bb.l ], [ %.078100.i, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ %i.an, %bb.l ], [ %.0101.i, %bb.i ]
  %i.bi = getelementptr inbounds i8, ptr %.179.i, i64 -4
  store i32 %.076.i, ptr %.179.i, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.280.i = phi ptr [ %i.bi, %bb.m ], [ %.078100.i, %.lr.ph.i ]
  %.2.i = phi i32 [ %.1.i, %bb.m ], [ %.0101.i, %.lr.ph.i ]
  %.084.i = getelementptr inbounds i8, ptr %.084102.i, i64 -4 ; 2 uses
  %.not95.i = icmp ugt ptr %i.aa, %.084.i
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.n, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not120.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not120.i, label %.lr.ph108.i, label %.preheader.i, !llvm.loop !12

.lr.ph108.i:                                      ; preds = %._crit_edge.i, %bb.f
  %i.bj = add nsw i32 %2, -1                      ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9   ; 3 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bs = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = icmp ult i8 %i.bv, %i.bm
  %i.bx = sub nsw i32 0, %2
  %i.by = select i1 %i.bw, i32 %i.bx, i32 %i.bj
  store i32 %i.by, ptr %i.br, align 4, !tbaa !8
  %.idx111.i = shl nuw nsw i64 %i.bs, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx111.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cb = zext i8 %i.bm to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph108.i
  %.3106.i = phi i32 [ %i.cb, %.lr.ph108.i ], [ %.5.i, %bb.w ] ; 4 uses
  %.381105.i = phi ptr [ %i.ca, %.lr.ph108.i ], [ %.583.i, %bb.w ] ; 3 uses
  %.085104.i = phi ptr [ %1, %.lr.ph108.i ], [ %i.dd, %bb.w ] ; 3 uses
  %i.cc = load i32, ptr %.085104.i, align 4, !tbaa !8 ; 5 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.cc, -1                   ; 3 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9   ; 3 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp eq i32 %i.ce, 0
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = icmp ult i8 %i.cn, %i.ch
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cp = sub nsw i32 0, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.177.i = phi i32 [ %i.cp, %bb.r ], [ %i.ce, %bb.q ]
  %.not.i = icmp eq i32 %.3106.i, %i.ci
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = ptrtoint ptr %.381105.i to i64
  %i.cr = sub i64 %i.cq, %i.s
  %i.cs = lshr exact i64 %i.cr, 2
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = zext nneg i32 %.3106.i to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cu
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !8
  %i.cw = zext i8 %i.ch to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.482.i = phi ptr [ %i.da, %bb.t ], [ %.381105.i, %bb.s ] ; 2 uses
  %.4.i = phi i32 [ %i.ci, %bb.t ], [ %.3106.i, %bb.s ]
  %i.db = getelementptr inbounds nuw i8, ptr %.482.i, i64 4
  store i32 %.177.i, ptr %.482.i, align 4, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.dc = xor i32 %i.cc, -1
  store i32 %i.dc, ptr %.085104.i, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.583.i = phi ptr [ %i.db, %bb.u ], [ %.381105.i, %bb.v ]
  %.5.i = phi i32 [ %.4.i, %bb.u ], [ %.3106.i, %bb.v ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.085104.i, i64 4 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.bz
  br i1 %i.de, label %bb.o, label %construct_SA.exit, !llvm.loop !13

construct_SA.exit:                                ; preds = %bb.w, %bb.e
  %.0 = phi i32 [ -2, %bb.e ], [ 0, %bb.w ]
  tail call void @free(ptr noundef %i.n) #8
  tail call void @free(ptr noundef %i.m) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %construct_SA.exit, %bb.d, %bb.c
  %.035 = phi i32 [ %.0, %construct_SA.exit ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ %2, %bb.b ]
  ret i32 %.035
}

end_hunk_0
begin_hunk_1_@sort_typeBstar:.preheader340.preheader
  %i.bsi = and i64 %i.bsh, 255
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bsi
  %i.bsk = load i32, ptr %i.bsj, align 4, !tbaa !8
  %i.bsl = add nsw i32 %i.bsk, 8
  br label %tr_ilg.exit585.i.i

bb.ju:                                            ; preds = %bb.js
  %i.bsm = and i64 %i.tf, 255
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bsm
  %i.bso = load i32, ptr %i.bsn, align 4, !tbaa !8
  br label %tr_ilg.exit585.i.i

tr_ilg.exit585.i.i:                               ; preds = %bb.ju, %bb.jt, %bb.jr, %bb.jq
  %i.bsp = phi i32 [ %i.bsg, %bb.jr ], [ %i.bsb, %bb.jq ], [ %i.bsl, %bb.jt ], [ %i.bso, %bb.ju ]
  %i.bsq = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rn
  br label %.outer.i.i.backedge

bb.jv:                                            ; preds = %bb.jm
  %i.bsr = add nsw i32 %.sroa.23.0.i, %i.th       ; 2 uses
  %i.bss = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.bss, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.bst = zext nneg i32 %.0.ph.i.i to i64
  %i.bsu = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.bst
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 24
  store i32 -1, ptr %i.bsv, align 8, !tbaa !73
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.bsw = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.bsw, label %tr_introsort.exit.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bsx = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.bsy = sext i32 %i.bsx to i64
  %i.bsz = getelementptr inbounds [32 x i8], ptr %5, i64 %i.bsy ; 5 uses
  %i.bta = load ptr, ptr %i.bsz, align 16, !tbaa !67
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !71
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsz, i64 16
  %i.bte = load ptr, ptr %i.btd, align 16, !tbaa !72
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bsz, i64 24
  %i.btg = load i32, ptr %i.btf, align 8, !tbaa !73
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bsz, i64 28
  %i.bti = load i32, ptr %i.bth, align 4, !tbaa !74
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.jy, %tr_ilg.exit585.i.i, %bb.jl, %bb.jj, %bb.ji, %bb.jg, %bb.je, %bb.jd, %bb.iy, %bb.ix, %bb.iw, %bb.it, %bb.is, %bb.ir, %bb.io, %bb.in, %bb.im, %bb.ij, %bb.ii, %bb.ih, %bb.gh, %bb.gf, %bb.gd, %bb.ga, %bb.fz, %bb.fy, %bb.fj, %bb.ep, %bb.en, %bb.em, %bb.ek, %bb.ej, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.dr, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dh, %bb.dg, %bb.de, %bb.dd
  %.sroa.23.0.i.be = phi i32 [ %.sroa.23.0.i, %bb.in ], [ %.sroa.23.0.i, %bb.ih ], [ %.sroa.23.0.i, %bb.ij ], [ %.sroa.23.0.i, %bb.ii ], [ %i.aql, %bb.gd ], [ %i.aql, %bb.gf ], [ %.sroa.23.0.i, %bb.ga ], [ %.sroa.23.0.i, %bb.fz ], [ %.sroa.23.0.i, %bb.fy ], [ %.sroa.23.0.i, %bb.gh ], [ %.sroa.23.0.i, %bb.ef ], [ %.sroa.23.0.i, %bb.ee ], [ %.sroa.23.0.i, %bb.ec ], [ %.sroa.23.0.i, %bb.eb ], [ %.sroa.23.0.i, %bb.en ], [ %.sroa.23.0.i, %bb.em ], [ %.sroa.23.0.i, %bb.ek ], [ %.sroa.23.0.i, %bb.ej ], [ %.sroa.23.0.i, %bb.ep ], [ %.sroa.23.0.i, %bb.dh ], [ %.sroa.23.0.i, %bb.dg ], [ %.sroa.23.0.i, %bb.de ], [ %.sroa.23.0.i, %bb.dd ], [ %.sroa.23.0.i, %bb.dp ], [ %.sroa.23.0.i, %bb.do ], [ %.sroa.23.0.i, %bb.dm ], [ %.sroa.23.0.i, %bb.dl ], [ %.sroa.23.0.i, %bb.dr ], [ %.sroa.23.0.i, %bb.fj ], [ %i.bsr, %bb.jy ], [ %.sroa.23.0.i, %tr_ilg.exit585.i.i ], [ %.sroa.23.1.i, %bb.ji ], [ %.sroa.23.1.i, %bb.jj ], [ %.sroa.23.1.i, %bb.jl ], [ %.sroa.23.1.i, %bb.jd ], [ %.sroa.23.1.i, %bb.je ], [ %.sroa.23.1.i, %bb.jg ], [ %.sroa.23.0.i, %bb.iy ], [ %.sroa.23.0.i, %bb.iw ], [ %.sroa.23.0.i, %bb.ix ], [ %.sroa.23.0.i, %bb.ir ], [ %.sroa.23.0.i, %bb.it ], [ %.sroa.23.0.i, %bb.is ], [ %.sroa.23.0.i, %bb.io ], [ %.sroa.23.0.i, %bb.im ]
  %.sroa.9.3.i.be = phi i32 [ %.sroa.9.5.i, %bb.in ], [ %.sroa.9.5.i, %bb.ih ], [ %.sroa.9.5.i, %bb.ij ], [ %.sroa.9.5.i, %bb.ii ], [ %.sroa.9.3.i, %bb.gd ], [ %.sroa.9.3.i, %bb.gf ], [ %.sroa.9.7.i, %bb.ga ], [ %.sroa.9.7.i, %bb.fz ], [ %.sroa.9.7.i, %bb.fy ], [ %.sroa.9.3.i, %bb.gh ], [ %.sroa.9.3.i, %bb.ef ], [ %.sroa.9.3.i, %bb.ee ], [ %.sroa.9.3.i, %bb.ec ], [ %.sroa.9.3.i, %bb.eb ], [ %.sroa.9.3.i, %bb.en ], [ %.sroa.9.3.i, %bb.em ], [ %.sroa.9.3.i, %bb.ek ], [ %.sroa.9.3.i, %bb.ej ], [ %.sroa.9.3.i, %bb.ep ], [ %.sroa.9.3.i, %bb.dh ], [ %.sroa.9.3.i, %bb.dg ], [ %.sroa.9.3.i, %bb.de ], [ %.sroa.9.3.i, %bb.dd ], [ %.sroa.9.3.i, %bb.dp ], [ %.sroa.9.3.i, %bb.do ], [ %.sroa.9.3.i, %bb.dm ], [ %.sroa.9.3.i, %bb.dl ], [ %.sroa.9.3.i, %bb.dr ], [ %.sroa.9.3.i, %bb.fj ], [ %.sroa.9.3.i, %bb.jy ], [ %.sroa.9.6.i, %tr_ilg.exit585.i.i ], [ %.sroa.9.3.i, %bb.ji ], [ %.sroa.9.3.i, %bb.jj ], [ %.sroa.9.3.i, %bb.jl ], [ %.sroa.9.3.i, %bb.jd ], [ %.sroa.9.3.i, %bb.je ], [ %.sroa.9.3.i, %bb.jg ], [ %.sroa.9.5.i, %bb.iy ], [ %.sroa.9.5.i, %bb.iw ], [ %.sroa.9.5.i, %bb.ix ], [ %.sroa.9.5.i, %bb.ir ], [ %.sroa.9.5.i, %bb.it ], [ %.sroa.9.5.i, %bb.is ], [ %.sroa.9.5.i, %bb.io ], [ %.sroa.9.5.i, %bb.im ]
  %.sroa.0.3.i.be = phi i32 [ %.sroa.0.5.i, %bb.in ], [ %.sroa.0.5.i, %bb.ih ], [ %.sroa.0.5.i, %bb.ij ], [ %.sroa.0.5.i, %bb.ii ], [ 0, %bb.gd ], [ 0, %bb.gf ], [ %.sroa.0.7.i, %bb.ga ], [ %.sroa.0.7.i, %bb.fz ], [ %.sroa.0.7.i, %bb.fy ], [ %.sroa.0.3.i, %bb.gh ], [ %.sroa.0.3.i, %bb.ef ], [ %.sroa.0.3.i, %bb.ee ], [ %.sroa.0.3.i, %bb.ec ], [ %.sroa.0.3.i, %bb.eb ], [ %.sroa.0.3.i, %bb.en ], [ %.sroa.0.3.i, %bb.em ], [ %.sroa.0.3.i, %bb.ek ], [ %.sroa.0.3.i, %bb.ej ], [ %.sroa.0.3.i, %bb.ep ], [ %.sroa.0.3.i, %bb.dh ], [ %.sroa.0.3.i, %bb.dg ], [ %.sroa.0.3.i, %bb.de ], [ %.sroa.0.3.i, %bb.dd ], [ %.sroa.0.3.i, %bb.dp ], [ %.sroa.0.3.i, %bb.do ], [ %.sroa.0.3.i, %bb.dm ], [ %.sroa.0.3.i, %bb.dl ], [ %.sroa.0.3.i, %bb.dr ], [ %.sroa.0.3.i, %bb.fj ], [ 0, %bb.jy ], [ %.sroa.0.6.i, %tr_ilg.exit585.i.i ], [ %.sroa.0.3.i, %bb.ji ], [ %.sroa.0.3.i, %bb.jj ], [ %.sroa.0.3.i, %bb.jl ], [ %.sroa.0.3.i, %bb.jd ], [ %.sroa.0.3.i, %bb.je ], [ %.sroa.0.3.i, %bb.jg ], [ %.sroa.0.5.i, %bb.iy ], [ %.sroa.0.5.i, %bb.iw ], [ %.sroa.0.5.i, %bb.ix ], [ %.sroa.0.5.i, %bb.ir ], [ %.sroa.0.5.i, %bb.it ], [ %.sroa.0.5.i, %bb.is ], [ %.sroa.0.5.i, %bb.io ], [ %.sroa.0.5.i, %bb.im ]
  %.0462.ph.i.i.be = phi ptr [ %i.bjq, %bb.in ], [ %.0462.ph.i.i, %bb.ih ], [ %i.bjr, %bb.ij ], [ %i.bjq, %bb.ii ], [ %i.aoy, %bb.gd ], [ %i.aqz, %bb.gf ], [ %i.aoy, %bb.ga ], [ %.1463.i.i, %bb.fz ], [ %.1463.i.i, %bb.fy ], [ %i.arm, %bb.gh ], [ %.0166.i78.i, %bb.ef ], [ %.0166.i78.i, %bb.ee ], [ %.0166.i78.i, %bb.ec ], [ %.0166.i78.i, %bb.eb ], [ %.0462.ph.i.i, %bb.en ], [ %.0462.ph.i.i, %bb.em ], [ %.0462.ph.i.i, %bb.ek ], [ %.0462.ph.i.i, %bb.ej ], [ %i.aie, %bb.ep ], [ %.0462.ph.i.i, %bb.dh ], [ %.0462.ph.i.i, %bb.dg ], [ %.0462.ph.i.i, %bb.de ], [ %.0462.ph.i.i, %bb.dd ], [ %.0166.i78.i, %bb.dp ], [ %.0166.i78.i, %bb.do ], [ %.0166.i78.i, %bb.dm ], [ %.0166.i78.i, %bb.dl ], [ %i.afa, %bb.dr ], [ %i.ams, %bb.fj ], [ %i.btc, %bb.jy ], [ %.0462.ph.i.i, %tr_ilg.exit585.i.i ], [ %i.bjr, %bb.ji ], [ %.0462.ph.i.i, %bb.jj ], [ %i.brn, %bb.jl ], [ %.0462.ph.i.i, %bb.jd ], [ %i.bjr, %bb.je ], [ %i.bqr, %bb.jg ], [ %i.bjq, %bb.iy ], [ %i.bjr, %bb.iw ], [ %i.bjq, %bb.ix ], [ %i.bjr, %bb.ir ], [ %.0462.ph.i.i, %bb.it ], [ %i.bjq, %bb.is ], [ %i.bjq, %bb.io ], [ %.0462.ph.i.i, %bb.im ]
  %.0459.ph.i.i.be = phi ptr [ %i.bjr, %bb.in ], [ %i.bjq, %bb.ih ], [ %.0459.ph.i.i, %bb.ij ], [ %i.bjr, %bb.ii ], [ %.0459.ph.i.i, %bb.gd ], [ %i.arb, %bb.gf ], [ %.0459.ph.i.i, %bb.ga ], [ %i.aoy, %bb.fz ], [ %i.aoy, %bb.fy ], [ %i.aro, %bb.gh ], [ %.0459.ph.i.i, %bb.ef ], [ %.0459.ph.i.i, %bb.ee ], [ %.0459.ph.i.i, %bb.ec ], [ %.0459.ph.i.i, %bb.eb ], [ %.0165.i79.i, %bb.en ], [ %.0165.i79.i, %bb.em ], [ %.0165.i79.i, %bb.ek ], [ %.0165.i79.i, %bb.ej ], [ %i.aig, %bb.ep ], [ %.0165.i79.i, %bb.dh ], [ %.0165.i79.i, %bb.dg ], [ %.0165.i79.i, %bb.de ], [ %.0165.i79.i, %bb.dd ], [ %.0459.ph.i.i, %bb.dp ], [ %.0459.ph.i.i, %bb.do ], [ %.0459.ph.i.i, %bb.dm ], [ %.0459.ph.i.i, %bb.dl ], [ %i.afc, %bb.dr ], [ %i.amu, %bb.fj ], [ %i.bte, %bb.jy ], [ %.0459.ph.i.i, %tr_ilg.exit585.i.i ], [ %.0459.ph.i.i, %bb.ji ], [ %i.bjq, %bb.jj ], [ %i.brp, %bb.jl ], [ %i.bjq, %bb.jd ], [ %.0459.ph.i.i, %bb.je ], [ %i.bqt, %bb.jg ], [ %i.bjr, %bb.iy ], [ %.0459.ph.i.i, %bb.iw ], [ %i.bjr, %bb.ix ], [ %.0459.ph.i.i, %bb.ir ], [ %i.bjq, %bb.it ], [ %i.bjr, %bb.is ], [ %i.bjr, %bb.io ], [ %i.bjq, %bb.im ]
  %.0456.ph.i.i.be = phi ptr [ %i.bng, %bb.in ], [ %.0456.ph.i.i, %bb.ih ], [ %.0456.ph.i.i, %bb.ij ], [ %i.bmi, %bb.ii ], [ %.0456.ph.i.i, %bb.gd ], [ %i.aqx, %bb.gf ], [ %.0456.ph.i.i, %bb.ga ], [ %i.aqd, %bb.fz ], [ %i.aqb, %bb.fy ], [ %i.ark, %bb.gh ], [ %.0456.ph.i.i, %bb.ef ], [ %.0456.ph.i.i, %bb.ee ], [ %.0456.ph.i.i, %bb.ec ], [ %.0456.ph.i.i, %bb.eb ], [ %.0456.ph.i.i, %bb.en ], [ %.0456.ph.i.i, %bb.em ], [ %.0456.ph.i.i, %bb.ek ], [ %.0456.ph.i.i, %bb.ej ], [ %i.aic, %bb.ep ], [ %.0456.ph.i.i, %bb.dh ], [ %.0456.ph.i.i, %bb.dg ], [ %.0456.ph.i.i, %bb.de ], [ %.0456.ph.i.i, %bb.dd ], [ %.0456.ph.i.i, %bb.dp ], [ %.0456.ph.i.i, %bb.do ], [ %.0456.ph.i.i, %bb.dm ], [ %.0456.ph.i.i, %bb.dl ], [ %i.aey, %bb.dr ], [ %i.amq, %bb.fj ], [ %i.bta, %bb.jy ], [ %i.bsq, %tr_ilg.exit585.i.i ], [ %.0456.ph.i.i, %bb.ji ], [ %.0456.ph.i.i, %bb.jj ], [ %i.brl, %bb.jl ], [ %.0456.ph.i.i, %bb.jd ], [ %.0456.ph.i.i, %bb.je ], [ %i.bqp, %bb.jg ], [ %i.bpu, %bb.iy ], [ %.0456.ph.i.i, %bb.iw ], [ %i.bph, %bb.ix ], [ %.0456.ph.i.i, %bb.ir ], [ %.0456.ph.i.i, %bb.it ], [ %i.boj, %bb.is ], [ %i.bnt, %bb.io ], [ %.0456.ph.i.i, %bb.im ]
  %.0449.ph.i.i.be = phi i32 [ %i.bkp, %bb.in ], [ %i.aww, %bb.ih ], [ %i.aww, %bb.ij ], [ %i.bkp, %bb.ii ], [ -3, %bb.gd ], [ %i.ard, %bb.gf ], [ -3, %bb.ga ], [ %i.aox, %bb.fz ], [ %i.aox, %bb.fy ], [ %i.arq, %bb.gh ], [ %i.ahd, %bb.ef ], [ %i.aha, %bb.ee ], [ %i.agv, %bb.ec ], [ %i.agq, %bb.eb ], [ %i.ahx, %bb.en ], [ %i.ahu, %bb.em ], [ %i.ahp, %bb.ek ], [ %i.ahk, %bb.ej ], [ %i.aii, %bb.ep ], [ %i.adz, %bb.dh ], [ %i.adw, %bb.dg ], [ %i.adr, %bb.de ], [ %i.adm, %bb.dd ], [ %i.aet, %bb.dp ], [ %i.aeq, %bb.do ], [ %i.ael, %bb.dm ], [ %i.aeg, %bb.dl ], [ %i.afe, %bb.dr ], [ %i.amw, %bb.fj ], [ %i.btg, %bb.jy ], [ %i.bsp, %tr_ilg.exit585.i.i ], [ %i.aww, %bb.ji ], [ %i.aww, %bb.jj ], [ %i.brr, %bb.jl ], [ %i.aww, %bb.jd ], [ %i.aww, %bb.je ], [ %i.bqv, %bb.jg ], [ %i.bkp, %bb.iy ], [ %i.aww, %bb.iw ], [ %i.bkp, %bb.ix ], [ %i.aww, %bb.ir ], [ %i.aww, %bb.it ], [ %i.bkp, %bb.is ], [ %i.bkp, %bb.io ], [ %i.aww, %bb.im ]
  %.0445.ph.i.i.be = phi i32 [ %i.bne, %bb.in ], [ %i.bmf, %bb.ih ], [ %i.bmo, %bb.ij ], [ %.0445.ph.i.i, %bb.ii ], [ %.0445.ph.i.i, %bb.gd ], [ %i.aqu, %bb.gf ], [ %i.aqj, %bb.ga ], [ %.0445.ph.i.i, %bb.fz ], [ %i.apz, %bb.fy ], [ %i.arh, %bb.gh ], [ %i.agi, %bb.ef ], [ %i.agi, %bb.ee ], [ %i.agi, %bb.ec ], [ %i.agi, %bb.eb ], [ %.1446.i.i, %bb.en ], [ %.1446.i.i, %bb.em ], [ %.1446.i.i, %bb.ek ], [ %.1446.i.i, %bb.ej ], [ %i.ahz, %bb.ep ], [ %i.ade, %bb.dh ], [ %i.ade, %bb.dg ], [ %i.ade, %bb.de ], [ %i.ade, %bb.dd ], [ %.1446.i.i, %bb.dp ], [ %.1446.i.i, %bb.do ], [ %.1446.i.i, %bb.dm ], [ %.1446.i.i, %bb.dl ], [ %i.aev, %bb.dr ], [ %i.amn, %bb.fj ], [ %i.bsx, %bb.jy ], [ %.0445.ph.i.i, %tr_ilg.exit585.i.i ], [ %i.bre, %bb.ji ], [ %.0445.ph.i.i, %bb.jj ], [ %i.bri, %bb.jl ], [ %i.bqi, %bb.jd ], [ %.0445.ph.i.i, %bb.je ], [ %i.bqm, %bb.jg ], [ %i.bps, %bb.iy ], [ %i.bpd, %bb.iw ], [ %i.bpf, %bb.ix ], [ %i.bog, %bb.ir ], [ %i.bop, %bb.it ], [ %.0445.ph.i.i, %bb.is ], [ %i.bnr, %bb.io ], [ %i.bnc, %bb.im ]
  %.0.ph.i.i.be = phi i32 [ %.0.ph.i.i, %bb.in ], [ %.0.ph.i.i, %bb.ih ], [ %.0.ph.i.i, %bb.ij ], [ %.0.ph.i.i, %bb.ii ], [ %.0.ph.i.i, %bb.gd ], [ %i.arf, %bb.gf ], [ %.0.ph.i.i, %bb.ga ], [ %.0.ph.i.i, %bb.fz ], [ %.0.ph.i.i, %bb.fy ], [ %i.ars, %bb.gh ], [ %.1.i.i311, %bb.ef ], [ %.1.i.i311, %bb.ee ], [ %.1.i.i311, %bb.ec ], [ %.1.i.i311, %bb.eb ], [ %.1.i.i311, %bb.en ], [ %.1.i.i311, %bb.em ], [ %.1.i.i311, %bb.ek ], [ %.1.i.i311, %bb.ej ], [ %i.aik, %bb.ep ], [ %.1.i.i311, %bb.dh ], [ %.1.i.i311, %bb.dg ], [ %.1.i.i311, %bb.de ], [ %.1.i.i311, %bb.dd ], [ %.1.i.i311, %bb.dp ], [ %.1.i.i311, %bb.do ], [ %.1.i.i311, %bb.dm ], [ %.1.i.i311, %bb.dl ], [ %i.afg, %bb.dr ], [ %i.amy, %bb.fj ], [ %i.bti, %bb.jy ], [ %.0.ph.i.i, %tr_ilg.exit585.i.i ], [ %.0.ph.i.i, %bb.ji ], [ %.0.ph.i.i, %bb.jj ], [ %i.brt, %bb.jl ], [ %.0.ph.i.i, %bb.jd ], [ %.0.ph.i.i, %bb.je ], [ %i.bqx, %bb.jg ], [ %.0.ph.i.i, %bb.iy ], [ %.0.ph.i.i, %bb.iw ], [ %.0.ph.i.i, %bb.ix ], [ %.0.ph.i.i, %bb.ir ], [ %.0.ph.i.i, %bb.it ], [ %.0.ph.i.i, %bb.is ], [ %.0.ph.i.i, %bb.io ], [ %.0.ph.i.i, %bb.im ]
  br label %.outer.i.i

tr_introsort.exit.i:                              ; preds = %bb.jx, %bb.jk, %bb.jf, %bb.gg, %bb.ge, %tr_copy.exit.i.i, %bb.eo, %bb.dq
  %.sroa.0.3.lcssa.i = phi i32 [ %.sroa.0.3.i, %bb.dq ], [ %.sroa.0.3.i, %bb.eo ], [ %.sroa.0.3.i, %tr_copy.exit.i.i ], [ 0, %bb.ge ], [ %.sroa.0.3.i, %bb.gg ], [ %.sroa.0.3.i, %bb.jf ], [ %.sroa.0.3.i, %bb.jk ], [ 0, %bb.jx ] ; 3 uses
  %.sroa.23.3.i = phi i32 [ %.sroa.23.0.i, %bb.dq ], [ %.sroa.23.0.i, %bb.eo ], [ %.sroa.23.0.i, %tr_copy.exit.i.i ], [ %i.aql, %bb.ge ], [ %.sroa.23.0.i, %bb.gg ], [ %.sroa.23.1.i, %bb.jf ], [ %.sroa.23.1.i, %bb.jk ], [ %i.bsr, %bb.jx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.not52.i = icmp eq i32 %.sroa.23.3.i, 0
  br i1 %.not52.i, label %bb.jz, label %.thread.i

bb.jz:                                            ; preds = %tr_introsort.exit.i
  %i.btj = sub i64 %i.se, %i.sd
  %i.btk = lshr exact i64 %i.btj, 2
  %i.btl = trunc i64 %i.btk to i32
  br label %bb.kb

bb.ka:                                            ; preds = %bb.bm
  %i.btm = icmp eq i64 %i.sf, 4
  %spec.select.i294 = sext i1 %i.btm to i32
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz, %bb.bj
  %.sroa.9.2.i = phi i32 [ %.sroa.9.1.i, %bb.bj ], [ %.sroa.9.3.i, %bb.jz ], [ %.sroa.9.1.i, %bb.ka ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %bb.bj ], [ %.sroa.0.3.lcssa.i, %bb.jz ], [ %.sroa.0.1.i, %bb.ka ] ; 3 uses
  %.146.i = phi ptr [ %i.rt, %bb.bj ], [ %i.sc, %bb.jz ], [ %i.sc, %bb.ka ] ; 3 uses
  %.3.i = phi i32 [ %i.ru, %bb.bj ], [ %i.btl, %bb.jz ], [ %spec.select.i294, %bb.ka ] ; 4 uses
  %i.btn = icmp ult ptr %.146.i, %i.cb
  br i1 %i.btn, label %thread-pre-split.i, label %bb.kc, !llvm.loop !103

.thread.i:                                        ; preds = %tr_introsort.exit.i
  %i.bto = add nsw i32 %.sroa.23.3.i, %.0.i       ; 2 uses
  %i.btp = icmp slt i64 %i.sb, %.idx159.i
  br i1 %i.btp, label %thread-pre-split.i, label %.thread149.i, !llvm.loop !103

bb.kc:                                            ; preds = %bb.kb
  %.not53.i = icmp eq i32 %.3.i, 0
  br i1 %.not53.i, label %.thread149.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.btq = sext i32 %.3.i to i64
  %i.btr = getelementptr inbounds [4 x i8], ptr %.146.i, i64 %i.btq
  store i32 %.3.i, ptr %i.btr, align 4, !tbaa !8
  br label %.thread149.i

.thread149.i:                                     ; preds = %.thread.i, %bb.kd, %bb.kc
  %.sroa.9.2139158.i = phi i32 [ %.sroa.9.2.i, %bb.kc ], [ %.sroa.9.2.i, %bb.kd ], [ %.sroa.9.3.i, %.thread.i ]
  %.sroa.0.2141157.i = phi i32 [ %.sroa.0.2.i, %bb.kc ], [ %.sroa.0.2.i, %bb.kd ], [ %.sroa.0.3.lcssa.i, %.thread.i ]
  %.2147156.i = phi i32 [ %.0.i, %bb.kc ], [ %.0.i, %bb.kd ], [ %i.bto, %.thread.i ]
  %i.bts = icmp eq i32 %.2147156.i, 0
  br i1 %i.bts, label %trsort.exit, label %bb.ke

bb.ke:                                            ; preds = %.thread149.i
  %i.btt = getelementptr inbounds i8, ptr %.047208.i, i64 %i.rm
  %i.btu = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.btv = icmp sgt i32 %i.btu, %i.rc
  br i1 %i.btv, label %.preheader169.i, label %trsort.exit, !llvm.loop !104

trsort.exit:                                      ; preds = %.thread149.i, %bb.ke, %tr_ilg.exit.i
  %i.btw = load i8, ptr %i.c, align 1, !tbaa !9
  %i.btx = zext i8 %i.btw to i32
  br label %.preheader

.preheader:                                       ; preds = %trsort.exit, %.critedge6
  %.7460 = phi i32 [ %i.btx, %trsort.exit ], [ %.11, %.critedge6 ]
  %.4255459 = phi i32 [ %i.bu, %trsort.exit ], [ %i.bus, %.critedge6 ]
  %.13270458 = phi i32 [ %i.a, %trsort.exit ], [ %.15.lcssa, %.critedge6 ] ; 2 uses
  %.not317112 = icmp eq i32 %.13270458, 0
  br i1 %.not317112, label %.critedge6.thread, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader
  %i.bty = zext nneg i32 %.13270458 to i64
  br label %bb.kg

bb.kf:                                            ; preds = %bb.kg
  %.not317 = icmp eq i64 %i.btz, 0
  br i1 %.not317, label %.critedge6.thread, label %bb.kg, !llvm.loop !105

bb.kg:                                            ; preds = %.lr.ph115, %bb.kf
  %.3114 = phi i32 [ %.7460, %.lr.ph115 ], [ %i.buc, %bb.kf ]
  %indvars.iv596113 = phi i64 [ %i.bty, %.lr.ph115 ], [ %i.btz, %bb.kf ] ; 3 uses
  %i.btz = add nsw i64 %indvars.iv596113, -1      ; 5 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %0, i64 %i.btz
  %i.bub = load i8, ptr %i.bua, align 1, !tbaa !9
  %i.buc = zext i8 %i.bub to i32                  ; 4 uses
  %.not286 = icmp sgt i32 %.3114, %i.buc
  br i1 %.not286, label %bb.kh, label %bb.kf, !llvm.loop !105

bb.kh:                                            ; preds = %bb.kg
  %i.bud = trunc nuw nsw i64 %indvars.iv596113 to i32 ; 2 uses
  %i.bue = trunc nuw nsw i64 %i.btz to i32        ; 2 uses
  %i.buf = add nsw i32 %i.bud, -2                 ; 2 uses
  %i.bug = icmp sgt i64 %indvars.iv596113, 1
  br i1 %i.bug, label %.lr.ph452, label %.critedge6

.lr.ph452:                                        ; preds = %bb.kh, %bb.ki
  %.4450 = phi i32 [ %i.buk, %bb.ki ], [ %i.buc, %bb.kh ]
  %.15449 = phi i32 [ %i.bul, %bb.ki ], [ %i.buf, %bb.kh ] ; 4 uses
  %i.buh = zext nneg i32 %.15449 to i64
  %i.bui = getelementptr inbounds nuw i8, ptr %0, i64 %i.buh
  %i.buj = load i8, ptr %i.bui, align 1, !tbaa !9
  %i.buk = zext i8 %i.buj to i32                  ; 4 uses
  %.not287 = icmp samesign ult i32 %.4450, %i.buk
  br i1 %.not287, label %.critedge6, label %bb.ki

bb.ki:                                            ; preds = %.lr.ph452
  %i.bul = add nsw i32 %.15449, -1
  %i.bum = icmp sgt i32 %.15449, 0
  br i1 %i.bum, label %.lr.ph452, label %.critedge6, !llvm.loop !106

.critedge6:                                       ; preds = %bb.ki, %.lr.ph452, %bb.kh
  %.15.lcssa = phi i32 [ %i.buf, %bb.kh ], [ -1, %bb.ki ], [ %.15449, %.lr.ph452 ] ; 3 uses
  %.11 = phi i32 [ %i.buc, %bb.kh ], [ %i.buk, %.lr.ph452 ], [ %i.buk, %bb.ki ]
  %i.bun = icmp eq i64 %i.btz, 0
  %i.buo = sub nsw i32 %i.bue, %.15.lcssa
  %i.bup = icmp sgt i32 %i.buo, 1
  %or.cond = select i1 %i.bun, i1 true, i1 %i.bup
  %i.buq = sub nsw i32 0, %i.bud
  %i.bur = select i1 %or.cond, i32 %i.bue, i32 %i.buq
  %i.bus = add nsw i32 %.4255459, -1              ; 2 uses
  %i.but = sext i32 %i.bus to i64
  %i.buu = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.but
  %i.buv = load i32, ptr %i.buu, align 4, !tbaa !8
  %i.buw = sext i32 %i.buv to i64
  %i.bux = getelementptr inbounds [4 x i8], ptr %1, i64 %i.buw
  store i32 %i.bur, ptr %i.bux, align 4, !tbaa !8
  %i.buy = icmp sgt i32 %.15.lcssa, -1
  br i1 %i.buy, label %.preheader, label %.critedge6.thread, !llvm.loop !107

.critedge6.thread:                                ; preds = %.critedge6, %.preheader, %bb.kf
  %i.buz = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %i.buz, align 4, !tbaa !8
  br label %.lr.ph473

.lr.ph473:                                        ; preds = %._crit_edge474, %.critedge6.thread
  %indvars.iv611 = phi i64 [ 254, %.critedge6.thread ], [ %indvars.iv.next612, %._crit_edge474 ] ; 9 uses
  %.0248477 = phi i32 [ %i.eb, %.critedge6.thread ], [ %.2250.lcssa, %._crit_edge474 ]
  %indvars613 = trunc i64 %indvars.iv611 to i32
  %i.bva = add nuw nsw i32 %indvars613, 1
  %i.bvb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv611
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 4
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !8
  %i.bve = add nsw i32 %i.bvd, -1
  %invariant.gep918 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv611
  %indvars.iv611.tr = trunc i64 %indvars.iv611 to i32
  %i.bvf = shl i32 %indvars.iv611.tr, 8           ; 2 uses
  %6 = sext i32 %i.bvf to i64
  br label %bb.kj

bb.kj:                                            ; preds = %.lr.ph473, %._crit_edge466
  %indvars.iv608 = phi i64 [ 255, %.lr.ph473 ], [ %indvars.iv.next609, %._crit_edge466 ] ; 3 uses
  %.1249470 = phi i32 [ %.0248477, %.lr.ph473 ], [ %.2250.lcssa, %._crit_edge466 ] ; 3 uses
  %.17469 = phi i32 [ %i.bve, %.lr.ph473 ], [ %.18.lcssa, %._crit_edge466 ] ; 2 uses
  %.idx806 = shl i64 %indvars.iv608, 10
  %gep919 = getelementptr i8, ptr %invariant.gep918, i64 %.idx806 ; 2 uses
  %i.bvg = load i32, ptr %gep919, align 4, !tbaa !8
  %i.bvh = sub i32 %.17469, %i.bvg                ; 2 uses
  store i32 %.17469, ptr %gep919, align 4, !tbaa !8
  %i.bvi = or i64 %indvars.iv608, %6
  %i.bvj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bvi
  %i.bvk = load i32, ptr %i.bvj, align 4, !tbaa !8 ; 2 uses
  %.not461 = icmp sgt i32 %i.bvk, %.1249470
  br i1 %.not461, label %._crit_edge466, label %.lr.ph465.preheader

.lr.ph465.preheader:                              ; preds = %bb.kj
  %i.bvl = sext i32 %.1249470 to i64              ; 6 uses
  %i.bvm = sext i32 %i.bvk to i64                 ; 2 uses
  %i.bvn = sext i32 %i.bvh to i64                 ; 5 uses
  %i.bvo = add nsw i64 %i.bvl, 1
  %i.bvp = sub nsw i64 %i.bvo, %i.bvm             ; 3 uses
  %min.iters.check231 = icmp ult i64 %i.bvp, 8
  br i1 %min.iters.check231, label %.lr.ph465.preheader243, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph465.preheader
  %i.bvq = sub nsw i64 %i.bvl, %i.bvn
  %i.bvr = shl nsw i64 %i.bvq, 2
  %i.bvs = add nsw i64 %i.bvr, -1
  %diff.check = icmp ult i64 %i.bvs, 31
  br i1 %diff.check, label %.lr.ph465.preheader243, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck229
  %n.vec233 = and i64 %i.bvp, -8                  ; 4 uses
  %i.bvt = sub nsw i64 %i.bvn, %n.vec233          ; 2 uses
  %i.bvu = sub nsw i64 %i.bvl, %n.vec233          ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next238, %vector.body234 ] ; 3 uses
  %i.bvv = sub i64 %i.bvn, %index235
  %i.bvw = sub i64 %i.bvl, %index235
  %i.bvx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvw ; 2 uses
  %i.bvy = getelementptr inbounds i8, ptr %i.bvx, i64 -12
  %i.bvz = getelementptr inbounds i8, ptr %i.bvx, i64 -28
  %wide.load236 = load <4 x i32>, ptr %i.bvy, align 4, !tbaa !8
  %wide.load237 = load <4 x i32>, ptr %i.bvz, align 4, !tbaa !8
  %i.bwa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvv ; 2 uses
  %i.bwb = getelementptr inbounds i8, ptr %i.bwa, i64 -12
  %i.bwc = getelementptr inbounds i8, ptr %i.bwa, i64 -28
  store <4 x i32> %wide.load236, ptr %i.bwb, align 4, !tbaa !8
  store <4 x i32> %wide.load237, ptr %i.bwc, align 4, !tbaa !8
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.bwd = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.bwd, label %middle.block239, label %vector.body234, !llvm.loop !108

middle.block239:                                  ; preds = %vector.body234
  %cmp.n240 = icmp eq i64 %i.bvp, %n.vec233
  br i1 %cmp.n240, label %._crit_edge466.loopexit, label %.lr.ph465.preheader243

.lr.ph465.preheader243:                           ; preds = %vector.memcheck229, %.lr.ph465.preheader, %middle.block239
  %indvars.iv603.ph = phi i64 [ %i.bvn, %vector.memcheck229 ], [ %i.bvn, %.lr.ph465.preheader ], [ %i.bvt, %middle.block239 ]
  %indvars.iv601.ph = phi i64 [ %i.bvl, %vector.memcheck229 ], [ %i.bvl, %.lr.ph465.preheader ], [ %i.bvu, %middle.block239 ]
  br label %.lr.ph465

.lr.ph465:                                        ; preds = %.lr.ph465.preheader243, %.lr.ph465
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %.lr.ph465 ], [ %indvars.iv603.ph, %.lr.ph465.preheader243 ] ; 2 uses
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.lr.ph465 ], [ %indvars.iv601.ph, %.lr.ph465.preheader243 ] ; 3 uses
  %i.bwe = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv601
  %i.bwf = load i32, ptr %i.bwe, align 4, !tbaa !8
  %i.bwg = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv603
  store i32 %i.bwf, ptr %i.bwg, align 4, !tbaa !8
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, -1 ; 2 uses
  %indvars.iv.next602 = add nsw i64 %indvars.iv601, -1 ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv601, %i.bvm
  br i1 %.not.not, label %.lr.ph465, label %._crit_edge466.loopexit, !llvm.loop !109

._crit_edge466.loopexit:                          ; preds = %.lr.ph465, %middle.block239
  %indvars.iv.next604.lcssa = phi i64 [ %i.bvt, %middle.block239 ], [ %indvars.iv.next604, %.lr.ph465 ]
  %indvars.iv.next602.lcssa = phi i64 [ %i.bvu, %middle.block239 ], [ %indvars.iv.next602, %.lr.ph465 ]
  %i.bwh = trunc nsw i64 %indvars.iv.next604.lcssa to i32
  %i.bwi = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %bb.kj
  %.18.lcssa = phi i32 [ %i.bvh, %bb.kj ], [ %i.bwh, %._crit_edge466.loopexit ] ; 3 uses
  %.2250.lcssa = phi i32 [ %.1249470, %bb.kj ], [ %i.bwi, %._crit_edge466.loopexit ] ; 2 uses
  %indvars.iv.next609 = add nsw i64 %indvars.iv608, -1 ; 2 uses
  %i.bwj = icmp samesign ult i64 %indvars.iv611, %indvars.iv.next609
  br i1 %i.bwj, label %bb.kj, label %._crit_edge474, !llvm.loop !110

._crit_edge474:                                   ; preds = %._crit_edge466
  %i.bwk = shl i64 %indvars.iv611, 8
  %i.bwl = or i64 %i.bwk, %indvars.iv611
  %i.bwm = and i64 %i.bwl, 4294967295
  %i.bwn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bwm ; 2 uses
  %i.bwo = load i32, ptr %i.bwn, align 4, !tbaa !8
  %i.bwp = add i32 %.18.lcssa, 1
  %i.bwq = sub i32 %i.bwp, %i.bwo
  %i.bwr = or i32 %i.bvf, %i.bva
  %i.bws = zext nneg i32 %i.bwr to i64
  %i.bwt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bws
  store i32 %i.bwq, ptr %i.bwt, align 4, !tbaa !8
  store i32 %.18.lcssa, ptr %i.bwn, align 4, !tbaa !8
  %indvars.iv.next612 = add nsw i64 %indvars.iv611, -1
  %.not = icmp eq i64 %indvars.iv611, 0
  br i1 %.not, label %.loopexit, label %.lr.ph473, !llvm.loop !111

.loopexit:                                        ; preds = %._crit_edge474, %bb.f
  ret i32 %i.bu
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @divbwt(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %3, 2
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %3, 1
  br i1 %i.e, label %bb.d, label %bb.bk

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %0, align 1, !tbaa !9
  store i8 %i.f, ptr %1, align 1, !tbaa !9
  br label %bb.bk

bb.e:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i32 %3, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.070 = phi ptr [ %i.k, %bb.f ], [ %2, %bb.e ]  ; 34 uses
  %i.l = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #7 ; 11 uses
  %i.m = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #7 ; 9 uses
  %i.n = icmp ne ptr %.070, null
  %i.o = icmp ne ptr %i.l, null
  %or.cond5 = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %i.m, null
  %or.cond7 = and i1 %or.cond5, %i.p
  br i1 %or.cond7, label %bb.h, label %bb.bi

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %.070, ptr noundef %i.l, ptr noundef %i.m, i32 noundef %3) ; 2 uses
  %i.r = icmp eq ptr %4, null
  %i.s = icmp eq ptr %5, null
  %or.cond9 = or i1 %i.r, %i.s
  br i1 %or.cond9, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.t = icmp sgt i32 %i.q, 0
  %i.u = ptrtoint ptr %.070 to i64                ; 3 uses
  br i1 %i.t, label %.preheader.i, label %.lr.ph127.i

.preheader.i:                                     ; preds = %bb.i, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 254, %bb.i ] ; 4 uses
  %indvars131.i = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.v = add nuw nsw i32 %indvars131.i, 1
  %i.w = shl i32 %indvars131.i, 8                 ; 3 uses
  %i.x = or i32 %i.w, %i.v
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = sext i32 %i.aa to i64
  %.idx.i = shl nsw i64 %i.ab, 2                  ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.070, i64 %.idx.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = sext i32 %i.af to i64
  %.idx129.i = shl nsw i64 %i.ag, 2               ; 2 uses
  %.not112117.not.i = icmp slt i64 %.idx.i, %.idx129.i
  br i1 %.not112117.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ah = getelementptr i8, ptr %.070, i64 %.idx129.i
  %.096116.i = getelementptr i8, ptr %i.ah, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %.096120.i = phi ptr [ %.096.i, %bb.s ], [ %.096116.i, %.lr.ph.preheader.i ] ; 4 uses
  %.0119.i = phi i32 [ %.2.i, %bb.s ], [ -1, %.lr.ph.preheader.i ] ; 6 uses
  %.090118.i = phi ptr [ %.292.i, %bb.s ], [ null, %.lr.ph.preheader.i ] ; 4 uses
  %i.ai = load i32, ptr %.096120.i, align 4, !tbaa !8 ; 7 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9   ; 2 uses
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %i.ap = xor i32 %i.ao, -1
  store i32 %i.ap, ptr %.096120.i, align 4, !tbaa !8
  %.not114.i = icmp eq i32 %i.ai, 1
  br i1 %.not114.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = icmp ugt i8 %i.at, %i.an
  %i.av = sub nsw i32 0, %i.ai
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.086.i = phi i32 [ 0, %bb.j ], [ %spec.select.i, %bb.k ]
  %.not115.i = icmp eq i32 %.0119.i, %i.ao
  br i1 %.not115.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp sgt i32 %.0119.i, -1
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %.090118.i to i64
  %i.ay = sub i64 %i.ax, %i.u
  %i.az = lshr exact i64 %i.ay, 2
  %i.ba = trunc i64 %i.az to i32
  %i.bb = or i32 %.0119.i, %i.w
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bc
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = or disjoint i32 %i.w, %i.ao
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.bi
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.191.i = phi ptr [ %i.bj, %bb.o ], [ %.090118.i, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ %i.ao, %bb.o ], [ %.0119.i, %bb.l ]
  %i.bk = getelementptr inbounds i8, ptr %.191.i, i64 -4
  store i32 %.086.i, ptr %.191.i, align 4, !tbaa !8
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.i
  %.not113.i = icmp eq i32 %i.ai, 0
  br i1 %.not113.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = xor i32 %i.ai, -1
  store i32 %i.bl, ptr %.096120.i, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.292.i = phi ptr [ %i.bk, %bb.p ], [ %.090118.i, %bb.r ], [ %.090118.i, %bb.q ]
  %.2.i = phi i32 [ %.1.i, %bb.p ], [ %.0119.i, %bb.r ], [ %.0119.i, %bb.q ]
  %.096.i = getelementptr inbounds i8, ptr %.096120.i, i64 -4 ; 2 uses
  %.not112.i = icmp ugt ptr %i.ac, %.096.i
  br i1 %.not112.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %bb.s, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not139.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not139.i, label %.lr.ph127.i, label %.preheader.i, !llvm.loop !113

.lr.ph127.i:                                      ; preds = %._crit_edge.i, %bb.i
  %i.bm = add nsw i32 %3, -1                      ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9   ; 3 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.bt ; 2 uses
  %i.bv = zext nneg i32 %3 to i64                 ; 3 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9   ; 2 uses
  %i.bz = icmp ult i8 %i.by, %i.bp
  %i.ca = zext i8 %i.by to i32
  %i.cb = xor i32 %i.ca, -1
  %i.cc = select i1 %i.bz, i32 %i.cb, i32 %i.bm
  store i32 %i.cc, ptr %i.bu, align 4, !tbaa !8
  %.idx130.i = shl nuw nsw i64 %i.bv, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.070, i64 %.idx130.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cf = zext i8 %i.bp to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.ac, %.lr.ph127.i
  %.3125.i = phi i32 [ %i.cf, %.lr.ph127.i ], [ %.5.i, %bb.ac ] ; 5 uses
  %.088124.i = phi ptr [ %.070, %.lr.ph127.i ], [ %.189.i, %bb.ac ] ; 2 uses
  %.393123.i = phi ptr [ %i.ce, %.lr.ph127.i ], [ %.595.i, %bb.ac ] ; 4 uses
  %.097122.i = phi ptr [ %.070, %.lr.ph127.i ], [ %i.dh, %bb.ac ] ; 5 uses
  %i.cg = load i32, ptr %.097122.i, align 4, !tbaa !8 ; 6 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ci = add nsw i32 %i.cg, -1                   ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9   ; 3 uses
  %i.cm = zext i8 %i.cl to i32                    ; 3 uses
  store i32 %i.cm, ptr %.097122.i, align 4, !tbaa !8
  %.not110.i = icmp eq i32 %i.cg, 1
  br i1 %.not110.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = zext nneg i32 %i.cg to i64
  %i.co = getelementptr i8, ptr %0, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9   ; 2 uses
  %i.cr = icmp ult i8 %i.cq, %i.cl
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cs = zext i8 %i.cq to i32
  %i.ct = xor i32 %i.cs, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.187.i = phi i32 [ %i.ct, %bb.w ], [ %i.ci, %bb.v ], [ 0, %bb.u ]
  %.not111.i = icmp eq i32 %.3125.i, %i.cm
  br i1 %.not111.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = ptrtoint ptr %.393123.i to i64
  %i.cv = sub i64 %i.cu, %i.u
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = zext nneg i32 %.3125.i to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cy
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !8
  %i.da = zext i8 %i.cl to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.dd
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.494.i = phi ptr [ %i.de, %bb.y ], [ %.393123.i, %bb.x ] ; 2 uses
  %.4.i = phi i32 [ %i.cm, %bb.y ], [ %.3125.i, %bb.x ]
  %i.df = getelementptr inbounds nuw i8, ptr %.494.i, i64 4
  store i32 %.187.i, ptr %.494.i, align 4, !tbaa !8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.t
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = xor i32 %i.cg, -1
  store i32 %i.dg, ptr %.097122.i, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.595.i = phi ptr [ %i.df, %bb.z ], [ %.393123.i, %bb.ab ], [ %.393123.i, %bb.aa ]
  %.189.i = phi ptr [ %.088124.i, %bb.z ], [ %.088124.i, %bb.ab ], [ %.097122.i, %bb.aa ] ; 2 uses
  %.5.i = phi i32 [ %.4.i, %bb.z ], [ %.3125.i, %bb.ab ], [ %.3125.i, %bb.aa ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.097122.i, i64 4 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.cd
  br i1 %i.di, label %bb.t, label %construct_BWT.exit, !llvm.loop !114

bb.ad:                                            ; preds = %bb.h
  %i.dj = lshr i32 %3, 3
  %i.dk = lshr i32 %3, 4
  %i.dl = or i32 %i.dj, %i.dk                     ; 2 uses
  %i.dm = lshr i32 %i.dl, 2
  %i.dn = or i32 %i.dm, %i.dl                     ; 2 uses
  %i.do = lshr i32 %i.dn, 4
  %i.dp = or i32 %i.do, %i.dn                     ; 2 uses
  %i.dq = lshr i32 %i.dp, 8
  %i.dr = or i32 %i.dq, %i.dp                     ; 2 uses
  %i.ds = lshr i32 %i.dr, 17
  %i.dt = lshr i32 %i.dr, 1
  %i.du = or i32 %i.ds, %i.dt                     ; 5 uses
  %i.dv = add nsw i32 %3, -1                      ; 4 uses
  %i.dw = add nuw nsw i32 %i.du, 1                ; 4 uses
  %i.dx = udiv i32 %i.dv, %i.dw                   ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %4, align 1, !tbaa !9
  %i.dz = icmp sgt i32 %i.q, 0
  br i1 %i.dz, label %.preheader.i83, label %.loopexit.i

.preheader.i83:                                   ; preds = %bb.ad
  %i.ea = ptrtoint ptr %.070 to i64               ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i87, %.preheader.i83
  %indvars.iv.i84 = phi i64 [ 254, %.preheader.i83 ], [ %indvars.iv.next.i88, %._crit_edge.i87 ] ; 4 uses
  %indvars172.i = trunc i64 %indvars.iv.i84 to i32 ; 2 uses
  %i.eb = add nuw nsw i32 %indvars172.i, 1
  %i.ec = shl i32 %indvars172.i, 8                ; 3 uses
  %i.ed = or i32 %i.ec, %i.eb
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  %i.eh = sext i32 %i.eg to i64
  %.idx.i86 = shl nsw i64 %i.eh, 2                ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.070, i64 %.idx.i86
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i84
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = sext i32 %i.el to i64
  %.idx170.i = shl nsw i64 %i.em, 2               ; 2 uses
  %.not153158.not.i = icmp slt i64 %.idx.i86, %.idx170.i
  br i1 %.not153158.not.i, label %.lr.ph.preheader.i89, label %._crit_edge.i87

.lr.ph.preheader.i89:                             ; preds = %bb.ae
  %i.en = getelementptr i8, ptr %.070, i64 %.idx170.i
  %.0140157.i = getelementptr i8, ptr %i.en, i64 -4
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.aq, %.lr.ph.preheader.i89
  %.0140161.i = phi ptr [ %.0140.i, %bb.aq ], [ %.0140157.i, %.lr.ph.preheader.i89 ] ; 5 uses
  %.0160.i = phi i32 [ %.2.i91, %bb.aq ], [ -1, %.lr.ph.preheader.i89 ] ; 6 uses
  %.0134159.i = phi ptr [ %.2136.i, %bb.aq ], [ null, %.lr.ph.preheader.i89 ] ; 4 uses
  %i.eo = load i32, ptr %.0140161.i, align 4, !tbaa !8 ; 9 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %.lr.ph.i90
  %i.eq = and i32 %i.eo, %i.du
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.es = ptrtoint ptr %.0140161.i to i64
  %i.et = sub i64 %i.es, %i.ea
  %i.eu = lshr exact i64 %i.et, 2
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = udiv i32 %i.eo, %i.dw
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr [4 x i8], ptr %5, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -4
  store i32 %i.ev, ptr %i.ez, align 4, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fa = add nsw i32 %i.eo, -1                   ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9   ; 2 uses
  %i.fe = zext i8 %i.fd to i32                    ; 4 uses
  %i.ff = xor i32 %i.fe, -1
  store i32 %i.ff, ptr %.0140161.i, align 4, !tbaa !8
  %.not155.i = icmp eq i32 %i.eo, 1
  br i1 %.not155.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = zext nneg i32 %i.eo to i64
  %i.fh = getelementptr i8, ptr %0, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 -2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %i.fk = icmp ugt i8 %i.fj, %i.fd
  %i.fl = sub nsw i32 0, %i.eo
  %spec.select.i92 = select i1 %i.fk, i32 %i.fl, i32 %i.fa
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0131.i = phi i32 [ 0, %bb.ah ], [ %spec.select.i92, %bb.ai ]
  %.not156.i = icmp eq i32 %.0160.i, %i.fe
  br i1 %.not156.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fm = icmp sgt i32 %.0160.i, -1
  br i1 %i.fm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fn = ptrtoint ptr %.0134159.i to i64
  %i.fo = sub i64 %i.fn, %i.ea
  %i.fp = lshr exact i64 %i.fo, 2
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = or i32 %.0160.i, %i.ec
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fs
  store i32 %i.fq, ptr %i.ft, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fu = or disjoint i32 %i.ec, %i.fe
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !8
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.fy
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.1135.i = phi ptr [ %i.fz, %bb.am ], [ %.0134159.i, %bb.aj ] ; 2 uses
  %.1.i93 = phi i32 [ %i.fe, %bb.am ], [ %.0160.i, %bb.aj ]
  %i.ga = getelementptr inbounds i8, ptr %.1135.i, i64 -4
  store i32 %.0131.i, ptr %.1135.i, align 4, !tbaa !8
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph.i90
  %.not154.i = icmp eq i32 %i.eo, 0
  br i1 %.not154.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gb = xor i32 %i.eo, -1
  store i32 %i.gb, ptr %.0140161.i, align 4, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.2136.i = phi ptr [ %i.ga, %bb.an ], [ %.0134159.i, %bb.ap ], [ %.0134159.i, %bb.ao ]
  %.2.i91 = phi i32 [ %.1.i93, %bb.an ], [ %.0160.i, %bb.ap ], [ %.0160.i, %bb.ao ]
  %.0140.i = getelementptr inbounds i8, ptr %.0140161.i, i64 -4 ; 2 uses
  %.not153.i = icmp ugt ptr %i.ei, %.0140.i
  br i1 %.not153.i, label %._crit_edge.i87, label %.lr.ph.i90, !llvm.loop !115

._crit_edge.i87:                                  ; preds = %bb.aq, %bb.ae
  %indvars.iv.next.i88 = add nsw i64 %indvars.iv.i84, -1
  %.not183.i = icmp eq i64 %indvars.iv.i84, 0
  br i1 %.not183.i, label %.loopexit.i, label %bb.ae, !llvm.loop !116

.loopexit.i:                                      ; preds = %._crit_edge.i87, %bb.ad
  %i.gc = zext nneg i32 %i.dv to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !9   ; 3 uses
  %i.gf = zext i8 %i.ge to i32
  %i.gg = zext i8 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !8  ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.gj ; 2 uses
  %i.gl = zext nneg i32 %3 to i64                 ; 3 uses
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 -2     ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9   ; 2 uses
  %i.gp = icmp ult i8 %i.go, %i.ge
  br i1 %i.gp, label %bb.ar, label %.lr.ph168.i

bb.ar:                                            ; preds = %.loopexit.i
  %i.gq = and i32 %i.du, %i.dv
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gs = zext nneg i32 %i.dx to i64
  %i.gt = getelementptr [4 x i8], ptr %5, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gt, i64 -4
  store i32 %i.gi, ptr %i.gu, align 4, !tbaa !8
  %.pre.i = load i8, ptr %i.gn, align 1, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gv = phi i8 [ %.pre.i, %bb.as ], [ %i.go, %bb.ar ]
  %i.gw = zext i8 %i.gv to i32
  %i.gx = xor i32 %i.gw, -1
  br label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %bb.at, %.loopexit.i
  %storemerge.i = phi i32 [ %i.gx, %bb.at ], [ %i.dv, %.loopexit.i ]
  store i32 %storemerge.i, ptr %i.gk, align 4, !tbaa !8
  %.idx171.i = shl nuw nsw i64 %i.gl, 2
  %i.gy = getelementptr inbounds nuw i8, ptr %.070, i64 %.idx171.i
  %.3137.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gz = ptrtoint ptr %.070 to i64               ; 4 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.bh, %.lr.ph168.i
  %.3166.i = phi i32 [ %i.gf, %.lr.ph168.i ], [ %.5.i81, %bb.bh ] ; 5 uses
  %.0132165.i = phi ptr [ %.070, %.lr.ph168.i ], [ %.1133.i, %bb.bh ] ; 3 uses
  %.4138164.i = phi ptr [ %.3137.i, %.lr.ph168.i ], [ %.6.i, %bb.bh ] ; 4 uses
  %.0141163.i = phi ptr [ %.070, %.lr.ph168.i ], [ %i.ix, %bb.bh ] ; 6 uses
  %i.ha = load i32, ptr %.0141163.i, align 4, !tbaa !8 ; 8 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %bb.av, label %bb.bf

bb.av:                                            ; preds = %bb.au
  %i.hc = and i32 %i.ha, %i.du
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.he = ptrtoint ptr %.0141163.i to i64
  %i.hf = sub i64 %i.he, %i.gz
  %i.hg = lshr exact i64 %i.hf, 2
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = udiv i32 %i.ha, %i.dw
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr [4 x i8], ptr %5, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 -4
  store i32 %i.hh, ptr %i.hl, align 4, !tbaa !8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hm = add nsw i32 %i.ha, -1                   ; 4 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !9   ; 3 uses
  %i.hq = zext i8 %i.hp to i32                    ; 3 uses
end_hunk_1
