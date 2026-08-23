Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Bitmap_ = type { i32, i32, i32, ptr, i16, i8, i8, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @FT_Bitmap_Init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @FT_Bitmap_New(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = icmp sgt i32 %i.i, 0
  br label %.thread.a

bb.f:                                             ; preds = %bb.d
  %.not59 = icmp eq i32 %i.f, 0
  br i1 %.not59, label %.thread.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !7
  %i.m = icmp slt i32 %i.l, 0
  br label %.thread.a

.thread.a:                                        ; preds = %bb.e, %bb.f, %bb.g
  %3 = phi i1 [ %i.j, %bb.e ], [ false, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  tail call void @ft_mem_free(ptr noundef %i.n, ptr noundef %i.p) #7
  store ptr null, ptr %i.o, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !20
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7
  %i.s = sub nsw i32 0, %i.r
  store i32 %i.s, ptr %i.q, align 8, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %.not55 = icmp eq ptr %i.u, null
  br i1 %.not55, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.e, align 8, !tbaa !7
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.w = zext nneg i32 %spec.select to i64        ; 14 uses
  %i.x = load i32, ptr %2, align 8, !tbaa !25
  %i.y = zext i32 %i.x to i64
  %i.z = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef %i.w, i64 noundef 0, i64 noundef %i.y, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 3 uses
  store ptr %i.z, ptr %i.o, align 8, !tbaa !19
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3
  %.not56 = icmp eq i32 %i.aa, 0
  br i1 %.not56, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  br i1 %3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %2, align 8, !tbaa !25    ; 6 uses
  %.not5760 = icmp eq i32 %i.ab, 0
  br i1 %.not5760, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ac = add i32 %i.ab, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, %i.w
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.ah = sub nsw i64 0, %i.w                     ; 5 uses
  %xtraiter = and i32 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.063.prol = phi ptr [ %i.aj, %.prol.preheader ], [ %i.af, %.lr.ph ] ; 2 uses
  %.04762.prol = phi ptr [ %i.ai, %.prol.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.04861.prol = phi i32 [ %i.ak, %.prol.preheader ], [ %i.ab, %.lr.ph ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.063.prol, ptr align 1 %.04762.prol, i64 %i.w, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.04762.prol, i64 %i.w ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.063.prol, i64 %i.ah ; 2 uses
  %i.ak = add i32 %.04861.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !26

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.063.unr = phi ptr [ %i.af, %.lr.ph ], [ %i.aj, %.prol.preheader ]
  %.04762.unr = phi ptr [ %i.ag, %.lr.ph ], [ %i.ai, %.prol.preheader ]
  %.04861.unr = phi i32 [ %i.ab, %.lr.ph ], [ %i.ak, %.prol.preheader ]
  %i.al = icmp ult i32 %i.ab, 4
  br i1 %i.al, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.063 = phi ptr [ %i.at, %.lr.ph.new ], [ %.063.unr, %.prol.loopexit ] ; 2 uses
  %.04762 = phi ptr [ %i.as, %.lr.ph.new ], [ %.04762.unr, %.prol.loopexit ] ; 2 uses
  %.04861 = phi i32 [ %i.au, %.lr.ph.new ], [ %.04861.unr, %.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.063, ptr align 1 %.04762, i64 %i.w, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.04762, i64 %i.w ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.063, i64 %i.ah ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.am, i64 %i.w, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.w ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ah ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ao, i64 %i.w, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.w ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.aq, i64 %i.w, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.w
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.ah
  %i.au = add i32 %.04861, -4                     ; 2 uses
  %.not57.3 = icmp eq i32 %i.au, 0
  br i1 %.not57.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !28

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.aw = load i32, ptr %1, align 8, !tbaa !25
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.av, i64 %i.ay, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.l, %bb.m, %bb.j
  %i.az = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.c, %bb.b, %bb.a, %.loopexit
  %.050 = phi i32 [ 6, %bb.b ], [ %i.az, %.loopexit ], [ 0, %bb.c ], [ 33, %bb.a ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Embolden(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %4 = alloca %struct.FT_Bitmap_, align 8         ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not124 = icmp eq ptr %1, null
  br i1 %.not124, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not125 = icmp eq ptr %i.c, null
  br i1 %.not125, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp sgt i64 %2, 137438953439
  %i.e = icmp sgt i64 %3, 137438953439
  %or.cond132 = or i1 %i.d, %i.e
  br i1 %or.cond132, label %bb.av, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = trunc i64 %2 to i32
  %i.g = add i32 %i.f, 32
  %i.h = ashr i32 %i.g, 6                         ; 12 uses
  %i.i = trunc i64 %3 to i32
  %i.j = add i32 %i.i, 32
  %i.k = ashr i32 %i.j, 6                         ; 9 uses
  %i.l = or i32 %i.k, %i.h                        ; 2 uses
  %or.cond = icmp eq i32 %i.l, 0
  br i1 %or.cond, label %bb.av, label %bb.f

bb.f:                                             ; preds = %bb.e
  %or.cond3.not = icmp sgt i32 %i.l, -1
  br i1 %or.cond3.not, label %bb.g, label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 4 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !30    ; 2 uses
  switch i8 %i.n, label %bb.k [
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 1, label %.thread205
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.av
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.o = call i32 @FT_Bitmap_Convert(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 1) ; 2 uses
  %.not126 = icmp eq i32 %i.o, 0
  br i1 %.not126, label %FT_Bitmap_Done.exit, label %.critedge

FT_Bitmap_Done.exit:                              ; preds = %bb.h
  %i.p = load ptr, ptr %0, align 8, !tbaa !12
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @ft_mem_free(ptr noundef %i.p, ptr noundef %i.q) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.pre = load i8, ptr %i.m, align 2, !tbaa !30
  br label %bb.k

.thread205:                                       ; preds = %bb.g
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.h, i32 8)
  %i.r = load ptr, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = load i32, ptr %1, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !7
  %i.x = tail call i32 @llvm.abs.i32(i32 %i.w, i1 false)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
end_hunk_0
