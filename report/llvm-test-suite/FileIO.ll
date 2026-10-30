Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FileIO?download=true
inline.NumInlined: 54
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8NWindows5NFile3NIO9CFileBaseD2Ev:bb.a
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8NWindows5NFile3NIO9CFileBaseD0Ev(ptr noundef nonnull align 8 dead_on_return(1084) dereferenceable(1084) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv(ptr noundef nonnull align 8 dereferenceable(1084) %0)
          to label %bb.b unwind label %bb.d, !inline_history !34 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN8NWindows5NFile3NIO9CFileBaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #17, !inline_history !34
  br label %_ZN8NWindows5NFile3NIO9CFileBaseD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18, !inline_history !34
  unreachable

_ZN8NWindows5NFile3NIO9CFileBaseD2Ev.exit:        ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1088) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKcjjjjb(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, i32 noundef %4, i32 %5, i1 noundef zeroext %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.CStringBase.0, align 8       ; 8 uses
  %8 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(1084) %0) ; 0 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !44
  %i.f = icmp eq i8 %i.e, 99
  br i1 %i.f, label %bb.b, label %_ZL16nameWindowToUnixPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !44
  %i.i = icmp eq i8 %i.h, 58
  %spec.select.idx.i = select i1 %i.i, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %1, %bb.a ], [ %spec.select.i, %bb.b ] ; 7 uses
  %i.j = tail call i32 @umask(i32 noundef 0) #19  ; 2 uses
  %i.k = tail call i32 @umask(i32 noundef %i.j) #19 ; 0 uses
  %i.l = and i32 %i.j, 54
  %i.m = xor i32 %i.l, 438                        ; 2 uses
  %i.n = and i32 %2, 1073741824                   ; 2 uses
  %.not.not = icmp eq i32 %i.n, 0
  %.lobit = lshr exact i32 %i.n, 30               ; 4 uses
  %.not42 = icmp sgt i32 %2, -1
  switch i32 %4, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.c:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.o = or disjoint i32 %.lobit, 192
  br label %bb.f

bb.d:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.p = or disjoint i32 %.lobit, 64
  br label %bb.f

bb.e:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.q = or disjoint i32 %.lobit, 64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZL16nameWindowToUnixPKc.exit
  %.240 = phi i32 [ %.lobit, %_ZL16nameWindowToUnixPKc.exit ], [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 -1, ptr %i.r, align 8, !tbaa !18
  %i.s = load i32, ptr @global_use_lstat, align 4, !tbaa !9
  %.not43 = icmp eq i32 %i.s, 0
  %brmerge = or i1 %6, %.not43
  br i1 %brmerge, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.u = tail call i64 @readlink(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.t, i64 noundef 1024) #19 ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.v, ptr %i.w, align 8, !tbaa !19
  %i.x = icmp sgt i32 %i.v, 0
  br i1 %i.x, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %.not42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -2, ptr %i.r, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.z = and i64 %i.u, 2147483647
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !44
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i32 @unlink(ptr noundef nonnull %.0.i) #19
  %.not44 = icmp eq i32 %i.ab, 0
  br i1 %.not44, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.i
  %.pr = load i32, ptr %i.r, align 8, !tbaa !18
  %i.ac = icmp eq i32 %.pr, -1
  br i1 %i.ac, label %bb.m, label %.thread120

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.ad = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %.0.i, i32 noundef %.240, i32 noundef %i.m) ; 3 uses
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, -1
  %i.af = load i32, ptr @global_use_utf16_conversion, align 4
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i)
  %i.ai = trunc i64 %strlen.i.i to i32            ; 2 uses
  %i.aj = add nsw i32 %i.ai, 1                    ; 3 uses
  %i.ak = icmp ne i32 %i.aj, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.am = sext i32 %i.aj to i64
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #20 ; 3 uses
  store ptr %i.an, ptr %8, align 8, !tbaa !15
  store i8 0, ptr %i.an, align 1, !tbaa !44
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !45
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.n, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.aq, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.an, %bb.n ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ao, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %.0.i, %bb.n ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.ap = load i8, ptr %.0.i.i, align 1, !tbaa !44 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.ap, ptr %.04.i.i, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !35

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !46
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.ar = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #17
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.at = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %_ZN11CStringBaseIcEC2Ev.exit unwind label %bb.s ; 3 uses

_ZN11CStringBaseIcEC2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit
  store i8 0, ptr %i.at, align 1, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !24
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %.critedge

bb.q:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN11CStringBaseIcED2Ev.exit60, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #17
  br label %_ZN11CStringBaseIcED2Ev.exit60

_ZN11CStringBaseIcED2Ev.exit60:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN11CStringBaseIwED2Ev.exit67

bb.s:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.lr.ph:                                           ; preds = %_ZN11CStringBaseIcEC2Ev.exit, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %_ZN11CStringBaseIcEC2Ev.exit ] ; 16 uses
  %.sroa.20.0103 = phi i32 [ %.sroa.20.1, %bb.x ], [ 4, %_ZN11CStringBaseIcEC2Ev.exit ] ; 9 uses
  %.sroa.0.0101 = phi ptr [ %.sroa.0.1, %bb.x ], [ %i.at, %_ZN11CStringBaseIcEC2Ev.exit ] ; 13 uses
  %.sroa.0.0101125 = ptrtoaddr ptr %.sroa.0.0101 to i64
  %i.bb = load ptr, ptr %7, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 255
  br i1 %i.be, label %_ZN11CStringBaseIcED2Ev.exit66, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.bf = trunc i32 %i.bd to i8
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  %i.bh = xor i32 %i.bg, -1
  %i.bi = add i32 %.sroa.20.0103, %i.bh           ; 3 uses
  %.not.i.i61 = icmp slt i32 %i.bi, 1
  br i1 %.not.i.i61, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bj = icmp sgt i32 %.sroa.20.0103, 64
  %i.bk = lshr i32 %.sroa.20.0103, 1
  %i.bl = icmp sgt i32 %.sroa.20.0103, 8
  %..i.i = select i1 %i.bl, i32 16, i32 4
  %.0.i.i62 = select i1 %i.bj, i32 %i.bk, i32 %..i.i ; 2 uses
  %i.bm = add nsw i32 %.0.i.i62, %i.bi
  %i.bn = icmp slt i32 %i.bm, 1
  %i.bo = sub nsw i32 1, %i.bi
  %.1.i.i = select i1 %i.bn, i32 %i.bo, i32 %.0.i.i62
  %i.bp = add i32 %.sroa.20.0103, 1
  %i.bq = add i32 %i.bp, %.1.i.i                  ; 3 uses
  %i.br = icmp eq i32 %i.bq, %.sroa.20.0103
  br i1 %i.br, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = sext i32 %i.bq to i64
  %i.bt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #20
          to label %.noexc64 unwind label %_ZN11CStringBaseIcED2Ev.exit65.loopexit ; 10 uses

.noexc64:                                         ; preds = %bb.v
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = icmp sgt i32 %.sroa.20.0103, 0
  br i1 %i.bv, label %.preheader.i.i.i, label %bb.w

.preheader.i.i.i:                                 ; preds = %.noexc64
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge.thread.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 4
  %i.bw = sub i64 %.sroa.0.0101125, %i.bu
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond159 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond159, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp samesign ult i64 %indvars.iv, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %indvars.iv, 28
  %n.vec = and i64 %indvars.iv, 9223372036854775776 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <16 x i8>, ptr %i.by, align 1, !tbaa !44
  %wide.load127 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <16 x i8> %wide.load, ptr %i.ca, align 1, !tbaa !44
  store <16 x i8> %wide.load127, ptr %i.cb, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec128 = and i64 %indvars.iv, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %index129
  %wide.load130 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index129
  store <4 x i8> %wide.load130, ptr %i.ce, align 1, !tbaa !44
  %index.next131 = add nuw i64 %index129, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next131, %n.vec128
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %indvars.iv, %n.vec128
  br i1 %cmp.n132, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec128, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %indvars.iv, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %indvars.iv.i.i.i.prol
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.i.i.i.prol
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !44
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !38

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.cj = sub nsw i64 %indvars.iv.i.i.i.ph, %indvars.iv
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %indvars.iv.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.i.i.i
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !44
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %indvars.iv.next.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !44
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %indvars.iv.next.i.i.i.1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !44
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %indvars.iv.next.i.i.i.2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i.2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !44
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %indvars.iv
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !39

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0101) #17
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread.i.i.i, %.noexc64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  store i8 0, ptr %i.cx, align 1, !tbaa !44
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.t
  %.sroa.0.1 = phi ptr [ %.sroa.0.0101, %bb.u ], [ %i.bt, %bb.w ], [ %.sroa.0.0101, %bb.t ] ; 4 uses
  %.sroa.20.1 = phi i32 [ %.sroa.20.0103, %bb.u ], [ %i.bq, %bb.w ], [ %.sroa.20.0103, %bb.t ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %indvars.iv
  store i8 %i.bf, ptr %i.cy, align 1, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %indvars.iv.next
  store i8 0, ptr %i.cz, align 1, !tbaa !44
  %9 = load i32, ptr %i.au, align 8, !tbaa !24
  %i.da = sext i32 %9 to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %.lr.ph, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %bb.x, %_ZN11CStringBaseIcEC2Ev.exit
  %.sroa.0.0.lcssa = phi ptr [ %i.at, %_ZN11CStringBaseIcEC2Ev.exit ], [ %.sroa.0.1, %bb.x ] ; 3 uses
  %i.dc = invoke i32 (ptr, i32, ...) @open64(ptr noundef nonnull %.sroa.0.0.lcssa, i32 noundef %.240, i32 noundef %i.m)
          to label %bb.y unwind label %_ZN11CStringBaseIcED2Ev.exit65.loopexit.split-lp

bb.y:                                             ; preds = %.critedge
  store i32 %i.dc, ptr %i.r, align 8, !tbaa !18
  br label %_ZN11CStringBaseIcED2Ev.exit66

_ZN11CStringBaseIcED2Ev.exit65.loopexit:          ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit65

_ZN11CStringBaseIcED2Ev.exit65.loopexit.split-lp: ; preds = %.critedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit65

_ZN11CStringBaseIcED2Ev.exit65:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit65.loopexit.split-lp, %_ZN11CStringBaseIcED2Ev.exit65.loopexit
  %.sroa.0.099 = phi ptr [ %.sroa.0.0101, %_ZN11CStringBaseIcED2Ev.exit65.loopexit ], [ %.sroa.0.0.lcssa, %_ZN11CStringBaseIcED2Ev.exit65.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZN11CStringBaseIcED2Ev.exit65.loopexit ], [ %lpad.loopexit.split-lp, %_ZN11CStringBaseIcED2Ev.exit65.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.099) #17
  br label %bb.aa

_ZN11CStringBaseIcED2Ev.exit66:                   ; preds = %.lr.ph, %bb.y
  %.sroa.0.0100 = phi ptr [ %.sroa.0.0.lcssa, %bb.y ], [ %.sroa.0.0101, %.lr.ph ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0100) #17
  %i.dd = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit66
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit66, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pr96 = load i32, ptr %i.r, align 8, !tbaa !18
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit65, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %_ZN11CStringBaseIcED2Ev.exit65 ], [ %i.ba, %bb.s ] ; 2 uses
  %i.df = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN11CStringBaseIwED2Ev.exit67, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.df) #17
  br label %_ZN11CStringBaseIwED2Ev.exit67

_ZN11CStringBaseIwED2Ev.exit67:                   ; preds = %bb.ab, %bb.aa, %_ZN11CStringBaseIcED2Ev.exit60
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %_ZN11CStringBaseIcED2Ev.exit60 ], [ %.pn.pn, %bb.aa ], [ %.pn.pn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn.pn.pn

bb.ac:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.m
  %i.dh = phi i32 [ %.pr96, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.ad, %bb.m ]
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.af, label %.thread120

.thread120:                                       ; preds = %bb.l, %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.dk, align 8, !tbaa !46
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !15
  store i8 0, ptr %i.dl, align 1, !tbaa !44
  %strlen.i.i68 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i)
  %i.dm = trunc i64 %strlen.i.i68 to i32          ; 2 uses
  %i.dn = add nsw i32 %i.dm, 1                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !45
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.ad

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %.thread120
  %.pre5.i = load ptr, ptr %i.dj, align 8, !tbaa !15
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70.preheader

bb.ad:                                            ; preds = %.thread120
  %i.dr = sext i32 %i.dn to i64
  %i.ds = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dr) #20 ; 6 uses
  %i.dt = load i32, ptr %i.do, align 4, !tbaa !45
  %i.du = icmp sgt i32 %i.dt, 0
  %.pre4.i69 = load i32, ptr %i.dk, align 8, !tbaa !46 ; 6 uses
  br i1 %i.du, label %.preheader.i.i74, label %bb.ae

.preheader.i.i74:                                 ; preds = %bb.ad
  %i.dv = icmp sgt i32 %.pre4.i69, 0
  %.pre.i.i75 = load ptr, ptr %i.dj, align 8, !tbaa !15 ; 5 uses
  br i1 %i.dv, label %iter.check145, label %._crit_edge.i.i76

iter.check145:                                    ; preds = %.preheader.i.i74
  %wide.trip.count.i.i80 = zext nneg i32 %.pre4.i69 to i64 ; 6 uses
  %min.iters.check133 = icmp ult i32 %.pre4.i69, 4
  br i1 %min.iters.check133, label %vec.epilog.scalar.ph147.preheader, label %vector.main.loop.iter.check134

vector.main.loop.iter.check134:                   ; preds = %iter.check145
  %min.iters.check135 = icmp ult i32 %.pre4.i69, 32
  br i1 %min.iters.check135, label %vec.epilog.ph149, label %vector.ph136

vector.ph136:                                     ; preds = %vector.main.loop.iter.check134
  %i.dw = and i64 %wide.trip.count.i.i80, 28
  %n.vec137 = and i64 %wide.trip.count.i.i80, 2147483616 ; 4 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.ph136, %vector.body138
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre.i.i75, i64 %index139 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load140 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !44
  %wide.load141 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 %index139 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <16 x i8> %wide.load140, ptr %i.dz, align 1, !tbaa !44
  store <16 x i8> %wide.load141, ptr %i.ea, align 1, !tbaa !44
  %index.next142 = add nuw i64 %index139, 32      ; 2 uses
  %i.eb = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.eb, label %middle.block143, label %vector.body138, !llvm.loop !41

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %n.vec137, %wide.trip.count.i.i80
  br i1 %cmp.n144, label %._crit_edge.thread.i.i77, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block143
  %min.epilog.iters.check148 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check148, label %vec.epilog.scalar.ph147.preheader, label %vec.epilog.ph149, !prof !49

vec.epilog.ph149:                                 ; preds = %vector.main.loop.iter.check134, %vec.epilog.iter.check146
  %vec.epilog.resume.val150 = phi i64 [ %n.vec137, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check134 ]
  %n.vec151 = and i64 %wide.trip.count.i.i80, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body152

vec.epilog.vector.body152:                        ; preds = %vec.epilog.vector.body152, %vec.epilog.ph149
  %index153 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph149 ], [ %index.next155, %vec.epilog.vector.body152 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre.i.i75, i64 %index153
  %wide.load154 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 %index153
  store <4 x i8> %wide.load154, ptr %i.ed, align 1, !tbaa !44
  %index.next155 = add nuw i64 %index153, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.ee, label %vec.epilog.middle.block156, label %vec.epilog.vector.body152, !llvm.loop !42

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body152
  %cmp.n157 = icmp eq i64 %n.vec151, %wide.trip.count.i.i80
  br i1 %cmp.n157, label %._crit_edge.thread.i.i77, label %vec.epilog.scalar.ph147.preheader

vec.epilog.scalar.ph147.preheader:                ; preds = %iter.check145, %vec.epilog.iter.check146, %vec.epilog.middle.block156
  %indvars.iv.i.i81.ph = phi i64 [ 0, %iter.check145 ], [ %n.vec137, %vec.epilog.iter.check146 ], [ %n.vec151, %vec.epilog.middle.block156 ]
  br label %vec.epilog.scalar.ph147

._crit_edge.i.i76:                                ; preds = %.preheader.i.i74
  %i.ef = icmp eq ptr %.pre.i.i75, null
  br i1 %i.ef, label %bb.ae, label %._crit_edge.thread.i.i77

vec.epilog.scalar.ph147:                          ; preds = %vec.epilog.scalar.ph147.preheader, %vec.epilog.scalar.ph147
  %indvars.iv.i.i81 = phi i64 [ %indvars.iv.next.i.i82, %vec.epilog.scalar.ph147 ], [ %indvars.iv.i.i81.ph, %vec.epilog.scalar.ph147.preheader ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre.i.i75, i64 %indvars.iv.i.i81
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !44
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.i.i81
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !44
  %indvars.iv.next.i.i82 = add nuw nsw i64 %indvars.iv.i.i81, 1 ; 2 uses
  %exitcond.not.i.i83 = icmp eq i64 %indvars.iv.next.i.i82, %wide.trip.count.i.i80
  br i1 %exitcond.not.i.i83, label %._crit_edge.thread.i.i77, label %vec.epilog.scalar.ph147, !llvm.loop !43

._crit_edge.thread.i.i77:                         ; preds = %vec.epilog.scalar.ph147, %middle.block143, %vec.epilog.middle.block156, %._crit_edge.i.i76
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #17
  %.pre.i78 = load i32, ptr %i.dk, align 8, !tbaa !46
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.i.i77, %._crit_edge.i.i76, %bb.ad
  %i.ej = phi i32 [ %.pre.i78, %._crit_edge.thread.i.i77 ], [ %.pre4.i69, %._crit_edge.i.i76 ], [ %.pre4.i69, %bb.ad ]
  store ptr %i.ds, ptr %i.dj, align 8, !tbaa !15
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.ds, i64 %i.ek
  store i8 0, ptr %i.el, align 1, !tbaa !44
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !45
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70.preheader

_ZN11CStringBaseIcE11SetCapacityEi.exit.i70.preheader: ; preds = %bb.ae, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %.04.i.i71.ph = phi ptr [ %i.ds, %bb.ae ], [ %.pre5.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ]
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70

_ZN11CStringBaseIcE11SetCapacityEi.exit.i70:      ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70.preheader, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70
  %.04.i.i71 = phi ptr [ %i.eo, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70 ], [ %.04.i.i71.ph, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70.preheader ] ; 2 uses
  %.0.i.i72 = phi ptr [ %i.em, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70 ], [ %.0.i, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 1
  %i.en = load i8, ptr %.0.i.i72, align 1, !tbaa !44 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.04.i.i71, i64 1
  store i8 %i.en, ptr %.04.i.i71, align 1, !tbaa !44
  %.not.i.i73 = icmp eq i8 %i.en, 0
  br i1 %.not.i.i73, label %_ZN11CStringBaseIcEaSEPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70, !llvm.loop !35

_ZN11CStringBaseIcEaSEPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i70
  store i32 %i.dm, ptr %i.dk, align 8, !tbaa !46
  br label %bb.af

end_hunk_0
