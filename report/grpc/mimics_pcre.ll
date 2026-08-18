inline.NumInlined: 232
inline.NumDeleted: 134
begin_hunk_0_@_ZN10LogMessage5FlushEv:bb.a
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !21, !alias.scope !90
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !91
  %i.w = load ptr, ptr %1, align 8, !tbaa !59
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.y = call i64 @fwrite(ptr noundef %i.w, i64 noundef 1, i64 noundef %i.v, ptr noundef %i.x) #23 ; 0 uses
  store i8 1, ptr %0, align 8, !tbaa !47
  %i.z = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 13 uses
  %5 = alloca %"struct.re2::WalkState", align 8   ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"struct.re2::WalkState", align 8   ; 8 uses
  tail call void @_ZN3re26Regexp6WalkerIbE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull @.str, i32 noundef 163)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.10, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load i8, ptr %4, align 8, !tbaa !47, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !23
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !21
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #19
  br label %_ZN10LogMessageD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #20
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #18
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ai

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.y = zext i1 %2 to i8
  store ptr %1, ptr %5, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.z, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.y, ptr %i.aa, align 4, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.ab, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ag
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !99
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !65
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.thread80.a

.thread80.a:                                      ; preds = %.thread80.backedge, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !66, !noalias !102 ; 2 uses
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !62, !noalias !102
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.j, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit

bb.j:                                             ; preds = %.thread80.a
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !61, !noalias !102
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 504
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit: ; preds = %.thread80.a, %bb.j
  %i.ay = phi ptr [ %i.ax, %bb.j ], [ %i.ar, %.thread80.a ] ; 12 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !70 ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 6 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !96 ; 2 uses
  %cond = icmp eq i32 %i.bc, -1
  br i1 %cond, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.bd = load i32, ptr %i.al, align 4, !tbaa !37 ; 2 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.al, align 4, !tbaa !37
  %i.bf = icmp slt i32 %i.bd, 1
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.ap, align 8, !tbaa !25
  %i.bg = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !97, !range !12, !noundef !13
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load ptr, ptr %0, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ba, i1 noundef zeroext %i.bi)
  br label %bb.ac

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !10
  %i.bn = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !97, !range !12, !noundef !13
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load ptr, ptr %0, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ba, i1 noundef zeroext %i.bp, ptr noundef nonnull %i.a) ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.ay, i64 -11
  %i.bv = zext i1 %i.bt to i8
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !105
  %i.bw = load i8, ptr %i.a, align 1, !tbaa !10, !range !12, !noundef !13
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bb, align 8, !tbaa !96
  %i.by = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 3 uses
  store ptr null, ptr %i.by, align 8, !tbaa !73
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !19 ; 2 uses
  switch i16 %i.ca, label %bb.p [
    i16 1, label %bb.o
    i16 0, label %.thread
  ]

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -10
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !73
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.cc = zext i16 %i.ca to i64
  %i.cd = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cc) #21
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !73
  %.pre.pre.pre = load i32, ptr %i.bb, align 8, !tbaa !96
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %bb.o
  %.pre.pre = phi i32 [ 0, %bb.n ], [ %.pre.pre.pre, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ac

bb.r:                                             ; preds = %.thread, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %.pre = phi i32 [ %.pre.pre, %.thread ], [ %i.bc, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 6 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !19 ; 3 uses
  %.not71.a = icmp eq i16 %i.cf, 0
  br i1 %.not71.a, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = icmp eq i16 %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %.0.i = select i1 %i.cg, ptr %i.ch, ptr %i.ci   ; 3 uses
  %i.cj = zext i16 %i.cf to i32
  %.not72.a = icmp slt i32 %.pre, %i.cj
  br i1 %.not72.a, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ck = icmp sgt i32 %.pre, 0
  %or.cond = and i1 %3, %i.ck
  br i1 %or.cond, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cl = add nsw i32 %.pre, -1
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.cp = zext nneg i32 %.pre to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cs = icmp eq ptr %i.co, %i.cr
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !73
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !10, !range !12, !noundef !13
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = load ptr, ptr %0, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %i.cx)
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !73
  %i.dd = load i32, ptr %i.bb, align 8, !tbaa !96 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = zext i1 %i.db to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !10
  %i.dh = add nsw i32 %i.dd, 1
  store i32 %i.dh, ptr %i.bb, align 8, !tbaa !96
  br label %.thread80.backedge

bb.w:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.di = load i32, ptr %i.bb, align 8, !tbaa !96
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20
  %i.dm = getelementptr inbounds i8, ptr %i.ay, i64 -11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !105, !range !12, !noundef !13
  store ptr %i.dl, ptr %6, align 8, !tbaa !70
  store i32 -1, ptr %i.am, align 8, !tbaa !96
  store i8 %i.dn, ptr %i.an, align 4, !tbaa !97
  store ptr null, ptr %i.ao, align 8, !tbaa !73
  %i.do = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.dp = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -24
  %.not.i.i.i74 = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i.i.i74, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !99
  %i.dr = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store ptr %i.ds, ptr %i.ac, align 8, !tbaa !65
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

bb.y:                                             ; preds = %bb.w
  call void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread80.backedge

.thread80.backedge:                               ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75, %bb.v, %bb.ah
  br label %.thread80.a, !llvm.loop !106

bb.z:                                             ; preds = %bb.s, %bb.r
  %i.dt = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !97, !range !12, !noundef !13
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = getelementptr inbounds i8, ptr %i.ay, i64 -11
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !105, !range !12, !noundef !13
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !73
  %i.eb = load ptr, ptr %0, align 8, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.ba, i1 noundef zeroext %i.dv, i1 noundef zeroext %i.dy, ptr noundef %i.ea, i32 noundef %.pre) ; 3 uses
  %i.ef = load i16, ptr %i.ce, align 2, !tbaa !19
  %i.eg = icmp ugt i16 %i.ef, 1
  br i1 %i.eg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !73 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.q, %bb.z, %bb.ab, %bb.aa, %bb.l
  %.161 = phi i1 [ %i.bm, %bb.l ], [ %i.ee, %bb.aa ], [ %i.ee, %bb.ab ], [ %i.ee, %bb.z ], [ %i.bt, %bb.q ] ; 4 uses
  %i.ej = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.ek = load ptr, ptr %i.aj, align 8, !tbaa !74 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.ac
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -24 ; 4 uses
  store ptr %i.el, ptr %i.ac, align 8, !tbaa !65
  %i.em = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.ai, label %bb.ad

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef 504) #19
  %i.eo = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 2 uses
  store ptr %i.ep, ptr %i.ak, align 8, !tbaa !61
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !42 ; 3 uses
  store ptr %i.eq, ptr %i.aj, align 8, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 504
  store ptr %i.er, ptr %i.ae, align 8, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 480 ; 3 uses
  store ptr %i.es, ptr %i.ac, align 8, !tbaa !65
  %i.et = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.ai, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.ad:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.ev = icmp eq ptr %i.el, %i.ek
  br i1 %i.ev, label %bb.ae, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.ae:                                            ; preds = %bb.ad
  %i.ew = load ptr, ptr %i.ak, align 8, !tbaa !61, !noalias !107
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !42
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 504
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76: ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %bb.ad, %bb.ae
  %i.fa = phi ptr [ %i.ez, %bb.ae ], [ %i.el, %bb.ad ], [ %i.es, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ] ; 5 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !73 ; 2 uses
  %.not73 = icmp eq ptr %i.fc, null
  br i1 %.not73, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 -16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !96 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 %i.ff
  %7 = zext i1 %.161 to i8
  store i8 %7, ptr %i.fg, align 1, !tbaa !10
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.fh = getelementptr inbounds i8, ptr %i.fa, i64 -10
  %8 = zext i1 %.161 to i8
  store i8 %8, ptr %i.fh, align 2, !tbaa !110
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.fa, i64 -16
  %.pre86 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !96
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fi = phi i32 [ %.pre86, %bb.ag ], [ %i.fe, %bb.af ]
  %i.fj = getelementptr inbounds i8, ptr %i.fa, i64 -16
  %i.fk = add nsw i32 %i.fi, 1
  store i32 %i.fk, ptr %i.fj, align 8, !tbaa !96
  br label %.thread80.backedge

bb.ai:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZN10LogMessageD2Ev.exit
  %.264 = phi i1 [ %2, %_ZN10LogMessageD2Ev.exit ], [ %.161, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ], [ %.161, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit ]
  ret i1 %.264
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 384307168202282325
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.ag = load ptr, ptr %0, align 8, !tbaa !39
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !42
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !99
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !61
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !63
  store ptr %i.as, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !39
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !111

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !42
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !42
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !42
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !42
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit, !prof !112

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !111

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
end_hunk_0
