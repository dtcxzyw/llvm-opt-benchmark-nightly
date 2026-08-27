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
  %4 = zext nneg i32 %i.v to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = sext i32 %i.x to i64
  %.idx.i = shl nsw i64 %i.y, 2                   ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = sext i32 %i.ac to i64
  %.idx110.i = shl nsw i64 %i.ad, 2               ; 2 uses
  %.not9599.not.i = icmp slt i64 %.idx.i, %.idx110.i
  br i1 %.not9599.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ae = getelementptr i8, ptr %1, i64 %.idx110.i
  %.08498.i = getelementptr i8, ptr %i.ae, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.084102.i = phi ptr [ %.084.i, %bb.n ], [ %.08498.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0101.i = phi i32 [ %.2.i, %bb.n ], [ -1, %.lr.ph.preheader.i ] ; 5 uses
  %.078100.i = phi ptr [ %.280.i, %bb.n ], [ null, %.lr.ph.preheader.i ] ; 3 uses
  %i.af = load i32, ptr %.084102.i, align 4, !tbaa !8 ; 6 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = xor i32 %i.af, -1
  store i32 %i.ah, ptr %.084102.i, align 4, !tbaa !8
  br i1 %i.ag, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph.i
  %i.ai = add nsw i32 %i.af, -1                   ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9   ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %.not96.i = icmp eq i32 %i.af, 1
  br i1 %.not96.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = zext nneg i32 %i.af to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = icmp ugt i8 %i.aq, %i.al
  %i.as = sub nsw i32 0, %i.af
  %spec.select.i = select i1 %i.ar, i32 %i.as, i32 %i.ai
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.076.i = phi i32 [ 0, %bb.g ], [ %spec.select.i, %bb.h ]
  %.not97.i = icmp eq i32 %.0101.i, %i.am
  br i1 %.not97.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = icmp sgt i32 %.0101.i, -1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %.078100.i to i64
  %i.av = sub i64 %i.au, %i.s
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = or i32 %.0101.i, %i.u
  %5 = zext nneg i32 %i.ay to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %5
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = or disjoint i32 %i.u, %i.am
  %6 = zext nneg i32 %i.ba to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %6
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.179.i = phi ptr [ %i.be, %bb.l ], [ %.078100.i, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ %i.am, %bb.l ], [ %.0101.i, %bb.i ]
  %i.bf = getelementptr inbounds i8, ptr %.179.i, i64 -4
  store i32 %.076.i, ptr %.179.i, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.280.i = phi ptr [ %i.bf, %bb.m ], [ %.078100.i, %.lr.ph.i ]
  %.2.i = phi i32 [ %.1.i, %bb.m ], [ %.0101.i, %.lr.ph.i ]
  %.084.i = getelementptr inbounds i8, ptr %.084102.i, i64 -4 ; 2 uses
  %.not95.i = icmp ugt ptr %i.z, %.084.i
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.n, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not120.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not120.i, label %.lr.ph108.i, label %.preheader.i, !llvm.loop !12

.lr.ph108.i:                                      ; preds = %._crit_edge.i, %bb.f
  %i.bg = add nsw i32 %2, -1                      ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9   ; 3 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bn ; 2 uses
  %i.bp = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bt = icmp ult i8 %i.bs, %i.bj
  %i.bu = sub nsw i32 0, %2
  %i.bv = select i1 %i.bt, i32 %i.bu, i32 %i.bg
  store i32 %i.bv, ptr %i.bo, align 4, !tbaa !8
  %.idx111.i = shl nuw nsw i64 %i.bp, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx111.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.by = zext i8 %i.bj to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph108.i
  %.3106.i = phi i32 [ %i.by, %.lr.ph108.i ], [ %.5.i, %bb.w ] ; 4 uses
  %.381105.i = phi ptr [ %i.bx, %.lr.ph108.i ], [ %.583.i, %bb.w ] ; 3 uses
  %.085104.i = phi ptr [ %1, %.lr.ph108.i ], [ %i.da, %bb.w ] ; 3 uses
  %i.bz = load i32, ptr %.085104.i, align 4, !tbaa !8 ; 5 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.cb = add nsw i32 %i.bz, -1                   ; 3 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9   ; 3 uses
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = icmp eq i32 %i.cb, 0
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = zext nneg i32 %i.bz to i64
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cl = icmp ult i8 %i.ck, %i.ce
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cm = sub nsw i32 0, %i.bz
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.177.i = phi i32 [ %i.cm, %bb.r ], [ %i.cb, %bb.q ]
  %.not.i = icmp eq i32 %.3106.i, %i.cf
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = ptrtoint ptr %.381105.i to i64
  %i.co = sub i64 %i.cn, %i.s
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = zext nneg i32 %.3106.i to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !8
  %i.ct = zext i8 %i.ce to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.482.i = phi ptr [ %i.cx, %bb.t ], [ %.381105.i, %bb.s ] ; 2 uses
  %.4.i = phi i32 [ %i.cf, %bb.t ], [ %.3106.i, %bb.s ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.482.i, i64 4
  store i32 %.177.i, ptr %.482.i, align 4, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.cz = xor i32 %i.bz, -1
  store i32 %i.cz, ptr %.085104.i, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.583.i = phi ptr [ %i.cy, %bb.u ], [ %.381105.i, %bb.v ]
  %.5.i = phi i32 [ %.4.i, %bb.u ], [ %.3106.i, %bb.v ]
  %i.da = getelementptr inbounds nuw i8, ptr %.085104.i, i64 4 ; 2 uses
  %i.db = icmp ult ptr %i.da, %i.bw
  br i1 %i.db, label %bb.o, label %construct_SA.exit, !llvm.loop !13

construct_SA.exit:                                ; preds = %bb.w, %bb.e
  %.0 = phi i32 [ -2, %bb.e ], [ 0, %bb.w ]
  tail call void @free(ptr noundef %i.n) #8
  tail call void @free(ptr noundef %i.m) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %construct_SA.exit, %bb.d, %bb.c
  %.035 = phi i32 [ %.0, %construct_SA.exit ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ %2, %bb.b ]
  ret i32 %.035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483645, -2147483648) i32 @sort_typeBstar(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 262144)) %3, i32 noundef range(i32 2, -2147483648) %4) unnamed_addr #3 {
.preheader340.preheader:
  %5 = alloca [64 x %struct.anon.1], align 16     ; 30 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !8
  %i.a = add nsw i32 %4, -1                       ; 4 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9     ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !8
  %.not32198103 = icmp eq i32 %i.a, 0
  br i1 %.not32198103, label %.loopexit826, label %.lr.ph101.lr.ph

.lr.ph101.lr.ph:                                  ; preds = %.preheader340.preheader
  %i.i = zext i8 %i.d to i32
  br label %.lr.ph101

.preheader338.loopexit:                           ; preds = %.lr.ph
  %i.j = zext i8 %i.al to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !8
  %.not32198 = icmp eq i32 %.4261419, 0
  br i1 %.not32198, label %.loopexit826, label %.lr.ph101, !llvm.loop !14

.lr.ph101:                                        ; preds = %.lr.ph101.lr.ph, %.preheader338.loopexit
  %.in = phi i32 [ %i.a, %.lr.ph101.lr.ph ], [ %.4261419, %.preheader338.loopexit ]
  %.0246426105 = phi i32 [ %4, %.lr.ph101.lr.ph ], [ %i.ae, %.preheader338.loopexit ] ; 2 uses
  %.0240427104 = phi i32 [ %i.i, %.lr.ph101.lr.ph ], [ %i.am, %.preheader338.loopexit ]
  %i.n = zext i32 %.in to i64
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.o = zext i8 %i.u to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !8
  %.not321 = icmp eq i64 %i.s, 0
  br i1 %.not321, label %.loopexit826, label %bb.b, !llvm.loop !15

bb.b:                                             ; preds = %.lr.ph101, %bb.a
  %.1241100 = phi i32 [ %.0240427104, %.lr.ph101 ], [ %i.v, %bb.a ] ; 2 uses
  %indvars.iv99 = phi i64 [ %i.n, %.lr.ph101 ], [ %i.s, %bb.a ] ; 2 uses
  %i.s = add nsw i64 %indvars.iv99, -1            ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9     ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 4 uses
  %.not289 = icmp sgt i32 %.1241100, %i.v
  br i1 %.not289, label %bb.c, label %bb.a, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.w = trunc nuw i64 %indvars.iv99 to i32       ; 2 uses
  %i.x = trunc nuw i64 %i.s to i32
  %i.y = shl nuw nsw i32 %i.v, 8
  %i.z = or i32 %i.y, %.1241100
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@sort_typeBstar:.preheader340.preheader
  %i.bsg = add nsw i32 %i.bsf, 16
  br label %tr_ilg.exit585.i.i

bb.js:                                            ; preds = %bb.jo
  %.not7.i584.i.i = icmp samesign ult i32 %i.th, 256
  br i1 %.not7.i584.i.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bsh = lshr i64 %i.tf, 8
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
  %i.bvg = sext i32 %i.bvf to i64
  br label %bb.kj

bb.kj:                                            ; preds = %.lr.ph473, %._crit_edge466
  %indvars.iv608 = phi i64 [ 255, %.lr.ph473 ], [ %indvars.iv.next609, %._crit_edge466 ] ; 3 uses
  %.1249470 = phi i32 [ %.0248477, %.lr.ph473 ], [ %.2250.lcssa, %._crit_edge466 ] ; 3 uses
  %.17469 = phi i32 [ %i.bve, %.lr.ph473 ], [ %.18.lcssa, %._crit_edge466 ] ; 2 uses
  %.idx806 = shl i64 %indvars.iv608, 10
  %gep919 = getelementptr i8, ptr %invariant.gep918, i64 %.idx806 ; 2 uses
  %i.bvh = load i32, ptr %gep919, align 4, !tbaa !8
  %i.bvi = sub i32 %.17469, %i.bvh                ; 2 uses
  store i32 %.17469, ptr %gep919, align 4, !tbaa !8
  %i.bvj = or i64 %indvars.iv608, %i.bvg
  %i.bvk = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bvj
  %i.bvl = load i32, ptr %i.bvk, align 4, !tbaa !8 ; 2 uses
  %.not461 = icmp sgt i32 %i.bvl, %.1249470
  br i1 %.not461, label %._crit_edge466, label %.lr.ph465.preheader

.lr.ph465.preheader:                              ; preds = %bb.kj
  %i.bvm = sext i32 %.1249470 to i64              ; 6 uses
  %i.bvn = sext i32 %i.bvl to i64                 ; 2 uses
  %i.bvo = sext i32 %i.bvi to i64                 ; 5 uses
  %i.bvp = add nsw i64 %i.bvm, 1
  %i.bvq = sub nsw i64 %i.bvp, %i.bvn             ; 3 uses
  %min.iters.check231 = icmp ult i64 %i.bvq, 8
  br i1 %min.iters.check231, label %.lr.ph465.preheader243, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph465.preheader
  %i.bvr = sub nsw i64 %i.bvm, %i.bvo
  %i.bvs = shl nsw i64 %i.bvr, 2
  %i.bvt = add nsw i64 %i.bvs, -1
  %diff.check = icmp ult i64 %i.bvt, 31
  br i1 %diff.check, label %.lr.ph465.preheader243, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck229
  %n.vec233 = and i64 %i.bvq, -8                  ; 4 uses
  %i.bvu = sub nsw i64 %i.bvo, %n.vec233          ; 2 uses
  %i.bvv = sub nsw i64 %i.bvm, %n.vec233          ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next238, %vector.body234 ] ; 3 uses
  %i.bvw = sub i64 %i.bvo, %index235
  %i.bvx = sub i64 %i.bvm, %index235
  %i.bvy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvx ; 2 uses
  %i.bvz = getelementptr inbounds i8, ptr %i.bvy, i64 -12
  %i.bwa = getelementptr inbounds i8, ptr %i.bvy, i64 -28
  %wide.load236 = load <4 x i32>, ptr %i.bvz, align 4, !tbaa !8
  %wide.load237 = load <4 x i32>, ptr %i.bwa, align 4, !tbaa !8
  %i.bwb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvw ; 2 uses
  %i.bwc = getelementptr inbounds i8, ptr %i.bwb, i64 -12
  %i.bwd = getelementptr inbounds i8, ptr %i.bwb, i64 -28
  store <4 x i32> %wide.load236, ptr %i.bwc, align 4, !tbaa !8
  store <4 x i32> %wide.load237, ptr %i.bwd, align 4, !tbaa !8
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.bwe = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.bwe, label %middle.block239, label %vector.body234, !llvm.loop !108

middle.block239:                                  ; preds = %vector.body234
  %cmp.n240 = icmp eq i64 %i.bvq, %n.vec233
  br i1 %cmp.n240, label %._crit_edge466.loopexit, label %.lr.ph465.preheader243

.lr.ph465.preheader243:                           ; preds = %vector.memcheck229, %.lr.ph465.preheader, %middle.block239
  %indvars.iv603.ph = phi i64 [ %i.bvo, %vector.memcheck229 ], [ %i.bvo, %.lr.ph465.preheader ], [ %i.bvu, %middle.block239 ]
  %indvars.iv601.ph = phi i64 [ %i.bvm, %vector.memcheck229 ], [ %i.bvm, %.lr.ph465.preheader ], [ %i.bvv, %middle.block239 ]
  br label %.lr.ph465

.lr.ph465:                                        ; preds = %.lr.ph465.preheader243, %.lr.ph465
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %.lr.ph465 ], [ %indvars.iv603.ph, %.lr.ph465.preheader243 ] ; 2 uses
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.lr.ph465 ], [ %indvars.iv601.ph, %.lr.ph465.preheader243 ] ; 3 uses
  %i.bwf = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv601
  %i.bwg = load i32, ptr %i.bwf, align 4, !tbaa !8
  %i.bwh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv603
  store i32 %i.bwg, ptr %i.bwh, align 4, !tbaa !8
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, -1 ; 2 uses
  %indvars.iv.next602 = add nsw i64 %indvars.iv601, -1 ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv601, %i.bvn
  br i1 %.not.not, label %.lr.ph465, label %._crit_edge466.loopexit, !llvm.loop !109

._crit_edge466.loopexit:                          ; preds = %.lr.ph465, %middle.block239
  %indvars.iv.next604.lcssa = phi i64 [ %i.bvu, %middle.block239 ], [ %indvars.iv.next604, %.lr.ph465 ]
  %indvars.iv.next602.lcssa = phi i64 [ %i.bvv, %middle.block239 ], [ %indvars.iv.next602, %.lr.ph465 ]
  %i.bwi = trunc nsw i64 %indvars.iv.next604.lcssa to i32
  %i.bwj = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %bb.kj
  %.18.lcssa = phi i32 [ %i.bvi, %bb.kj ], [ %i.bwi, %._crit_edge466.loopexit ] ; 3 uses
  %.2250.lcssa = phi i32 [ %.1249470, %bb.kj ], [ %i.bwj, %._crit_edge466.loopexit ] ; 2 uses
  %indvars.iv.next609 = add nsw i64 %indvars.iv608, -1 ; 2 uses
  %i.bwk = icmp samesign ult i64 %indvars.iv611, %indvars.iv.next609
  br i1 %i.bwk, label %bb.kj, label %._crit_edge474, !llvm.loop !110

._crit_edge474:                                   ; preds = %._crit_edge466
  %6 = shl i64 %indvars.iv611, 8
  %7 = or i64 %6, %indvars.iv611
  %8 = and i64 %7, 4294967295
  %i.bwl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %8 ; 2 uses
  %i.bwm = load i32, ptr %i.bwl, align 4, !tbaa !8
  %i.bwn = add i32 %.18.lcssa, 1
  %i.bwo = sub i32 %i.bwn, %i.bwm
  %i.bwp = or i32 %i.bvf, %i.bva
  %9 = zext nneg i32 %i.bwp to i64
  %i.bwq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %9
  store i32 %i.bwo, ptr %i.bwq, align 4, !tbaa !8
  store i32 %.18.lcssa, ptr %i.bwl, align 4, !tbaa !8
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
  %7 = zext nneg i32 %i.x to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %7
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = sext i32 %i.z to i64
  %.idx.i = shl nsw i64 %i.aa, 2                  ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.070, i64 %.idx.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = sext i32 %i.ae to i64
  %.idx129.i = shl nsw i64 %i.af, 2               ; 2 uses
  %.not112117.not.i = icmp slt i64 %.idx.i, %.idx129.i
  br i1 %.not112117.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ag = getelementptr i8, ptr %.070, i64 %.idx129.i
  %.096116.i = getelementptr i8, ptr %i.ag, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %.096120.i = phi ptr [ %.096.i, %bb.s ], [ %.096116.i, %.lr.ph.preheader.i ] ; 4 uses
  %.0119.i = phi i32 [ %.2.i, %bb.s ], [ -1, %.lr.ph.preheader.i ] ; 6 uses
  %.090118.i = phi ptr [ %.292.i, %bb.s ], [ null, %.lr.ph.preheader.i ] ; 4 uses
  %i.ah = load i32, ptr %.096120.i, align 4, !tbaa !8 ; 7 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.ah, -1                   ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 4 uses
  %i.ao = xor i32 %i.an, -1
  store i32 %i.ao, ptr %.096120.i, align 4, !tbaa !8
  %.not114.i = icmp eq i32 %i.ah, 1
  br i1 %.not114.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = zext nneg i32 %i.ah to i64
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = icmp ugt i8 %i.as, %i.am
  %i.au = sub nsw i32 0, %i.ah
  %spec.select.i = select i1 %i.at, i32 %i.au, i32 %i.aj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.086.i = phi i32 [ 0, %bb.j ], [ %spec.select.i, %bb.k ]
  %.not115.i = icmp eq i32 %.0119.i, %i.an
  br i1 %.not115.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = icmp sgt i32 %.0119.i, -1
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = ptrtoint ptr %.090118.i to i64
  %i.ax = sub i64 %i.aw, %i.u
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = trunc i64 %i.ay to i32
  %i.ba = or i32 %.0119.i, %i.w
  %8 = zext nneg i32 %i.ba to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %8
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = or disjoint i32 %i.w, %i.an
  %9 = zext nneg i32 %i.bc to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %9
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.bf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.191.i = phi ptr [ %i.bg, %bb.o ], [ %.090118.i, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ %i.an, %bb.o ], [ %.0119.i, %bb.l ]
  %i.bh = getelementptr inbounds i8, ptr %.191.i, i64 -4
  store i32 %.086.i, ptr %.191.i, align 4, !tbaa !8
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.i
  %.not113.i = icmp eq i32 %i.ah, 0
  br i1 %.not113.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = xor i32 %i.ah, -1
  store i32 %i.bi, ptr %.096120.i, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.292.i = phi ptr [ %i.bh, %bb.p ], [ %.090118.i, %bb.r ], [ %.090118.i, %bb.q ]
  %.2.i = phi i32 [ %.1.i, %bb.p ], [ %.0119.i, %bb.r ], [ %.0119.i, %bb.q ]
  %.096.i = getelementptr inbounds i8, ptr %.096120.i, i64 -4 ; 2 uses
  %.not112.i = icmp ugt ptr %i.ab, %.096.i
  br i1 %.not112.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %bb.s, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not139.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not139.i, label %.lr.ph127.i, label %.preheader.i, !llvm.loop !113

.lr.ph127.i:                                      ; preds = %._crit_edge.i, %bb.i
  %i.bj = add nsw i32 %3, -1                      ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9   ; 3 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.bq ; 2 uses
  %i.bs = zext nneg i32 %3 to i64                 ; 3 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9   ; 2 uses
  %i.bw = icmp ult i8 %i.bv, %i.bm
  %i.bx = zext i8 %i.bv to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = select i1 %i.bw, i32 %i.by, i32 %i.bj
  store i32 %i.bz, ptr %i.br, align 4, !tbaa !8
  %.idx130.i = shl nuw nsw i64 %i.bs, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.070, i64 %.idx130.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cc = zext i8 %i.bm to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.ac, %.lr.ph127.i
  %.3125.i = phi i32 [ %i.cc, %.lr.ph127.i ], [ %.5.i, %bb.ac ] ; 5 uses
  %.088124.i = phi ptr [ %.070, %.lr.ph127.i ], [ %.189.i, %bb.ac ] ; 2 uses
  %.393123.i = phi ptr [ %i.cb, %.lr.ph127.i ], [ %.595.i, %bb.ac ] ; 4 uses
  %.097122.i = phi ptr [ %.070, %.lr.ph127.i ], [ %i.de, %bb.ac ] ; 5 uses
  %i.cd = load i32, ptr %.097122.i, align 4, !tbaa !8 ; 6 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cf = add nsw i32 %i.cd, -1                   ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9   ; 3 uses
  %i.cj = zext i8 %i.ci to i32                    ; 3 uses
  store i32 %i.cj, ptr %.097122.i, align 4, !tbaa !8
  %.not110.i = icmp eq i32 %i.cd, 1
  br i1 %.not110.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = zext nneg i32 %i.cd to i64
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9   ; 2 uses
  %i.co = icmp ult i8 %i.cn, %i.ci
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = zext i8 %i.cn to i32
  %i.cq = xor i32 %i.cp, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.187.i = phi i32 [ %i.cq, %bb.w ], [ %i.cf, %bb.v ], [ 0, %bb.u ]
  %.not111.i = icmp eq i32 %.3125.i, %i.cj
  br i1 %.not111.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = ptrtoint ptr %.393123.i to i64
  %i.cs = sub i64 %i.cr, %i.u
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = zext nneg i32 %.3125.i to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cv
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !8
  %i.cx = zext i8 %i.ci to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.da
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.494.i = phi ptr [ %i.db, %bb.y ], [ %.393123.i, %bb.x ] ; 2 uses
  %.4.i = phi i32 [ %i.cj, %bb.y ], [ %.3125.i, %bb.x ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.494.i, i64 4
  store i32 %.187.i, ptr %.494.i, align 4, !tbaa !8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.t
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = xor i32 %i.cd, -1
  store i32 %i.dd, ptr %.097122.i, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.595.i = phi ptr [ %i.dc, %bb.z ], [ %.393123.i, %bb.ab ], [ %.393123.i, %bb.aa ]
  %.189.i = phi ptr [ %.088124.i, %bb.z ], [ %.088124.i, %bb.ab ], [ %.097122.i, %bb.aa ] ; 2 uses
  %.5.i = phi i32 [ %.4.i, %bb.z ], [ %.3125.i, %bb.ab ], [ %.3125.i, %bb.aa ]
  %i.de = getelementptr inbounds nuw i8, ptr %.097122.i, i64 4 ; 2 uses
  %i.df = icmp ult ptr %i.de, %i.ca
  br i1 %i.df, label %bb.t, label %construct_BWT.exit, !llvm.loop !114

bb.ad:                                            ; preds = %bb.h
  %i.dg = lshr i32 %3, 3
  %i.dh = lshr i32 %3, 4
  %i.di = or i32 %i.dg, %i.dh                     ; 2 uses
  %i.dj = lshr i32 %i.di, 2
  %i.dk = or i32 %i.dj, %i.di                     ; 2 uses
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = or i32 %i.dl, %i.dk                     ; 2 uses
  %i.dn = lshr i32 %i.dm, 8
  %i.do = or i32 %i.dn, %i.dm                     ; 2 uses
  %i.dp = lshr i32 %i.do, 17
  %i.dq = lshr i32 %i.do, 1
  %i.dr = or i32 %i.dp, %i.dq                     ; 5 uses
  %i.ds = add nsw i32 %3, -1                      ; 4 uses
  %i.dt = add nuw nsw i32 %i.dr, 1                ; 4 uses
  %i.du = udiv i32 %i.ds, %i.dt                   ; 2 uses
  %i.dv = trunc i32 %i.du to i8
  store i8 %i.dv, ptr %4, align 1, !tbaa !9
  %i.dw = icmp sgt i32 %i.q, 0
  br i1 %i.dw, label %.preheader.i83, label %.loopexit.i

.preheader.i83:                                   ; preds = %bb.ad
  %i.dx = ptrtoint ptr %.070 to i64               ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i87, %.preheader.i83
  %indvars.iv.i84 = phi i64 [ 254, %.preheader.i83 ], [ %indvars.iv.next.i88, %._crit_edge.i87 ] ; 4 uses
  %indvars172.i = trunc i64 %indvars.iv.i84 to i32 ; 2 uses
  %i.dy = add nuw nsw i32 %indvars172.i, 1
  %i.dz = shl i32 %indvars172.i, 8                ; 3 uses
  %i.ea = or i32 %i.dz, %i.dy
  %10 = zext nneg i32 %i.ea to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %10
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = sext i32 %i.ec to i64
  %.idx.i86 = shl nsw i64 %i.ed, 2                ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.070, i64 %.idx.i86
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i84
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = sext i32 %i.eh to i64
  %.idx170.i = shl nsw i64 %i.ei, 2               ; 2 uses
  %.not153158.not.i = icmp slt i64 %.idx.i86, %.idx170.i
  br i1 %.not153158.not.i, label %.lr.ph.preheader.i89, label %._crit_edge.i87

.lr.ph.preheader.i89:                             ; preds = %bb.ae
  %i.ej = getelementptr i8, ptr %.070, i64 %.idx170.i
  %.0140157.i = getelementptr i8, ptr %i.ej, i64 -4
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.aq, %.lr.ph.preheader.i89
  %.0140161.i = phi ptr [ %.0140.i, %bb.aq ], [ %.0140157.i, %.lr.ph.preheader.i89 ] ; 5 uses
  %.0160.i = phi i32 [ %.2.i91, %bb.aq ], [ -1, %.lr.ph.preheader.i89 ] ; 6 uses
  %.0134159.i = phi ptr [ %.2136.i, %bb.aq ], [ null, %.lr.ph.preheader.i89 ] ; 4 uses
  %i.ek = load i32, ptr %.0140161.i, align 4, !tbaa !8 ; 9 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %.lr.ph.i90
  %i.em = and i32 %i.ek, %i.dr
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = ptrtoint ptr %.0140161.i to i64
  %i.ep = sub i64 %i.eo, %i.dx
  %i.eq = lshr exact i64 %i.ep, 2
  %i.er = trunc i64 %i.eq to i32
  %i.es = udiv i32 %i.ek, %i.dt
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr [4 x i8], ptr %5, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 -4
  store i32 %i.er, ptr %i.ev, align 4, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ew = add nsw i32 %i.ek, -1                   ; 2 uses
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9   ; 2 uses
  %i.fa = zext i8 %i.ez to i32                    ; 4 uses
  %i.fb = xor i32 %i.fa, -1
  store i32 %i.fb, ptr %.0140161.i, align 4, !tbaa !8
  %.not155.i = icmp eq i32 %i.ek, 1
  br i1 %.not155.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = zext nneg i32 %i.ek to i64
  %i.fd = getelementptr i8, ptr %0, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -2
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !9
  %i.fg = icmp ugt i8 %i.ff, %i.ez
  %i.fh = sub nsw i32 0, %i.ek
  %spec.select.i92 = select i1 %i.fg, i32 %i.fh, i32 %i.ew
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0131.i = phi i32 [ 0, %bb.ah ], [ %spec.select.i92, %bb.ai ]
  %.not156.i = icmp eq i32 %.0160.i, %i.fa
  br i1 %.not156.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = icmp sgt i32 %.0160.i, -1
  br i1 %i.fi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fj = ptrtoint ptr %.0134159.i to i64
  %i.fk = sub i64 %i.fj, %i.dx
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = or i32 %.0160.i, %i.dz
  %11 = zext nneg i32 %i.fn to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %11
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fp = or disjoint i32 %i.dz, %i.fa
  %12 = zext nneg i32 %i.fp to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !8
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.fs
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.1135.i = phi ptr [ %i.ft, %bb.am ], [ %.0134159.i, %bb.aj ] ; 2 uses
  %.1.i93 = phi i32 [ %i.fa, %bb.am ], [ %.0160.i, %bb.aj ]
  %i.fu = getelementptr inbounds i8, ptr %.1135.i, i64 -4
  store i32 %.0131.i, ptr %.1135.i, align 4, !tbaa !8
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph.i90
  %.not154.i = icmp eq i32 %i.ek, 0
  br i1 %.not154.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fv = xor i32 %i.ek, -1
  store i32 %i.fv, ptr %.0140161.i, align 4, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.2136.i = phi ptr [ %i.fu, %bb.an ], [ %.0134159.i, %bb.ap ], [ %.0134159.i, %bb.ao ]
  %.2.i91 = phi i32 [ %.1.i93, %bb.an ], [ %.0160.i, %bb.ap ], [ %.0160.i, %bb.ao ]
  %.0140.i = getelementptr inbounds i8, ptr %.0140161.i, i64 -4 ; 2 uses
  %.not153.i = icmp ugt ptr %i.ee, %.0140.i
  br i1 %.not153.i, label %._crit_edge.i87, label %.lr.ph.i90, !llvm.loop !115

._crit_edge.i87:                                  ; preds = %bb.aq, %bb.ae
  %indvars.iv.next.i88 = add nsw i64 %indvars.iv.i84, -1
  %.not183.i = icmp eq i64 %indvars.iv.i84, 0
  br i1 %.not183.i, label %.loopexit.i, label %bb.ae, !llvm.loop !116

.loopexit.i:                                      ; preds = %._crit_edge.i87, %bb.ad
  %i.fw = zext nneg i32 %i.ds to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !9   ; 3 uses
  %i.fz = zext i8 %i.fy to i32
  %i.ga = zext i8 %i.fy to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8  ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.gd ; 2 uses
  %i.gf = zext nneg i32 %3 to i64                 ; 3 uses
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 -2     ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !9   ; 2 uses
  %i.gj = icmp ult i8 %i.gi, %i.fy
  br i1 %i.gj, label %bb.ar, label %.lr.ph168.i

bb.ar:                                            ; preds = %.loopexit.i
  %i.gk = and i32 %i.dr, %i.ds
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gm = zext nneg i32 %i.du to i64
  %i.gn = getelementptr [4 x i8], ptr %5, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 -4
  store i32 %i.gc, ptr %i.go, align 4, !tbaa !8
  %.pre.i = load i8, ptr %i.gh, align 1, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gp = phi i8 [ %.pre.i, %bb.as ], [ %i.gi, %bb.ar ]
  %i.gq = zext i8 %i.gp to i32
  %i.gr = xor i32 %i.gq, -1
  br label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %bb.at, %.loopexit.i
  %storemerge.i = phi i32 [ %i.gr, %bb.at ], [ %i.ds, %.loopexit.i ]
  store i32 %storemerge.i, ptr %i.ge, align 4, !tbaa !8
  %.idx171.i = shl nuw nsw i64 %i.gf, 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.070, i64 %.idx171.i
  %.3137.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gt = ptrtoint ptr %.070 to i64               ; 4 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.bh, %.lr.ph168.i
  %.3166.i = phi i32 [ %i.fz, %.lr.ph168.i ], [ %.5.i81, %bb.bh ] ; 5 uses
  %.0132165.i = phi ptr [ %.070, %.lr.ph168.i ], [ %.1133.i, %bb.bh ] ; 3 uses
  %.4138164.i = phi ptr [ %.3137.i, %.lr.ph168.i ], [ %.6.i, %bb.bh ] ; 4 uses
  %.0141163.i = phi ptr [ %.070, %.lr.ph168.i ], [ %i.ir, %bb.bh ] ; 6 uses
  %i.gu = load i32, ptr %.0141163.i, align 4, !tbaa !8 ; 8 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %bb.av, label %bb.bf

bb.av:                                            ; preds = %bb.au
  %i.gw = and i32 %i.gu, %i.dr
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gy = ptrtoint ptr %.0141163.i to i64
  %i.gz = sub i64 %i.gy, %i.gt
  %i.ha = lshr exact i64 %i.gz, 2
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = udiv i32 %i.gu, %i.dt
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr [4 x i8], ptr %5, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -4
  store i32 %i.hb, ptr %i.hf, align 4, !tbaa !8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hg = add nsw i32 %i.gu, -1                   ; 4 uses
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9   ; 3 uses
  %i.hk = zext i8 %i.hj to i32                    ; 3 uses
  store i32 %i.hk, ptr %.0141163.i, align 4, !tbaa !8
  %.not151.i = icmp eq i32 %.3166.i, %i.hk
  br i1 %.not151.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hl = ptrtoint ptr %.4138164.i to i64
  %i.hm = sub i64 %i.hl, %i.gt
  %i.hn = lshr exact i64 %i.hm, 2
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = zext nneg i32 %.3166.i to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hp
  store i32 %i.ho, ptr %i.hq, align 4, !tbaa !8
  %i.hr = zext i8 %i.hj to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !8
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.hu
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.5139.i = phi ptr [ %i.hv, %bb.ay ], [ %.4138164.i, %bb.ax ] ; 5 uses
  %.4.i82 = phi i32 [ %i.hk, %bb.ay ], [ %.3166.i, %bb.ax ] ; 2 uses
  %.not152.i = icmp eq i32 %i.gu, 1
  br i1 %.not152.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hw = zext nneg i32 %i.gu to i64
  %i.hx = getelementptr i8, ptr %0, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -2     ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !9   ; 2 uses
  %i.ia = icmp ult i8 %i.hz, %i.hj
  br i1 %i.ia, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.ib = and i32 %i.hg, %i.dr
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.id = ptrtoint ptr %.5139.i to i64
  %i.ie = sub i64 %i.id, %i.gt
  %i.if = lshr exact i64 %i.ie, 2
  %i.ig = trunc i64 %i.if to i32
  %i.ih = udiv i32 %i.hg, %i.dt
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr [4 x i8], ptr %5, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -4
  store i32 %i.ig, ptr %i.ik, align 4, !tbaa !8
  %.pre173.i = load i8, ptr %i.hy, align 1, !tbaa !9
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.il = phi i8 [ %.pre173.i, %bb.bc ], [ %i.hz, %bb.bb ]
  %i.im = zext i8 %i.il to i32
  %i.in = xor i32 %i.im, -1
  %i.io = getelementptr inbounds nuw i8, ptr %.5139.i, i64 4
  store i32 %i.in, ptr %.5139.i, align 4, !tbaa !8
  br label %bb.bh

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %.5139.i, i64 4
  store i32 %i.hg, ptr %.5139.i, align 4, !tbaa !8
  br label %bb.bh

bb.bf:                                            ; preds = %bb.au
  %.not.i80 = icmp eq i32 %i.gu, 0
  br i1 %.not.i80, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iq = xor i32 %i.gu, -1
  store i32 %i.iq, ptr %.0141163.i, align 4, !tbaa !8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.6.i = phi ptr [ %i.io, %bb.bd ], [ %i.ip, %bb.be ], [ %.4138164.i, %bb.bg ], [ %.4138164.i, %bb.bf ]
  %.1133.i = phi ptr [ %.0132165.i, %bb.bd ], [ %.0132165.i, %bb.be ], [ %.0132165.i, %bb.bg ], [ %.0141163.i, %bb.bf ] ; 2 uses
  %.5.i81 = phi i32 [ %.4.i82, %bb.bd ], [ %.4.i82, %bb.be ], [ %.3166.i, %bb.bg ], [ %.3166.i, %bb.bf ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.0141163.i, i64 4 ; 2 uses
  %i.is = icmp ult ptr %i.ir, %i.gs
  br i1 %i.is, label %bb.au, label %construct_BWT.exit, !llvm.loop !117

construct_BWT.exit:                               ; preds = %bb.bh, %bb.ac
  %.1133.i.lcssa.sink = phi ptr [ %.189.i, %bb.ac ], [ %.1133.i, %bb.bh ]
  %.sink126 = phi i64 [ %i.u, %bb.ac ], [ %i.gt, %bb.bh ]
  %.pre-phi = phi i64 [ %i.bs, %bb.ac ], [ %i.gf, %bb.bh ]
  %i.it = ptrtoint ptr %.1133.i.lcssa.sink to i64
  %i.iu = sub i64 %i.it, %.sink126
  %.068.in = lshr exact i64 %i.iu, 2              ; 4 uses
  %.068 = trunc i64 %.068.in to i32               ; 5 uses
  %i.iv = getelementptr i8, ptr %0, i64 %.pre-phi
end_hunk_1
