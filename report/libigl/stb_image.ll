inline.NumInlined: 824
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 3 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = icmp sgt i32 %i.q, %i.ac
  br i1 %i.ad, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %sext.i = shl i64 %i.ab, 32
  %i.ae = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.y, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 %i.ae
  %i.ai = sub nsw i32 %i.q, %i.ac
  %i.aj = tail call noundef i32 %i.u(ptr noundef %i.ag, ptr noundef nonnull %i.ah, i32 noundef %i.ai), !inline_history !373 ; 0 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !25
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.i, %..thread_crit_edge.i
  %i.al = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.w, %bb.i ]
  %i.am = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.y, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.r ; 2 uses
  %.not32.i = icmp ugt ptr %i.an, %i.al
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.am, i64 %i.r, i1 false)
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.j, %.thread.i, %bb.k
  %.not43 = icmp eq i32 %4, 0
  br i1 %.not43, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %.not44 = icmp eq i32 %4, %i.ap
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %0, align 8, !tbaa !96
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !97
  %i.as = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.s, i32 noundef %i.ap, i32 noundef %4, i32 noundef %i.aq, i32 noundef %i.ar)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.l, %bb.a, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.g
  %.034 = phi ptr [ null, %bb.a ], [ %i.as, %bb.m ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.g ], [ %i.s, %bb.l ], [ %i.s, %_ZL10stbi__getnP13stbi__contextPhi.exit ]
  ret ptr %.034
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.e = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not135 = icmp eq i32 %i.u, 0
  br i1 %.not135, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.87, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.v = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.w = load i8, ptr %i.a, align 16, !tbaa !23
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.011437 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.y = load i128, ptr %i.a, align 16
  %i.z = xor i128 %i.y, 144150481438637697380701673535474650950
  %i.aa = getelementptr i8, ptr %i.a, i64 7
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 526417854750532455411190335003243059
  %i.ad = or i128 %i.z, %i.ac
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select = select i1 %i.ag, i32 1, i32 %.011437 ; 2 uses
  %i.ah = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ai = load i8, ptr %i.a, align 16, !tbaa !23
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %._crit_edge, label %.lr.ph, !llvm.loop !374

._crit_edge:                                      ; preds = %.lr.ph
  %i.ak = icmp eq i32 %spec.select, 0
  br i1 %i.ak, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  store ptr @.str.89, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.e:                                             ; preds = %._crit_edge
  %i.al = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.am = load i16, ptr %i.a, align 16
  %i.an = xor i16 %i.am, 22829
  %i.ao = getelementptr i8, ptr %i.a, i64 2
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 32
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not137 = icmp eq i32 %i.au, 0
  br i1 %.not137, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !9
  %i.aw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b, i32 noundef 10) #33 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32                  ; 8 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %i.ay = load i8, ptr %.promoted, align 1, !tbaa !23 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 32
  br i1 %i.az, label %.lr.ph39, label %sub_0

.lr.ph39:                                         ; preds = %bb.g, %.lr.ph39
  %i.ba = phi ptr [ %i.bb, %.lr.ph39 ], [ %.promoted, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 4 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %.lr.ph39, label %sub_0, !llvm.loop !375

sub_0:                                            ; preds = %.lr.ph39, %bb.g
  %i.be = phi i8 [ %i.ay, %bb.g ], [ %i.bc, %.lr.ph39 ]
  %.lcssa = phi ptr [ %.promoted, %bb.g ], [ %i.bb, %.lr.ph39 ] ; 3 uses
  %.not60 = icmp eq i8 %i.be, 43
  br i1 %.not60, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %.not61 = icmp eq i8 %i.bg, 88
  br i1 %.not61, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 32
  br i1 %i.bj, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.h:                                             ; preds = %.tail
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 3 ; 2 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !9
  %i.bl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bk, ptr noundef null, i32 noundef 10) #33 ; 4 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 11 uses
  store i32 %i.bm, ptr %1, align 4, !tbaa !12
  store i32 %i.ax, ptr %2, align 4, !tbaa !12
  %.not139 = icmp eq ptr %3, null
  br i1 %.not139, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %3, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bn = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.bn, i32 3, i32 %4 ; 10 uses
  %i.bo = or i32 %i.bm, %i.ax
  %or.cond.not.i.i = icmp sgt i32 %i.bo, -1
  br i1 %or.cond.not.i.i, label %bb.k, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq i32 %i.ax, 0                    ; 2 uses
  br i1 %i.bp, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.k
  %i.bq = udiv i32 2147483647, %i.ax
  %.not34.i = icmp slt i32 %i.bq, %i.bm
  br i1 %.not34.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.k
  %i.br = mul nsw i32 %i.bm, %i.ax                ; 4 uses
  %i.bs = or i32 %i.br, %spec.store.select
  %or.cond.not.i16.i = icmp sgt i32 %i.bs, -1
  br i1 %or.cond.not.i16.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.bt = udiv i32 2147483647, %spec.store.select
  %.not.i = icmp sgt i32 %i.br, %i.bt
  %i.bu = mul nsw i32 %i.br, %spec.store.select
  %i.bv = icmp ugt i32 %i.bu, 536870911
  %or.cond181 = select i1 %.not.i, i1 true, i1 %i.bv
  br i1 %or.cond181, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %bb.m

_ZL21stbi__mad4sizes_validiiiii.exit.thread:      ; preds = %bb.j, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.l
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.bp, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.m
  %i.bw = udiv i32 2147483647, %i.ax
  %.not34.i.i = icmp slt i32 %i.bw, %i.bm
  br i1 %.not34.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.m
  %i.bx = shl i32 %spec.store.select, 2
  %i.by = mul i32 %i.bx, %i.br
  %i.bz = sext i32 %i.by to i64
  %i.ca = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.bz) #34 ; 11 uses
  %.not141 = icmp eq ptr %i.ca, null
  br i1 %.not141, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.cb = add i32 %i.bm, -32768
  %or.cond = icmp ult i32 %i.cb, -32760
  br i1 %or.cond, label %bb.o, label %.preheader18

.preheader18:                                     ; preds = %bb.n
  %i.cc = icmp sgt i32 %i.ax, 0
  br i1 %i.cc, label %.lr.ph57, label %._crit_edge58.thread

.lr.ph57:                                         ; preds = %.preheader18
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 17 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 28 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 18 uses
  %i.cl = shl i64 %i.bl, 2
  %i.cm = and i64 %i.cl, 4294967292
  %i.cn = icmp slt i32 %spec.store.select, 3
  %i.co = sext i32 %spec.store.select to i64
  %i.cp = and i64 %i.bl, 4294967295
  %wide.trip.count106 = and i64 %i.aw, 2147483647
  %wide.trip.count = and i64 %i.bl, 2147483647
  br label %bb.ag

bb.o:                                             ; preds = %bb.n, %bb.af
  %.0119 = phi i32 [ %i.fe, %bb.af ], [ 0, %bb.n ] ; 2 uses
  %i.cq = icmp slt i32 %.0119, %i.ax
  br i1 %i.cq, label %bb.p, label %._crit_edge58.thread

bb.p:                                             ; preds = %bb.o, %_ZL17stbi__hdr_convertPfPhi.exit
  %.0123 = phi i32 [ %i.fd, %_ZL17stbi__hdr_convertPfPhi.exit ], [ 0, %bb.o ] ; 2 uses
  %.1120 = phi i32 [ %.2121, %_ZL17stbi__hdr_convertPfPhi.exit ], [ %.0119, %bb.o ] ; 2 uses
  %i.cr = icmp slt i32 %.0123, %i.bm
  br i1 %i.cr, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p, %bb.aw
  %.1124 = phi i32 [ %.0123, %bb.p ], [ 1, %bb.aw ] ; 2 uses
  %.2121 = phi i32 [ %.1120, %bb.p ], [ 0, %bb.aw ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !21 ; 2 uses
  %.not.i147 = icmp eq ptr %i.ct, null
  br i1 %.not.i147, label %..thread_crit_edge.i, label %bb.r

..thread_crit_edge.i:                             ; preds = %bb.q
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !25
  br label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24 ; 3 uses
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = icmp slt i32 %i.db, 4
  br i1 %i.dc, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %sext.i = shl i64 %i.da, 32
  %i.dd = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 1 %i.cx, i64 %i.dd, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds i8, ptr %i.c, i64 %i.dd
  %i.dh = sub nsw i32 4, %i.db
  %i.di = call noundef i32 %i.ct(ptr noundef %i.df, ptr noundef nonnull %i.dg, i32 noundef %i.dh), !inline_history !373 ; 0 uses
  %i.dj = load ptr, ptr %i.cu, align 8, !tbaa !25
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.r, %..thread_crit_edge.i
  %i.dk = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.cv, %bb.r ]
  %i.dl = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.cx, %bb.r ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  %.not32.i = icmp ugt ptr %i.dm, %i.dk
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.do = load i32, ptr %i.dl, align 1
  store i32 %i.do, ptr %i.c, align 4
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.s, %.thread.i, %bb.t
  %i.dp = mul i32 %spec.store.select, %i.bm
  %i.dq = mul i32 %i.dp, %.2121
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dr
  %i.dt = mul nsw i32 %.1124, %spec.store.select
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du ; 9 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23  ; 2 uses
  %.not.i148 = icmp eq i8 %i.dx, 0
  br i1 %.not.i148, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -136
  %i.ea = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.dz) #33 ; 3 uses
  %i.eb = icmp slt i32 %spec.store.select, 3
  %i.ec = load i8, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !23
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nuw nsw i32 %i.eg, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !23
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nuw nsw i32 %i.eh, %i.ek
  %i.em = uitofp nneg i32 %i.el to float
  %i.en = fmul float %i.ea, %i.em
  %i.eo = fdiv float %i.en, 3.000000e+00
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ep = uitofp i8 %i.ec to float
  %i.eq = fmul float %i.ea, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.et = load <2 x i8>, ptr %i.er, align 1, !tbaa !23
  %i.eu = uitofp <2 x i8> %i.et to <2 x float>
  %i.ev = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.ew, %i.eu
  store <2 x float> %i.ex, ptr %i.es, align 4, !tbaa !58
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi float [ %i.eo, %bb.v ], [ %i.eq, %bb.w ]
  store float %.sink, ptr %i.dv, align 4, !tbaa !58
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %bb.y
    i32 4, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store float 1.000000e+00, ptr %i.ey, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.z:                                             ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store float 1.000000e+00, ptr %i.ez, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.aa:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %bb.ab
    i32 3, label %bb.ac
    i32 2, label %bb.ad
    i32 1, label %bb.ae
    i32 0, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store float 1.000000e+00, ptr %i.fa, align 4, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store float 0.000000e+00, ptr %i.fb, align 4, !tbaa !58
  store <2 x float> zeroinitializer, ptr %i.dv, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.ad:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store float 1.000000e+00, ptr %i.fc, align 4, !tbaa !58
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad
  store float 0.000000e+00, ptr %i.dv, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

_ZL17stbi__hdr_convertPfPhi.exit:                 ; preds = %bb.aa, %bb.x, %bb.y, %bb.z, %bb.ac, %bb.ae
  %i.fd = add nsw i32 %.1124, 1
  br label %bb.p, !llvm.loop !376

bb.af:                                            ; preds = %bb.p
  %i.fe = add nsw i32 %.1120, 1
  br label %bb.o, !llvm.loop !377

bb.ag:                                            ; preds = %.lr.ph57, %._crit_edge54
  %indvars.iv103 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next104, %._crit_edge54 ] ; 2 uses
  %.011656 = phi ptr [ null, %.lr.ph57 ], [ %.1117, %._crit_edge54 ] ; 4 uses
  %i.ff = load ptr, ptr %i.cd, align 8, !tbaa !24 ; 4 uses
  %i.fg = load ptr, ptr %i.ce, align 8, !tbaa !25 ; 3 uses
  %i.fh = icmp ult ptr %i.ff, %i.fg
  br i1 %i.fh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 1 ; 2 uses
  store ptr %i.fi, ptr %i.cd, align 8, !tbaa !24
  %i.fj = load i8, ptr %i.ff, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fk = load i32, ptr %i.cf, align 8, !tbaa !19
  %.not.i149 = icmp eq i32 %i.fk, 0
  br i1 %.not.i149, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fl = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.fm = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.fn = load i32, ptr %i.cj, align 4, !tbaa !18
  %i.fo = call noundef i32 %i.fl(ptr noundef %i.fm, ptr noundef nonnull %i.ci, i32 noundef %i.fn), !inline_history !346 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cf, align 8, !tbaa !19
  store i8 0, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds i8, ptr %i.ci, i64 %i.fq
  %.pre.i150 = load i8, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.al, %bb.ak
  %i.fs = phi i8 [ 0, %bb.ak ], [ %.pre.i150, %bb.al ]
  %.sink.i.i = phi ptr [ %i.ck, %bb.ak ], [ %i.fr, %bb.al ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.ce, align 8, !tbaa !25
  store ptr %i.ck, ptr %i.cd, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.ah, %bb.ai, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ft = phi ptr [ %i.fg, %bb.ah ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.fg, %bb.ai ] ; 3 uses
  %i.fu = phi ptr [ %i.fi, %bb.ah ], [ %i.ck, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.ff, %bb.ai ] ; 4 uses
  %.0.i151 = phi i8 [ %i.fj, %bb.ah ], [ %i.fs, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.ai ] ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %i.ft
  br i1 %i.fv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  store ptr %i.fw, ptr %i.cd, align 8, !tbaa !24
  %i.fx = load i8, ptr %i.fu, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit157

bb.an:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.fy = load i32, ptr %i.cf, align 8, !tbaa !19
  %.not.i152 = icmp eq i32 %i.fy, 0
  br i1 %.not.i152, label %_ZL10stbi__get8P13stbi__context.exit157, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fz = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.ga = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.gb = load i32, ptr %i.cj, align 4, !tbaa !18
  %i.gc = call noundef i32 %i.fz(ptr noundef %i.ga, ptr noundef nonnull %i.ci, i32 noundef %i.gb), !inline_history !346 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.cf, align 8, !tbaa !19
  store i8 0, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i154

bb.aq:                                            ; preds = %bb.ao
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds i8, ptr %i.ci, i64 %i.ge
  %.pre.i153 = load i8, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i154

_ZL19stbi__refill_bufferP13stbi__context.exit.i154: ; preds = %bb.aq, %bb.ap
  %i.gg = phi i8 [ 0, %bb.ap ], [ %.pre.i153, %bb.aq ]
  %.sink.i.i155 = phi ptr [ %i.ck, %bb.ap ], [ %i.gf, %bb.aq ] ; 2 uses
  store ptr %.sink.i.i155, ptr %i.ce, align 8, !tbaa !25
  store ptr %i.ck, ptr %i.cd, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit157

_ZL10stbi__get8P13stbi__context.exit157:          ; preds = %bb.am, %bb.an, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154
  %i.gh = phi ptr [ %i.ft, %bb.am ], [ %.sink.i.i155, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154 ], [ %i.ft, %bb.an ] ; 3 uses
  %i.gi = phi ptr [ %i.fw, %bb.am ], [ %i.ck, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154 ], [ %i.fu, %bb.an ] ; 4 uses
  %.0.i156 = phi i8 [ %i.fx, %bb.am ], [ %i.gg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i154 ], [ 0, %bb.an ] ; 2 uses
  %i.gj = icmp ult ptr %i.gi, %i.gh
  br i1 %i.gj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit157
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1 ; 2 uses
  store ptr %i.gk, ptr %i.cd, align 8, !tbaa !24
  %i.gl = load i8, ptr %i.gi, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit163

bb.as:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit157
  %i.gm = load i32, ptr %i.cf, align 8, !tbaa !19
  %.not.i158 = icmp eq i32 %i.gm, 0
  br i1 %.not.i158, label %_ZL10stbi__get8P13stbi__context.exit163, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gn = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.go = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.gp = load i32, ptr %i.cj, align 4, !tbaa !18
  %i.gq = call noundef i32 %i.gn(ptr noundef %i.go, ptr noundef nonnull %i.ci, i32 noundef %i.gp), !inline_history !346 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.cf, align 8, !tbaa !19
  store i8 0, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i160

bb.av:                                            ; preds = %bb.at
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr inbounds i8, ptr %i.ci, i64 %i.gs
  %.pre.i159 = load i8, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i160

_ZL19stbi__refill_bufferP13stbi__context.exit.i160: ; preds = %bb.av, %bb.au
  %i.gu = phi i8 [ 0, %bb.au ], [ %.pre.i159, %bb.av ]
  %.sink.i.i161 = phi ptr [ %i.ck, %bb.au ], [ %i.gt, %bb.av ] ; 2 uses
  store ptr %.sink.i.i161, ptr %i.ce, align 8, !tbaa !25
  store ptr %i.ck, ptr %i.cd, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit163

_ZL10stbi__get8P13stbi__context.exit163:          ; preds = %bb.ar, %bb.as, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160
  %i.gv = phi ptr [ %i.gh, %bb.ar ], [ %.sink.i.i161, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160 ], [ %i.gh, %bb.as ]
  %i.gw = phi ptr [ %i.gk, %bb.ar ], [ %i.ck, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160 ], [ %i.gi, %bb.as ] ; 3 uses
  %.0.i162 = phi i8 [ %i.gl, %bb.ar ], [ %i.gu, %_ZL19stbi__refill_bufferP13stbi__context.exit.i160 ], [ 0, %bb.as ] ; 3 uses
  %i.gx = icmp eq i8 %.0.i151, 2
  %i.gy = icmp eq i8 %.0.i156, 2
  %or.cond3.not12 = and i1 %i.gx, %i.gy
  %.not143 = icmp sgt i8 %.0.i162, -1
  %or.cond146 = and i1 %or.cond3.not12, %.not143
  br i1 %or.cond146, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i8 %.0.i151, ptr %i.d, align 1, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.0.i156, ptr %i.gz, align 1, !tbaa !23
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %.0.i162, ptr %i.ha, align 1, !tbaa !23
  %i.hb = call fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef nonnull %0)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !23
  call fastcc void @_ZL17stbi__hdr_convertPfPhi(ptr noundef %i.ca, ptr noundef %i.d, i32 noundef %spec.store.select)
  call void @free(ptr noundef %.011656) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.q

bb.ax:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit163
  %i.hd = zext nneg i8 %.0.i162 to i32
  %i.he = shl nuw nsw i32 %i.hd, 8
  %i.hf = icmp ult ptr %i.gw, %i.gv
  br i1 %i.hf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.hg, ptr %i.cd, align 8, !tbaa !24
  %i.hh = load i8, ptr %i.gw, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit169

bb.az:                                            ; preds = %bb.ax
  %i.hi = load i32, ptr %i.cf, align 8, !tbaa !19
  %.not.i164 = icmp eq i32 %i.hi, 0
  br i1 %.not.i164, label %_ZL10stbi__get8P13stbi__context.exit169, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hj = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.hk = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.hl = load i32, ptr %i.cj, align 4, !tbaa !18
  %i.hm = call noundef i32 %i.hj(ptr noundef %i.hk, ptr noundef nonnull %i.ci, i32 noundef %i.hl), !inline_history !346 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.cf, align 8, !tbaa !19
  store i8 0, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i166

bb.bc:                                            ; preds = %bb.ba
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds i8, ptr %i.ci, i64 %i.ho
  %.pre.i165 = load i8, ptr %i.ci, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.jh = getelementptr i8, ptr %invariant.gep178, i64 %indvars.iv.next92
  %gep179.1 = getelementptr i8, ptr %i.jh, i64 4
  store i8 %.0.i183, ptr %gep179.1, align 1, !tbaa !23
  %indvars.iv.next92.1 = shl i64 %indvars.iv91, 2
  %i.ji = getelementptr i8, ptr %invariant.gep178, i64 %indvars.iv.next92.1
  %gep179.2 = getelementptr i8, ptr %i.ji, i64 8
  store i8 %.0.i183, ptr %gep179.2, align 1, !tbaa !23
  %indvars.iv.next92.3 = add nsw i64 %indvars.iv91, 4 ; 3 uses
  %indvars.iv.next92.2 = shl i64 %indvars.iv91, 2
  %i.jj = getelementptr i8, ptr %invariant.gep178, i64 %indvars.iv.next92.2
  %gep179.3 = getelementptr i8, ptr %i.jj, i64 12
  store i8 %.0.i183, ptr %gep179.3, align 1, !tbaa !23
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph47, !llvm.loop !378

_ZL10stbi__get8P13stbi__context.exit178.thread:   ; preds = %_ZL10stbi__get8P13stbi__context.exit178
  %i.jk = icmp samesign ult i32 %i.hw, %i.in
  br i1 %i.jk, label %bb.bs, label %.preheader14

.preheader14:                                     ; preds = %_ZL10stbi__get8P13stbi__context.exit178.thread
  %.not62 = icmp eq i8 %.0.i177, 0
  br i1 %.not62, label %.loopexit, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %.preheader14
  %i.jl = sext i32 %.212549 to i64
  br label %.lr.ph43

bb.bs:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit178.thread
  call void @free(ptr noundef %i.ca) #33
  call void @free(ptr noundef nonnull %.1117) #33
  store ptr @.str.79, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %_ZL10stbi__get8P13stbi__context.exit190
  %indvars.iv = phi i64 [ %i.jl, %.lr.ph43.preheader ], [ %indvars.iv.next, %_ZL10stbi__get8P13stbi__context.exit190 ] ; 2 uses
  %.111342 = phi i32 [ 0, %.lr.ph43.preheader ], [ %i.kb, %_ZL10stbi__get8P13stbi__context.exit190 ]
  %i.jm = load ptr, ptr %i.cd, align 8, !tbaa !24 ; 3 uses
  %i.jn = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.jo = icmp ult ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph43
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  store ptr %i.jp, ptr %i.cd, align 8, !tbaa !24
  %i.jq = load i8, ptr %i.jm, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit190

bb.bu:                                            ; preds = %.lr.ph43
  %i.jr = load i32, ptr %i.cf, align 8, !tbaa !19
  %.not.i185 = icmp eq i32 %i.jr, 0
  br i1 %.not.i185, label %_ZL10stbi__get8P13stbi__context.exit190, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.js = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.jt = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.ju = load i32, ptr %i.cj, align 4, !tbaa !18
  %i.jv = call noundef i32 %i.js(ptr noundef %i.jt, ptr noundef nonnull %i.ci, i32 noundef %i.ju), !inline_history !346 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.cf, align 8, !tbaa !19
  store i8 0, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i187

bb.bx:                                            ; preds = %bb.bv
  %i.jx = sext i32 %i.jv to i64
  %i.jy = getelementptr inbounds i8, ptr %i.ci, i64 %i.jx
  %.pre.i186 = load i8, ptr %i.ci, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i187

_ZL19stbi__refill_bufferP13stbi__context.exit.i187: ; preds = %bb.bx, %bb.bw
  %i.jz = phi i8 [ 0, %bb.bw ], [ %.pre.i186, %bb.bx ]
  %.sink.i.i188 = phi ptr [ %i.ck, %bb.bw ], [ %i.jy, %bb.bx ]
  store ptr %.sink.i.i188, ptr %i.ce, align 8, !tbaa !25
  store ptr %i.ck, ptr %i.cd, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit190

_ZL10stbi__get8P13stbi__context.exit190:          ; preds = %bb.bt, %bb.bu, %_ZL19stbi__refill_bufferP13stbi__context.exit.i187
  %.0.i189 = phi i8 [ %i.jq, %bb.bt ], [ %i.jz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i187 ], [ 0, %bb.bu ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ka = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ka
  store i8 %.0.i189, ptr %gep, align 1, !tbaa !23
  %i.kb = add nuw nsw i32 %.111342, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.kb, %i.in
  br i1 %exitcond.not, label %.loopexit.loopexit64, label %.lr.ph43, !llvm.loop !379

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph47
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph47.epil.preheader

.lr.ph47.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph47.preheader
  %indvars.iv91.epil.init = phi i64 [ %i.je, %.lr.ph47.preheader ], [ %indvars.iv.next92.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph47.epil

.lr.ph47.epil:                                    ; preds = %.lr.ph47.epil, %.lr.ph47.epil.preheader
  %indvars.iv91.epil = phi i64 [ %indvars.iv91.epil.init, %.lr.ph47.epil.preheader ], [ %indvars.iv.next92.epil, %.lr.ph47.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph47.epil.preheader ], [ %epil.iter.next, %.lr.ph47.epil ]
  %indvars.iv.next92.epil = add nsw i64 %indvars.iv91.epil, 1 ; 2 uses
  %i.kc = shl nsw i64 %indvars.iv91.epil, 2
  %gep179.epil = getelementptr i8, ptr %invariant.gep178, i64 %i.kc
  store i8 %.0.i183, ptr %gep179.epil, align 1, !tbaa !23
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph47.epil, !llvm.loop !380

.loopexit.loopexit:                               ; preds = %.lr.ph47.epil, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next92.lcssa = phi i64 [ %indvars.iv.next92.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next92.epil, %.lr.ph47.epil ]
  %i.kd = trunc nsw i64 %indvars.iv.next92.lcssa to i32
  br label %.loopexit

.loopexit.loopexit64:                             ; preds = %_ZL10stbi__get8P13stbi__context.exit190
  %i.ke = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bh, %.loopexit.loopexit64, %.loopexit.loopexit, %.preheader14, %.preheader
  %.5 = phi i32 [ %i.kd, %.loopexit.loopexit ], [ %.212549, %.preheader ], [ %.212549, %.preheader14 ], [ %i.ke, %.loopexit.loopexit64 ], [ %.212549, %bb.bh ] ; 2 uses
  %i.kf = sub nsw i32 %i.bm, %.5                  ; 2 uses
  %i.kg = icmp slt i32 %i.kf, 1
  br i1 %i.kg, label %..critedge_crit_edge, label %bb.bf, !llvm.loop !381

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, 4
  br i1 %exitcond98.not, label %.lr.ph53, label %.preheader16, !llvm.loop !382

bb.by:                                            ; preds = %.lr.ph53, %_ZL17stbi__hdr_convertPfPhi.exit192
  %indvars.iv99 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next100, %_ZL17stbi__hdr_convertPfPhi.exit192 ] ; 3 uses
  %i.kh = add nuw nsw i64 %indvars.iv99, %i.hv
  %i.ki = mul nsw i64 %i.kh, %i.co
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ki ; 11 uses
  %i.kk = shl nuw nsw i64 %indvars.iv99, 2
  %i.kl = getelementptr inbounds nuw i8, ptr %.1117, i64 %i.kk ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 3
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !23  ; 2 uses
  %.not.i191 = icmp eq i8 %i.kn, 0
  br i1 %.not.i191, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ko = zext i8 %i.kn to i32
  %i.kp = add nsw i32 %i.ko, -136
  %i.kq = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.kp) #33 ; 4 uses
  %i.kr = load i8, ptr %i.kl, align 1, !tbaa !23  ; 2 uses
  br i1 %i.cn, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ks = zext i8 %i.kr to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !23
  %i.kv = zext i8 %i.ku to i32
  %i.kw = add nuw nsw i32 %i.kv, %i.ks
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !23
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nuw nsw i32 %i.kw, %i.kz
  %i.lb = uitofp nneg i32 %i.la to float
  %i.lc = fmul float %i.kq, %i.lb
  %i.ld = fdiv float %i.lc, 3.000000e+00
  store float %i.ld, ptr %i.kj, align 4, !tbaa !58
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.le = uitofp i8 %i.kr to float
  %i.lf = fmul float %i.kq, %i.le
  store float %i.lf, ptr %i.kj, align 4, !tbaa !58
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !23
  %i.li = uitofp i8 %i.lh to float
  %i.lj = fmul float %i.kq, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store float %i.lj, ptr %i.lk, align 4, !tbaa !58
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !23
  %i.ln = uitofp i8 %i.lm to float
  %i.lo = fmul float %i.kq, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store float %i.lo, ptr %i.lp, align 4, !tbaa !58
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit192 [
    i32 2, label %bb.cd
    i32 4, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store float 1.000000e+00, ptr %i.lq, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit192

bb.ce:                                            ; preds = %bb.cc
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  store float 1.000000e+00, ptr %i.lr, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit192

bb.cf:                                            ; preds = %bb.by
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit192 [
    i32 4, label %bb.cg
    i32 3, label %bb.ch
    i32 2, label %bb.ci
    i32 1, label %bb.cj
    i32 0, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  store float 1.000000e+00, ptr %i.ls, align 4, !tbaa !58
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cf, %bb.cg
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store float 0.000000e+00, ptr %i.lt, align 4, !tbaa !58
  store <2 x float> zeroinitializer, ptr %i.kj, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit192

bb.ci:                                            ; preds = %bb.cf
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store float 1.000000e+00, ptr %i.lu, align 4, !tbaa !58
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cf, %bb.ci
  store float 0.000000e+00, ptr %i.kj, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit192

_ZL17stbi__hdr_convertPfPhi.exit192:              ; preds = %bb.cf, %bb.cc, %bb.cd, %bb.ce, %bb.ch, %bb.cj
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond102.not, label %._crit_edge54, label %bb.by, !llvm.loop !383

._crit_edge54:                                    ; preds = %_ZL17stbi__hdr_convertPfPhi.exit192
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge58, label %bb.ag, !llvm.loop !384

._crit_edge58:                                    ; preds = %._crit_edge54
  call void @free(ptr noundef nonnull %.1117) #33
  br label %._crit_edge58.thread

._crit_edge58.thread:                             ; preds = %.preheader18, %bb.br, %bb.bs, %bb.o, %._crit_edge58, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.bd, %_ZL17stbi__malloc_mad4iiiii.exit.thread, %_ZL21stbi__mad4sizes_validiiiii.exit.thread, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %._crit_edge.thread ], [ null, %bb.bd ], [ %i.ca, %bb.o ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread ], [ null, %_ZL21stbi__mad4sizes_validiiiii.exit.thread ], [ null, %bb.br ], [ %i.ca, %._crit_edge58 ], [ null, %bb.bs ], [ %i.ca, %.preheader18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL16stbi__hdr_to_ldrPfiii(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not23.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.d = mul nsw i32 %2, %1                       ; 7 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.h = mul nsw i32 %i.d, %3
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.i) #34 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef nonnull %0) #33
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %bb.i

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.l = and i32 %3, 1
  %sext = add i32 %3, -1
  %.045 = add i32 %sext, %i.l                     ; 4 uses
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge57

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.n = icmp sgt i32 %.045, 0
  %i.o = load float, ptr @_ZL17stbi__h2l_scale_i, align 4
  %i.p = load float, ptr @_ZL17stbi__h2l_gamma_i, align 4
  br i1 %i.n, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.q = sext i32 %3 to i64
  %wide.trip.count68 = zext nneg i32 %i.d to i64
  %wide.trip.count63 = zext nneg i32 %.045 to i64
  %i.r = icmp slt i32 %.045, %3
  %i.s = zext nneg i32 %.045 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv65 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next66, %bb.h ] ; 2 uses
  %i.t = mul nsw i64 %indvars.iv65, %i.q          ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv60 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next61, %bb.f ] ; 2 uses
  %i.u = add nsw i64 %indvars.iv60, %i.t          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = fmul float %i.w, %i.o
  %i.y = tail call noundef float @powf(float noundef %i.x, float noundef %i.p) #33
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.aa = fcmp olt float %i.z, 0.000000e+00
  %.042.us = select i1 %i.aa, float 0.000000e+00, float %i.z ; 2 uses
  %i.ab = fcmp ogt float %.042.us, 2.550000e+02
  %.143.us = select i1 %i.ab, float 2.550000e+02, float %.042.us
  %i.ac = fptosi float %.143.us to i32
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds i8, ptr %i.j, i64 %i.u
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !23
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge.us, label %bb.f, !llvm.loop !385

bb.g:                                             ; preds = %._crit_edge.us
  %i.af = add nsw i64 %i.t, %i.s                  ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !58
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.aj = fcmp olt float %i.ai, 0.000000e+00
  %.0.us = select i1 %i.aj, float 0.000000e+00, float %i.ai ; 2 uses
  %i.ak = fcmp ogt float %.0.us, 2.550000e+02
  %.1.us = select i1 %i.ak, float 2.550000e+02, float %.0.us
  %i.al = fptosi float %.1.us to i32
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds i8, ptr %i.j, i64 %i.af
  store i8 %i.am, ptr %i.an, align 1, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge57, label %.preheader.us, !llvm.loop !386

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ao = icmp sgt i32 %3, 0
  br i1 %i.ao, label %.preheader.preheader, label %._crit_edge57

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ap = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader.preheader78

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.aq, align 4, !tbaa !58
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.as = fcmp olt <4 x float> %i.ar, zeroinitializer
  %i.at = select <4 x i1> %i.as, <4 x float> zeroinitializer, <4 x float> %i.ar ; 2 uses
  %i.au = fcmp ogt <4 x float> %i.at, splat (float 2.550000e+02)
  %i.av = select <4 x i1> %i.au, <4 x float> splat (float 2.550000e+02), <4 x float> %i.at
  %i.aw = fptosi <4 x float> %i.av to <4 x i32>
  %i.ax = trunc <4 x i32> %i.aw to <4 x i8>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge57, label %.preheader.preheader78

.preheader.preheader78:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader78, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader78 ] ; 2 uses
  %i.ba = mul nuw nsw i64 %indvars.iv, %i.ap      ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !58
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.be = fcmp olt float %i.bd, 0.000000e+00
  %.0 = select i1 %i.be, float 0.000000e+00, float %i.bd ; 2 uses
  %i.bf = fcmp ogt float %.0, 2.550000e+02
  %.1 = select i1 %i.bf, float 2.550000e+02, float %.0
  %i.bg = fptosi float %.1 to i32
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ba
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge57, label %.preheader, !llvm.loop !388

._crit_edge57:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge57, %_ZL17stbi__malloc_mad3iiii.exit.thread
end_hunk_1
