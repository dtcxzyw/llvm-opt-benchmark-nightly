Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/wkt_parser?download=true
inline.NumInlined: 54
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"Parsing error : \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c". Error occurred around:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_Z12pj_wkt_errorP20pj_wkt_parse_contextPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str, i64 noundef 16) ; 0 uses
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !8
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %1, i64 noundef %i.e) ; 0 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !8
  %i.k = add i64 %i.j, -4611686018427387879
  %i.l = icmp ult i64 %i.k, 25
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull @.str.1, i64 noundef 25) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.o, align 8, !tbaa !8
  store i8 0, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = load ptr, ptr %0, align 8, !tbaa !18
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 4 uses
  %i.w = call i32 @llvm.smax.i32(i32 %i.v, i32 40) ; 2 uses
  %.sroa.speculated = add nsw i32 %i.w, -40       ; 3 uses
  %i.x = add nsw i32 %i.v, 40                     ; 2 uses
  %i.y = icmp slt i32 %.sroa.speculated, %i.x
  br i1 %i.y, label %.lr.ph.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = add nsw i64 %i.z, -40
  %sext.a = shl i64 %i.u, 32
  %i.ab = ashr exact i64 %sext.a, 32
  %i.ac = zext nneg i32 %i.x to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next.pre-phi, %bb.i ] ; 4 uses
  %.03466 = phi i32 [ %.sroa.speculated, %.lr.ph.preheader ], [ %.1, %bb.i ] ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.af, label %bb.f [
    i8 0, label %.critedge
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ag = icmp sgt i64 %indvars.iv, %i.ab
  br i1 %i.ag, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.o, align 8, !tbaa !8
  %i.ah = load ptr, ptr %2, align 8, !tbaa !19
  store i8 0, ptr %i.ah, align 1, !tbaa !15
  %i.ai = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.aj = trunc nsw i64 %i.ai to i32
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !8   ; 4 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.n
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.ao = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ar = icmp ugt i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ak, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.as = phi ptr [ %.pre.i.i, %.noexc ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store i8 %i.af, ptr %i.at, align 1, !tbaa !15
  store i64 %i.al, ptr %i.o, align 8, !tbaa !8
  %i.au = load ptr, ptr %2, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !15
  %.pre75 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.e
  %indvars.iv.next.pre-phi = phi i64 [ %.pre75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.ai, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.03466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ax = icmp slt i64 %indvars.iv.next.pre-phi, %i.ac
  br i1 %i.ax, label %.lr.ph, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.d
  %.034.lcssa.ph = phi i32 [ %.1, %bb.i ], [ %.03466, %.lr.ph ], [ %.03466, %bb.d ]
  %.pre = load i64, ptr %i.o, align 8, !tbaa !8   ; 2 uses
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !8
  %i.az = sub i64 4611686018427387903, %i.ay
  %i.ba = icmp ult i64 %i.az, %.pre
  br i1 %i.ba, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.j:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
          to label %.noexc39 unwind label %bb.m

.noexc39:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38, %.critedge
  %.034.lcssa88 = phi i32 [ %.034.lcssa.ph, %.critedge ], [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38 ] ; 2 uses
  %i.bb = phi i64 [ %.pre, %.critedge ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38 ]
  %i.bc = load ptr, ptr %2, align 8, !tbaa !19
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.bc, i64 noundef %i.bb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.be = load i64, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bj = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44
  %i.bl = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i44 ]
  %i.bm = icmp ugt i64 %i.bf, %i.bl
  br i1 %i.bm, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit46

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.be, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc45 unwind label %bb.m

.noexc45:                                         ; preds = %bb.k
  %.pre.i.i43 = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42, %.noexc45
  %i.bn = phi ptr [ %.pre.i.i43, %.noexc45 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i42 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 10, ptr %i.bo, align 1, !tbaa !15
  store i64 %i.bf, ptr %i.b, align 8, !tbaa !8
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bf
  store i8 0, ptr %i.bq, align 1, !tbaa !15
  %i.br = icmp slt i32 %.034.lcssa88, %i.v
  br i1 %i.br, label %.lr.ph73, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit46
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.bt = add i64 %i.bs, 1                        ; 3 uses
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bh
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50: ; preds = %._crit_edge
  %i.bw = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %._crit_edge
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50
  %i.by = phi i64 [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50 ]
  %i.bz = icmp ugt i64 %i.bt, %i.by
  br i1 %i.bz, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bs, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc51 unwind label %bb.m

.noexc51:                                         ; preds = %bb.l
  %.pre.i.i49 = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph73:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit46, %bb.o
  %.072 = phi i32 [ %i.cn, %bb.o ], [ %.034.lcssa88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit46 ]
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bh
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56: ; preds = %.lr.ph73
  %i.cf = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %.lr.ph73
  %i.cg = load i64, ptr %i.bh, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56
  %i.ch = phi i64 [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56 ]
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.cb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc57 unwind label %bb.p

.noexc57:                                         ; preds = %bb.n
  %.pre.i.i55 = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %.noexc57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i54
  %i.cj = phi ptr [ %.pre.i.i55, %.noexc57 ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i54 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store i8 32, ptr %i.ck, align 1, !tbaa !15
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !8
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cc
  store i8 0, ptr %i.cm, align 1, !tbaa !15
  %i.cn = add nsw i32 %.072, 1                    ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.v
  br i1 %i.co, label %.lr.ph73, label %._crit_edge, !llvm.loop !22

bb.p:                                             ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %.noexc51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48
  %i.cq = phi ptr [ %.pre.i.i49, %.noexc51 ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.bs
end_hunk_0
