Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ext_preprocess?download=true
inline.NumInlined: 43
inline.NumDeleted: 32
begin_hunk_0_@_ZN6LibRaw10bad_pixelsEPKc:bb.a
  %i.bt = add nsw i32 %.04066, 1
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !79  ; 6 uses
  %i.bv = add nsw i32 %i.bu, %.03979
  %.not59.not = icmp slt i32 %.04066, %i.bv
  br i1 %.not59.not, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i32, ptr %i.b, align 4, !tbaa !79  ; 4 uses
  %i.bw = add nsw i32 %.04171, 1
  %i.bx = add nsw i32 %.pre, %.03979
  %.not58.not = icmp slt i32 %.04171, %i.bx
  br i1 %.not58.not, label %.lr.ph.preheader, label %._crit_edge76, !llvm.loop !89

._crit_edge76:                                    ; preds = %._crit_edge
  %i.by = add nuw nsw i32 %.03979, 1
  %i.bz = icmp samesign ult i32 %.03979, 2
  %i.ca = icmp eq i32 %.3, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph75.preheader, label %bb.r, !llvm.loop !90

bb.r:                                             ; preds = %._crit_edge76
  %i.cc = icmp sgt i32 %.3, 0
  br i1 %i.cc, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.cd = sdiv i32 %.338, %.3
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.cg = load i16, ptr %i.s, align 4, !tbaa !84
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = ashr i32 %.pre, %i.ch
  %i.cj = load i16, ptr %i.t, align 2, !tbaa !85
  %i.ck = zext i16 %i.cj to i32
  %i.cl = mul nsw i32 %i.ci, %i.ck
  %i.cm = ashr i32 %i.bu, %i.ch
  %i.cn = add nsw i32 %i.cl, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.co
  %i.cq = call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.pre, i32 noundef %i.bu)
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cr
  store i16 %i.ce, ptr %i.cs, align 2, !tbaa !86
  br label %.backedge

._crit_edge83:                                    ; preds = %.backedge, %.preheader64
  %i.ct = call i32 @fclose(ptr noundef nonnull %i.n) ; 0 uses
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !74  ; 2 uses
  %.not52 = icmp eq ptr %i.cu, null
  br i1 %.not52, label %bb.v, label %bb.t

bb.t:                                             ; preds = %._crit_edge83
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !75
  %i.cx = call noundef i32 %i.cu(ptr noundef %i.cw, i32 noundef 64, i32 noundef 1, i32 noundef 2)
  %.not53 = icmp eq i32 %i.cx, 0
  br i1 %.not53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 6, ptr %i.cy, align 16, !tbaa !77
  call void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.v:                                             ; preds = %._crit_edge83, %bb.t, %bb.a, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw8subtractEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = tail call noundef i32 %i.c(ptr noundef %i.e, i32 noundef 128, i32 noundef 0, i32 noundef 2)
  %.not67 = icmp eq i32 %i.f, 0
  br i1 %.not67, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 6, ptr %i.g, align 16, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.2) ; 9 uses
  %.not68 = icmp eq ptr %i.h, null
  br i1 %.not68, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !78
  %i.k = or i32 %i.j, 512
  store i32 %i.k, ptr %i.i, align 4, !tbaa !78
  br label %_ZNSt6vectorItSaItEED2Ev.exit84

bb.f:                                             ; preds = %bb.d
  %i.l = tail call i32 @fgetc(ptr noundef nonnull %i.h)
  %.not69 = icmp eq i32 %i.l, 80
  br i1 %.not69, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @fgetc(ptr noundef nonnull %i.h)
  %.not70 = icmp eq i32 %i.m, 53
  br i1 %.not70, label %.outer.split.preheader.a, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.outer.split.preheader.a

.outer.split.preheader.a:                         ; preds = %bb.h, %bb.g
  %.156.ph105.ph = phi i32 [ 0, %bb.g ], [ 1, %bb.h ]
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader.a, %.outer
  %.054.ph106 = phi i32 [ %.1, %.outer ], [ 0, %.outer.split.preheader.a ] ; 5 uses
  %.156.ph105 = phi i32 [ %.2, %.outer ], [ %.156.ph105.ph, %.outer.split.preheader.a ]
  %.057.ph104 = phi i32 [ %.259, %.outer ], [ 0, %.outer.split.preheader.a ]
  %.not111.peel = icmp eq i32 %.156.ph105, 0
  br i1 %.not111.peel, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.outer.split
  %i.n = tail call i32 @fgetc(ptr noundef nonnull %i.h) ; 2 uses
  switch i32 %i.n, label %.loopexit [
    i32 -1, label %.critedge.thread
    i32 35, label %.peel.next
  ]

.peel.next:                                       ; preds = %bb.i, %.peel.next
  %i.o = tail call i32 @fgetc(ptr noundef nonnull %i.h) ; 2 uses
  switch i32 %i.o, label %.peel.next [
    i32 -1, label %.critedge.thread
    i32 10, label %.loopexit
  ]

.loopexit:                                        ; preds = %.peel.next, %bb.i
  %.lcssa118 = phi i32 [ %i.n, %bb.i ], [ %i.o, %.peel.next ] ; 3 uses
  %i.p = add i32 %.lcssa118, -58
  %isdigit = icmp ult i32 %i.p, -10               ; 2 uses
  %.not7794 = icmp eq i32 %.057.ph104, 0
  %.not77 = and i1 %.not7794, %isdigit
  br i1 %.not77, label %.outer, label %bb.j

bb.j:                                             ; preds = %.loopexit
  br i1 %isdigit, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = sext i32 %.054.ph106 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !79
  %i.t = mul nsw i32 %i.s, 10
  %i.u = add nsw i32 %.lcssa118, -48
  %i.v = add i32 %i.u, %i.t
  store i32 %i.v, ptr %i.r, align 4, !tbaa !79
  br label %.outer

bb.l:                                             ; preds = %bb.j
  %i.w = tail call i32 @isspace(i32 noundef %.lcssa118) #14
  %.not80 = icmp eq i32 %i.w, 0
  br i1 %.not80, label %.outer, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = add nsw i32 %.054.ph106, 1
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.k, %bb.m, %.loopexit
  %.259 = phi i32 [ 1, %bb.k ], [ 0, %bb.m ], [ 0, %.loopexit ], [ 1, %bb.l ]
  %i.y = phi i1 [ true, %bb.k ], [ true, %bb.m ], [ true, %.loopexit ], [ false, %bb.l ]
  %.2 = phi i32 [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %.loopexit ], [ 1, %bb.l ]
  %.1 = phi i32 [ %.054.ph106, %bb.k ], [ %i.x, %bb.m ], [ %.054.ph106, %.loopexit ], [ %.054.ph106, %bb.l ] ; 2 uses
  %i.z = icmp slt i32 %.1, 3
  br i1 %i.z, label %.outer.split, label %.critedge, !llvm.loop !94

.critedge:                                        ; preds = %.outer
  br i1 %i.y, label %bb.n, label %.critedge.thread

.critedge.thread:                                 ; preds = %.outer.split, %bb.i, %.peel.next, %.critedge
  %i.aa = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %_ZNSt6vectorItSaItEED2Ev.exit84

bb.n:                                             ; preds = %.critedge
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !80 ; 3 uses
  %i.af = zext i16 %i.ae to i32
  %.not72 = icmp eq i32 %i.ab, %i.af
  br i1 %.not72, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !81 ; 2 uses
  %i.ak = zext i16 %i.aj to i32
  %i.al = icmp ne i32 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp ne i32 %i.an, 65535
  %or.cond6 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !78
  %i.ar = or i32 %i.aq, 1024
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !78
  %i.as = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %_ZNSt6vectorItSaItEED2Ev.exit84

bb.q:                                             ; preds = %bb.o
  %.not.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.q
  %i.at = zext i16 %i.ae to i64                   ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 1                ; 2 uses
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #15 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.av, i8 0, i64 %i.au, i1 false), !tbaa !86
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.at
  %.pre = load i16, ptr %i.ai, align 4, !tbaa !81
  %i.ax = ptrtoint ptr %i.aw to i64
  br label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %.noexc, %bb.q
  %i.ay = phi i16 [ %i.aj, %bb.q ], [ %.pre, %.noexc ]
  %.sroa.12.0 = phi i64 [ 0, %bb.q ], [ %i.ax, %.noexc ] ; 2 uses
  %.sroa.085.0 = phi ptr [ null, %bb.q ], [ %i.av, %.noexc ] ; 8 uses
  %.not112 = icmp eq i16 %i.ay, 0
  br i1 %.not112, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre124 = load i16, ptr %i.ad, align 2, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph109, %._crit_edge
  %i.bc = phi i16 [ %.pre124, %.lr.ph109 ], [ %i.ci, %._crit_edge ]
  %.053108 = phi i32 [ 0, %.lr.ph109 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %i.bd = zext i16 %i.bc to i64
  %i.be = tail call i64 @fread(ptr noundef %.sroa.085.0, i64 noundef 2, i64 noundef %i.bd, ptr noundef nonnull %i.h) ; 0 uses
  %i.bf = load i16, ptr %i.ad, align 2, !tbaa !80
  %.not113 = icmp eq i16 %i.bf, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.bh = load i32, ptr %i.bb, align 8, !tbaa !73
  %i.bi = shl nuw nsw i32 %.053108, 1
  %i.bj = and i32 %i.bi, 14
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.bk = load i16, ptr %i.az, align 4, !tbaa !84
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = lshr i32 %.053108, %i.bl
  %i.bn = load i16, ptr %i.ba, align 2, !tbaa !85
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nuw nsw i32 %i.bm, %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.br = lshr i32 %i.bq, %i.bl
  %i.bs = add nuw nsw i32 %i.bp, %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bt
  %i.bv = and i32 %i.bq, 1
  %i.bw = or disjoint i32 %i.bv, %i.bj
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = lshr i32 %i.bh, %i.bx
  %i.bz = and i32 %i.by, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !86
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.085.0, i64 %indvars.iv
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !86
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce)
  %spec.select92 = tail call i16 @llvm.usub.sat.i16(i16 %i.cc, i16 %rev.i)
  store i16 %spec.select92, ptr %i.cb, align 2, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = load i16, ptr %i.ad, align 2, !tbaa !80 ; 2 uses
  %i.cg = zext i16 %i.cf to i64
  %i.ch = icmp samesign ult i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %bb.s, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.s, %bb.r
  %i.ci = phi i16 [ 0, %bb.r ], [ %i.cf, %bb.s ]
  %i.cj = add nuw nsw i32 %.053108, 1             ; 2 uses
  %i.ck = load i16, ptr %i.ai, align 4, !tbaa !81
  %i.cl = zext i16 %i.ck to i32
  %i.cm = icmp samesign ult i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %._crit_edge110, !llvm.loop !96

._crit_edge110:                                   ; preds = %._crit_edge, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.cn = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.co, i8 0, i64 16420, i1 false)
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %.not73 = icmp eq ptr %i.cp, null
  br i1 %.not73, label %bb.y, label %bb.t

bb.t:                                             ; preds = %._crit_edge110
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !75
  %i.cs = invoke noundef i32 %i.cp(ptr noundef %i.cr, i32 noundef 128, i32 noundef 1, i32 noundef 2)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %.not74 = icmp eq i32 %i.cs, 0
  br i1 %.not74, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 6, ptr %i.ct, align 16, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
          to label %bb.aa unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.085.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = ptrtoint ptr %.sroa.085.0 to i64
  %i.cw = sub i64 %.sroa.12.0, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.085.0, i64 noundef %i.cw) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.y:                                             ; preds = %bb.u, %._crit_edge110
  %.not.i.i.i83 = icmp eq ptr %.sroa.085.0, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorItSaItEED2Ev.exit84, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = ptrtoint ptr %.sroa.085.0 to i64
  %i.cy = sub i64 %.sroa.12.0, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.085.0, i64 noundef %i.cy) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit84

_ZNSt6vectorItSaItEED2Ev.exit84:                  ; preds = %bb.z, %bb.y, %bb.p, %.critedge.thread, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  resume { ptr, i32 } %i.cu

bb.aa:                                            ; preds = %bb.v
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

end_hunk_0
