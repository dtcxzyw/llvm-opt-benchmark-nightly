Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filestr?download=true
inline.NumInlined: 47
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>
%class.File = type { ptr, i64, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i64, i8, [2048 x i32], i32, ptr }

@ErrHandler = external global %class.ErrorHandler, align 4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z12ReadTextFilePKwP10StringListbb11RAR_CHARSETbbb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 9 uses
  %8 = alloca %class.File, align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 16, !tbaa !16
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_Z13GetConfigNamePKwPwmbb(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i64 noundef 2048)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @_ZN4FileC1Ev(ptr noundef nonnull align 8 dereferenceable(8256) %8)
  %i.b = load i32, ptr %i.a, align 16, !tbaa !16
  %.not118 = icmp eq i32 %i.b, 0
  br i1 %.not118, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.c = invoke noundef zeroext i1 @_ZN4File5WOpenEPKw(ptr noundef nonnull align 8 dereferenceable(8256) %8, ptr noundef nonnull %i.a)
          to label %bb.i unwind label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.d = invoke noundef zeroext i1 @_ZN4File4OpenEPKwj(ptr noundef nonnull align 8 dereferenceable(8256) %8, ptr noundef nonnull %i.a, i32 noundef 0)
          to label %.thread unwind label %bb.q

bb.i:                                             ; preds = %bb.g
  br i1 %i.c, label %.critedge138, label %bb.j

.thread:                                          ; preds = %bb.h
  br i1 %i.d, label %.critedge138, label %_ZN5ArrayIhED2Ev.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 6)
          to label %_ZN5ArrayIhED2Ev.exit unwind label %bb.q

bb.k:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 1, ptr %i.e, align 4, !tbaa !25
  br label %.critedge138

.critedge138:                                     ; preds = %.thread, %bb.i, %bb.k
  %malloc.i = call dereferenceable_or_null(4096) ptr @malloc(i64 4096) ; 2 uses
  %i.f = icmp eq ptr %malloc.i, null
  br i1 %i.f, label %bb.l, label %_ZN5ArrayIhEC2Em.exit.preheader

bb.l:                                             ; preds = %.critedge138
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIhEC2Em.exit.preheader unwind label %bb.q

_ZN5ArrayIhEC2Em.exit.preheader:                  ; preds = %bb.l, %.critedge138
  br label %_ZN5ArrayIhEC2Em.exit.outer

_ZN5ArrayIhEC2Em.exit.outer:                      ; preds = %_ZN5ArrayIhEC2Em.exit.outer.backedge, %_ZN5ArrayIhEC2Em.exit.preheader
  %.sroa.0227.0.ph = phi ptr [ %malloc.i, %_ZN5ArrayIhEC2Em.exit.preheader ], [ %.sroa.0227.0.ph.be, %_ZN5ArrayIhEC2Em.exit.outer.backedge ] ; 6 uses
  %.sroa.30.0.ph = phi i64 [ 4096, %_ZN5ArrayIhEC2Em.exit.preheader ], [ %i.l, %_ZN5ArrayIhEC2Em.exit.outer.backedge ]
  %.sroa.48.0.ph = phi i64 [ 4096, %_ZN5ArrayIhEC2Em.exit.preheader ], [ %..i, %_ZN5ArrayIhEC2Em.exit.outer.backedge ] ; 7 uses
  %.094.ph = phi i32 [ 0, %_ZN5ArrayIhEC2Em.exit.preheader ], [ %i.j, %_ZN5ArrayIhEC2Em.exit.outer.backedge ]
  br label %_ZN5ArrayIhEC2Em.exit

_ZN5ArrayIhEC2Em.exit:                            ; preds = %_ZN5ArrayIhEC2Em.exit.outer, %bb.n
  %.sroa.30.0 = phi i64 [ %i.l, %bb.n ], [ %.sroa.30.0.ph, %_ZN5ArrayIhEC2Em.exit.outer ]
  %.094 = phi i32 [ %i.j, %bb.n ], [ %.094.ph, %_ZN5ArrayIhEC2Em.exit.outer ] ; 6 uses
  %i.g = zext i32 %.094 to i64                    ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0227.0.ph, i64 %i.g
  %i.i = invoke noundef i32 @_ZN4File4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(8256) %8, ptr noundef nonnull %i.h, i64 noundef 4096)
          to label %bb.m unwind label %_ZN5ArrayIwED2Ev.exit.thread.loopexit.loopexit.split-lp ; 3 uses

bb.m:                                             ; preds = %_ZN5ArrayIhEC2Em.exit
  %.not119 = icmp eq i32 %i.i, 0
  br i1 %.not119, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.j = add i32 %i.i, %.094                      ; 2 uses
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %.sroa.30.0, %i.k                ; 4 uses
  %i.m = icmp ugt i64 %i.l, %.sroa.48.0.ph
  br i1 %i.m, label %bb.o, label %_ZN5ArrayIhEC2Em.exit

bb.o:                                             ; preds = %bb.n
  %i.n = lshr i64 %.sroa.48.0.ph, 2
  %i.o = add i64 %.sroa.48.0.ph, 32
  %i.p = add i64 %i.o, %i.n
  %..i = call i64 @llvm.umax.i64(i64 %i.l, i64 %i.p) ; 2 uses
  %i.q = call ptr @realloc(ptr noundef nonnull %.sroa.0227.0.ph, i64 noundef %..i) #10 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.p, label %_ZN5ArrayIhEC2Em.exit.outer.backedge

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIhEC2Em.exit.outer.backedge unwind label %_ZN5ArrayIwED2Ev.exit.thread.loopexit.loopexit.split-lp

_ZN5ArrayIhEC2Em.exit.outer.backedge:             ; preds = %bb.p, %bb.o
  %.sroa.0227.0.ph.be = phi ptr [ %i.q, %bb.o ], [ null, %bb.p ]
  br label %_ZN5ArrayIhEC2Em.exit.outer

bb.q:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ArrayIhED2Ev.exit203

bb.r:                                             ; preds = %bb.m
  %i.t = icmp ult i64 %.sroa.48.0.ph, %i.g
  br i1 %i.t, label %bb.s, label %_ZN5ArrayIhE5AllocEm.exit

bb.s:                                             ; preds = %bb.r
  %i.u = lshr i64 %.sroa.48.0.ph, 2
  %i.v = add nuw nsw i64 %.sroa.48.0.ph, 32
  %i.w = add nuw nsw i64 %i.v, %i.u
  %..i.i = call i64 @llvm.umax.i64(i64 %i.g, i64 %i.w) ; 3 uses
  %i.x = call ptr @realloc(ptr noundef nonnull %.sroa.0227.0.ph, i64 noundef %..i.i) #10 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.t, label %_ZN5ArrayIhE5AllocEm.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIhE5AllocEm.exit unwind label %_ZN5ArrayIwED2Ev.exit.thread.loopexit.split-lp

_ZN5ArrayIhE5AllocEm.exit:                        ; preds = %bb.r, %bb.t, %bb.s
  %.sroa.0227.7 = phi ptr [ %.sroa.0227.0.ph, %bb.r ], [ null, %bb.t ], [ %i.x, %bb.s ] ; 20 uses
  %.sroa.48.3 = phi i64 [ %.sroa.48.0.ph, %bb.r ], [ %..i.i, %bb.t ], [ %..i.i, %bb.s ] ; 6 uses
  %i.z = icmp ugt i32 %.094, 1
  br i1 %i.z, label %bb.u, label %.thread279

bb.u:                                             ; preds = %_ZN5ArrayIhE5AllocEm.exit
  %i.aa = load i8, ptr %.sroa.0227.7, align 1, !tbaa !9 ; 2 uses
  switch i8 %i.aa, label %bb.w [
    i8 -1, label %.thread448
    i8 -2, label %bb.v
  ]

.thread448:                                       ; preds = %bb.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = icmp eq i8 %i.ac, -2                    ; 2 uses
  %i.ae = zext i1 %i.ad to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = icmp eq i8 %i.ag, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.thread448, %bb.v
  %i.ai = phi i64 [ 0, %bb.u ], [ 0, %bb.v ], [ %i.ae, %.thread448 ] ; 5 uses
  %.ph450 = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ %i.ad, %.thread448 ] ; 5 uses
  %i.aj = phi i1 [ false, %bb.u ], [ %i.ah, %bb.v ], [ false, %.thread448 ] ; 5 uses
  %.not389 = icmp eq i32 %.094, 2
  br i1 %.not389, label %.thread280, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = icmp eq i8 %i.aa, -17
  br i1 %i.ak, label %bb.y, label %.thread279

bb.y:                                             ; preds = %bb.x
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = icmp eq i8 %i.am, -69
  br i1 %i.an, label %bb.z, label %.thread279

bb.z:                                             ; preds = %bb.y
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, -65
  %i.ar = select i1 %i.aq, i64 3, i64 0
  br label %.thread279

.thread279:                                       ; preds = %_ZN5ArrayIhE5AllocEm.exit, %bb.z, %bb.y, %bb.x
  %i.as = phi i1 [ %i.aj, %bb.y ], [ %i.aj, %bb.x ], [ %i.aj, %bb.z ], [ false, %_ZN5ArrayIhE5AllocEm.exit ] ; 7 uses
  %i.at = phi i1 [ %.ph450, %bb.y ], [ %.ph450, %bb.x ], [ %.ph450, %bb.z ], [ false, %_ZN5ArrayIhE5AllocEm.exit ] ; 6 uses
  %i.au = phi i64 [ %i.ai, %bb.y ], [ %i.ai, %bb.x ], [ %i.ai, %bb.z ], [ 0, %_ZN5ArrayIhE5AllocEm.exit ] ; 6 uses
  %i.av = phi i64 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.ar, %bb.z ], [ 0, %_ZN5ArrayIhE5AllocEm.exit ] ; 6 uses
  %i.aw = icmp eq i32 %4, 0
  br i1 %i.aw, label %bb.aa, label %_Z18DetectTextEncodingPKhm.exit

.thread280:                                       ; preds = %bb.w
  %i.ax = icmp eq i32 %4, 0
  br i1 %i.ax, label %_Z18DetectTextEncodingPKhm.exit.thread, label %_Z18DetectTextEncodingPKhm.exit

bb.aa:                                            ; preds = %.thread279
  %i.ay = icmp ugt i32 %.094, 3
  br i1 %i.ay, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i8, ptr %.sroa.0227.7, align 1, !tbaa !9 ; 2 uses
  %i.ba = icmp eq i8 %i.az, -17
  br i1 %i.ba, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = icmp eq i8 %i.bc, -69
  br i1 %i.bd, label %bb.ad, label %.threadthread-pre-split.i

bb.ad:                                            ; preds = %bb.ac
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !9
  %i.bg = icmp eq i8 %i.bf, -65
  br i1 %i.bg, label %bb.ae, label %.threadthread-pre-split.i

bb.ae:                                            ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 3
  %i.bi = add nsw i64 %i.g, -3
  %i.bj = invoke noundef zeroext i1 @_Z10IsTextUtf8PKhm(ptr noundef nonnull %i.bh, i64 noundef %i.bi)
          to label %.noexc146 unwind label %_ZN5ArrayIwED2Ev.exit.thread.loopexit.split-lp

.noexc146:                                        ; preds = %bb.ae
  br i1 %i.bj, label %_Z18DetectTextEncodingPKhm.exit.thread302.thread358, label %.threadthread-pre-split.i

bb.af:                                            ; preds = %bb.aa
  %i.bk = icmp eq i32 %.094, 3
  br i1 %i.bk, label %.threadthread-pre-split.i, label %_Z18DetectTextEncodingPKhm.exit.thread

.threadthread-pre-split.i:                        ; preds = %bb.af, %.noexc146, %bb.ad, %bb.ac
  %.pr.i = load i8, ptr %.sroa.0227.7, align 1, !tbaa !9
  br label %.thread.i

.thread.i:                                        ; preds = %.threadthread-pre-split.i, %bb.ab
  %i.bl = phi i8 [ %.pr.i, %.threadthread-pre-split.i ], [ %i.az, %bb.ab ]
  switch i8 %i.bl, label %_Z18DetectTextEncodingPKhm.exit.thread [
    i8 -1, label %.thread34.i
    i8 -2, label %bb.ag
  ]

bb.ag:                                            ; preds = %.thread.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = icmp eq i8 %i.bn, -1
  br label %.thread34.thread.i

.thread34.i:                                      ; preds = %.thread.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %.fr48.i = freeze i8 %i.bq
  %i.br = icmp eq i8 %.fr48.i, -2                 ; 2 uses
  %spec.select.i = select i1 %i.br, i64 3, i64 2
  br label %.thread34.thread.i

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.ag
  %or.cond47.i = phi i1 [ %i.bo, %bb.ag ], [ %i.br, %.thread34.i ]
  %i.bs = phi i64 [ 2, %bb.ag ], [ %spec.select.i, %.thread34.i ] ; 2 uses
  %.not3136.i = icmp samesign ult i64 %i.bs, %i.g
  %or.cond39.i = and i1 %or.cond47.i, %.not3136.i
  br i1 %or.cond39.i, label %.lr.ph.i, label %_Z18DetectTextEncodingPKhm.exit.thread

.lr.ph.i:                                         ; preds = %.thread34.thread.i, %bb.ah
  %.02637.i = phi i64 [ %i.bx, %bb.ah ], [ %i.bs, %.thread34.thread.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0227.7, i64 %.02637.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %.fr.i = freeze i8 %i.bu                        ; 2 uses
  %i.bv = icmp ugt i8 %.fr.i, 31
  br i1 %i.bv, label %bb.ah, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr.i, label %.thread365 [
    i8 13, label %bb.ah
    i8 10, label %bb.ah
  ]

.thread365:                                       ; preds = %switch.early.test.i
  %or.cond5372 = select i1 %i.at, i1 true, i1 %i.as ; 2 uses
  %spec.select373 = select i1 %or.cond5372, i64 %i.au, i64 1
  %spec.select139374 = select i1 %or.cond5372, i64 2, i64 0
  %i.bw = lshr i64 %i.g, 1
  %9 = add nuw nsw i64 %i.bw, 1
  br label %bb.an

bb.ah:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %i.bx = add nuw nsw i64 %.02637.i, 2            ; 2 uses
  %.not31.i = icmp samesign ult i64 %i.bx, %i.g
  br i1 %.not31.i, label %.lr.ph.i, label %_Z18DetectTextEncodingPKhm.exit.thread, !llvm.loop !0

_ZN5ArrayIwED2Ev.exit.thread.loopexit.loopexit.split-lp: ; preds = %_ZN5ArrayIhEC2Em.exit, %bb.p
  %lpad.loopexit.split-lp474 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ArrayIwED2Ev.exit.thread

_ZN5ArrayIwED2Ev.exit.thread.loopexit.split-lp:   ; preds = %bb.ae, %bb.t
  %.sroa.0227.1.ph = phi ptr [ %.sroa.0227.0.ph, %bb.t ], [ %.sroa.0227.7, %bb.ae ]
  %lpad.loopexit.split-lp395 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ArrayIwED2Ev.exit.thread

_Z18DetectTextEncodingPKhm.exit:                  ; preds = %.thread279, %.thread280
  %i.by = phi i64 [ %i.av, %.thread279 ], [ 0, %.thread280 ] ; 2 uses
  %i.bz = phi i64 [ %i.au, %.thread279 ], [ %i.ai, %.thread280 ] ; 2 uses
  %i.ca = phi i1 [ %i.at, %.thread279 ], [ %.ph450, %.thread280 ] ; 2 uses
  %i.cb = phi i1 [ %i.as, %.thread279 ], [ %i.aj, %.thread280 ] ; 2 uses
  %i.cc = icmp ult i32 %4, 3
  br i1 %i.cc, label %_Z18DetectTextEncodingPKhm.exit.thread, label %_Z18DetectTextEncodingPKhm.exit.thread302

_Z18DetectTextEncodingPKhm.exit.thread:           ; preds = %bb.ah, %.thread280, %bb.af, %.thread.i, %.thread34.thread.i, %_Z18DetectTextEncodingPKhm.exit
  %.0110296 = phi i32 [ %4, %_Z18DetectTextEncodingPKhm.exit ], [ 0, %.thread34.thread.i ], [ 0, %.thread280 ], [ 0, %.thread.i ], [ 0, %bb.af ], [ 0, %bb.ah ]
  %i.cd = phi i1 [ %i.cb, %_Z18DetectTextEncodingPKhm.exit ], [ %i.as, %.thread34.thread.i ], [ %i.aj, %.thread280 ], [ %i.as, %.thread.i ], [ %i.as, %bb.af ], [ %i.as, %bb.ah ]
  %i.ce = phi i1 [ %i.ca, %_Z18DetectTextEncodingPKhm.exit ], [ %i.at, %.thread34.thread.i ], [ %.ph450, %.thread280 ], [ %i.at, %.thread.i ], [ %i.at, %bb.af ], [ %i.at, %bb.ah ]
  %i.cf = phi i64 [ %i.bz, %_Z18DetectTextEncodingPKhm.exit ], [ %i.au, %.thread34.thread.i ], [ %i.ai, %.thread280 ], [ %i.au, %.thread.i ], [ %i.au, %bb.af ], [ %i.au, %bb.ah ]
  %i.cg = phi i64 [ %i.by, %_Z18DetectTextEncodingPKhm.exit ], [ %i.av, %.thread34.thread.i ], [ 0, %.thread280 ], [ %i.av, %.thread.i ], [ %i.av, %bb.af ], [ %i.av, %bb.ah ]
  %i.ch = add nuw nsw i64 %i.g, 1                 ; 5 uses
  %.not390 = icmp ugt i64 %i.ch, %.sroa.48.3
  br i1 %.not390, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_Z18DetectTextEncodingPKhm.exit.thread
  %i.ci = lshr i64 %.sroa.48.3, 2
  %i.cj = add nuw nsw i64 %.sroa.48.3, 32
  %i.ck = add nuw nsw i64 %i.cj, %i.ci
  %..i.i150 = call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.ck) ; 3 uses
  %i.cl = call ptr @realloc(ptr noundef %.sroa.0227.7, i64 noundef %..i.i150) #10 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %bb.ak unwind label %.thread308

bb.ak:                                            ; preds = %_Z18DetectTextEncodingPKhm.exit.thread, %bb.aj, %bb.ai
  %.sroa.0227.8 = phi ptr [ %.sroa.0227.7, %_Z18DetectTextEncodingPKhm.exit.thread ], [ null, %bb.aj ], [ %i.cl, %bb.ai ] ; 5 uses
  %.sroa.48.4 = phi i64 [ %.sroa.48.3, %_Z18DetectTextEncodingPKhm.exit.thread ], [ %..i.i150, %bb.aj ], [ %..i.i150, %bb.ai ]
  %i.cn = getelementptr i8, ptr %.sroa.0227.8, i64 %i.g
  store i8 0, ptr %i.cn, align 1, !tbaa !9
  %..i.i159 = call i64 @llvm.umax.i64(i64 %i.ch, i64 32) ; 2 uses
  %i.co = shl nuw nsw i64 %..i.i159, 2
  %malloc = call ptr @malloc(i64 %i.co)           ; 4 uses
  %i.cp = icmp eq ptr %malloc, null
  br i1 %i.cp, label %bb.al, label %_ZN5ArrayIwE5AllocEm.exit

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE5AllocEm.exit unwind label %.thread308

_ZN5ArrayIwE5AllocEm.exit:                        ; preds = %bb.al, %bb.ak
  %i.cq = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %.sroa.0227.8, ptr noundef nonnull %malloc, i64 noundef %i.ch)
          to label %_Z18DetectTextEncodingPKhm.exit.thread302 unwind label %.thread322 ; 0 uses

_Z18DetectTextEncodingPKhm.exit.thread302:        ; preds = %_Z18DetectTextEncodingPKhm.exit, %_ZN5ArrayIwE5AllocEm.exit
  %.0110295 = phi i32 [ %.0110296, %_ZN5ArrayIwE5AllocEm.exit ], [ %4, %_Z18DetectTextEncodingPKhm.exit ]
  %i.cr = phi i1 [ %i.cd, %_ZN5ArrayIwE5AllocEm.exit ], [ %i.cb, %_Z18DetectTextEncodingPKhm.exit ] ; 3 uses
  %i.cs = phi i1 [ %i.ce, %_ZN5ArrayIwE5AllocEm.exit ], [ %i.ca, %_Z18DetectTextEncodingPKhm.exit ]
  %i.ct = phi i64 [ %i.cf, %_ZN5ArrayIwE5AllocEm.exit ], [ %i.bz, %_Z18DetectTextEncodingPKhm.exit ]
  %i.cu = phi i64 [ %i.cg, %_ZN5ArrayIwE5AllocEm.exit ], [ %i.by, %_Z18DetectTextEncodingPKhm.exit ]
  %.sroa.0227.2 = phi ptr [ %.sroa.0227.8, %_ZN5ArrayIwE5AllocEm.exit ], [ %.sroa.0227.7, %_Z18DetectTextEncodingPKhm.exit ] ; 4 uses
  %.sroa.30.1 = phi i64 [ %i.ch, %_ZN5ArrayIwE5AllocEm.exit ], [ %i.g, %_Z18DetectTextEncodingPKhm.exit ] ; 4 uses
  %.sroa.48.1 = phi i64 [ %.sroa.48.4, %_ZN5ArrayIwE5AllocEm.exit ], [ %.sroa.48.3, %_Z18DetectTextEncodingPKhm.exit ]
  %.sroa.0.0 = phi ptr [ %malloc, %_ZN5ArrayIwE5AllocEm.exit ], [ null, %_Z18DetectTextEncodingPKhm.exit ] ; 4 uses
  %.sroa.25.0 = phi i64 [ %..i.i159, %_ZN5ArrayIwE5AllocEm.exit ], [ 0, %_Z18DetectTextEncodingPKhm.exit ] ; 3 uses
  switch i32 %.0110295, label %bb.av [
    i32 3, label %bb.am
    i32 4, label %_Z18DetectTextEncodingPKhm.exit.thread302.thread358
  ]

bb.am:                                            ; preds = %_Z18DetectTextEncodingPKhm.exit.thread302
  %or.cond5 = select i1 %i.cs, i1 true, i1 %i.cr  ; 2 uses
  %spec.select = select i1 %or.cond5, i64 %i.ct, i64 1 ; 2 uses
  %spec.select139 = select i1 %or.cond5, i64 2, i64 0 ; 2 uses
  %i.cv = lshr i64 %.sroa.30.1, 1
  %10 = add nuw nsw i64 %i.cv, 1                  ; 2 uses
  %11 = icmp ugt i64 %10, %.sroa.25.0
  br i1 %11, label %bb.an, label %_ZN5ArrayIwE5AllocEm.exit174

bb.an:                                            ; preds = %.thread365, %bb.am
  %.in = phi i64 [ %9, %.thread365 ], [ %10, %bb.am ]
  %spec.select139388 = phi i64 [ %spec.select139374, %.thread365 ], [ %spec.select139, %bb.am ] ; 2 uses
  %spec.select386 = phi i64 [ %spec.select373, %.thread365 ], [ %spec.select, %bb.am ] ; 2 uses
  %i.cw = phi i1 [ %i.as, %.thread365 ], [ %i.cr, %bb.am ] ; 2 uses
  %.sroa.0227.2350382 = phi ptr [ %.sroa.0227.7, %.thread365 ], [ %.sroa.0227.2, %bb.am ] ; 3 uses
  %.sroa.30.1352380 = phi i64 [ %i.g, %.thread365 ], [ %.sroa.30.1, %bb.am ] ; 2 uses
  %.sroa.0.0356376 = phi ptr [ null, %.thread365 ], [ %.sroa.0.0, %bb.am ] ; 2 uses
  %.sroa.25.0357375 = phi i64 [ 0, %.thread365 ], [ %.sroa.25.0, %bb.am ] ; 2 uses
  %i.cx = lshr i64 %.sroa.25.0357375, 2
  %i.cy = add nuw nsw i64 %.sroa.25.0357375, 32
  %i.cz = add nuw nsw i64 %i.cy, %i.cx
  %..i.i167 = call i64 @llvm.umax.i64(i64 %.in, i64 %i.cz)
  %i.da = shl nuw nsw i64 %..i.i167, 2
  %i.db = call ptr @realloc(ptr noundef %.sroa.0.0356376, i64 noundef %i.da) #10 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ao, label %_ZN5ArrayIwE5AllocEm.exit174

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE5AllocEm.exit174 unwind label %.loopexit.split-lp

_ZN5ArrayIwE5AllocEm.exit174:                     ; preds = %bb.am, %bb.ao, %bb.an
  %spec.select139387 = phi i64 [ %spec.select139, %bb.am ], [ %spec.select139388, %bb.ao ], [ %spec.select139388, %bb.an ] ; 4 uses
  %spec.select385 = phi i64 [ %spec.select, %bb.am ], [ %spec.select386, %bb.ao ], [ %spec.select386, %bb.an ]
  %i.dd = phi i1 [ %i.cr, %bb.am ], [ %i.cw, %bb.ao ], [ %i.cw, %bb.an ]
  %.sroa.0227.2350381 = phi ptr [ %.sroa.0227.2, %bb.am ], [ %.sroa.0227.2350382, %bb.ao ], [ %.sroa.0227.2350382, %bb.an ] ; 3 uses
  %.sroa.30.1352379 = phi i64 [ %.sroa.30.1, %bb.am ], [ %.sroa.30.1352380, %bb.ao ], [ %.sroa.30.1352380, %bb.an ] ; 2 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.0, %bb.am ], [ null, %bb.ao ], [ %i.db, %bb.an ] ; 3 uses
  %i.de = and i64 %.sroa.30.1352379, -2           ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.sroa.0227.2350381, i64 %spec.select385
  %i.df = icmp ult i64 %spec.select139387, %i.de
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5ArrayIwE5AllocEm.exit174
  %i.dg = zext i1 %i.dd to i64
  %invariant.gep403 = getelementptr i8, ptr %.sroa.0227.2350381, i64 %i.dg
  br label %bb.ap

._crit_edge:                                      ; preds = %bb.ap, %_ZN5ArrayIwE5AllocEm.exit174
  %i.dh = sub nsw i64 %.sroa.30.1352379, %spec.select139387
  %i.di = lshr i64 %i.dh, 1
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.5, i64 %i.di
  store i32 0, ptr %i.dj, align 4, !tbaa !16
  br label %bb.av

bb.ap:                                            ; preds = %.lr.ph, %bb.ap
  %.091402 = phi i64 [ %spec.select139387, %.lr.ph ], [ %i.dt, %bb.ap ] ; 4 uses
  %gep404 = getelementptr i8, ptr %invariant.gep403, i64 %.091402
  %i.dk = load i8, ptr %gep404, align 1, !tbaa !9
  %i.dl = zext i8 %i.dk to i32
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.091402
  %i.dm = load i8, ptr %gep, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = or disjoint i32 %i.do, %i.dl
  %i.dq = sub nuw i64 %.091402, %spec.select139387
  %i.dr = lshr exact i64 %i.dq, 1
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.5, i64 %i.dr
  store i32 %i.dp, ptr %i.ds, align 4, !tbaa !16
  %i.dt = add nuw i64 %.091402, 2                 ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.de
  br i1 %i.du, label %bb.ap, label %._crit_edge, !llvm.loop !11

_Z18DetectTextEncodingPKhm.exit.thread302.thread358: ; preds = %.noexc146, %_Z18DetectTextEncodingPKhm.exit.thread302
  %.sroa.48.1354 = phi i64 [ %.sroa.48.3, %.noexc146 ], [ %.sroa.48.1, %_Z18DetectTextEncodingPKhm.exit.thread302 ] ; 3 uses
  %.sroa.30.1353 = phi i64 [ %i.g, %.noexc146 ], [ %.sroa.30.1, %_Z18DetectTextEncodingPKhm.exit.thread302 ] ; 2 uses
  %.sroa.0227.2351 = phi ptr [ %.sroa.0227.7, %.noexc146 ], [ %.sroa.0227.2, %_Z18DetectTextEncodingPKhm.exit.thread302 ] ; 3 uses
  %i.dv = phi i64 [ %i.av, %.noexc146 ], [ %i.cu, %_Z18DetectTextEncodingPKhm.exit.thread302 ]
  %.sroa.0.1 = phi ptr [ null, %.noexc146 ], [ %.sroa.0.0, %_Z18DetectTextEncodingPKhm.exit.thread302 ] ; 4 uses
  %.sroa.25.1 = phi i64 [ 0, %.noexc146 ], [ %.sroa.25.0, %_Z18DetectTextEncodingPKhm.exit.thread302 ] ; 3 uses
  %i.dw = add nsw i64 %.sroa.30.1353, 1           ; 5 uses
  %i.dx = icmp ugt i64 %i.dw, %.sroa.48.1354
  br i1 %i.dx, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_Z18DetectTextEncodingPKhm.exit.thread302.thread358
  %i.dy = lshr i64 %.sroa.48.1354, 2
  %i.dz = add i64 %.sroa.48.1354, 32
  %i.ea = add i64 %i.dz, %i.dy
  %..i.i180 = call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.ea)
  %i.eb = call ptr @realloc(ptr noundef %.sroa.0227.2351, i64 noundef %..i.i180) #10 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %bb.as unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %_Z18DetectTextEncodingPKhm.exit.thread302.thread358, %bb.ar, %bb.aq
  %.sroa.0227.9 = phi ptr [ %.sroa.0227.2351, %_Z18DetectTextEncodingPKhm.exit.thread302.thread358 ], [ null, %bb.ar ], [ %i.eb, %bb.aq ] ; 5 uses
  %i.ed = getelementptr i8, ptr %.sroa.0227.9, i64 %.sroa.30.1353
  store i8 0, ptr %i.ed, align 1, !tbaa !9
  %i.ee = icmp ugt i64 %i.dw, %.sroa.25.1
  br i1 %i.ee, label %bb.at, label %_ZN5ArrayIwE5AllocEm.exit197

bb.at:                                            ; preds = %bb.as
  %i.ef = lshr i64 %.sroa.25.1, 2
  %i.eg = add nsw i64 %.sroa.25.1, 32
  %i.eh = add nsw i64 %i.eg, %i.ef
  %..i.i190 = call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.eh)
  %i.ei = shl i64 %..i.i190, 2
  %i.ej = call ptr @realloc(ptr noundef %.sroa.0.1, i64 noundef %i.ei) #10 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.au, label %_ZN5ArrayIwE5AllocEm.exit197

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE5AllocEm.exit197 unwind label %.loopexit.split-lp

_ZN5ArrayIwE5AllocEm.exit197:                     ; preds = %bb.as, %bb.au, %bb.at
  %.sroa.0.6 = phi ptr [ %.sroa.0.1, %bb.as ], [ null, %bb.au ], [ %i.ej, %bb.at ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0227.9, i64 %i.dv
  %i.em = invoke noundef zeroext i1 @_Z9UtfToWidePKcPwm(ptr noundef %i.el, ptr noundef nonnull %.sroa.0.6, i64 noundef %i.dw)
          to label %bb.av unwind label %.thread322 ; 0 uses

bb.av:                                            ; preds = %._crit_edge, %_Z18DetectTextEncodingPKhm.exit.thread302, %_ZN5ArrayIwE5AllocEm.exit197
  %.sroa.0227.3 = phi ptr [ %.sroa.0227.2, %_Z18DetectTextEncodingPKhm.exit.thread302 ], [ %.sroa.0227.9, %_ZN5ArrayIwE5AllocEm.exit197 ], [ %.sroa.0227.2350381, %._crit_edge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %_Z18DetectTextEncodingPKhm.exit.thread302 ], [ %.sroa.0.6, %_ZN5ArrayIwE5AllocEm.exit197 ], [ %.sroa.0.5, %._crit_edge ] ; 4 uses
  %i.en = load i32, ptr %.sroa.0.2, align 4, !tbaa !16 ; 2 uses
  %.not120413 = icmp eq i32 %i.en, 0
  br i1 %.not120413, label %_ZN5ArrayIwED2Ev.exit200, label %.preheader392

.preheader392:                                    ; preds = %.preheader, %bb.av
  %i.eo = phi i32 [ %i.en, %bb.av ], [ %i.fi, %.preheader ] ; 2 uses
  %.089414 = phi ptr [ %.sroa.0.2, %bb.av ], [ %.3, %.preheader ] ; 11 uses
  br i1 %6, label %.preheader392.split, label %.preheader392.split.us

.preheader392.split.us:                           ; preds = %.preheader392, %bb.aw
  %i.ep = phi i32 [ %.pr304.us, %bb.aw ], [ %i.eo, %.preheader392 ] ; 4 uses
  %.088.us = phi ptr [ %i.eq, %bb.aw ], [ %.089414, %.preheader392 ] ; 4 uses
  switch i32 %i.ep, label %bb.aw [
    i32 13, label %.critedge
    i32 10, label %.critedge
    i32 0, label %.critedge
  ]

bb.aw:                                            ; preds = %.preheader392.split.us
  %i.eq = getelementptr inbounds nuw i8, ptr %.088.us, i64 4 ; 2 uses
  %.pr304.us = load i32, ptr %i.eq, align 4, !tbaa !16
  br label %.preheader392.split.us, !llvm.loop !12

.preheader392.split:                              ; preds = %.preheader392, %bb.az
  %i.er = phi i32 [ %.pr304, %bb.az ], [ %i.eo, %.preheader392 ] ; 4 uses
  %.088 = phi ptr [ %i.ev, %bb.az ], [ %.089414, %.preheader392 ] ; 8 uses
  %.087 = phi ptr [ %.1, %bb.az ], [ null, %.preheader392 ] ; 5 uses
  switch i32 %i.er, label %.preheader392.split._crit_edge [
    i32 13, label %.critedge
    i32 10, label %.critedge
    i32 0, label %.critedge
    i32 47, label %bb.ax
  ]

.preheader392.split._crit_edge:                   ; preds = %.preheader392.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.088, i64 4
  %.pr304.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !16
  br label %bb.az

bb.ax:                                            ; preds = %.preheader392.split
  %i.es = getelementptr inbounds nuw i8, ptr %.088, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !16 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 47
  br i1 %i.eu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %.088, align 4, !tbaa !16
  br label %bb.az

bb.az:                                            ; preds = %.preheader392.split._crit_edge, %bb.ay, %bb.ax
  %.pr304 = phi i32 [ 47, %bb.ay ], [ %i.et, %bb.ax ], [ %.pr304.pre, %.preheader392.split._crit_edge ]
  %.1 = phi ptr [ %.088, %bb.ay ], [ %.087, %bb.ax ], [ %.087, %.preheader392.split._crit_edge ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.088, i64 4
  br label %.preheader392.split, !llvm.loop !12

.critedge:                                        ; preds = %.preheader392.split.us, %.preheader392.split.us, %.preheader392.split.us, %.preheader392.split, %.preheader392.split, %.preheader392.split
  %.us-phi = phi i32 [ %i.er, %.preheader392.split ], [ %i.er, %.preheader392.split ], [ %i.er, %.preheader392.split ], [ %i.ep, %.preheader392.split.us ], [ %i.ep, %.preheader392.split.us ], [ %i.ep, %.preheader392.split.us ]
  %.us-phi405 = phi ptr [ %.088, %.preheader392.split ], [ %.088, %.preheader392.split ], [ %.088, %.preheader392.split ], [ %.088.us, %.preheader392.split.us ], [ %.088.us, %.preheader392.split.us ], [ %.088.us, %.preheader392.split.us ] ; 3 uses
  %.us-phi406 = phi ptr [ %.087, %.preheader392.split ], [ %.087, %.preheader392.split ], [ %.087, %.preheader392.split ], [ null, %.preheader392.split.us ], [ null, %.preheader392.split.us ], [ null, %.preheader392.split.us ] ; 2 uses
  %i.ew = icmp eq i32 %.us-phi, 0
  store i32 0, ptr %.us-phi405, align 4, !tbaa !16
  %.not124 = icmp eq ptr %.us-phi406, null
  %i.ex = select i1 %.not124, ptr %.us-phi405, ptr %.us-phi406
  %.0407.a = getelementptr inbounds i8, ptr %i.ex, i64 -4 ; 2 uses
  %.not125408 = icmp ult ptr %.0407.a, %.089414
  br i1 %.not125408, label %._crit_edge411, label %.lr.ph410

.lr.ph410:                                        ; preds = %.critedge, %bb.ba
  %.0409 = phi ptr [ %.0, %bb.ba ], [ %.0407.a, %.critedge ] ; 3 uses
  %i.ey = load i32, ptr %.0409, align 4, !tbaa !16
  switch i32 %i.ey, label %._crit_edge411 [
    i32 32, label %bb.ba
    i32 9, label %bb.ba
  ]

bb.ba:                                            ; preds = %.lr.ph410, %.lr.ph410
  store i32 0, ptr %.0409, align 4, !tbaa !16
  %.0 = getelementptr inbounds i8, ptr %.0409, i64 -4 ; 2 uses
  %.not125 = icmp ult ptr %.0, %.089414
  br i1 %.not125, label %._crit_edge411, label %.lr.ph410, !llvm.loop !13

._crit_edge411:                                   ; preds = %bb.ba, %.lr.ph410, %.critedge
  br i1 %5, label %bb.bb, label %thread-pre-split

bb.bb:                                            ; preds = %._crit_edge411
  %i.ez = load i32, ptr %.089414, align 4, !tbaa !16 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 34
  br i1 %i.fa, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.fb = call i64 @wcslen(ptr noundef nonnull %.089414) #11
  %i.fc = getelementptr [4 x i8], ptr %.089414, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4     ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !16
  %i.ff = icmp eq i32 %i.fe, 34
end_hunk_0
