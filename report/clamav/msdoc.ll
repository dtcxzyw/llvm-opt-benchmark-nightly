inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ole2_summary_propset_json:bb.a
bb.dh:                                            ; preds = %bb.df
  %i.hi = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.hd
  %.0.copyload37.i = load i32, ptr %i.hi, align 1
  %i.hj = trunc nuw i64 %i.he to i32
  %i.hk = shl i32 %.0.copyload37.i, 1             ; 3 uses
  %i.hl = icmp ugt i32 %i.hk, 512
  br i1 %i.hl, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.hm = zext i32 %i.hk to i64
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.85, i64 noundef %i.hm, i64 noundef 512) #9
  %i.hn = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.ho = or i32 %i.hn, 512
  store i32 %i.ho, ptr %i.ao, align 8, !tbaa !40
  %.pre.i = load i32, ptr %i.u, align 4, !tbaa !46
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.hp = phi i32 [ %.pre.i, %bb.di ], [ %i.bj, %bb.dh ]
  %.0286.i = phi i32 [ 512, %bb.di ], [ %i.hk, %bb.dh ] ; 3 uses
  %i.hq = add i32 %.0286.i, %i.hj
  %i.hr = icmp ugt i32 %i.hq, %i.hp
  br i1 %i.hr, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.hs = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.ht = or i32 %i.hs, 2
  store i32 %i.ht, ptr %i.ao, align 8, !tbaa !40
  br label %.thread

bb.dl:                                            ; preds = %bb.dj
  %i.hu = add nuw nsw i32 %.0286.i, 2
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = call ptr @cli_max_calloc(i64 noundef %i.hv, i64 noundef 1) #9 ; 7 uses
  %.not343.i = icmp eq ptr %i.hw, null
  br i1 %.not343.i, label %.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.hx = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.he
  %i.hy = zext nneg i32 %.0286.i to i64           ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hw, ptr nonnull readonly align 1 %i.hx, i64 %i.hy, i1 false)
  %i.hz = call fastcc ptr @ole2_convert_utf(ptr noundef nonnull %0, ptr noundef %i.hw, i64 noundef %i.hy, ptr noundef nonnull @.str.88) ; 2 uses
  %.not344.i = icmp eq ptr %i.hz, null
  br i1 %.not344.i, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ia = call ptr @cl_base64_encode(ptr noundef nonnull %i.hw, i64 noundef %i.hy) #9 ; 3 uses
  %.not345.i = icmp eq ptr %i.ia, null
  br i1 %.not345.i, label %.thread396.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ib = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ic = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 256, ptr noundef nonnull @.str.87, ptr noundef %i.ib) #9 ; 0 uses
  %i.id = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.ie = call i32 @cli_jsonbool(ptr noundef %i.id, ptr noundef nonnull %i.b, i32 noundef 1) #9 ; 2 uses
  %.not346.i = icmp eq i32 %i.ie, 0
  br i1 %.not346.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @free(ptr noundef nonnull %i.hw) #9
  br label %.thread396.i

.thread396.i:                                     ; preds = %bb.dn, %bb.dp
  %.lcssa135.sink = phi ptr [ %i.ia, %bb.dp ], [ %i.hw, %bb.dn ]
  %.14320.ph.i = phi i32 [ %i.ie, %bb.dp ], [ 20, %bb.dn ]
  call void @free(ptr noundef nonnull %.lcssa135.sink) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.thread

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dm
  %.0.i = phi ptr [ %i.hz, %bb.dm ], [ %i.ia, %bb.dq ] ; 2 uses
  %i.if = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.ig = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.ih = call i32 @cli_jsonstr(ptr noundef %i.if, ptr noundef %i.ig, ptr noundef nonnull %.0.i) #9
  call void @free(ptr noundef nonnull %i.hw) #9
  call void @free(ptr noundef nonnull %.0.i) #9
  br label %ole2_process_property.exit

bb.ds:                                            ; preds = %bb.bm
  %i.ii = zext i32 %i.br to i64                   ; 2 uses
  %i.ij = add nuw nsw i64 %i.ii, 8
  %.not342.i = icmp samesign ugt i64 %i.ij, %i.bk
  br i1 %.not342.i, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ik = add i32 %.0.copyload, 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ii
  %.0.copyload23.i = load i32, ptr %i.il, align 1
  %i.im = zext i32 %i.ik to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.im
  %.0.copyload.i = load i32, ptr %i.in, align 1
  %i.io = zext i32 %.0.copyload.i to i64
  %i.ip = shl nuw i64 %i.io, 32
  %i.iq = zext i32 %.0.copyload23.i to i64
  %i.ir = or disjoint i64 %i.ip, %i.iq
  %i.is = udiv i64 %i.ir, 10000000
  %i.it = add nsw i64 %i.is, -11644473600         ; 2 uses
  %.not341.i = icmp ult i64 %i.it, 4294967296
  br i1 %.not341.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.89) #9
  br label %ole2_process_property.exit.thread83

bb.dv:                                            ; preds = %bb.dt
  %i.iu = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.iv = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.iw = trunc nuw i64 %i.it to i32
  %i.ix = call i32 @cli_jsonint(ptr noundef %i.iu, ptr noundef %i.iv, i32 noundef %i.iw) #9
  br label %ole2_process_property.exit

bb.dw:                                            ; preds = %bb.ds
  %i.iy = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.iz = or i32 %i.iy, 2
  store i32 %i.iz, ptr %i.ao, align 8, !tbaa !40
  br label %.thread

bb.dx:                                            ; preds = %bb.bm
  %i.ja = zext i16 %.0.copyload122.i to i32
  %i.jb = load ptr, ptr %i.e, align 8, !tbaa !45
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.90, i32 noundef %i.ja, ptr noundef %i.jb) #9
  %i.jc = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.jd = or i32 %i.jc, 256
  store i32 %i.jd, ptr %i.ao, align 8, !tbaa !40
  br label %ole2_process_property.exit.thread83

ole2_process_property.exit:                       ; preds = %bb.bn, %bb.bq, %bb.br, %bb.bu, %bb.bw, %bb.by, %bb.ca, %.thread373.i, %.thread375.i, %bb.ci, %bb.ck, %bb.cm, %bb.co, %bb.de, %bb.dr, %bb.dv
  %.18324.i = phi i32 [ %i.ix, %bb.dv ], [ %i.ct, %bb.bu ], [ %i.dd, %bb.bw ], [ %i.dn, %bb.by ], [ %i.dw, %bb.ca ], [ %i.ec, %.thread373.i ], [ %i.ek, %.thread375.i ], [ %i.ew, %bb.ci ], [ %i.fe, %bb.ck ], [ %i.fm, %bb.cm ], [ %i.fu, %bb.co ], [ %i.bx, %bb.bn ], [ %i.hc, %bb.de ], [ %i.ih, %bb.dr ], [ %i.cj, %bb.br ], [ %i.cf, %bb.bq ] ; 2 uses
  %.not78 = icmp eq i32 %.18324.i, 0
  br i1 %.not78, label %ole2_process_property.exit.thread83, label %.thread

ole2_process_property.exit.thread83:              ; preds = %bb.dx, %bb.cq, %bb.du, %ole2_translate_docsummary_propid.exit, %ole2_process_property.exit
  %i.je = add nuw nsw i32 %.06799, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.je, %.069
  br i1 %exitcond.not, label %.thread, label %bb.k

.thread:                                          ; preds = %ole2_process_property.exit.thread83, %ole2_process_property.exit, %bb.cx, %bb.dl, %.preheader, %bb.dk, %.thread396.i, %bb.cu, %.thread386.i, %bb.dg, %bb.cs, %.thread383.i, %.thread381.i, %.thread379.i, %.thread377.i, %bb.ce, %bb.cc, %.thread371.i, %.thread369.i, %.thread367.i, %.thread365.i, %bb.bs, %bb.dw, %bb.bl, %bb.bj, %bb.bh, %bb.l, %bb.j, %bb.h, %bb.d, %bb.b
  %.2 = phi i32 [ 26, %bb.b ], [ 26, %bb.h ], [ 26, %bb.dw ], [ 12, %bb.d ], [ 12, %bb.j ], [ 26, %bb.l ], [ 26, %bb.bl ], [ 26, %bb.dk ], [ %.14320.ph.i, %.thread396.i ], [ 26, %bb.bj ], [ 26, %bb.cu ], [ %.11317.ph.i, %.thread386.i ], [ 21, %bb.bh ], [ 26, %bb.dg ], [ 26, %bb.cs ], [ 26, %.thread383.i ], [ 26, %.thread381.i ], [ 26, %.thread379.i ], [ 26, %.thread377.i ], [ 26, %bb.ce ], [ 26, %bb.cc ], [ 26, %.thread371.i ], [ 26, %.thread369.i ], [ 26, %.thread367.i ], [ 26, %.thread365.i ], [ 26, %bb.bs ], [ 0, %.preheader ], [ %.18324.i, %ole2_process_property.exit ], [ 20, %bb.cx ], [ 0, %ole2_process_property.exit.thread83 ], [ 20, %bb.dl ]
  ret i32 %.2
}

declare i32 @cli_jsonbool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @cli_jsonarray(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_jsonstr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_json_timeout_cycle_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_jsonnull(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_jsonint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cli_jsondouble(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @cli_jsonint64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ole2_convert_utf(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, 513) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 11 uses
  %i.e = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.92) #9
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @calloc(i64 noundef 1, i64 noundef 1) #10
  br label %.loopexit127

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !38
  switch i16 %i.i, label %bb.o [
    i16 20127, label %bb.d
    i16 -535, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.j = add nuw nsw i64 %2, 1
  %i.k = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.j) #9 ; 10 uses
  %.not120 = icmp eq ptr %i.k, null
  br i1 %.not120, label %.loopexit127, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.l = load i16, ptr %i.h, align 8, !tbaa !38
  %i.m = icmp eq i16 %i.l, -535
  br i1 %i.m, label %bb.f, label %.loopexit127

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i64 %2, -1                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !47    ; 4 uses
  %.not121 = icmp sgt i8 %i.p, -1
  br i1 %.not121, label %.loopexit127, label %.preheader128

.preheader128:                                    ; preds = %bb.f
  %.not122136 = icmp eq i64 %i.n, 0
  br i1 %.not122136, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader128
  %.not123202 = icmp slt i8 %i.p, -64
  br i1 %.not123202, label %.lr.ph205, label %._crit_edge

.lr.phthread-pre-split:                           ; preds = %.lr.ph205
  %i.q = add nuw i64 %.086138203, 1               ; 2 uses
  %.pr = load i8, ptr %i.r, align 1, !tbaa !47    ; 2 uses
  %.not123 = icmp slt i8 %.pr, -64
  br i1 %.not123, label %.lr.ph205, label %._crit_edge

.lr.ph205:                                        ; preds = %.lr.ph.preheader, %.lr.phthread-pre-split
  %.087137204 = phi ptr [ %i.r, %.lr.phthread-pre-split ], [ %i.o, %.lr.ph.preheader ]
  %.086138203 = phi i64 [ %i.q, %.lr.phthread-pre-split ], [ 1, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds i8, ptr %.087137204, i64 -1 ; 4 uses
  %.not122 = icmp eq ptr %i.r, %i.k
  br i1 %.not122, label %.._crit_edge.loopexit_crit_edge, label %.lr.phthread-pre-split

.._crit_edge.loopexit_crit_edge:                  ; preds = %.lr.ph205
  %.pre.pre = load i8, ptr %i.k, align 1, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.phthread-pre-split, %.lr.ph.preheader, %.._crit_edge.loopexit_crit_edge
  %i.s = phi i8 [ %.pre.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.p, %.lr.ph.preheader ], [ %.pr, %.lr.phthread-pre-split ] ; 2 uses
  %.087.lcssa = phi ptr [ %i.k, %.._crit_edge.loopexit_crit_edge ], [ %i.o, %.lr.ph.preheader ], [ %i.r, %.lr.phthread-pre-split ] ; 2 uses
  %.086.lcssa = phi i64 [ %2, %.._crit_edge.loopexit_crit_edge ], [ 1, %.lr.ph.preheader ], [ %i.q, %.lr.phthread-pre-split ] ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.m, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader128, %._crit_edge
  %.in = phi i8 [ %i.s, %._crit_edge ], [ %i.p, %.preheader128 ]
  %.086.lcssa190 = phi i64 [ %.086.lcssa, %._crit_edge ], [ 1, %.preheader128 ] ; 7 uses
  %.087.lcssa188 = phi ptr [ %.087.lcssa, %._crit_edge ], [ %i.o, %.preheader128 ] ; 7 uses
  %i.u = zext i8 %.in to i32                      ; 7 uses
  %i.v = and i32 %i.u, 64
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %i.x = and i32 %i.u, 32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = and i32 %i.u, 16
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = and i32 %i.u, 8
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = and i32 %i.u, 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = and i32 %i.u, 2
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = and i32 %i.u, 1
  %i.ai = icmp eq i32 %i.ah, 0
  %spec.select = select i1 %i.ai, i64 7, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %._crit_edge.thread, %._crit_edge
  %.086.lcssa191 = phi i64 [ %.086.lcssa, %._crit_edge ], [ %.086.lcssa190, %bb.i ], [ %.086.lcssa190, %._crit_edge.thread ], [ %.086.lcssa190, %bb.l ], [ %.086.lcssa190, %bb.g ], [ %.086.lcssa190, %bb.j ], [ %.086.lcssa190, %bb.h ], [ %.086.lcssa190, %bb.k ] ; 3 uses
  %.087.lcssa189 = phi ptr [ %.087.lcssa, %._crit_edge ], [ %.087.lcssa188, %bb.i ], [ %.087.lcssa188, %._crit_edge.thread ], [ %.087.lcssa188, %bb.l ], [ %.087.lcssa188, %bb.g ], [ %.087.lcssa188, %bb.j ], [ %.087.lcssa188, %bb.h ], [ %.087.lcssa188, %bb.k ]
  %.0.lcssa = phi i64 [ 0, %._crit_edge ], [ 4, %bb.i ], [ 1, %._crit_edge.thread ], [ %spec.select, %bb.l ], [ 2, %bb.g ], [ 5, %bb.j ], [ 3, %bb.h ], [ 6, %bb.k ] ; 2 uses
  %.not124 = icmp eq i64 %.086.lcssa191, %.0.lcssa
  br i1 %.not124, label %.loopexit127, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.93, i64 noundef %.086.lcssa191, i64 noundef %.0.lcssa) #9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.087.lcssa189, i8 0, i64 %.086.lcssa191, i1 false), !tbaa !47
  br label %.loopexit127

bb.o:                                             ; preds = %bb.c
  %i.aj = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %2) #9 ; 6 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.loopexit127, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.c, align 8, !tbaa !49
  %.not116 = icmp eq ptr %3, null
  br i1 %.not116, label %.preheader126, label %bb.z

.preheader126:                                    ; preds = %bb.p
  %i.ak = load i16, ptr %i.h, align 8, !tbaa !38  ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %.preheader126
  %.090150 = phi i64 [ 0, %.preheader126 ], [ %i.ay, %bb.w ] ; 3 uses
  %.098149 = phi ptr [ null, %.preheader126 ], [ %.199.1, %bb.w ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr @codepage_entries, i64 %.090150 ; 2 uses
  %i.am = load i16, ptr %i.al, align 16, !tbaa !50 ; 2 uses
  %i.an = icmp eq i16 %i.ak, %i.am
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aq = icmp ult i16 %i.ak, %i.am
  br i1 %i.aq, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.199 = phi ptr [ %i.ap, %bb.r ], [ %.098149, %bb.s ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr @codepage_entries, i64 %.090150 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i16, ptr %i.as, align 16, !tbaa !50 ; 2 uses
  %i.au = icmp eq i16 %i.ak, %i.at
  br i1 %i.au, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = icmp ult i16 %i.ak, %i.at
  br i1 %i.av, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.199.1 = phi ptr [ %i.ax, %bb.v ], [ %.199, %bb.u ] ; 2 uses
  %i.ay = add nuw nsw i64 %.090150, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ay, 152
  br i1 %exitcond.not.1, label %bb.x, label %bb.q

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.s
  %.098.lcssa = phi ptr [ %.098149, %bb.s ], [ %.199.1, %bb.w ], [ %.199, %bb.u ] ; 2 uses
  %.not117 = icmp eq ptr %.098.lcssa, null
  br i1 %.not117, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.az = zext i16 %i.ak to i32
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.94, i32 noundef %i.az) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !40
  %i.bc = or i32 %i.bb, 1024
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.aj) #9
  br label %.loopexit127

bb.z:                                             ; preds = %bb.x, %bb.p
  %.2100 = phi ptr [ %3, %bb.p ], [ %.098.lcssa, %bb.x ] ; 2 uses
  %i.bd = tail call noalias ptr @iconv_open(ptr noundef nonnull @.str.95, ptr noundef nonnull %.2100) #9 ; 6 uses
  %i.be = icmp eq ptr %i.bd, inttoptr (i64 -1 to ptr)
  br i1 %i.be, label %bb.aa, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.z
  %i.bf = shl nuw nsw i64 %2, 1                   ; 7 uses
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = tail call ptr @cli_max_realloc(ptr noundef null, i64 noundef %i.bg) #9 ; 6 uses
  %.not118 = icmp eq ptr %i.bh, null
  br i1 %.not118, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.bi = tail call ptr @__errno_location() #11
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.bk = call ptr @cli_strerror(i32 noundef %i.bj, ptr noundef nonnull %i.e, i64 noundef 128) #9 ; 0 uses
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.96, ptr noundef nonnull %.2100, ptr noundef nonnull %i.e) #9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !40
  %i.bn = or i32 %i.bm, 2048
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.am

bb.ab:                                            ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  call void @free(ptr noundef %i.aj) #9
  %i.bo = call i32 @iconv_close(ptr noundef %i.bd) #9 ; 0 uses
  br label %.loopexit127

bb.ac:                                            ; preds = %.preheader.preheader
  store i64 %i.bf, ptr %i.d, align 8, !tbaa !49
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !48
  %i.bp = call i64 @iconv(ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #9 ; 3 uses
  %i.bq = tail call ptr @__errno_location() #11   ; 4 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !53 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 84
  br i1 %i.bs, label %.loopexit.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bt = icmp eq i32 %i.br, 22
  %i.bu = icmp eq i64 %i.bp, -1
  %or.cond = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !49
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ae
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !49
  %i.by = shl nuw nsw i64 %2, 2                   ; 8 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.99, i64 noundef %i.bf, i64 noundef %i.by) #9
  %i.bz = or disjoint i64 %i.by, 1
  %i.ca = call ptr @cli_max_realloc(ptr noundef nonnull %i.bh, i64 noundef %i.bz) #9 ; 6 uses
  %.not118.1 = icmp eq ptr %i.ca, null
  br i1 %.not118.1, label %bb.ab, label %bb.af

bb.af:                                            ; preds = %.preheader.1
  %i.cb = sub i64 %i.bf, %i.bx                    ; 2 uses
  %i.cc = sub i64 %i.by, %i.cb
  store i64 %i.cc, ptr %i.d, align 8, !tbaa !49
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %i.cb
  store ptr %i.cd, ptr %i.b, align 8, !tbaa !48
  %i.ce = call i64 @iconv(ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #9 ; 3 uses
  %i.cf = load i32, ptr %i.bq, align 4, !tbaa !53 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 84
  br i1 %i.cg, label %.loopexit.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = icmp eq i32 %i.cf, 22
  %i.ci = icmp eq i64 %i.ce, -1
  %or.cond.1 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond.1, label %.loopexit.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !49
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %bb.ah
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !49
  %i.cm = mul nuw nsw i64 %2, 6                   ; 6 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.99, i64 noundef %i.by, i64 noundef %i.cm) #9
  %i.cn = or disjoint i64 %i.cm, 1
  %i.co = call ptr @cli_max_realloc(ptr noundef nonnull %i.ca, i64 noundef %i.cn) #9 ; 5 uses
  %.not118.2 = icmp eq ptr %i.co, null
  br i1 %.not118.2, label %bb.ab, label %bb.ai

bb.ai:                                            ; preds = %.preheader.2
  %i.cp = sub i64 %i.by, %i.cl                    ; 2 uses
  %i.cq = sub i64 %i.cm, %i.cp
  store i64 %i.cq, ptr %i.d, align 8, !tbaa !49
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  store ptr %i.cr, ptr %i.b, align 8, !tbaa !48
  %i.cs = call i64 @iconv(ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #9 ; 3 uses
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !53 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 84
  br i1 %i.cu, label %.loopexit.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = icmp eq i32 %i.ct, 22
  %i.cw = icmp eq i64 %i.cs, -1
  %or.cond.2 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.2, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.ad, %bb.ag, %bb.aj, %bb.ac, %bb.af, %bb.ai
  %.str.98.sink = phi ptr [ @.str.97, %bb.ac ], [ @.str.97, %bb.ai ], [ @.str.97, %bb.af ], [ @.str.98, %bb.aj ], [ @.str.98, %bb.ag ], [ @.str.98, %bb.ad ]
  %.sink198 = phi i32 [ 4096, %bb.ac ], [ 4096, %bb.ai ], [ 4096, %bb.af ], [ 8192, %bb.aj ], [ 8192, %bb.ag ], [ 8192, %bb.ad ]
  %.ph = phi i64 [ %i.bf, %bb.ac ], [ %i.cm, %bb.ai ], [ %i.by, %bb.af ], [ %i.cm, %bb.aj ], [ %i.by, %bb.ag ], [ %i.bf, %bb.ad ]
  %.ph195 = phi ptr [ %i.bh, %bb.ac ], [ %i.co, %bb.ai ], [ %i.ca, %bb.af ], [ %i.co, %bb.aj ], [ %i.ca, %bb.ag ], [ %i.bh, %bb.ad ]
  %.194.ph = phi i64 [ %i.bp, %bb.ac ], [ %i.cs, %bb.ai ], [ %i.ce, %bb.af ], [ -1, %bb.aj ], [ -1, %bb.ag ], [ -1, %bb.ad ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.98.sink) #9
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !40
  %i.cz = or i32 %i.cy, %.sink198
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.aj, %bb.ae, %bb.ah
  %i.da = phi i64 [ %i.bf, %bb.ae ], [ %i.cm, %bb.aj ], [ %i.by, %bb.ah ], [ %.ph, %.loopexit.sink.split ]
  %i.db = phi ptr [ %i.bh, %bb.ae ], [ %i.co, %bb.aj ], [ %i.ca, %bb.ah ], [ %.ph195, %.loopexit.sink.split ] ; 2 uses
  %.194 = phi i64 [ %i.bp, %bb.ae ], [ %i.cs, %bb.aj ], [ %i.ce, %bb.ah ], [ %.194.ph, %.loopexit.sink.split ]
  %i.dc = load i32, ptr %i.bq, align 4, !tbaa !53
  %i.dd = icmp eq i32 %i.dc, 7
  %i.de = icmp eq i64 %.194, -1
  %or.cond3 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.100) #9
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !40
  %i.dh = or i32 %i.dg, 8192
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !40
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.loopexit
  %i.di = load i64, ptr %i.d, align 8, !tbaa !49
  %i.dj = sub i64 %i.da, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dj
  store i8 0, ptr %i.dk, align 1, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aa
  %.2 = phi ptr [ null, %bb.aa ], [ %i.db, %bb.al ]
  %i.dl = call i32 @iconv_close(ptr noundef %i.bd) #9 ; 0 uses
  call void @free(ptr noundef %i.aj) #9
  br label %.loopexit127

.loopexit127:                                     ; preds = %bb.n, %bb.o, %bb.d, %bb.m, %bb.f, %bb.e, %bb.am, %bb.ab, %bb.y, %bb.b
  %.1102 = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.b ], [ null, %bb.y ], [ %.2, %bb.am ], [ null, %bb.ab ], [ null, %bb.d ], [ %i.k, %bb.m ], [ null, %bb.o ], [ %i.k, %bb.f ], [ %i.k, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.1102
}

declare ptr @cl_base64_encode(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @iconv_open(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cli_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @iconv_close(ptr noundef) local_unnamed_addr #2

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"summary_ctx", !10, i64 0, !5, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !5, i64 40, !5, i64 44, !15, i64 48, !5, i64 52, !16, i64 56, !5, i64 64}
!10 = !{!"p1 _ZTS11cli_ctx_tag", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS7cl_fmap", !11, i64 0}
!13 = !{!"p1 _ZTS11json_object", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!9, !5, i64 8}
!18 = !{!19, !14, i64 48}
!19 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !20, i64 72, !20, i64 88, !20, i64 104, !6, i64 120}
!20 = !{!"timespec", !14, i64 0, !14, i64 8}
!21 = !{!9, !12, i64 16}
!22 = !{!23, !14, i64 88}
!23 = !{!"cl_fmap", !11, i64 0, !11, i64 8, !11, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !24, i64 56, !24, i64 57, !24, i64 58, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !6, i64 152, !6, i64 155, !6, i64 158, !25, i64 256, !16, i64 264, !16, i64 272}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{!"p1 long", !11, i64 0}
!26 = !{!9, !14, i64 32}
!27 = !{!28, !13, i64 144}
!28 = !{!"cli_ctx_tag", !16, i64 0, !16, i64 8, !25, i64 16, !29, i64 24, !30, i64 32, !14, i64 40, !31, i64 48, !5, i64 56, !5, i64 60, !32, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !12, i64 88, !14, i64 96, !33, i64 104, !34, i64 112, !11, i64 120, !35, i64 128, !13, i64 136, !13, i64 144, !36, i64 152, !24, i64 168, !24, i64 169}
!29 = !{!"p1 _ZTS11cli_matcher", !11, i64 0}
!30 = !{!"p1 _ZTS9cl_engine", !11, i64 0}
!31 = !{!"p1 _ZTS15cl_scan_options", !11, i64 0}
!32 = !{!"p1 _ZTS14cli_scan_layer", !11, i64 0}
!33 = !{!"p1 _ZTS9cli_dconf", !11, i64 0}
!34 = !{!"p1 _ZTS10bitset_tag", !11, i64 0}
!35 = !{!"p1 _ZTS10cli_events", !11, i64 0}
!36 = !{!"timeval", !14, i64 0, !14, i64 8}
!37 = !{!9, !13, i64 24}
!38 = !{!9, !15, i64 48}
!39 = !{!9, !5, i64 52}
!40 = !{!9, !5, i64 40}
!41 = !{!23, !11, i64 104}
!42 = distinct !{null}
!43 = !{!23, !11, i64 96}
!44 = distinct !{null}
!45 = !{!9, !16, i64 56}
!46 = !{!9, !5, i64 44}
!47 = !{!6, !6, i64 0}
!48 = !{!16, !16, i64 0}
!49 = !{!14, !14, i64 0}
!50 = !{!51, !15, i64 0}
!51 = !{!"codepage_entry", !15, i64 0, !16, i64 8}
!52 = !{!51, !16, i64 8}
!53 = !{!5, !5, i64 0}
end_hunk_0
