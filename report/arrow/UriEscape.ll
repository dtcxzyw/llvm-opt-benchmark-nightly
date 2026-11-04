Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/UriEscape?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef ptr @uriEscapeA(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !8 {
bb.a:
  %i.a = tail call ptr @uriEscapeExA(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @uriEscapeExA(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !9 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %0, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq ptr %1, null                    ; 4 uses
  %.not6774 = icmp ult ptr %0, %1
  %or.cond7275 = or i1 %.not, %.not6774
  br i1 %or.cond7275, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %.preheader
  %.not68 = icmp eq i32 %4, 0
  %.not71 = icmp eq i32 %3, 0                     ; 3 uses
  br i1 %.not68, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.j
  %.06177.us.us = phi ptr [ %.4.us.us, %bb.j ], [ %2, %.lr.ph.split.us ] ; 20 uses
  %.06376.us.us = phi ptr [ %i.w, %bb.j ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.d = load i8, ptr %.06376.us.us, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.d, label %bb.i [
    i8 0, label %.sink.split
    i8 32, label %bb.f
    i8 97, label %bb.e
    i8 65, label %bb.e
    i8 98, label %bb.e
    i8 66, label %bb.e
    i8 99, label %bb.e
    i8 67, label %bb.e
    i8 100, label %bb.e
    i8 68, label %bb.e
    i8 101, label %bb.e
    i8 69, label %bb.e
    i8 102, label %bb.e
    i8 70, label %bb.e
    i8 103, label %bb.e
    i8 71, label %bb.e
    i8 104, label %bb.e
    i8 72, label %bb.e
    i8 105, label %bb.e
    i8 73, label %bb.e
    i8 106, label %bb.e
    i8 74, label %bb.e
    i8 107, label %bb.e
    i8 75, label %bb.e
    i8 108, label %bb.e
    i8 76, label %bb.e
    i8 109, label %bb.e
    i8 77, label %bb.e
    i8 110, label %bb.e
    i8 78, label %bb.e
    i8 111, label %bb.e
    i8 79, label %bb.e
    i8 112, label %bb.e
    i8 80, label %bb.e
    i8 113, label %bb.e
    i8 81, label %bb.e
    i8 114, label %bb.e
    i8 82, label %bb.e
    i8 115, label %bb.e
    i8 83, label %bb.e
    i8 116, label %bb.e
    i8 84, label %bb.e
    i8 117, label %bb.e
    i8 85, label %bb.e
    i8 118, label %bb.e
    i8 86, label %bb.e
    i8 119, label %bb.e
    i8 87, label %bb.e
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 121, label %bb.e
    i8 89, label %bb.e
    i8 122, label %bb.e
    i8 90, label %bb.e
    i8 48, label %bb.e
    i8 49, label %bb.e
    i8 50, label %bb.e
    i8 51, label %bb.e
    i8 52, label %bb.e
    i8 53, label %bb.e
    i8 54, label %bb.e
    i8 55, label %bb.e
    i8 56, label %bb.e
    i8 57, label %bb.e
    i8 45, label %bb.e
    i8 46, label %bb.e
    i8 95, label %bb.e
    i8 126, label %bb.e
    i8 10, label %bb.d
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  store i8 37, ptr %.06177.us.us, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  store i8 48, ptr %i.e, align 1, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 68, ptr %i.f, align 1, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  store i8 37, ptr %.06177.us.us, align 1, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  store i8 48, ptr %i.h, align 1, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 65, ptr %i.i, align 1, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us
  store i8 %i.d, ptr %.06177.us.us, align 1, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1 ; 2 uses
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 43, ptr %.06177.us.us, align 1, !tbaa !7
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i8 37, ptr %.06177.us.us, align 1, !tbaa !7
  store i8 50, ptr %i.l, align 1, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 48, ptr %i.m, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
  store i8 37, ptr %.06177.us.us, align 1, !tbaa !7
  %i.o = zext i8 %i.d to i32                      ; 2 uses
  %i.p = lshr i32 %i.o, 4
  %i.q = tail call signext i8 @uriHexToLetterA(i32 noundef %i.p) #2
  %i.r = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !7
  %i.s = and i32 %i.o, 15
  %i.t = tail call signext i8 @uriHexToLetterA(i32 noundef %i.s) #2
  %i.u = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 2
  store i8 %i.t, ptr %i.u, align 1, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.4.us.us = phi ptr [ %i.v, %bb.i ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.n, %bb.h ], [ %i.l, %bb.g ], [ %i.g, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.06376.us.us, i64 1
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.r
  %.06177.us = phi ptr [ %.4.us, %bb.r ], [ %2, %.lr.ph.split.us ] ; 20 uses
  %.06376.us = phi ptr [ %i.aq, %bb.r ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.x = load i8, ptr %.06376.us, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.x, label %bb.q [
    i8 0, label %.sink.split
    i8 32, label %bb.n
    i8 97, label %bb.m
    i8 65, label %bb.m
    i8 98, label %bb.m
    i8 66, label %bb.m
    i8 99, label %bb.m
    i8 67, label %bb.m
    i8 100, label %bb.m
    i8 68, label %bb.m
    i8 101, label %bb.m
    i8 69, label %bb.m
    i8 102, label %bb.m
    i8 70, label %bb.m
    i8 103, label %bb.m
    i8 71, label %bb.m
    i8 104, label %bb.m
    i8 72, label %bb.m
    i8 105, label %bb.m
    i8 73, label %bb.m
    i8 106, label %bb.m
    i8 74, label %bb.m
    i8 107, label %bb.m
    i8 75, label %bb.m
    i8 108, label %bb.m
    i8 76, label %bb.m
    i8 109, label %bb.m
    i8 77, label %bb.m
    i8 110, label %bb.m
    i8 78, label %bb.m
    i8 111, label %bb.m
    i8 79, label %bb.m
    i8 112, label %bb.m
    i8 80, label %bb.m
    i8 113, label %bb.m
    i8 81, label %bb.m
end_hunk_0
begin_hunk_1_@uriEscapeExA:bb.a
    i8 10, label %bb.ah
    i8 13, label %bb.ag
  ]

bb.ag:                                            ; preds = %.lr.ph.split.split.split.split.us
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us104, align 1, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 4
  store i8 48, ptr %i.cg, align 1, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 5
  store i8 65, ptr %i.ch, align 1, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 6
  br label %bb.am

bb.ah:                                            ; preds = %.lr.ph.split.split.split.split.us
  %.not70.us106 = icmp eq i32 %.06078.us103, 0
  br i1 %.not70.us106, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177.us104, align 1, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 4
  store i8 48, ptr %i.cj, align 1, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 5
  store i8 65, ptr %i.ck, align 1, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 6
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us
  store i8 %i.cf, ptr %.06177.us104, align 1, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 1
  br label %bb.am

bb.ak:                                            ; preds = %.lr.ph.split.split.split.split.us
  store i8 43, ptr %.06177.us104, align 1, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 1
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.split.split.split.split.us
  store i8 37, ptr %.06177.us104, align 1, !tbaa !7
  %i.co = zext i8 %i.cf to i32                    ; 2 uses
  %i.cp = lshr i32 %i.co, 4
  %i.cq = tail call signext i8 @uriHexToLetterA(i32 noundef %i.cp) #2
  %i.cr = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !7
  %i.cs = and i32 %i.co, 15
  %i.ct = tail call signext i8 @uriHexToLetterA(i32 noundef %i.cs) #2
  %i.cu = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 2
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.4.us107 = phi ptr [ %i.cv, %bb.al ], [ %i.ci, %bb.ag ], [ %i.cm, %bb.aj ], [ %i.cl, %bb.ai ], [ %i.cn, %bb.ak ], [ %.06177.us104, %bb.ah ]
  %.1.us108 = phi i32 [ 0, %bb.al ], [ 1, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.ah ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.06376.us105, i64 1
  br label %.lr.ph.split.split.split.split.us

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split, %bb.at
  %.06078 = phi i32 [ %.1, %bb.at ], [ 0, %.lr.ph.split.split.split ]
  %.06177 = phi ptr [ %.4, %bb.at ], [ %2, %.lr.ph.split.split.split ] ; 18 uses
  %.06376 = phi ptr [ %i.do, %bb.at ], [ %0, %.lr.ph.split.split.split ] ; 2 uses
  %i.cx = load i8, ptr %.06376, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.cx, label %bb.as [
    i8 0, label %.sink.split
    i8 32, label %bb.an
    i8 97, label %bb.ao
    i8 65, label %bb.ao
    i8 98, label %bb.ao
    i8 66, label %bb.ao
    i8 99, label %bb.ao
    i8 67, label %bb.ao
    i8 100, label %bb.ao
    i8 68, label %bb.ao
    i8 101, label %bb.ao
    i8 69, label %bb.ao
    i8 102, label %bb.ao
    i8 70, label %bb.ao
    i8 103, label %bb.ao
    i8 71, label %bb.ao
    i8 104, label %bb.ao
    i8 72, label %bb.ao
    i8 105, label %bb.ao
    i8 73, label %bb.ao
    i8 106, label %bb.ao
    i8 74, label %bb.ao
    i8 107, label %bb.ao
    i8 75, label %bb.ao
    i8 108, label %bb.ao
    i8 76, label %bb.ao
    i8 109, label %bb.ao
    i8 77, label %bb.ao
    i8 110, label %bb.ao
    i8 78, label %bb.ao
    i8 111, label %bb.ao
    i8 79, label %bb.ao
    i8 112, label %bb.ao
    i8 80, label %bb.ao
    i8 113, label %bb.ao
    i8 81, label %bb.ao
    i8 114, label %bb.ao
    i8 82, label %bb.ao
    i8 115, label %bb.ao
    i8 83, label %bb.ao
    i8 116, label %bb.ao
    i8 84, label %bb.ao
    i8 117, label %bb.ao
    i8 85, label %bb.ao
    i8 118, label %bb.ao
    i8 86, label %bb.ao
    i8 119, label %bb.ao
    i8 87, label %bb.ao
    i8 120, label %bb.ao
    i8 88, label %bb.ao
    i8 121, label %bb.ao
    i8 89, label %bb.ao
    i8 122, label %bb.ao
    i8 90, label %bb.ao
    i8 48, label %bb.ao
    i8 49, label %bb.ao
    i8 50, label %bb.ao
    i8 51, label %bb.ao
    i8 52, label %bb.ao
    i8 53, label %bb.ao
    i8 54, label %bb.ao
    i8 55, label %bb.ao
    i8 56, label %bb.ao
    i8 57, label %bb.ao
    i8 45, label %bb.ao
    i8 46, label %bb.ao
    i8 95, label %bb.ao
    i8 126, label %bb.ao
    i8 10, label %bb.ap
    i8 13, label %bb.ar
  ]

bb.an:                                            ; preds = %.lr.ph.split.split.split.split
  store i8 43, ptr %.06177, align 1, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.06177, i64 1
  br label %bb.at

bb.ao:                                            ; preds = %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split
  store i8 %i.cx, ptr %.06177, align 1, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.06177, i64 1
  br label %bb.at

bb.ap:                                            ; preds = %.lr.ph.split.split.split.split
  %.not70 = icmp eq i32 %.06078, 0
  br i1 %.not70, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177, align 1, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i8 48, ptr %i.da, align 1, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.06177, i64 5
  store i8 65, ptr %i.db, align 1, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.06177, i64 6
  br label %bb.at

bb.ar:                                            ; preds = %.lr.ph.split.split.split.split
  store <4 x i8> <i8 37, i8 48, i8 68, i8 37>, ptr %.06177, align 1, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i8 48, ptr %i.dd, align 1, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.06177, i64 5
  store i8 65, ptr %i.de, align 1, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.06177, i64 6
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph.split.split.split.split
  store i8 37, ptr %.06177, align 1, !tbaa !7
  %i.dg = zext i8 %i.cx to i32                    ; 2 uses
  %i.dh = lshr i32 %i.dg, 4
  %i.di = tail call signext i8 @uriHexToLetterA(i32 noundef %i.dh) #2
  %i.dj = getelementptr inbounds nuw i8, ptr %.06177, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !7
  %i.dk = and i32 %i.dg, 15
  %i.dl = tail call signext i8 @uriHexToLetterA(i32 noundef %i.dk) #2
  %i.dm = getelementptr inbounds nuw i8, ptr %.06177, i64 2
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %.06177, i64 3
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.as, %bb.ao
  %.4 = phi ptr [ %i.dn, %bb.as ], [ %i.df, %bb.ar ], [ %i.cz, %bb.ao ], [ %i.dc, %bb.aq ], [ %i.cy, %bb.an ], [ %.06177, %bb.ap ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.as ], [ 1, %bb.ar ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ap ]
  %i.do = getelementptr inbounds nuw i8, ptr %.06376, i64 1 ; 2 uses
  %.not67 = icmp ult ptr %i.do, %1
  br i1 %.not67, label %.lr.ph.split.split.split.split, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.split.split.split.split, %bb.at, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.us.split, %bb.af, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.us.split, %bb.r, %.lr.ph.split.us.split.us, %.preheader, %bb.b
  %.us-phi.sink = phi ptr [ %.4.us, %bb.r ], [ %2, %bb.b ], [ %2, %.preheader ], [ %.06177.us92.us, %.lr.ph.split.split.split.us.split.us ], [ %.06177.us.us, %.lr.ph.split.us.split.us ], [ %.06177.us104, %.lr.ph.split.split.split.split.us ], [ %.4.us95, %bb.af ], [ %.06177.us, %.lr.ph.split.us.split ], [ %.06177.us92, %.lr.ph.split.split.split.us.split ], [ %.06177, %.lr.ph.split.split.split.split ], [ %.4, %bb.at ] ; 2 uses
  store i8 0, ptr %.us-phi.sink, align 1, !tbaa !7
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.us-phi.sink, %.sink.split ]
  ret ptr %.0
}

declare signext i8 @uriHexToLetterA(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @uriUnescapeInPlaceA(ptr nofree noundef captures(address, ret: address, provenance) %0) local_unnamed_addr #0 !guid !10 {
bb.a:
  %i.a = tail call ptr @uriUnescapeInPlaceExA(ptr noundef %0, i32 noundef 0, i32 noundef 3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @uriUnescapeInPlaceExA(ptr nofree noundef captures(address, ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ai, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.073 = phi ptr [ %0, %.preheader ], [ %.073.be, %.backedge ] ; 11 uses
  %.070 = phi ptr [ %0, %.preheader ], [ %.070.be, %.backedge ] ; 37 uses
  %.0 = phi i32 [ 0, %.preheader ], [ %.0.be, %.backedge ] ; 3 uses
  %i.b = load i8, ptr %.073, align 1, !tbaa !7    ; 2 uses
  switch i8 %i.b, label %bb.af [
    i8 0, label %bb.c
    i8 37, label %bb.e
    i8 43, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt ptr %.073, %.070
  br i1 %i.c, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %.070, align 1, !tbaa !7
  br label %bb.ai

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7     ; 2 uses
  switch i8 %i.e, label %bb.z [
    i8 48, label %bb.f
    i8 49, label %bb.f
    i8 50, label %bb.f
    i8 51, label %bb.f
    i8 52, label %bb.f
    i8 53, label %bb.f
    i8 54, label %bb.f
    i8 55, label %bb.f
    i8 56, label %bb.f
    i8 57, label %bb.f
    i8 97, label %bb.f
    i8 98, label %bb.f
    i8 99, label %bb.f
    i8 100, label %bb.f
    i8 101, label %bb.f
    i8 102, label %bb.f
    i8 65, label %bb.f
    i8 66, label %bb.f
    i8 67, label %bb.f
    i8 68, label %bb.f
    i8 69, label %bb.f
    i8 70, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.073, i64 2 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  switch i8 %i.g, label %bb.w [
    i8 48, label %bb.g
    i8 49, label %bb.g
    i8 50, label %bb.g
    i8 51, label %bb.g
    i8 52, label %bb.g
    i8 53, label %bb.g
    i8 54, label %bb.g
    i8 55, label %bb.g
    i8 56, label %bb.g
    i8 57, label %bb.g
    i8 97, label %bb.g
    i8 98, label %bb.g
    i8 99, label %bb.g
    i8 100, label %bb.g
    i8 101, label %bb.g
    i8 102, label %bb.g
    i8 65, label %bb.g
    i8 66, label %bb.g
    i8 67, label %bb.g
    i8 68, label %bb.g
    i8 69, label %bb.g
    i8 70, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.h = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.e) #2
  %i.i = load i8, ptr %i.f, align 1, !tbaa !7
  %i.j = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.i) #2
  %i.k = zext i8 %i.h to i32
  %i.l = shl nuw nsw i32 %i.k, 4
  %i.m = zext i8 %i.j to i32
  %i.n = add nuw nsw i32 %i.l, %i.m               ; 2 uses
  switch i32 %i.n, label %bb.u [
    i32 10, label %bb.h
    i32 13, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %2, label %bb.o [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %.not79 = icmp eq i32 %.0, 0
  br i1 %.not79, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  store i8 10, ptr %.070, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.070, i64 1
  br label %bb.v

bb.k:                                             ; preds = %bb.h
  %.not78 = icmp eq i32 %.0, 0
  br i1 %.not78, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  store i8 13, ptr %.070, align 1, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.070, i64 1
  store i8 10, ptr %i.p, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.070, i64 2
  br label %bb.v

bb.m:                                             ; preds = %bb.h
  %.not77 = icmp eq i32 %.0, 0
  br i1 %.not77, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  store i8 13, ptr %.070, align 1, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.070, i64 1
  br label %bb.v

bb.o:                                             ; preds = %bb.h
  store i8 10, ptr %.070, align 1, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.070, i64 1
  br label %bb.v

bb.p:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.070, i64 1 ; 4 uses
  switch i32 %2, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i8 10, ptr %.070, align 1, !tbaa !7
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  store i8 13, ptr %.070, align 1, !tbaa !7
  store i8 10, ptr %i.t, align 1, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.070, i64 2
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  store i8 13, ptr %.070, align 1, !tbaa !7
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  store i8 13, ptr %.070, align 1, !tbaa !7
  br label %bb.v

bb.u:                                             ; preds = %bb.g
  %i.v = trunc i32 %i.n to i8
  store i8 %i.v, ptr %.070, align 1, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.070, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.o, %bb.j, %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.u
  %.3 = phi ptr [ %i.w, %bb.u ], [ %i.r, %bb.n ], [ %i.s, %bb.o ], [ %.070, %bb.i ], [ %i.o, %bb.j ], [ %.070, %bb.k ], [ %i.q, %bb.l ], [ %.070, %bb.m ], [ %i.t, %bb.t ], [ %i.t, %bb.q ], [ %i.u, %bb.r ], [ %i.t, %bb.s ]
  %.1 = phi i32 [ 0, %bb.u ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %bb.t ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ]
  %i.x = getelementptr inbounds nuw i8, ptr %.073, i64 3
  br label %.backedge

bb.w:                                             ; preds = %bb.f
  %i.y = icmp ugt ptr %.073, %.070
  br i1 %i.y, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 37, ptr %.070, align 1, !tbaa !7
  %i.z = load i8, ptr %i.d, align 1, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.070, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ab = getelementptr inbounds nuw i8, ptr %.070, i64 2
  br label %.backedge

bb.z:                                             ; preds = %bb.e
  %i.ac = icmp ugt ptr %.073, %.070
  br i1 %i.ac, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 37, ptr %.070, align 1, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ad = getelementptr inbounds nuw i8, ptr %.070, i64 1
  br label %.backedge

.backedge:                                        ; preds = %bb.ab, %bb.y, %bb.v, %bb.ah, %bb.ae
  %.073.be = phi ptr [ %i.ai, %bb.ah ], [ %i.d, %bb.ab ], [ %i.f, %bb.y ], [ %i.x, %bb.v ], [ %i.af, %bb.ae ]
  %.070.be = phi ptr [ %i.aj, %bb.ah ], [ %i.ad, %bb.ab ], [ %i.ab, %bb.y ], [ %.3, %bb.v ], [ %i.ag, %bb.ae ]
  %.0.be = phi i32 [ 0, %bb.ah ], [ 0, %bb.ab ], [ 0, %bb.y ], [ %.1, %bb.v ], [ 0, %bb.ae ]
  br label %bb.b

bb.ac:                                            ; preds = %bb.b
  br i1 %.not, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.ae = icmp ugt ptr %.073, %.070
  br i1 %i.ae, label %.sink.split, label %bb.ae

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  %.sink = phi i8 [ 32, %bb.ac ], [ 43, %bb.ad ]
  store i8 %.sink, ptr %.070, align 1, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.073, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.070, i64 1
  br label %.backedge

bb.af:                                            ; preds = %bb.b
  %i.ah = icmp ugt ptr %.073, %.070
  br i1 %i.ah, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 %i.b, ptr %.070, align 1, !tbaa !7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ai = getelementptr inbounds nuw i8, ptr %.073, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.070, i64 1
  br label %.backedge

bb.ai:                                            ; preds = %bb.c, %bb.d, %bb.a
  %.075 = phi ptr [ null, %bb.a ], [ %.070, %bb.d ], [ %.070, %bb.c ]
  ret ptr %.075
}

declare zeroext i8 @uriHexdigToIntA(i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @uriEscapeW(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !12 {
bb.a:
  %i.a = tail call ptr @uriEscapeExW(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @uriEscapeExW(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !13 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %0, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq ptr %1, null                    ; 4 uses
  %.not6774 = icmp ult ptr %0, %1
  %or.cond7275 = or i1 %.not, %.not6774
  br i1 %or.cond7275, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %.preheader
  %.not68 = icmp eq i32 %4, 0
  %.not71 = icmp eq i32 %3, 0                     ; 3 uses
  br i1 %.not68, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.j
  %.06177.us.us = phi ptr [ %.4.us.us, %bb.j ], [ %2, %.lr.ph.split.us ] ; 20 uses
  %.06376.us.us = phi ptr [ %i.w, %bb.j ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.d = load i32, ptr %.06376.us.us, align 4, !tbaa !6 ; 4 uses
  switch i32 %i.d, label %bb.i [
    i32 0, label %.sink.split
    i32 32, label %bb.f
    i32 97, label %bb.e
    i32 65, label %bb.e
    i32 98, label %bb.e
    i32 66, label %bb.e
    i32 99, label %bb.e
    i32 67, label %bb.e
    i32 100, label %bb.e
    i32 68, label %bb.e
    i32 101, label %bb.e
    i32 69, label %bb.e
    i32 102, label %bb.e
    i32 70, label %bb.e
    i32 103, label %bb.e
    i32 71, label %bb.e
    i32 104, label %bb.e
    i32 72, label %bb.e
    i32 105, label %bb.e
    i32 73, label %bb.e
    i32 106, label %bb.e
    i32 74, label %bb.e
    i32 107, label %bb.e
    i32 75, label %bb.e
    i32 108, label %bb.e
    i32 76, label %bb.e
    i32 109, label %bb.e
    i32 77, label %bb.e
    i32 110, label %bb.e
    i32 78, label %bb.e
    i32 111, label %bb.e
    i32 79, label %bb.e
    i32 112, label %bb.e
    i32 80, label %bb.e
    i32 113, label %bb.e
    i32 81, label %bb.e
    i32 114, label %bb.e
    i32 82, label %bb.e
    i32 115, label %bb.e
    i32 83, label %bb.e
    i32 116, label %bb.e
    i32 84, label %bb.e
    i32 117, label %bb.e
    i32 85, label %bb.e
    i32 118, label %bb.e
    i32 86, label %bb.e
    i32 119, label %bb.e
    i32 87, label %bb.e
    i32 120, label %bb.e
    i32 88, label %bb.e
    i32 121, label %bb.e
    i32 89, label %bb.e
    i32 122, label %bb.e
    i32 90, label %bb.e
    i32 48, label %bb.e
    i32 49, label %bb.e
    i32 50, label %bb.e
    i32 51, label %bb.e
    i32 52, label %bb.e
    i32 53, label %bb.e
    i32 54, label %bb.e
    i32 55, label %bb.e
    i32 56, label %bb.e
    i32 57, label %bb.e
    i32 45, label %bb.e
    i32 46, label %bb.e
    i32 95, label %bb.e
    i32 126, label %bb.e
    i32 10, label %bb.d
    i32 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  store i32 37, ptr %.06177.us.us, align 4, !tbaa !6
  %i.e = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 4
  store i32 48, ptr %i.e, align 4, !tbaa !6
  %i.f = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 68, ptr %i.f, align 4, !tbaa !6
  %i.g = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 12
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  store i32 37, ptr %.06177.us.us, align 4, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 4
  store i32 48, ptr %i.h, align 4, !tbaa !6
  %i.i = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 65, ptr %i.i, align 4, !tbaa !6
  %i.j = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 12
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us
  store i32 %i.d, ptr %.06177.us.us, align 4, !tbaa !6
  %i.k = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 4
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 4 ; 2 uses
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 43, ptr %.06177.us.us, align 4, !tbaa !6
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i32 37, ptr %.06177.us.us, align 4, !tbaa !6
  store i32 50, ptr %i.l, align 4, !tbaa !6
  %i.m = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 48, ptr %i.m, align 4, !tbaa !6
  %i.n = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 12
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
  store i32 37, ptr %.06177.us.us, align 4, !tbaa !6
  %i.o = lshr i32 %i.d, 4
  %i.p = and i32 %i.o, 15
  %i.q = tail call i32 @uriHexToLetterW(i32 noundef %i.p) #2
  %i.r = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !6
  %i.s = and i32 %i.d, 15
  %i.t = tail call i32 @uriHexToLetterW(i32 noundef %i.s) #2
  %i.u = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 8
  store i32 %i.t, ptr %i.u, align 4, !tbaa !6
  %i.v = getelementptr inbounds nuw i8, ptr %.06177.us.us, i64 12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.4.us.us = phi ptr [ %i.v, %bb.i ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.n, %bb.h ], [ %i.l, %bb.g ], [ %i.g, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.06376.us.us, i64 4
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.r
  %.06177.us = phi ptr [ %.4.us, %bb.r ], [ %2, %.lr.ph.split.us ] ; 20 uses
  %.06376.us = phi ptr [ %i.aq, %bb.r ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %i.x = load i32, ptr %.06376.us, align 4, !tbaa !6 ; 4 uses
  switch i32 %i.x, label %bb.q [
    i32 0, label %.sink.split
    i32 32, label %bb.n
    i32 97, label %bb.m
    i32 65, label %bb.m
    i32 98, label %bb.m
    i32 66, label %bb.m
    i32 99, label %bb.m
    i32 67, label %bb.m
    i32 100, label %bb.m
    i32 68, label %bb.m
    i32 101, label %bb.m
    i32 69, label %bb.m
    i32 102, label %bb.m
    i32 70, label %bb.m
    i32 103, label %bb.m
    i32 71, label %bb.m
    i32 104, label %bb.m
    i32 72, label %bb.m
    i32 105, label %bb.m
    i32 73, label %bb.m
    i32 106, label %bb.m
    i32 74, label %bb.m
    i32 107, label %bb.m
    i32 75, label %bb.m
    i32 108, label %bb.m
    i32 76, label %bb.m
    i32 109, label %bb.m
    i32 77, label %bb.m
    i32 110, label %bb.m
    i32 78, label %bb.m
    i32 111, label %bb.m
    i32 79, label %bb.m
    i32 112, label %bb.m
    i32 80, label %bb.m
    i32 113, label %bb.m
    i32 81, label %bb.m
end_hunk_1
begin_hunk_2_@uriEscapeExW:bb.a
    i32 10, label %bb.ah
    i32 13, label %bb.ag
  ]

bb.ag:                                            ; preds = %.lr.ph.split.split.split.split.us
  store <4 x i32> <i32 37, i32 48, i32 68, i32 37>, ptr %.06177.us104, align 4, !tbaa !6
  %i.cg = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 16
  store i32 48, ptr %i.cg, align 4, !tbaa !6
  %i.ch = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 20
  store i32 65, ptr %i.ch, align 4, !tbaa !6
  %i.ci = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 24
  br label %bb.am

bb.ah:                                            ; preds = %.lr.ph.split.split.split.split.us
  %.not70.us106 = icmp eq i32 %.06078.us103, 0
  br i1 %.not70.us106, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  store <4 x i32> <i32 37, i32 48, i32 68, i32 37>, ptr %.06177.us104, align 4, !tbaa !6
  %i.cj = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 16
  store i32 48, ptr %i.cj, align 4, !tbaa !6
  %i.ck = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 20
  store i32 65, ptr %i.ck, align 4, !tbaa !6
  %i.cl = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 24
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.split.us
  store i32 %i.cf, ptr %.06177.us104, align 4, !tbaa !6
  %i.cm = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 4
  br label %bb.am

bb.ak:                                            ; preds = %.lr.ph.split.split.split.split.us
  store i32 43, ptr %.06177.us104, align 4, !tbaa !6
  %i.cn = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 4
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.split.split.split.split.us
  store i32 37, ptr %.06177.us104, align 4, !tbaa !6
  %i.co = lshr i32 %i.cf, 4
  %i.cp = and i32 %i.co, 15
  %i.cq = tail call i32 @uriHexToLetterW(i32 noundef %i.cp) #2
  %i.cr = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !6
  %i.cs = and i32 %i.cf, 15
  %i.ct = tail call i32 @uriHexToLetterW(i32 noundef %i.cs) #2
  %i.cu = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 8
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !6
  %i.cv = getelementptr inbounds nuw i8, ptr %.06177.us104, i64 12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.4.us107 = phi ptr [ %i.cv, %bb.al ], [ %i.ci, %bb.ag ], [ %i.cm, %bb.aj ], [ %i.cl, %bb.ai ], [ %i.cn, %bb.ak ], [ %.06177.us104, %bb.ah ]
  %.1.us108 = phi i32 [ 0, %bb.al ], [ 1, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.ah ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.06376.us105, i64 4
  br label %.lr.ph.split.split.split.split.us

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split, %bb.at
  %.06078 = phi i32 [ %.1, %bb.at ], [ 0, %.lr.ph.split.split.split ]
  %.06177 = phi ptr [ %.4, %bb.at ], [ %2, %.lr.ph.split.split.split ] ; 18 uses
  %.06376 = phi ptr [ %i.do, %bb.at ], [ %0, %.lr.ph.split.split.split ] ; 2 uses
  %i.cx = load i32, ptr %.06376, align 4, !tbaa !6 ; 4 uses
  switch i32 %i.cx, label %bb.as [
    i32 0, label %.sink.split
    i32 32, label %bb.an
    i32 97, label %bb.ao
    i32 65, label %bb.ao
    i32 98, label %bb.ao
    i32 66, label %bb.ao
    i32 99, label %bb.ao
    i32 67, label %bb.ao
    i32 100, label %bb.ao
    i32 68, label %bb.ao
    i32 101, label %bb.ao
    i32 69, label %bb.ao
    i32 102, label %bb.ao
    i32 70, label %bb.ao
    i32 103, label %bb.ao
    i32 71, label %bb.ao
    i32 104, label %bb.ao
    i32 72, label %bb.ao
    i32 105, label %bb.ao
    i32 73, label %bb.ao
    i32 106, label %bb.ao
    i32 74, label %bb.ao
    i32 107, label %bb.ao
    i32 75, label %bb.ao
    i32 108, label %bb.ao
    i32 76, label %bb.ao
    i32 109, label %bb.ao
    i32 77, label %bb.ao
    i32 110, label %bb.ao
    i32 78, label %bb.ao
    i32 111, label %bb.ao
    i32 79, label %bb.ao
    i32 112, label %bb.ao
    i32 80, label %bb.ao
    i32 113, label %bb.ao
    i32 81, label %bb.ao
    i32 114, label %bb.ao
    i32 82, label %bb.ao
    i32 115, label %bb.ao
    i32 83, label %bb.ao
    i32 116, label %bb.ao
    i32 84, label %bb.ao
    i32 117, label %bb.ao
    i32 85, label %bb.ao
    i32 118, label %bb.ao
    i32 86, label %bb.ao
    i32 119, label %bb.ao
    i32 87, label %bb.ao
    i32 120, label %bb.ao
    i32 88, label %bb.ao
    i32 121, label %bb.ao
    i32 89, label %bb.ao
    i32 122, label %bb.ao
    i32 90, label %bb.ao
    i32 48, label %bb.ao
    i32 49, label %bb.ao
    i32 50, label %bb.ao
    i32 51, label %bb.ao
    i32 52, label %bb.ao
    i32 53, label %bb.ao
    i32 54, label %bb.ao
    i32 55, label %bb.ao
    i32 56, label %bb.ao
    i32 57, label %bb.ao
    i32 45, label %bb.ao
    i32 46, label %bb.ao
    i32 95, label %bb.ao
    i32 126, label %bb.ao
    i32 10, label %bb.ap
    i32 13, label %bb.ar
  ]

bb.an:                                            ; preds = %.lr.ph.split.split.split.split
  store i32 43, ptr %.06177, align 4, !tbaa !6
  %i.cy = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  br label %bb.at

bb.ao:                                            ; preds = %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split
  store i32 %i.cx, ptr %.06177, align 4, !tbaa !6
  %i.cz = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  br label %bb.at

bb.ap:                                            ; preds = %.lr.ph.split.split.split.split
  %.not70 = icmp eq i32 %.06078, 0
  br i1 %.not70, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  store <4 x i32> <i32 37, i32 48, i32 68, i32 37>, ptr %.06177, align 4, !tbaa !6
  %i.da = getelementptr inbounds nuw i8, ptr %.06177, i64 16
  store i32 48, ptr %i.da, align 4, !tbaa !6
  %i.db = getelementptr inbounds nuw i8, ptr %.06177, i64 20
  store i32 65, ptr %i.db, align 4, !tbaa !6
  %i.dc = getelementptr inbounds nuw i8, ptr %.06177, i64 24
  br label %bb.at

bb.ar:                                            ; preds = %.lr.ph.split.split.split.split
  store <4 x i32> <i32 37, i32 48, i32 68, i32 37>, ptr %.06177, align 4, !tbaa !6
  %i.dd = getelementptr inbounds nuw i8, ptr %.06177, i64 16
  store i32 48, ptr %i.dd, align 4, !tbaa !6
  %i.de = getelementptr inbounds nuw i8, ptr %.06177, i64 20
  store i32 65, ptr %i.de, align 4, !tbaa !6
  %i.df = getelementptr inbounds nuw i8, ptr %.06177, i64 24
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph.split.split.split.split
  store i32 37, ptr %.06177, align 4, !tbaa !6
  %i.dg = lshr i32 %i.cx, 4
  %i.dh = and i32 %i.dg, 15
  %i.di = tail call i32 @uriHexToLetterW(i32 noundef %i.dh) #2
  %i.dj = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !6
  %i.dk = and i32 %i.cx, 15
  %i.dl = tail call i32 @uriHexToLetterW(i32 noundef %i.dk) #2
  %i.dm = getelementptr inbounds nuw i8, ptr %.06177, i64 8
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !6
  %i.dn = getelementptr inbounds nuw i8, ptr %.06177, i64 12
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.as, %bb.ao
  %.4 = phi ptr [ %i.dn, %bb.as ], [ %i.df, %bb.ar ], [ %i.cz, %bb.ao ], [ %i.dc, %bb.aq ], [ %i.cy, %bb.an ], [ %.06177, %bb.ap ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.as ], [ 1, %bb.ar ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ap ]
  %i.do = getelementptr inbounds nuw i8, ptr %.06376, i64 4 ; 2 uses
  %.not67 = icmp ult ptr %i.do, %1
  br i1 %.not67, label %.lr.ph.split.split.split.split, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.split.split.split.split, %bb.at, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.us.split, %bb.af, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.us.split, %bb.r, %.lr.ph.split.us.split.us, %.preheader, %bb.b
  %.us-phi.sink = phi ptr [ %.4.us, %bb.r ], [ %2, %bb.b ], [ %2, %.preheader ], [ %.06177.us92.us, %.lr.ph.split.split.split.us.split.us ], [ %.06177.us.us, %.lr.ph.split.us.split.us ], [ %.06177.us104, %.lr.ph.split.split.split.split.us ], [ %.4.us95, %bb.af ], [ %.06177.us, %.lr.ph.split.us.split ], [ %.06177.us92, %.lr.ph.split.split.split.us.split ], [ %.06177, %.lr.ph.split.split.split.split ], [ %.4, %bb.at ] ; 2 uses
  store i32 0, ptr %.us-phi.sink, align 4, !tbaa !6
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.us-phi.sink, %.sink.split ]
  ret ptr %.0
}

declare i32 @uriHexToLetterW(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @uriUnescapeInPlaceW(ptr nofree noundef captures(address, ret: address, provenance) %0) local_unnamed_addr #0 !guid !14 {
bb.a:
  %i.a = tail call ptr @uriUnescapeInPlaceExW(ptr noundef %0, i32 noundef 0, i32 noundef 3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @uriUnescapeInPlaceExW(ptr nofree noundef captures(address, ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ai, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.073 = phi ptr [ %0, %.preheader ], [ %.073.be, %.backedge ] ; 11 uses
  %.070 = phi ptr [ %0, %.preheader ], [ %.070.be, %.backedge ] ; 37 uses
  %.0 = phi i32 [ 0, %.preheader ], [ %.0.be, %.backedge ] ; 3 uses
  %i.b = load i32, ptr %.073, align 4, !tbaa !6   ; 2 uses
  switch i32 %i.b, label %bb.af [
    i32 0, label %bb.c
    i32 37, label %bb.e
    i32 43, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt ptr %.073, %.070
  br i1 %i.c, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.070, align 4, !tbaa !6
  br label %bb.ai

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.073, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6    ; 2 uses
  switch i32 %i.e, label %bb.z [
    i32 48, label %bb.f
    i32 49, label %bb.f
    i32 50, label %bb.f
    i32 51, label %bb.f
    i32 52, label %bb.f
    i32 53, label %bb.f
    i32 54, label %bb.f
    i32 55, label %bb.f
    i32 56, label %bb.f
    i32 57, label %bb.f
    i32 97, label %bb.f
    i32 98, label %bb.f
    i32 99, label %bb.f
    i32 100, label %bb.f
    i32 101, label %bb.f
    i32 102, label %bb.f
    i32 65, label %bb.f
    i32 66, label %bb.f
    i32 67, label %bb.f
    i32 68, label %bb.f
    i32 69, label %bb.f
    i32 70, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.073, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6
  switch i32 %i.g, label %bb.w [
    i32 48, label %bb.g
    i32 49, label %bb.g
    i32 50, label %bb.g
    i32 51, label %bb.g
    i32 52, label %bb.g
    i32 53, label %bb.g
    i32 54, label %bb.g
    i32 55, label %bb.g
    i32 56, label %bb.g
    i32 57, label %bb.g
    i32 97, label %bb.g
    i32 98, label %bb.g
    i32 99, label %bb.g
    i32 100, label %bb.g
    i32 101, label %bb.g
    i32 102, label %bb.g
    i32 65, label %bb.g
    i32 66, label %bb.g
    i32 67, label %bb.g
    i32 68, label %bb.g
    i32 69, label %bb.g
    i32 70, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.h = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.e) #2
  %i.i = load i32, ptr %i.f, align 4, !tbaa !6
  %i.j = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.i) #2
  %i.k = zext i8 %i.h to i32
  %i.l = shl nuw nsw i32 %i.k, 4
  %i.m = zext i8 %i.j to i32
  %i.n = add nuw nsw i32 %i.l, %i.m               ; 2 uses
  switch i32 %i.n, label %bb.u [
    i32 10, label %bb.h
    i32 13, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %2, label %bb.o [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %.not81 = icmp eq i32 %.0, 0
  br i1 %.not81, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  store i32 10, ptr %.070, align 4, !tbaa !6
  %i.o = getelementptr inbounds nuw i8, ptr %.070, i64 4
  br label %bb.v

bb.k:                                             ; preds = %bb.h
  %.not80 = icmp eq i32 %.0, 0
  br i1 %.not80, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  store i32 13, ptr %.070, align 4, !tbaa !6
  %i.p = getelementptr inbounds nuw i8, ptr %.070, i64 4
  store i32 10, ptr %i.p, align 4, !tbaa !6
  %i.q = getelementptr inbounds nuw i8, ptr %.070, i64 8
  br label %bb.v

bb.m:                                             ; preds = %bb.h
  %.not79 = icmp eq i32 %.0, 0
  br i1 %.not79, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  store i32 13, ptr %.070, align 4, !tbaa !6
  %i.r = getelementptr inbounds nuw i8, ptr %.070, i64 4
  br label %bb.v

bb.o:                                             ; preds = %bb.h
  store i32 10, ptr %.070, align 4, !tbaa !6
  %i.s = getelementptr inbounds nuw i8, ptr %.070, i64 4
  br label %bb.v

bb.p:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.070, i64 4 ; 4 uses
  switch i32 %2, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i32 10, ptr %.070, align 4, !tbaa !6
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  store i32 13, ptr %.070, align 4, !tbaa !6
  store i32 10, ptr %i.t, align 4, !tbaa !6
  %i.u = getelementptr inbounds nuw i8, ptr %.070, i64 8
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  store i32 13, ptr %.070, align 4, !tbaa !6
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  store i32 13, ptr %.070, align 4, !tbaa !6
  br label %bb.v

bb.u:                                             ; preds = %bb.g
  store i32 %i.n, ptr %.070, align 4, !tbaa !6
  %i.v = getelementptr inbounds nuw i8, ptr %.070, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.o, %bb.j, %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.u
  %.3 = phi ptr [ %i.v, %bb.u ], [ %i.r, %bb.n ], [ %i.s, %bb.o ], [ %.070, %bb.i ], [ %i.o, %bb.j ], [ %.070, %bb.k ], [ %i.q, %bb.l ], [ %.070, %bb.m ], [ %i.t, %bb.t ], [ %i.t, %bb.q ], [ %i.u, %bb.r ], [ %i.t, %bb.s ]
  %.1 = phi i32 [ 0, %bb.u ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %bb.t ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ]
  %i.w = getelementptr inbounds nuw i8, ptr %.073, i64 12
  br label %.backedge

bb.w:                                             ; preds = %bb.f
  %i.x = icmp ugt ptr %.073, %.070
  br i1 %i.x, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 37, ptr %.070, align 4, !tbaa !6
  %i.y = load i32, ptr %i.d, align 4, !tbaa !6
  %i.z = getelementptr inbounds nuw i8, ptr %.070, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aa = getelementptr inbounds nuw i8, ptr %.070, i64 8
  br label %.backedge

bb.z:                                             ; preds = %bb.e
  %i.ab = icmp ugt ptr %.073, %.070
  br i1 %i.ab, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 37, ptr %.070, align 4, !tbaa !6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.070, i64 4
  br label %.backedge

.backedge:                                        ; preds = %bb.ab, %bb.y, %bb.v, %bb.ah, %bb.ae
  %.073.be = phi ptr [ %i.ah, %bb.ah ], [ %i.d, %bb.ab ], [ %i.f, %bb.y ], [ %i.w, %bb.v ], [ %i.ae, %bb.ae ]
  %.070.be = phi ptr [ %i.ai, %bb.ah ], [ %i.ac, %bb.ab ], [ %i.aa, %bb.y ], [ %.3, %bb.v ], [ %i.af, %bb.ae ]
  %.0.be = phi i32 [ 0, %bb.ah ], [ 0, %bb.ab ], [ 0, %bb.y ], [ %.1, %bb.v ], [ 0, %bb.ae ]
  br label %bb.b

bb.ac:                                            ; preds = %bb.b
  br i1 %.not, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.ad = icmp ugt ptr %.073, %.070
  br i1 %i.ad, label %.sink.split, label %bb.ae

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  %.sink = phi i32 [ 32, %bb.ac ], [ 43, %bb.ad ]
  store i32 %.sink, ptr %.070, align 4, !tbaa !6
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %.073, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.070, i64 4
  br label %.backedge

bb.af:                                            ; preds = %bb.b
  %i.ag = icmp ugt ptr %.073, %.070
  br i1 %i.ag, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.b, ptr %.070, align 4, !tbaa !6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.073, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.070, i64 4
  br label %.backedge

bb.ai:                                            ; preds = %bb.c, %bb.d, %bb.a
  %.075 = phi ptr [ null, %bb.a ], [ %.070, %bb.d ], [ %.070, %bb.c ]
  ret ptr %.075
}

declare zeroext i8 @uriHexdigToIntW(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{i64 6887595914900310683}
!9 = !{i64 -2701251851137048078}
!10 = !{i64 5638666487766769939}
!11 = !{i64 -2162326009135553622}
!12 = !{i64 -8916136238000178116}
!13 = !{i64 -540167914970633338}
!14 = !{i64 7109984839850853786}
!15 = !{i64 -4755397200718223452}
end_hunk_2
