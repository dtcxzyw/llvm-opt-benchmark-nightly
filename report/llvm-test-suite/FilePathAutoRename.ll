Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FilePathAutoRename?download=true
inline.NumInlined: 42
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase = type { ptr, i32, i32 }

$_ZN11CStringBaseIwEpLEPKw = comdat any

$_ZN11CStringBaseIwEpLERKS0_ = comdat any

$_ZNK11CStringBaseIwE3MidEii = comdat any

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14AutoRenamePathR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN11CStringBaseIwEC2Ev.exit:
  %1 = alloca %class.CStringBase, align 8         ; 9 uses
  %2 = alloca %class.CStringBase, align 8         ; 14 uses
  %3 = alloca %class.CStringBase, align 8         ; 12 uses
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %5 = alloca %class.CStringBase, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  store ptr %i.b, ptr %1, align 8, !tbaa !12
  store i32 0, ptr %i.b, align 4, !tbaa !14
  store i32 4, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit47, label %bb.a

bb.a:                                             ; preds = %_ZN11CStringBaseIwEC2Ev.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !12     ; 5 uses
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn.i = phi ptr [ %i.i, %bb.a ], [ %.0.i, %bb.d ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %.0.i, align 4, !tbaa !14
  %i.k = icmp eq i32 %i.j, 46
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %.0.i to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq ptr %.0.i, %i.g
  br i1 %i.q, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.b, !llvm.loop !20

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %i.p, %bb.c ], [ -1, %bb.d ]  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %.pn.i44 = phi ptr [ %i.i, %_ZNK11CStringBaseIwE11ReverseFindEw.exit ], [ %.0.i45, %bb.g ]
  %.0.i45 = getelementptr inbounds i8, ptr %.pn.i44, i64 -4 ; 4 uses
  %i.r = load i32, ptr %.0.i45, align 4, !tbaa !14
  %i.s = icmp eq i32 %i.r, 47
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %.0.i45 to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit47

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq ptr %.0.i45, %i.g
  br i1 %i.y, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit47, label %bb.e, !llvm.loop !20

_ZNK11CStringBaseIwE11ReverseFindEw.exit47:       ; preds = %bb.g, %_ZN11CStringBaseIwEC2Ev.exit, %bb.f
  %.1.i134 = phi i32 [ -1, %_ZN11CStringBaseIwEC2Ev.exit ], [ %.1.i, %bb.f ], [ %.1.i, %bb.g ] ; 5 uses
  %.1.i46 = phi i32 [ -1, %_ZN11CStringBaseIwEC2Ev.exit ], [ %i.x, %bb.f ], [ -1, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aa, align 8
  %i.ab = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #8
          to label %.noexc unwind label %bb.s     ; 11 uses

.noexc:                                           ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit47
  store ptr %i.ab, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %i.ab, align 4, !tbaa !14
  store i32 4, ptr %i.z, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ae, align 8
  %i.af = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #8
          to label %.noexc71 unwind label %bb.t   ; 5 uses

.noexc71:                                         ; preds = %.noexc
  store ptr %i.af, ptr %3, align 8, !tbaa !12
  store i32 0, ptr %i.af, align 4, !tbaa !14
  store i32 4, ptr %i.ad, align 4, !tbaa !15
  %i.ag = icmp sgt i32 %.1.i134, %.1.i46
  %i.ah = icmp sgt i32 %.1.i134, 0
  %or.cond = and i1 %i.ah, %i.ag
  br i1 %or.cond, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %.noexc71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef %.1.i134)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.u

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %bb.h
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %6, align 8, !tbaa !16
  store i32 0, ptr %i.ab, align 4, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 4 uses
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = icmp slt i32 %i.aj, -1
  %i.ao = shl nuw nsw i64 %i.am, 2
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao
  %i.aq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #8
          to label %bb.j unwind label %bb.v       ; 3 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #9
  store ptr %i.aq, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %i.aq, align 4, !tbaa !14
  store i32 %i.ak, ptr %i.z, align 4, !tbaa !15
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.j, %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.ar = phi ptr [ %i.ab, %_ZNK11CStringBaseIwE4LeftEi.exit ], [ %i.aq, %bb.j ] ; 3 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !12    ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ar, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.av, %bb.k ] ; 2 uses
  %.0.i.i = phi ptr [ %i.as, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.at, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.au = load i32, ptr %.0.i.i, align 4, !tbaa !14 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.au, ptr %.04.i.i, align 4, !tbaa !14
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  store i32 %i.aw, ptr %6, align 8, !tbaa !16
  %i.ax = icmp eq ptr %i.as, null
  br i1 %i.ax, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.as) #9
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !16, !noalias !27
  %i.az = sub nsw i32 %i.ay, %.1.i134
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.1.i134, i32 noundef %i.az)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.x

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit
  store i32 0, ptr %i.ac, align 8, !tbaa !16
  store i32 0, ptr %i.af, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !16 ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1                    ; 3 uses
  %i.bd = icmp eq i32 %i.bc, 4
  br i1 %i.bd, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i87, label %bb.n

bb.n:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = icmp slt i32 %i.bb, -1
  %i.bg = shl nuw nsw i64 %i.be, 2
  %i.bh = select i1 %i.bf, i64 -1, i64 %i.bg
  %i.bi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #8
          to label %bb.o unwind label %bb.y       ; 3 uses

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.af) #9
  store ptr %i.bi, ptr %3, align 8, !tbaa !12
  store i32 0, ptr %i.bi, align 4, !tbaa !14
  store i32 %i.bc, ptr %i.ad, align 4, !tbaa !15
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i87

_ZN11CStringBaseIwE11SetCapacityEi.exit.i87:      ; preds = %bb.o, %_ZNK11CStringBaseIwE3MidEi.exit
  %i.bj = phi ptr [ %i.af, %_ZNK11CStringBaseIwE3MidEi.exit ], [ %i.bi, %bb.o ]
  %i.bk = load ptr, ptr %5, align 8, !tbaa !12    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i87
  %.04.i.i88 = phi ptr [ %i.bj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i87 ], [ %i.bn, %bb.p ] ; 2 uses
  %.0.i.i89 = phi ptr [ %i.bk, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i87 ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i89, i64 4
  %i.bm = load i32, ptr %.0.i.i89, align 4, !tbaa !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i.i88, i64 4
  store i32 %i.bm, ptr %.04.i.i88, align 4, !tbaa !14
  %.not.i.i90 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i90, label %bb.q, label %bb.p, !llvm.loop !0

bb.q:                                             ; preds = %bb.p
  %i.bo = load i32, ptr %i.ba, align 8, !tbaa !16
  store i32 %i.bo, ptr %i.ac, align 8, !tbaa !16
  %i.bp = icmp eq ptr %i.bk, null
  br i1 %i.bp, label %_ZN11CStringBaseIwED2Ev.exit103, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #9
  br label %_ZN11CStringBaseIwED2Ev.exit103

_ZN11CStringBaseIwED2Ev.exit103:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.ae

bb.s:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit47
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit131

bb.t:                                             ; preds = %.noexc
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.u:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit104

bb.v:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN11CStringBaseIwED2Ev.exit104, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #9
  br label %_ZN11CStringBaseIwED2Ev.exit104

_ZN11CStringBaseIwED2Ev.exit104:                  ; preds = %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.bt, %bb.v ], [ %i.bt, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.ao

bb.x:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit105

bb.y:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN11CStringBaseIwED2Ev.exit105, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.by) #9
  br label %_ZN11CStringBaseIwED2Ev.exit105

_ZN11CStringBaseIwED2Ev.exit105:                  ; preds = %bb.z, %bb.y, %bb.x
  %.pn35 = phi { ptr, i32 } [ %i.bw, %bb.x ], [ %i.bx, %bb.y ], [ %i.bx, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.ao

bb.aa:                                            ; preds = %.noexc71
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %7, align 8, !tbaa !16
  store i32 0, ptr %i.ab, align 4, !tbaa !14
  %i.ca = load i32, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1                    ; 4 uses
  %i.cc = icmp eq i32 %i.cb, 4
  br i1 %i.cc, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i107, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = icmp slt i32 %i.ca, -1
  %i.cf = shl nuw nsw i64 %i.cd, 2
  %i.cg = select i1 %i.ce, i64 -1, i64 %i.cf
  %i.ch = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cg) #8
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #9
  store ptr %i.ch, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %i.ch, align 4, !tbaa !14
  store i32 %i.cb, ptr %i.z, align 4, !tbaa !15
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i107

_ZN11CStringBaseIwE11SetCapacityEi.exit.i107:     ; preds = %bb.ac, %bb.aa
  %i.ci = phi ptr [ %i.ab, %bb.aa ], [ %i.ch, %bb.ac ] ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i107
  %.04.i.i108 = phi ptr [ %i.ci, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i107 ], [ %i.cm, %bb.ad ] ; 2 uses
  %.0.i.i109 = phi ptr [ %i.cj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i107 ], [ %i.ck, %bb.ad ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i109, i64 4
  %i.cl = load i32, ptr %.0.i.i109, align 4, !tbaa !14 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.04.i.i108, i64 4
  store i32 %i.cl, ptr %.04.i.i108, align 4, !tbaa !14
  %.not.i.i110 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i110, label %_ZN11CStringBaseIwEaSERKS0_.exit122, label %bb.ad, !llvm.loop !0

_ZN11CStringBaseIwEaSERKS0_.exit122:              ; preds = %bb.ad
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  store i32 %i.cn, ptr %7, align 8, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit122, %_ZN11CStringBaseIwED2Ev.exit103
  %i.co = phi i32 [ %i.cb, %_ZN11CStringBaseIwEaSERKS0_.exit122 ], [ %i.ak, %_ZN11CStringBaseIwED2Ev.exit103 ] ; 7 uses
  %i.cp = phi i32 [ %i.cn, %_ZN11CStringBaseIwEaSERKS0_.exit122 ], [ %i.aw, %_ZN11CStringBaseIwED2Ev.exit103 ] ; 7 uses
  %8 = phi ptr [ %i.ci, %_ZN11CStringBaseIwEaSERKS0_.exit122 ], [ %i.ar, %_ZN11CStringBaseIwED2Ev.exit103 ] ; 11 uses
  %.pr135172 = ptrtoaddr ptr %8 to i64
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = xor i32 %i.cp, -1
  %i.cr = add i32 %i.co, %i.cq                    ; 3 uses
  %.not.i.i123 = icmp slt i32 %i.cr, 1
  br i1 %.not.i.i123, label %bb.af, label %_ZN11CStringBaseIwEpLEw.exit

bb.af:                                            ; preds = %bb.ae
  %i.cs = icmp sgt i32 %i.co, 64
  %i.ct = lshr i32 %i.co, 1
  %i.cu = icmp sgt i32 %i.co, 8
  %..i.i = select i1 %i.cu, i32 16, i32 4
  %.0.i.i124 = select i1 %i.cs, i32 %i.ct, i32 %..i.i ; 2 uses
  %i.cv = add nsw i32 %.0.i.i124, %i.cr
  %i.cw = icmp slt i32 %i.cv, 1
  %i.cx = sub nsw i32 1, %i.cr
  %.1.i.i = select i1 %i.cw, i32 %i.cx, i32 %.0.i.i124
  %i.cy = add nsw i32 %.1.i.i, %i.co              ; 2 uses
  %i.cz = add nsw i32 %i.cy, 1                    ; 3 uses
  %i.da = icmp eq i32 %i.cz, %i.co
  br i1 %i.da, label %_ZN11CStringBaseIwEpLEw.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = icmp slt i32 %i.cy, -1
  %i.dd = shl nuw nsw i64 %i.db, 2
  %i.de = select i1 %i.dc, i64 -1, i64 %i.dd
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #8
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc126:                                        ; preds = %bb.ag
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = icmp sgt i32 %i.co, 0
  br i1 %i.dh, label %.preheader.i.i.i, label %bb.ah

.preheader.i.i.i:                                 ; preds = %.noexc126
  %i.di = icmp sgt i32 %i.cp, 0
  br i1 %i.di, label %.lr.ph.i.i.i, label %._crit_edge.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cp to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.cp, 8
  %i.dj = sub i64 %.pr135172, %i.dg
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond174 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond174, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !14
  %wide.load173 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !14
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x i32> %wide.load, ptr %i.dm, align 4, !tbaa !14
  store <4 x i32> %wide.load173, ptr %i.dn, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i.i.i.prol
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !14
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.prol
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !14
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !24

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i.i.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !14
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !14
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.i.i.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !14
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !14
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.i.i.i.1
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !14
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !14
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.i.i.i.2
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !14
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !14
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %scalar.ph, !llvm.loop !25

._crit_edge.thread.i.i.i:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %8) #9
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.thread.i.i.i, %.noexc126
  store ptr %i.df, ptr %2, align 8, !tbaa !12
  %i.eg = sext i32 %i.cp to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.eg
  store i32 0, ptr %i.eh, align 4, !tbaa !14
  store i32 %i.cz, ptr %i.z, align 4, !tbaa !15
  br label %_ZN11CStringBaseIwEpLEw.exit

_ZN11CStringBaseIwEpLEw.exit:                     ; preds = %bb.ae, %bb.af, %bb.ah
  %10 = phi ptr [ %8, %bb.ae ], [ %8, %bb.af ], [ %i.df, %bb.ah ] ; 5 uses
  %11 = sext i32 %i.cp to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %10, i64 %11
  store i32 95, ptr %i.ei, align 4, !tbaa !14
  %i.ej = add nsw i32 %i.cp, 1                    ; 2 uses
  store i32 %i.ej, ptr %9, align 8, !tbaa !16
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %10, i64 %i.ek
  store i32 0, ptr %i.el, align 4, !tbaa !14
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN11CStringBaseIwEpLEw.exit, %bb.aj
  %.0141 = phi i32 [ 1073741824, %_ZN11CStringBaseIwEpLEw.exit ], [ %.1, %bb.aj ] ; 2 uses
  %.021140 = phi i32 [ 1, %_ZN11CStringBaseIwEpLEw.exit ], [ %.122, %bb.aj ] ; 2 uses
  %i.em = add i32 %.0141, %.021140
  %i.en = lshr i32 %i.em, 1                       ; 3 uses
  %i.eo = invoke fastcc noundef zeroext i1 @_ZL12MakeAutoNameRK11CStringBaseIwES2_jRS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.en, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ep = add nuw i32 %i.en, 1
  %.122 = select i1 %i.eo, i32 %i.ep, i32 %.021140 ; 3 uses
  %.1 = select i1 %i.eo, i32 %.0141, i32 %i.en    ; 2 uses
  %.not = icmp eq i32 %.122, %.1
  br i1 %.not, label %bb.ak, label %bb.ai, !llvm.loop !26

bb.ak:                                            ; preds = %bb.aj
  %i.eq = invoke fastcc noundef zeroext i1 @_ZL12MakeAutoNameRK11CStringBaseIwES2_jRS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.122, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.er = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN11CStringBaseIwED2Ev.exit128, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.er) #9
  br label %_ZN11CStringBaseIwED2Ev.exit128

_ZN11CStringBaseIwED2Ev.exit128:                  ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @_ZdaPv(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.et = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZN11CStringBaseIwED2Ev.exit129, label %bb.an

bb.an:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit128
  call void @_ZdaPv(ptr noundef nonnull %i.et) #9
  br label %_ZN11CStringBaseIwED2Ev.exit129

_ZN11CStringBaseIwED2Ev.exit129:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit128, %bb.an
  %i.ev = xor i1 %i.eq, true
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i1 %i.ev

.loopexit.split-lp.loopexit:                      ; preds = %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.ab, %bb.ag
  %i.ew = phi ptr [ %10, %bb.ak ], [ %i.ab, %bb.ab ], [ %8, %bb.ag ]
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %_ZN11CStringBaseIwED2Ev.exit105, %_ZN11CStringBaseIwED2Ev.exit104
  %12 = phi ptr [ %i.ar, %_ZN11CStringBaseIwED2Ev.exit105 ], [ %i.ab, %_ZN11CStringBaseIwED2Ev.exit104 ], [ %10, %.loopexit.split-lp.loopexit ], [ %i.ew, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn37.pn = phi { ptr, i32 } [ %.pn35, %_ZN11CStringBaseIwED2Ev.exit105 ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit104 ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ex = icmp eq ptr %.pre, null
  br i1 %i.ex, label %bb.ap, label %.thread

.thread:                                          ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %.pre) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread, %bb.t
  %.pn37.pn.pn137 = phi { ptr, i32 } [ %i.br, %bb.t ], [ %.pn37.pn, %.thread ], [ %.pn37.pn, %bb.ao ]
  %13 = phi ptr [ %i.ab, %bb.t ], [ %12, %.thread ], [ %12, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @_ZdaPv(ptr noundef nonnull %13) #9
  br label %_ZN11CStringBaseIwED2Ev.exit131

_ZN11CStringBaseIwED2Ev.exit131:                  ; preds = %bb.ap, %bb.s
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %.pn37.pn.pn137, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.ey = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %_ZN11CStringBaseIwED2Ev.exit132, label %bb.aq

bb.aq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit131
  call void @_ZdaPv(ptr noundef nonnull %i.ey) #9
  br label %_ZN11CStringBaseIwED2Ev.exit132

_ZN11CStringBaseIwED2Ev.exit132:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit131, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  resume { ptr, i32 } %.pn37.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL12MakeAutoNameRK11CStringBaseIwES2_jRS0_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef range(i32 0, -2147483647) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %2, ptr noundef nonnull %i.a)
  %i.b = icmp eq ptr %0, %3
  br i1 %i.b, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.d = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.g to i64
  %i.l = icmp slt i32 %i.f, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #8 ; 5 uses
  %i.p = load i32, ptr %i.h, align 4, !tbaa !15
  %i.q = icmp sgt i32 %i.p, 0
  %.pre7.i = load i32, ptr %i.c, align 8, !tbaa !16 ; 5 uses
  br i1 %i.q, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.r = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !12 ; 4 uses
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !14
  %wide.load8 = load <4 x i32>, ptr %i.t, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %wide.load, ptr %i.u, align 4, !tbaa !14
  store <4 x i32> %wide.load8, ptr %i.v, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.x = icmp eq ptr %.pre.i.i, null
  br i1 %i.x, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !14
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !30

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #9
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.ab = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre7.i, %._crit_edge.i.i ], [ %.pre7.i, %bb.c ]
  store ptr %i.o, ptr %3, align 8, !tbaa !12
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !14
  store i32 %i.g, ptr %i.h, align 4, !tbaa !15
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.ae = phi ptr [ %i.d, %bb.b ], [ %i.o, %bb.d ]
  %i.af = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ai, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.af, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ah = load i32, ptr %.0.i.i, align 4, !tbaa !14 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ah, ptr %.04.i.i, align 4, !tbaa !14
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.e, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.e
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !16
  store i32 %i.aj, ptr %i.c, align 8, !tbaa !16
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.a, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a) ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !12
  %i.an = call noundef zeroext i1 @_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKw(ptr noundef %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %i.an
}

declare void @_Z21ConvertUInt32ToStringjPw(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr %1)
  %i.a = trunc i64 %wcslen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.c, %i.f                       ; 3 uses
  %.not.i = icmp slt i32 %i.g, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 64
  %i.i = lshr i32 %i.c, 1
  %i.j = icmp sgt i32 %i.c, 8
  %..i = select i1 %i.j, i32 16, i32 4
  %.0.i = select i1 %i.h, i32 %i.i, i32 %..i      ; 2 uses
  %i.k = add nsw i32 %.0.i, %i.g
  %i.l = icmp slt i32 %i.k, %i.a
  %i.m = sub nsw i32 %i.a, %i.g
  %.1.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %i.n = add nsw i32 %.1.i, %i.c                  ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i32 %i.o to i64
  %i.r = icmp slt i32 %i.n, -1
  %i.s = shl nuw nsw i64 %i.q, 2
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #8 ; 4 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !15
  %i.w = icmp sgt i32 %i.v, 0
  %.pre12.i = load i32, ptr %i.d, align 8, !tbaa !16 ; 5 uses
  br i1 %i.w, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.x = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !12 ; 4 uses
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

end_hunk_0
