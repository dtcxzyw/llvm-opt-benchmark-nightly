Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/stream?download=true
inline.NumInlined: 202
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN4YAMLL17s_introFinalStateE = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\01\00\00\00\00\01\01\00\00\00\00\00\01\01", align 16
@_ZN4YAMLL18s_introTransitionsE = internal unnamed_addr constant [18 x [8 x i32]] [[8 x i32] [i32 1, i32 17, i32 17, i32 15, i32 6, i32 7, i32 12, i32 17], [8 x i32] [i32 2, i32 17, i32 17, i32 17, i32 17, i32 17, i32 5, i32 17], [8 x i32] [i32 4, i32 17, i32 17, i32 17, i32 3, i32 17, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 4, i32 17, i32 17], [8 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 5, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 8, i32 17, i32 17, i32 17], [8 x i32] [i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 11, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11], [8 x i32] [i32 13, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17], [8 x i32] [i32 14, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 11, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 17, i32 16, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17]], align 16
@_ZN4YAMLL17s_introUngetCountE = internal unnamed_addr constant [18 x [8 x i8]] [[8 x i8] c"\00\01\01\00\00\00\00\01", [8 x i8] c"\00\02\02\02\02\02\02\02", [8 x i8] c"\03\03\03\03\00\03\03\03", [8 x i8] c"\04\04\04\04\04\00\04\04", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\02\02\02\02\02\00\02\02", [8 x i8] c"\02\02\02\02\00\02\02\02", [8 x i8] c"\00\01\01\01\01\01\01\01", [8 x i8] c"\00\02\02\02\02\02\02\02", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\00\02\02\02\02\02\02\02", [8 x i8] c"\00\03\03\03\03\03\03\03", [8 x i8] c"\04\04\04\04\04\04\04\04", [8 x i8] c"\02\00\02\02\02\02\02\02", [8 x i8] c"\03\03\00\03\03\03\03\03", [8 x i8] c"\01\01\01\01\01\01\01\01"], align 16
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@switch.table._ZN4YAML6StreamC2ERSi = private unnamed_addr constant [8 x i8] c"\04\02\00\00\00\00\01\03", align 4

@_ZN4YAML6StreamC1ERSi = unnamed_addr alias void (ptr, ptr), ptr @_ZN4YAML6StreamC2ERSi
@_ZN4YAML6StreamD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4YAML6StreamD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6StreamC2ERSi(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 104)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  tail call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
  %i.e = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.e, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !25
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34
  %i.n = and i32 %i.m, 5
  %.not35 = icmp eq i32 %i.n, 0
  br i1 %.not35, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.p = phi i64 [ 0, %bb.d ], [ %i.aq, %.loopexit ] ; 2 uses
  %.02344 = phi i32 [ 0, %bb.d ], [ %.2, %.loopexit ] ; 2 uses
  %i.q = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.f unwind label %bb.o       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %.02344, 1                       ; 2 uses
  %i.s = sext i32 %.02344 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.s
  store i32 %i.q, ptr %i.t, align 4, !tbaa !8
  switch i32 %i.q, label %bb.l [
    i32 -1, label %_ZN4YAML15IntroCharTypeOfEi.exit
    i32 0, label %.fold.split.i
    i32 187, label %bb.g
    i32 191, label %bb.h
    i32 239, label %bb.i
    i32 254, label %bb.j
    i32 255, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.h:                                             ; preds = %bb.f
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.i:                                             ; preds = %bb.f
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.j:                                             ; preds = %bb.f
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.k:                                             ; preds = %bb.f
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.l:                                             ; preds = %bb.f
  %i.u = add i32 %i.q, -1
  %or.cond.i = icmp ult i32 %i.u, 254
  %..i = select i1 %or.cond.i, i64 6, i64 7
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

.fold.split.i:                                    ; preds = %bb.f
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

_ZN4YAML15IntroCharTypeOfEi.exit:                 ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.fold.split.i
  %.0.i = phi i64 [ 5, %bb.k ], [ %..i, %bb.l ], [ 4, %bb.j ], [ 7, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 0, %.fold.split.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr @_ZN4YAMLL18s_introTransitionsE, i64 %i.p
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !68   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZN4YAMLL17s_introUngetCountE, i64 %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35   ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %_ZN4YAML15IntroCharTypeOfEi.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !25
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef 0)
          to label %.preheader.preheader unwind label %.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.m
  %i.ag = zext nneg i8 %i.aa to i32
  %i.ah = sext i32 %i.r to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.ah, %.preheader.preheader ], [ %indvars.iv.next, %bb.p ]
  %.043 = phi i32 [ %i.ag, %.preheader.preheader ], [ %i.an, %bb.p ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 2 uses
  %.not = icmp eq i32 %i.aj, -1
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.ak = trunc i32 %i.aj to i8
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7putbackEc(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef signext %i.ak)
          to label %bb.p unwind label %.loopexit37 ; 0 uses

bb.o:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit37:                                      ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %.preheader, %bb.n
  %i.an = add nsw i32 %.043, -1
  %i.ao = icmp sgt i32 %.043, 1
  br i1 %i.ao, label %.preheader, label %.loopexit.loopexit, !llvm.loop !64

.loopexit.loopexit:                               ; preds = %bb.p
  %i.ap = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4YAML15IntroCharTypeOfEi.exit
  %.2 = phi i32 [ %i.r, %_ZN4YAML15IntroCharTypeOfEi.exit ], [ %i.ap, %.loopexit.loopexit ]
  %i.aq = zext i32 %i.x to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN4YAMLL17s_introFinalStateE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !69, !range !70, !noundef !38
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.q, label %bb.e, !llvm.loop !65

bb.q:                                             ; preds = %.loopexit
  %switch.tableidx = add i32 %i.x, -4             ; 2 uses
  %i.au = icmp ult i32 %switch.tableidx, 8
  br i1 %i.au, label %switch.lookup, label %bb.r

switch.lookup:                                    ; preds = %bb.q
  %i.av = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4YAML6StreamC2ERSi, i64 %i.av
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.q ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = icmp ne ptr %i.az, null
  %.neg.i.i.i = sext i1 %i.bg to i64
  %i.bh = add nsw i64 %i.bf, %.neg.i.i.i
  %i.bi = shl nsw i64 %i.bh, 9
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.bm, %i.bn
  %i.bu = add i64 %i.bt, %i.br
end_hunk_0
begin_hunk_1_@_ZNK4YAML6Stream13StreamInUtf16Ev:bb.a
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.e, label %bb.r

bb.e:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit38
  %.not = icmp eq i32 %i.b, 2                     ; 4 uses
  %.sroa.speculated65 = select i1 %.not, i8 %.1.i105, i8 %.1.i36 ; 2 uses
  %i.bu = and i8 %.sroa.speculated65, -4          ; 2 uses
  %or.cond = icmp eq i8 %i.bu, -36
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, i64 noundef 65533)
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.bw = zext i8 %.sroa.speculated65 to i64
  %i.bx = shl nuw nsw i64 %i.bw, 8
  %.sroa.speculated59 = select i1 %.not, i8 %.1.i36, i8 %.1.i105
  %i.by = zext i8 %.sroa.speculated59 to i64
  %i.bz = or disjoint i64 %i.bx, %i.by            ; 2 uses
  %or.cond3 = icmp eq i8 %i.bu, -40
  br i1 %or.cond3, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.p
  %.028 = phi i64 [ %i.eq, %bb.p ], [ %i.bz, %.preheader ] ; 2 uses
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !55  ; 2 uses
  %.not.i39 = icmp ult i64 %i.cc, %i.cd
  %.pre88 = load ptr, ptr %i.ca, align 8, !tbaa !23 ; 2 uses
  br i1 %.not.i39, label %_ZNK4YAML6Stream11GetNextByteEv.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 232
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !62 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr noundef %.pre88, i64 noundef 2048), !inline_history !1 ; 3 uses
  store i64 %i.co, ptr %i.e, align 8, !tbaa !55
  store i64 0, ptr %i.c, align 8, !tbaa !54
  %.not4.i40 = icmp eq i64 %i.co, 0
  br i1 %.not4.i40, label %bb.j, label %._crit_edge.i41

bb.j:                                             ; preds = %bb.i
  %i.cp = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !34
  %i.cw = or i32 %i.cv, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ct, i32 noundef %i.cw)
  %.pre.i44 = load i64, ptr %i.e, align 8, !tbaa !55 ; 2 uses
  %i.cx = icmp eq i64 %.pre.i44, 0
  %.pre89 = load i64, ptr %i.c, align 8, !tbaa !54
  br i1 %i.cx, label %_ZNK4YAML6Stream11GetNextByteEv.exit45.thread, label %._crit_edge.i41

_ZNK4YAML6Stream11GetNextByteEv.exit45.thread:    ; preds = %bb.j
  %.pre92.pre = load ptr, ptr %i.ca, align 8, !tbaa !23
  br label %bb.k

._crit_edge.i41:                                  ; preds = %bb.j, %bb.i
  %i.cy = phi i64 [ %i.co, %bb.i ], [ %.pre.i44, %bb.j ]
  %.pre6.i42 = phi i64 [ 0, %bb.i ], [ %.pre89, %bb.j ]
  %.pre87 = load ptr, ptr %i.ca, align 8, !tbaa !23
  br label %_ZNK4YAML6Stream11GetNextByteEv.exit45

_ZNK4YAML6Stream11GetNextByteEv.exit45:           ; preds = %bb.h, %._crit_edge.i41
  %i.cz = phi i64 [ %i.cy, %._crit_edge.i41 ], [ %i.cd, %bb.h ]
  %i.da = phi ptr [ %.pre87, %._crit_edge.i41 ], [ %.pre88, %bb.h ] ; 3 uses
  %i.db = phi i64 [ %.pre6.i42, %._crit_edge.i41 ], [ %i.cc, %bb.h ] ; 2 uses
  %i.dc = add i64 %i.db, 1                        ; 3 uses
  store i64 %i.dc, ptr %i.c, align 8, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !35  ; 2 uses
  %i.df = icmp ult i64 %i.dc, %i.cz
  br i1 %i.df, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit45.thread, %_ZNK4YAML6Stream11GetNextByteEv.exit45
  %.1.i43114 = phi i8 [ 0, %_ZNK4YAML6Stream11GetNextByteEv.exit45.thread ], [ %i.de, %_ZNK4YAML6Stream11GetNextByteEv.exit45 ] ; 2 uses
  %.pre92111 = phi ptr [ %.pre92.pre, %_ZNK4YAML6Stream11GetNextByteEv.exit45.thread ], [ %i.da, %_ZNK4YAML6Stream11GetNextByteEv.exit45 ]
  %i.dg = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !25
  %i.di = getelementptr i8, ptr %i.dh, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 232
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !62 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef %.pre92111, i64 noundef 2048), !inline_history !1 ; 2 uses
  store i64 %i.dq, ptr %i.e, align 8, !tbaa !55
  store i64 0, ptr %i.c, align 8, !tbaa !54
  %.not4.i47 = icmp eq i64 %i.dq, 0
  br i1 %.not4.i47, label %bb.l, label %._crit_edge.i48

bb.l:                                             ; preds = %bb.k
  %i.dr = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !25
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !34
  %i.dy = or i32 %i.dx, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dv, i32 noundef %i.dy)
  %.pre.i51 = load i64, ptr %i.e, align 8, !tbaa !55
  %i.dz = icmp eq i64 %.pre.i51, 0
  br i1 %i.dz, label %_ZNK4YAML6Stream11GetNextByteEv.exit52, label %.._crit_edge.i48_crit_edge

.._crit_edge.i48_crit_edge:                       ; preds = %bb.l
  %.pre6.i49.pre = load i64, ptr %i.c, align 8, !tbaa !54
  br label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.._crit_edge.i48_crit_edge, %bb.k
  %.pre6.i49 = phi i64 [ %.pre6.i49.pre, %.._crit_edge.i48_crit_edge ], [ 0, %bb.k ]
  %.pre91 = load ptr, ptr %i.ca, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i48, %_ZNK4YAML6Stream11GetNextByteEv.exit45
  %.1.i43113 = phi i8 [ %.1.i43114, %._crit_edge.i48 ], [ %i.de, %_ZNK4YAML6Stream11GetNextByteEv.exit45 ]
  %i.ea = phi ptr [ %.pre91, %._crit_edge.i48 ], [ %i.da, %_ZNK4YAML6Stream11GetNextByteEv.exit45 ]
  %i.eb = phi i64 [ %.pre6.i49, %._crit_edge.i48 ], [ %i.dc, %_ZNK4YAML6Stream11GetNextByteEv.exit45 ] ; 2 uses
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.c, align 8, !tbaa !54
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !35
  br label %_ZNK4YAML6Stream11GetNextByteEv.exit52

_ZNK4YAML6Stream11GetNextByteEv.exit52:           ; preds = %bb.l, %bb.m
  %.1.i43112 = phi i8 [ %.1.i43113, %bb.m ], [ %.1.i43114, %bb.l ] ; 2 uses
  %.1.i50 = phi i8 [ %i.ee, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ef = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !25
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !34
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit52
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, i64 noundef 65533)
  br label %bb.r

bb.o:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit52
  %.sroa.speculated62 = select i1 %.not, i8 %.1.i43112, i8 %.1.i50 ; 2 uses
  %i.en = zext i8 %.sroa.speculated62 to i64
  %i.eo = shl nuw nsw i64 %i.en, 8
  %.sroa.speculated = select i1 %.not, i8 %.1.i50, i8 %.1.i43112
  %i.ep = zext i8 %.sroa.speculated to i64
  %i.eq = or disjoint i64 %i.eo, %i.ep            ; 2 uses
  %i.er = add i8 %.sroa.speculated62, 32          ; 2 uses
  %or.cond5 = icmp ult i8 %i.er, -4
  br i1 %or.cond5, label %bb.p, label %.thread74

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, i64 noundef 65533)
  %or.cond7 = icmp ult i8 %i.er, -8
  br i1 %or.cond7, label %.thread, label %bb.h, !llvm.loop !91

.thread:                                          ; preds = %bb.p
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, i64 noundef %.028)
  br label %bb.r

.thread74:                                        ; preds = %bb.o
  %i.es = shl nuw nsw i64 %.028, 10
  %i.et = and i64 %i.es, 1047552
  %i.eu = and i64 %i.eq, 1023
  %i.ev = add nuw nsw i64 %i.et, 65536
  %i.ew = or disjoint i64 %i.ev, %i.eu
  br label %bb.q

bb.q:                                             ; preds = %.thread74, %bb.g
  %.2 = phi i64 [ %i.ew, %.thread74 ], [ %i.bz, %bb.g ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ex, i64 noundef %.2)
  br label %bb.r

bb.r:                                             ; preds = %.thread, %_ZNK4YAML6Stream11GetNextByteEv.exit38, %bb.q, %bb.n, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4YAML6Stream13StreamInUtf32Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp eq i32 %i.b, 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 13 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp ult i64 %i.e, %i.g
  br i1 %.not.i, label %_ZNK4YAML6Stream11GetNextByteEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef %i.p, i64 noundef 2048), !inline_history !1 ; 3 uses
  store i64 %i.t, ptr %i.f, align 8, !tbaa !55
  store i64 0, ptr %i.d, align 8, !tbaa !54
  %.not4.i = icmp eq i64 %i.t, 0
  br i1 %.not4.i, label %bb.c, label %_ZNK4YAML6Stream11GetNextByteEv.exit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !34
  %i.ab = or i32 %i.aa, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.y, i32 noundef %i.ab)
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !55 ; 2 uses
  %i.ac = icmp eq i64 %.pre.i, 0
  %.pre = load i64, ptr %i.d, align 8, !tbaa !54
  br i1 %i.ac, label %_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a, label %_ZNK4YAML6Stream11GetNextByteEv.exit

_ZNK4YAML6Stream11GetNextByteEv.exit:             ; preds = %bb.a, %bb.c, %bb.b
  %i.ad = phi i64 [ %i.g, %bb.a ], [ %i.t, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.ae = phi i64 [ %i.e, %bb.a ], [ 0, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35  ; 2 uses
  %.not.i8 = icmp ult i64 %i.ah, %i.ad
  br i1 %.not.i8, label %_ZNK4YAML6Stream11GetNextByteEv.exit14, label %_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a

_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a:    ; preds = %bb.c, %_ZNK4YAML6Stream11GetNextByteEv.exit
  %.sroa.0.0 = phi i8 [ %i.aj, %_ZNK4YAML6Stream11GetNextByteEv.exit ], [ 0, %bb.c ] ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef %i.as, i64 noundef 2048), !inline_history !1 ; 3 uses
  store i64 %i.aw, ptr %i.f, align 8, !tbaa !55
  store i64 0, ptr %i.d, align 8, !tbaa !54
  %.not4.i9 = icmp eq i64 %i.aw, 0
  br i1 %.not4.i9, label %bb.d, label %_ZNK4YAML6Stream11GetNextByteEv.exit14

bb.d:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a
  %i.ax = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !34
  %i.be = or i32 %i.bd, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bb, i32 noundef %i.be)
  %.pre.i13 = load i64, ptr %i.f, align 8, !tbaa !55 ; 2 uses
  %i.bf = icmp eq i64 %.pre.i13, 0
  %.pre34 = load i64, ptr %i.d, align 8, !tbaa !54
  br i1 %i.bf, label %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a, label %_ZNK4YAML6Stream11GetNextByteEv.exit14

_ZNK4YAML6Stream11GetNextByteEv.exit14:           ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit, %bb.d, %_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a
  %.sroa.0.1 = phi i8 [ %i.aj, %_ZNK4YAML6Stream11GetNextByteEv.exit ], [ %.sroa.0.0, %bb.d ], [ %.sroa.0.0, %_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a ] ; 2 uses
  %i.bg = phi i64 [ %i.ad, %_ZNK4YAML6Stream11GetNextByteEv.exit ], [ %.pre.i13, %bb.d ], [ %i.aw, %_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a ] ; 2 uses
  %i.bh = phi i64 [ %i.ah, %_ZNK4YAML6Stream11GetNextByteEv.exit ], [ %.pre34, %bb.d ], [ 0, %_ZNK4YAML6Stream11GetNextByteEv.exit.thread.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bk = add i64 %i.bh, 1                        ; 3 uses
  store i64 %i.bk, ptr %i.d, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35  ; 2 uses
  %.not.i15 = icmp ult i64 %i.bk, %i.bg
  br i1 %.not.i15, label %_ZNK4YAML6Stream11GetNextByteEv.exit21, label %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a

_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a:  ; preds = %bb.d, %_ZNK4YAML6Stream11GetNextByteEv.exit14
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %_ZNK4YAML6Stream11GetNextByteEv.exit14 ], [ %.sroa.0.0, %bb.d ] ; 3 uses
  %.sroa.6.0 = phi i8 [ %i.bm, %_ZNK4YAML6Stream11GetNextByteEv.exit14 ], [ 0, %bb.d ] ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 232
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !62 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !23
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef %i.bv, i64 noundef 2048), !inline_history !1 ; 3 uses
  store i64 %i.bz, ptr %i.f, align 8, !tbaa !55
  store i64 0, ptr %i.d, align 8, !tbaa !54
  %.not4.i16 = icmp eq i64 %i.bz, 0
  br i1 %.not4.i16, label %bb.e, label %_ZNK4YAML6Stream11GetNextByteEv.exit21

bb.e:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a
  %i.ca = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !25
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !34
  %i.ch = or i32 %i.cg, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ce, i32 noundef %i.ch)
  %.pre.i20 = load i64, ptr %i.f, align 8, !tbaa !55 ; 2 uses
  %i.ci = icmp eq i64 %.pre.i20, 0
  %.pre36 = load i64, ptr %i.d, align 8, !tbaa !54
  br i1 %i.ci, label %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a, label %_ZNK4YAML6Stream11GetNextByteEv.exit21

_ZNK4YAML6Stream11GetNextByteEv.exit21:           ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit14, %bb.e, %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a
  %.sroa.0.3 = phi i8 [ %.sroa.0.1, %_ZNK4YAML6Stream11GetNextByteEv.exit14 ], [ %.sroa.0.2, %bb.e ], [ %.sroa.0.2, %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a ] ; 2 uses
  %.sroa.6.1 = phi i8 [ %i.bm, %_ZNK4YAML6Stream11GetNextByteEv.exit14 ], [ %.sroa.6.0, %bb.e ], [ %.sroa.6.0, %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a ] ; 2 uses
  %i.cj = phi i64 [ %i.bg, %_ZNK4YAML6Stream11GetNextByteEv.exit14 ], [ %.pre.i20, %bb.e ], [ %i.bz, %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a ]
  %i.ck = phi i64 [ %i.bk, %_ZNK4YAML6Stream11GetNextByteEv.exit14 ], [ %.pre36, %bb.e ], [ 0, %_ZNK4YAML6Stream11GetNextByteEv.exit14.thread.a ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23
  %i.cn = add i64 %i.ck, 1                        ; 3 uses
  store i64 %i.cn, ptr %i.d, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !35  ; 2 uses
  %i.cq = icmp ult i64 %i.cn, %i.cj
  br i1 %i.cq, label %._crit_edge.i24, label %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a

_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a:  ; preds = %bb.e, %_ZNK4YAML6Stream11GetNextByteEv.exit21
  %.sroa.0.4 = phi i8 [ %.sroa.0.3, %_ZNK4YAML6Stream11GetNextByteEv.exit21 ], [ %.sroa.0.2, %bb.e ] ; 3 uses
  %.sroa.6.2 = phi i8 [ %.sroa.6.1, %_ZNK4YAML6Stream11GetNextByteEv.exit21 ], [ %.sroa.6.0, %bb.e ] ; 3 uses
  %.sroa.10.0 = phi i8 [ %i.cp, %_ZNK4YAML6Stream11GetNextByteEv.exit21 ], [ 0, %bb.e ] ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 232
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !23
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef %i.cz, i64 noundef 2048), !inline_history !1 ; 2 uses
  store i64 %i.dd, ptr %i.f, align 8, !tbaa !55
  store i64 0, ptr %i.d, align 8, !tbaa !54
  %.not4.i23 = icmp eq i64 %i.dd, 0
  br i1 %.not4.i23, label %bb.f, label %._crit_edge.i24

bb.f:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a
  %i.de = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !25
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !34
  %i.dl = or i32 %i.dk, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.di, i32 noundef %i.dl)
  %.pre.i27 = load i64, ptr %i.f, align 8, !tbaa !55
  %i.dm = icmp eq i64 %.pre.i27, 0
  br i1 %i.dm, label %_ZNK4YAML6Stream11GetNextByteEv.exit28, label %.._crit_edge.i24_crit_edge

.._crit_edge.i24_crit_edge:                       ; preds = %bb.f
  %.pre6.i25.pre = load i64, ptr %i.d, align 8, !tbaa !54
  br label %._crit_edge.i24

._crit_edge.i24:                                  ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a, %.._crit_edge.i24_crit_edge, %_ZNK4YAML6Stream11GetNextByteEv.exit21
  %.sroa.0.5 = phi i8 [ %.sroa.0.3, %_ZNK4YAML6Stream11GetNextByteEv.exit21 ], [ %.sroa.0.4, %.._crit_edge.i24_crit_edge ], [ %.sroa.0.4, %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a ]
  %.sroa.6.3 = phi i8 [ %.sroa.6.1, %_ZNK4YAML6Stream11GetNextByteEv.exit21 ], [ %.sroa.6.2, %.._crit_edge.i24_crit_edge ], [ %.sroa.6.2, %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a ]
  %.sroa.10.1 = phi i8 [ %i.cp, %_ZNK4YAML6Stream11GetNextByteEv.exit21 ], [ %.sroa.10.0, %.._crit_edge.i24_crit_edge ], [ %.sroa.10.0, %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a ]
  %i.dn = phi i64 [ %i.cn, %_ZNK4YAML6Stream11GetNextByteEv.exit21 ], [ %.pre6.i25.pre, %.._crit_edge.i24_crit_edge ], [ 0, %_ZNK4YAML6Stream11GetNextByteEv.exit21.thread.a ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23
  %i.dq = add i64 %i.dn, 1
  store i64 %i.dq, ptr %i.d, align 8, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !35
  br label %_ZNK4YAML6Stream11GetNextByteEv.exit28

_ZNK4YAML6Stream11GetNextByteEv.exit28:           ; preds = %bb.f, %._crit_edge.i24
  %.sroa.0.6 = phi i8 [ %.sroa.0.5, %._crit_edge.i24 ], [ %.sroa.0.4, %bb.f ] ; 2 uses
  %.sroa.6.4 = phi i8 [ %.sroa.6.3, %._crit_edge.i24 ], [ %.sroa.6.2, %bb.f ] ; 2 uses
  %.sroa.10.2 = phi i8 [ %.sroa.10.1, %._crit_edge.i24 ], [ %.sroa.10.0, %bb.f ] ; 2 uses
  %.1.i26 = phi i8 [ %i.ds, %._crit_edge.i24 ], [ 0, %bb.f ] ; 2 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !34
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit28
  %.sroa.speculated74 = select i1 %i.c, i8 %.sroa.0.6, i8 %.1.i26
  %i.eb = zext i8 %.sroa.speculated74 to i64
  %.sroa.speculated68 = select i1 %i.c, i8 %.sroa.6.4, i8 %.sroa.10.2
  %i.ec = zext i8 %.sroa.speculated68 to i64
  %i.ed = shl nuw nsw i64 %i.eb, 16
  %i.ee = shl nuw nsw i64 %i.ec, 8
  %i.ef = or disjoint i64 %i.ed, %i.ee
  %.sroa.speculated = select i1 %i.c, i8 %.sroa.10.2, i8 %.sroa.6.4
  %i.eg = zext i8 %.sroa.speculated to i64
  %i.eh = or disjoint i64 %i.ef, %i.eg
  %i.ei = shl nuw nsw i64 %i.eh, 8
  %.sroa.speculated71 = select i1 %i.c, i8 %.1.i26, i8 %.sroa.0.6
  %i.ej = zext i8 %.sroa.speculated71 to i64
  %i.ek = or disjoint i64 %i.ei, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.el, i64 noundef %i.ek)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4YAML6Stream11GetNextByteEv.exit28, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef %i.m, i64 noundef 2048), !inline_history !92 ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !55
  store i64 0, ptr %i.a, align 8, !tbaa !54
  %.not4 = icmp eq i64 %i.q, 0
  br i1 %.not4, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !48, !nonnull !38, !align !49 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34
  %i.y = or i32 %i.x, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.y)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !55
  %i.z = icmp eq i64 %.pre, 0
  br i1 %i.z, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %.pre6 = load i64, ptr %i.a, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.aa = phi i64 [ %.pre6, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = add i64 %i.aa, 1
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i8 [ %i.af, %bb.d ], [ 0, %bb.c ]
  ret i8 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = icmp eq i64 %1, 4
  %spec.store.select = select i1 %i.k, i64 65533, i64 %1 ; 13 uses
  %i.l = icmp ult i64 %spec.store.select, 128
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.m = trunc nuw nsw i64 %spec.store.select to i8 ; 2 uses
  store i8 %i.m, ptr %i.a, align 1, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %.not.i.i = icmp eq ptr %i.o, %i.r
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.m, ptr %i.o, align 1, !tbaa !35
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.n, align 8, !tbaa !52
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

_ZNSt5dequeIcSaIcEE9push_backEOc.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  %i.u = icmp ult i64 %spec.store.select, 2048
  br i1 %i.u, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.v = lshr i64 %spec.store.select, 6
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = or disjoint i8 %i.w, -64                 ; 2 uses
  store i8 %i.x, ptr %i.b, align 1, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %.not.i.i23 = icmp eq ptr %i.z, %i.ac
  br i1 %.not.i.i23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.x, ptr %i.z, align 1, !tbaa !35
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !52
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit24

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre45 = load ptr, ptr %i.y, align 8, !tbaa !52
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit24

_ZNSt5dequeIcSaIcEE9push_backEOc.exit24:          ; preds = %bb.g, %bb.h
  %i.af = phi ptr [ %i.ae, %bb.g ], [ %.pre45, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ag = trunc i64 %spec.store.select to i8
  %i.ah = and i8 %i.ag, 63
  %i.ai = or disjoint i8 %i.ah, -128              ; 2 uses
  store i8 %i.ai, ptr %i.c, align 1, !tbaa !35
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %.not.i.i25 = icmp eq ptr %i.af, %i.ak
  br i1 %.not.i.i25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit24
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !35
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.y, align 8, !tbaa !52
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit26

bb.j:                                             ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit24
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit26

_ZNSt5dequeIcSaIcEE9push_backEOc.exit26:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ab

bb.k:                                             ; preds = %bb.e
  %i.an = icmp ult i64 %spec.store.select, 65536
  br i1 %i.an, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ao = lshr i64 %spec.store.select, 12
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, -32               ; 2 uses
  store i8 %i.aq, ptr %i.d, align 1, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1
  %.not.i.i27 = icmp eq ptr %i.as, %i.av
  br i1 %.not.i.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !35
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !52
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit28

bb.n:                                             ; preds = %bb.l
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre43 = load ptr, ptr %i.ar, align 8, !tbaa !52
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit28

_ZNSt5dequeIcSaIcEE9push_backEOc.exit28:          ; preds = %bb.m, %bb.n
  %i.ay = phi ptr [ %i.ax, %bb.m ], [ %.pre43, %bb.n ] ; 2 uses
end_hunk_1
