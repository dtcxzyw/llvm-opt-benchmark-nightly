inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%s %s%s%s%s HTTP/1.%d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1

; Function Attrs: nounwind uwtable
define void @Curl_h1_req_parse_init(ptr noundef initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @curlx_dyn_init(ptr noundef nonnull %i.b, i64 noundef %1) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Curl_h1_req_parse_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @Curl_http_req_free(ptr noundef %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @curlx_dyn_free(ptr noundef nonnull %i.b) #5
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @Curl_http_req_free(ptr noundef) local_unnamed_addr #2

declare void @curlx_dyn_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_h1_req_parse_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 8 uses
  store i64 0, ptr %6, align 8, !tbaa !16
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %next_line.exit.thread.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not4270 = icmp eq i8 %i.d, 0
  br i1 %.not4270, label %.lr.ph, label %next_line.exit.thread.thread

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = and i32 %5, 1
  %.not18.i.i = icmp eq i32 %i.h, 0               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not.i49 = icmp eq ptr %4, null
  %spec.select.i = select i1 %.not18.i.i, i32 2074, i32 26
  %.not114.i = icmp eq ptr %3, null
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.am
  %.03072 = phi ptr [ %1, %.lr.ph ], [ %i.am, %bb.am ] ; 5 uses
  %.03171 = phi i64 [ %2, %.lr.ph ], [ %i.an, %bb.am ] ; 4 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !tbaa !17
  store i64 0, ptr %i.f, align 8, !tbaa !18
  call void @curlx_dyn_reset(ptr noundef nonnull %i.g) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = call ptr @memchr(ptr noundef nonnull %.03072, i32 noundef 10, i64 noundef %.03171) #6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %next_line.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.03072, ptr %i.e, align 8, !tbaa !17
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %.03072 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = add nsw i64 %i.n, 1                      ; 4 uses
  store i64 %i.o, ptr %i.f, align 8, !tbaa !18
  %i.p = call i64 @curlx_dyn_len(ptr noundef nonnull %i.g) #5
  %.not36.i = icmp eq i64 %i.p, 0
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  br i1 %.not36.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.r = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.g, ptr noundef %i.q, i64 noundef %.pre.i) #5 ; 2 uses
  %.not37.i = icmp eq i32 %i.r, 0
  br i1 %.not37.i, label %bb.g, label %next_line.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.s = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.g) #5
  store ptr %i.s, ptr %i.e, align 8, !tbaa !17
  %i.t = call i64 @curlx_dyn_len(ptr noundef nonnull %i.g) #5 ; 2 uses
  store i64 %i.t, ptr %i.f, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.u = phi i64 [ %i.t, %bb.g ], [ %.pre.i, %bb.e ] ; 4 uses
  %.not.i39.i = icmp eq i64 %i.u, 0
  br i1 %.not.i39.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.w = getelementptr i8, ptr %i.v, i64 %i.u     ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19    ; 2 uses
  %i.z = icmp eq i8 %i.y, 10
  br i1 %i.z, label %thread-pre-split.i.i, label %thread-pre-split.thread.i.i

thread-pre-split.i.i:                             ; preds = %bb.i
  %i.aa = add i64 %i.u, -1                        ; 3 uses
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !18
  %.not16.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not16.i.i, label %bb.l, label %thread-pre-split.i.thread-pre-split.thread.i_crit_edge.i

thread-pre-split.i.thread-pre-split.thread.i_crit_edge.i: ; preds = %thread-pre-split.i.i
  %.phi.trans.insert42.i = getelementptr i8, ptr %i.w, i64 -2
  %.pre43.i = load i8, ptr %.phi.trans.insert42.i, align 1, !tbaa !19
  br label %thread-pre-split.thread.i.i

thread-pre-split.thread.i.i:                      ; preds = %thread-pre-split.i.thread-pre-split.thread.i_crit_edge.i, %bb.i
  %i.ab = phi i8 [ %.pre43.i, %thread-pre-split.i.thread-pre-split.thread.i_crit_edge.i ], [ %i.y, %bb.i ]
  %i.ac = phi i64 [ %i.aa, %thread-pre-split.i.thread-pre-split.thread.i_crit_edge.i ], [ %i.u, %bb.i ] ; 2 uses
  %i.ad = icmp eq i8 %i.ab, 13
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %thread-pre-split.thread.i.i
  %i.ae = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !18
  br label %bb.n

bb.k:                                             ; preds = %thread-pre-split.thread.i.i
  br i1 %.not18.i.i, label %bb.n, label %next_line.exit.thread.thread

bb.l:                                             ; preds = %thread-pre-split.i.i
  br i1 %.not18.i.i, label %next_line.exit.thread56, label %next_line.exit.thread.thread

bb.m:                                             ; preds = %bb.h
  br i1 %.not18.i.i, label %next_line.exit.thread56, label %next_line.exit.thread.thread

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.af = phi i64 [ %i.ae, %bb.j ], [ %i.ac, %bb.k ]
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !8
  %i.ah = icmp ugt i64 %i.af, %i.ag
  br i1 %i.ah, label %next_line.exit.thread.thread, label %next_line.exit.thread56

next_line.exit:                                   ; preds = %bb.d
  %i.ai = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.g, ptr noundef nonnull %.03072, i64 noundef %.03171) #5 ; 2 uses
  %.not43 = icmp eq i32 %i.ai, 0
  br i1 %.not43, label %next_line.exit.thread56, label %next_line.exit.thread

next_line.exit.thread:                            ; preds = %bb.f, %next_line.exit
  %.031.i55 = phi i32 [ %i.ai, %next_line.exit ], [ %i.r, %bb.f ]
  %.031.i55.fr = freeze i32 %.031.i55             ; 2 uses
  %i.aj = icmp eq i32 %.031.i55.fr, 81
  %spec.select = select i1 %i.aj, i32 0, i32 %.031.i55.fr
  br label %next_line.exit.thread.thread

next_line.exit.thread56:                          ; preds = %bb.l, %bb.m, %bb.n, %next_line.exit
  %.060 = phi i64 [ %.03171, %next_line.exit ], [ %i.o, %bb.n ], [ %i.o, %bb.m ], [ %i.o, %bb.l ] ; 3 uses
  %i.ak = load i64, ptr %6, align 8, !tbaa !16
  %i.al = add i64 %i.ak, %.060
  store i64 %i.al, ptr %6, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %.03072, i64 %.060
  %i.an = sub i64 %.03171, %.060                  ; 2 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !17  ; 12 uses
  %.not44 = icmp eq ptr %i.ao, null
  br i1 %.not44, label %bb.o, label %bb.p

bb.o:                                             ; preds = %next_line.exit.thread56
  %.not45 = icmp eq i64 %i.an, 0
  br i1 %.not45, label %next_line.exit.thread.thread, label %bb.am

bb.p:                                             ; preds = %next_line.exit.thread56
  %i.ap = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %.not46 = icmp eq ptr %i.ap, null
  br i1 %.not46, label %bb.q, label %bb.aj

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i49, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i8, ptr %4, align 1, !tbaa !19
  %.not103.i = icmp eq i8 %i.aq, 0
  br i1 %.not103.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %4) #6 ; 2 uses
  %i.as = call i32 @strncmp(ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ao, i64 noundef %i.ar) #6
  %.not104.i = icmp eq i32 %i.as, 0
  br i1 %.not104.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %.pre.i51 = load i64, ptr %i.f, align 8, !tbaa !18
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.au = load i64, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.av = call ptr @memchr(ptr noundef nonnull %i.ao, i32 noundef 32, i64 noundef %i.au) #6 ; 3 uses
  %.not105.i = icmp eq ptr %i.av, null
  %i.aw = icmp eq ptr %i.av, %i.ao
  %or.cond115.i = or i1 %.not105.i, %i.aw
  br i1 %or.cond115.i, label %start_req.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = phi i64 [ %i.au, %bb.u ], [ %.pre.i51, %bb.t ] ; 3 uses
  %.095.i = phi ptr [ %i.av, %bb.u ], [ %i.at, %bb.t ] ; 2 uses
  %i.ay = ptrtoint ptr %.095.i to i64
  %i.az = ptrtoint ptr %i.ao to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.095.i, i64 1 ; 8 uses
  %i.bc = icmp ugt i64 %i.ax, %i.ba
  br i1 %i.bc, label %.lr.ph.i, label %start_req.exit.thread

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %.089170.i = phi i64 [ %i.bg, %bb.w ], [ %i.ax, %bb.v ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.089170.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.bg = add i64 %.089170.i, -1                  ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, %i.ba
  br i1 %i.bh, label %.lr.ph.i, label %start_req.exit.thread, !llvm.loop !20

bb.x:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.089170.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bb to i64
  %i.bm = xor i64 %i.bl, -1
  %i.bn = add i64 %i.bk, %i.bm                    ; 8 uses
  %i.bo = icmp ne i64 %i.ax, %.089170.i
  %i.bp = icmp ne i64 %i.bn, 0
  %or.cond.i = and i1 %i.bo, %i.bp
  br i1 %or.cond.i, label %bb.y, label %start_req.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bq = icmp eq i64 %i.bn, 1
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = load i8, ptr %i.bb, align 1, !tbaa !19
  %i.bs = icmp eq i8 %i.br, 42
  br i1 %i.bs, label %.thread137.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bt = call i32 @strncmp(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.ao, i64 noundef %i.ba) #6
  %.not106.i = icmp eq i32 %i.bt, 0
  br i1 %.not106.i, label %.thread137.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = load i8, ptr %i.bb, align 1, !tbaa !19
  %i.bv = icmp eq i8 %i.bu, 47
  br i1 %i.bv, label %.thread137.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.bw = icmp ugt i64 %i.bn, 8191
  br i1 %i.bw, label %.thread128.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.bb, i64 %i.bn, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  store i8 0, ptr %i.bx, align 1, !tbaa !19
  %i.by = call i64 @Curl_is_absolute_url(ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, i1 noundef zeroext false) #5
  %.not107.i = icmp eq i64 %i.by, 0
  br i1 %.not107.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = call ptr @curl_url() #5                 ; 5 uses
  %.not108.i = icmp eq ptr %i.bz, null
  br i1 %.not108.i, label %.thread128.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = call i32 @curl_url_set(ptr noundef nonnull %i.bz, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %spec.select.i) #5
  %.not110.i = icmp eq i32 %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not110.i, label %.thread148.i, label %start_req.exit.thread

bb.ag:                                            ; preds = %bb.ad
  br i1 %.not18.i.i, label %.thread166.i, label %.thread128.i

.thread128.i:                                     ; preds = %bb.ag, %bb.ae, %bb.ac
  %.2.ph.i = phi i32 [ 3, %bb.ag ], [ 3, %bb.ac ], [ 27, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %start_req.exit.thread

.thread166.i:                                     ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread137.i

.thread148.i:                                     ; preds = %bb.af
  %i.cb = call i32 @Curl_http_req_make2(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, i64 noundef %i.ba, ptr noundef nonnull %i.bz, ptr noundef %3) #5
  br label %start_req.exit

.thread137.i:                                     ; preds = %.thread166.i, %bb.ab, %bb.aa, %bb.z
  %.090147.i = phi i64 [ %i.bn, %.thread166.i ], [ %i.bn, %bb.ab ], [ 0, %bb.aa ], [ 1, %bb.z ]
  %.091146.i = phi i64 [ 0, %.thread166.i ], [ 0, %bb.ab ], [ %i.bn, %bb.aa ], [ 0, %bb.z ]
  %.096145.i = phi ptr [ %i.bb, %.thread166.i ], [ %i.bb, %bb.ab ], [ null, %bb.aa ], [ %i.bb, %bb.z ]
  %.097144.i = phi ptr [ null, %.thread166.i ], [ null, %bb.ab ], [ %i.bb, %bb.aa ], [ null, %bb.z ]
  br i1 %.not114.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread137.i
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread137.i
  %.092.i = phi i64 [ %i.cc, %bb.ah ], [ 0, %.thread137.i ]
  %i.cd = call i32 @Curl_http_req_make(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, i64 noundef %i.ba, ptr noundef %3, i64 noundef %.092.i, ptr noundef %.097144.i, i64 noundef %.091146.i, ptr noundef %.096145.i, i64 noundef %.090147.i) #5
  br label %start_req.exit

start_req.exit.thread:                            ; preds = %bb.u, %bb.af, %bb.x, %bb.v, %bb.w, %.thread128.i
  %.388.i.ph = phi ptr [ null, %.thread128.i ], [ null, %bb.w ], [ %i.bz, %bb.af ], [ null, %bb.x ], [ null, %bb.v ], [ null, %bb.u ]
  %.3.i.ph = phi i32 [ %.2.ph.i, %.thread128.i ], [ 3, %bb.w ], [ 3, %bb.v ], [ 3, %bb.x ], [ 3, %bb.af ], [ 3, %bb.u ]
end_hunk_0
