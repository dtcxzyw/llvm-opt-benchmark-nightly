inline.NumInlined: 42
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase = type { ptr, i32, i32 }

$_ZN11CStringBaseIwEpLEPKw = comdat any

$_ZN11CStringBaseIwEpLERKS0_ = comdat any

$_ZNK11CStringBaseIwE3MidEii = comdat any

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14AutoRenamePathR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 9 uses
  %2 = alloca %class.CStringBase, align 8         ; 14 uses
  %3 = alloca %class.CStringBase, align 8         ; 12 uses
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %5 = alloca %class.CStringBase, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #8 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !8
  store i32 0, ptr %i.c, align 4, !tbaa !12
  store i32 4, ptr %i.a, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit47, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !8      ; 5 uses
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi ptr [ %i.i, %bb.b ], [ %.0.i, %bb.e ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %.0.i, align 4, !tbaa !12
  %i.k = icmp eq i32 %i.j, 46
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %.0.i to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq ptr %.0.i, %i.g
  br i1 %i.q, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.c, !llvm.loop !16

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.p, %bb.d ], [ -1, %bb.e ]  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %.pn.i44 = phi ptr [ %i.i, %_ZNK11CStringBaseIwE11ReverseFindEw.exit ], [ %.0.i45, %bb.h ]
  %.0.i45 = getelementptr inbounds i8, ptr %.pn.i44, i64 -4 ; 4 uses
  %i.r = load i32, ptr %.0.i45, align 4, !tbaa !12
  %i.s = icmp eq i32 %i.r, 47
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %.0.i45 to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit47

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq ptr %.0.i45, %i.g
  br i1 %i.y, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit47, label %bb.f, !llvm.loop !16

_ZNK11CStringBaseIwE11ReverseFindEw.exit47:       ; preds = %bb.h, %bb.a, %bb.g
  %.1.i79 = phi i32 [ -1, %bb.a ], [ %.1.i, %bb.g ], [ %.1.i, %bb.h ] ; 5 uses
  %.1.i46 = phi i32 [ -1, %bb.a ], [ %i.x, %bb.g ], [ -1, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aa, align 8
  %i.ab = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #8
          to label %bb.i unwind label %bb.v       ; 11 uses

bb.i:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit47
  store ptr %i.ab, ptr %2, align 8, !tbaa !8
  store i32 0, ptr %i.ab, align 4, !tbaa !12
  store i32 4, ptr %i.z, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ad, align 8
  %i.ae = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #8
          to label %bb.j unwind label %bb.w       ; 5 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.ae, ptr %3, align 8, !tbaa !8
  store i32 0, ptr %i.ae, align 4, !tbaa !12
  store i32 4, ptr %i.ac, align 4, !tbaa !14
  %i.af = icmp sgt i32 %.1.i79, %.1.i46
  %i.ag = icmp sgt i32 %.1.i79, 0
  %or.cond = and i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.k, label %bb.ad

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef %.1.i79)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.x

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !15
  store i32 0, ptr %i.ab, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !15 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 4 uses
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = icmp slt i32 %i.aj, -1
  %i.ao = shl nuw nsw i64 %i.am, 2
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao
  %i.aq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #8
          to label %bb.m unwind label %bb.y       ; 3 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #9
  store ptr %i.aq, ptr %2, align 8, !tbaa !8
  store i32 0, ptr %i.aq, align 4, !tbaa !12
  store i32 %i.ak, ptr %i.z, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.m, %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.ar = phi ptr [ %i.ab, %_ZNK11CStringBaseIwE4LeftEi.exit ], [ %i.aq, %bb.m ] ; 3 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !8     ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.as, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.at, %bb.n ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ar, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.av, %bb.n ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.au = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.au, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n, !llvm.loop !18

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %i.ai, align 8, !tbaa !15 ; 2 uses
  store i32 %i.aw, ptr %i.ah, align 8, !tbaa !15
  %i.ax = icmp eq ptr %i.as, null
  br i1 %i.ax, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.as) #9
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !15, !noalias !19
  %i.az = sub nsw i32 %i.ay, %.1.i79
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.1.i79, i32 noundef %i.az)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.aa

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !15
  store i32 0, ptr %i.ae, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !15 ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1                    ; 3 uses
  %i.be = icmp eq i32 %i.bd, 4
  br i1 %i.be, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i50, label %bb.q

bb.q:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = icmp slt i32 %i.bc, -1
  %i.bh = shl nuw nsw i64 %i.bf, 2
  %i.bi = select i1 %i.bg, i64 -1, i64 %i.bh
  %i.bj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #8
          to label %bb.r unwind label %bb.ab      ; 3 uses

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #9
  store ptr %i.bj, ptr %3, align 8, !tbaa !8
  store i32 0, ptr %i.bj, align 4, !tbaa !12
  store i32 %i.bd, ptr %i.ac, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i50

_ZN11CStringBaseIwE11SetCapacityEi.exit.i50:      ; preds = %bb.r, %_ZNK11CStringBaseIwE3MidEi.exit
  %i.bk = phi ptr [ %i.ae, %_ZNK11CStringBaseIwE3MidEi.exit ], [ %i.bj, %bb.r ]
  %i.bl = load ptr, ptr %5, align 8, !tbaa !8     ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i50
  %.04.i.i51 = phi ptr [ %i.bl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i50 ], [ %i.bm, %bb.s ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.bk, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i50 ], [ %i.bo, %bb.s ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04.i.i51, i64 4
  %i.bn = load i32, ptr %.04.i.i51, align 4, !tbaa !12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 4
  store i32 %i.bn, ptr %.0.i.i52, align 4, !tbaa !12
  %.not.i.i53 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i53, label %bb.t, label %bb.s, !llvm.loop !18

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr %i.bb, align 8, !tbaa !15
  store i32 %i.bp, ptr %i.ba, align 8, !tbaa !15
  %i.bq = icmp eq ptr %i.bl, null
  br i1 %i.bq, label %_ZN11CStringBaseIwED2Ev.exit58, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZN11CStringBaseIwED2Ev.exit58

_ZN11CStringBaseIwED2Ev.exit58:                   ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZN11CStringBaseIwEaSERKS0_.exit68

bb.v:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit47
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit76

bb.w:                                             ; preds = %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.x:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit59

bb.y:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN11CStringBaseIwED2Ev.exit59, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #9
  br label %_ZN11CStringBaseIwED2Ev.exit59

_ZN11CStringBaseIwED2Ev.exit59:                   ; preds = %bb.z, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.x ], [ %i.bu, %bb.y ], [ %i.bu, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.at

bb.aa:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit60

bb.ab:                                            ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN11CStringBaseIwED2Ev.exit60, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #9
  br label %_ZN11CStringBaseIwED2Ev.exit60

_ZN11CStringBaseIwED2Ev.exit60:                   ; preds = %bb.ac, %bb.ab, %bb.aa
  %.pn35 = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.by, %bb.ab ], [ %i.by, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.at

bb.ad:                                            ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !15
  store i32 0, ptr %i.ab, align 4, !tbaa !12
  %i.cc = add nsw i32 %i.e, 1                     ; 4 uses
  %i.cd = icmp eq i32 %i.cc, 4
  br i1 %i.cd, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i61, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = icmp slt i32 %i.e, -1
  %i.cg = shl nuw nsw i64 %i.ce, 2
  %i.ch = select i1 %i.cf, i64 -1, i64 %i.cg
  %i.ci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #8
          to label %bb.af unwind label %bb.ah     ; 3 uses

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #9
  store ptr %i.ci, ptr %2, align 8, !tbaa !8
  store i32 0, ptr %i.ci, align 4, !tbaa !12
  store i32 %i.cc, ptr %i.z, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i61

_ZN11CStringBaseIwE11SetCapacityEi.exit.i61:      ; preds = %bb.af, %bb.ad
  %i.cj = phi ptr [ %i.ab, %bb.ad ], [ %i.ci, %bb.af ] ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i61
  %.04.i.i62 = phi ptr [ %i.ck, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i61 ], [ %i.cl, %bb.ag ] ; 2 uses
  %.0.i.i63 = phi ptr [ %i.cj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i61 ], [ %i.cn, %bb.ag ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.04.i.i62, i64 4
  %i.cm = load i32, ptr %.04.i.i62, align 4, !tbaa !12 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 4
  store i32 %i.cm, ptr %.0.i.i63, align 4, !tbaa !12
  %.not.i.i64 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i64, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.ag, !llvm.loop !18

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.ag
  %i.co = load i32, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  store i32 %i.co, ptr %i.cb, align 8, !tbaa !15
  br label %_ZN11CStringBaseIwEaSERKS0_.exit68

bb.ah:                                            ; preds = %bb.aj, %bb.ae
  %i.cp = phi ptr [ %.pr, %bb.aj ], [ %i.ab, %bb.ae ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZN11CStringBaseIwEaSERKS0_.exit68:               ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, %_ZN11CStringBaseIwED2Ev.exit58
  %.pr = phi ptr [ %i.cj, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ], [ %i.ar, %_ZN11CStringBaseIwED2Ev.exit58 ] ; 10 uses
  %6 = phi i32 [ %i.co, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ], [ %i.aw, %_ZN11CStringBaseIwED2Ev.exit58 ] ; 7 uses
  %7 = phi i32 [ %i.cc, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ], [ %i.ak, %_ZN11CStringBaseIwED2Ev.exit58 ] ; 7 uses
  %.pr110 = ptrtoaddr ptr %.pr to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = xor i32 %6, -1
  %i.ct = add i32 %7, %i.cs                       ; 3 uses
  %.not.i.i69 = icmp slt i32 %i.ct, 1
  br i1 %.not.i.i69, label %bb.ai, label %_ZN11CStringBaseIwEpLEw.exitthread-pre-split

bb.ai:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit68
  %i.cu = icmp sgt i32 %7, 64
  %i.cv = lshr i32 %7, 1
  %i.cw = icmp sgt i32 %7, 8
  %..i.i = select i1 %i.cw, i32 16, i32 4
  %.0.i.i70 = select i1 %i.cu, i32 %i.cv, i32 %..i.i ; 2 uses
  %i.cx = add nsw i32 %.0.i.i70, %i.ct
  %i.cy = icmp slt i32 %i.cx, 1
  %i.cz = sub nsw i32 1, %i.ct
  %.1.i.i = select i1 %i.cy, i32 %i.cz, i32 %.0.i.i70
  %i.da = add nsw i32 %.1.i.i, %7                 ; 2 uses
  %i.db = add nsw i32 %i.da, 1                    ; 3 uses
  %i.dc = icmp eq i32 %i.db, %7
  br i1 %i.dc, label %_ZN11CStringBaseIwEpLEw.exitthread-pre-split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = icmp slt i32 %i.da, -1
  %i.df = shl nuw nsw i64 %i.dd, 2
  %i.dg = select i1 %i.de, i64 -1, i64 %i.df
  %i.dh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dg) #8
          to label %.noexc71 unwind label %bb.ah  ; 10 uses

.noexc71:                                         ; preds = %bb.aj
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = icmp sgt i32 %7, 0
  br i1 %i.dj, label %.preheader.i.i.i, label %bb.ak

.preheader.i.i.i:                                 ; preds = %.noexc71
  %i.dk = icmp sgt i32 %6, 0
  br i1 %i.dk, label %.lr.ph.i.i.i, label %._crit_edge.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %6 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %6, 8
  %i.dl = sub i64 %i.di, %.pr110
  %diff.check = icmp ult i64 %i.dl, 32
  %or.cond112 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond112, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <4 x i32>, ptr %i.dm, align 4, !tbaa !12
  %wide.load111 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !12
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %wide.load, ptr %i.do, align 4, !tbaa !12
  store <4 x i32> %wide.load111, ptr %i.dp, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !22

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
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %indvars.iv.i.i.i.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !12
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i.prol
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !12
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !25

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.du = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %._crit_edge.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %indvars.iv.i.i.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !12
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i.i
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !12
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %indvars.iv.next.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !12
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i.i.i
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !12
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %indvars.iv.next.i.i.i.1
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !12
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !12
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %indvars.iv.next.i.i.i.2
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !12
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %scalar.ph, !llvm.loop !27

._crit_edge.thread.i.i.i:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pr) #9
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.thread.i.i.i, %.noexc71
  store ptr %i.dh, ptr %2, align 8, !tbaa !8
  %i.ei = sext i32 %6 to i64                      ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ei
  store i32 0, ptr %i.ej, align 4, !tbaa !12
  store i32 %i.db, ptr %i.z, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwEpLEw.exit

_ZN11CStringBaseIwEpLEw.exitthread-pre-split:     ; preds = %bb.ai, %_ZN11CStringBaseIwEaSERKS0_.exit68
  %.pre = sext i32 %6 to i64
  br label %_ZN11CStringBaseIwEpLEw.exit

_ZN11CStringBaseIwEpLEw.exit:                     ; preds = %_ZN11CStringBaseIwEpLEw.exitthread-pre-split, %bb.ak
  %.pre-phi = phi i64 [ %.pre, %_ZN11CStringBaseIwEpLEw.exitthread-pre-split ], [ %i.ei, %bb.ak ]
  %i.ek = phi ptr [ %.pr, %_ZN11CStringBaseIwEpLEw.exitthread-pre-split ], [ %i.dh, %bb.ak ] ; 5 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %.pre-phi
  store i32 95, ptr %i.el, align 4, !tbaa !12
  %i.em = add nsw i32 %6, 1                       ; 2 uses
  store i32 %i.em, ptr %i.cr, align 8, !tbaa !15
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.en
  store i32 0, ptr %i.eo, align 4, !tbaa !12
  br label %bb.al

bb.al:                                            ; preds = %_ZN11CStringBaseIwEpLEw.exit, %bb.am
  %.02184 = phi i32 [ 1073741824, %_ZN11CStringBaseIwEpLEw.exit ], [ %.122, %bb.am ] ; 2 uses
  %.02383 = phi i32 [ 1, %_ZN11CStringBaseIwEpLEw.exit ], [ %.124, %bb.am ] ; 2 uses
  %i.ep = add i32 %.02184, %.02383
  %i.eq = lshr i32 %i.ep, 1                       ; 3 uses
  %i.er = invoke fastcc noundef zeroext i1 @_ZL12MakeAutoNameRK11CStringBaseIwES2_jRS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.am unwind label %bb.an     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.es = add nuw i32 %i.eq, 1
  %.124 = select i1 %i.er, i32 %i.es, i32 %.02383 ; 3 uses
  %.122 = select i1 %i.er, i32 %.02184, i32 %i.eq ; 2 uses
  %.not = icmp eq i32 %.124, %.122
  br i1 %.not, label %bb.ao, label %bb.al, !llvm.loop !28

bb.an:                                            ; preds = %bb.al
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.am
  %i.eu = invoke fastcc noundef zeroext i1 @_ZL12MakeAutoNameRK11CStringBaseIwES2_jRS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.124, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ev = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %_ZN11CStringBaseIwED2Ev.exit73, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.ev) #9
  br label %_ZN11CStringBaseIwED2Ev.exit73

_ZN11CStringBaseIwED2Ev.exit73:                   ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @_ZdaPv(ptr noundef nonnull %i.ek) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.ex = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZN11CStringBaseIwED2Ev.exit74, label %bb.ar

bb.ar:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit73
  call void @_ZdaPv(ptr noundef nonnull %i.ex) #9
  br label %_ZN11CStringBaseIwED2Ev.exit74

_ZN11CStringBaseIwED2Ev.exit74:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit73, %bb.ar
  %i.ez = xor i1 %i.eu, true
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i1 %i.ez

bb.as:                                            ; preds = %bb.ao
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.an, %bb.as, %bb.ah, %_ZN11CStringBaseIwED2Ev.exit60, %_ZN11CStringBaseIwED2Ev.exit59
  %i.fb = phi ptr [ %i.ab, %_ZN11CStringBaseIwED2Ev.exit59 ], [ %i.cp, %bb.ah ], [ %i.ar, %_ZN11CStringBaseIwED2Ev.exit60 ], [ %i.ek, %bb.an ], [ %i.ek, %bb.as ] ; 2 uses
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit59 ], [ %i.cq, %bb.ah ], [ %.pn35, %_ZN11CStringBaseIwED2Ev.exit60 ], [ %i.et, %bb.an ], [ %i.fa, %bb.as ] ; 2 uses
  %i.fc = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.fc) #9
  br label %bb.av

bb.av:                                            ; preds = %bb.w, %bb.at, %bb.au
  %i.fe = phi ptr [ %i.ab, %bb.w ], [ %i.fb, %bb.at ], [ %i.fb, %bb.au ]
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.w ], [ %.pn37.pn, %bb.at ], [ %.pn37.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @_ZdaPv(ptr noundef nonnull %i.fe) #9
  br label %_ZN11CStringBaseIwED2Ev.exit76

_ZN11CStringBaseIwED2Ev.exit76:                   ; preds = %bb.av, %bb.v
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.v ], [ %.pn37.pn.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.ff = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZN11CStringBaseIwED2Ev.exit77, label %bb.aw

bb.aw:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit76
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #9
  br label %_ZN11CStringBaseIwED2Ev.exit77

_ZN11CStringBaseIwED2Ev.exit77:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit76, %bb.aw
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
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !15
  %i.d = load ptr, ptr %3, align 8, !tbaa !8      ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 2 uses
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.g to i64
  %i.l = icmp slt i32 %i.f, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #8 ; 3 uses
  %i.p = icmp sgt i32 %i.i, 0
  br i1 %i.p, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.d) #9
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !15
  %i.q = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %bb.c
  %i.r = phi i64 [ %i.q, %._crit_edge.thread.i.i ], [ 0, %bb.c ]
  store ptr %i.o, ptr %3, align 8, !tbaa !8
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.t = phi ptr [ %i.d, %bb.b ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.v, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.w = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.w, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.e, !llvm.loop !18

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.e
  %i.y = load i32, ptr %i.e, align 8, !tbaa !15
  store i32 %i.y, ptr %i.c, align 8, !tbaa !15
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.a, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a) ; 0 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !8
  %i.ac = call noundef zeroext i1 @_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKw(ptr noundef %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %i.ac
}

declare void @_Z21ConvertUInt32ToStringjPw(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr %1)
  %i.a = trunc i64 %wcslen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 8 uses
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
end_hunk_0
