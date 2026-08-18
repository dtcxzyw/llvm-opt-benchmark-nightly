inline.NumInlined: 185
inline.NumDeleted: 111
begin_hunk_0_@_ZN10duckdb_re26Regexp6WalkerIbE5ResetEv:bb.a
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 480
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.h, %bb.i
  %i.bd = phi ptr [ %i.av, %bb.h ], [ %i.ba, %bb.i ]
  %storemerge.i.i = phi ptr [ %i.ax, %bb.h ], [ %i.bc, %bb.i ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !64
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.bf = icmp eq ptr %storemerge.i.i, %i.be
  br i1 %i.bf, label %.loopexit, label %bb.c, !llvm.loop !74

.loopexit:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZN10LogMessageD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.i) #16
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %5 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  tail call void @_ZN10duckdb_re26Regexp6WalkerIbE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i8 0, ptr %4, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.c)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.5, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !22
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.l) #16
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #15
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.s = zext i1 %2 to i8
  store ptr %1, ptr %5, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.t, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.s, ptr %i.u, align 4, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24
  %.not.i.i.i = icmp eq ptr %i.x, %i.aa
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !78
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !64
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.thread80.a

.thread80.a:                                      ; preds = %.thread80.backedge, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !65, !noalias !80 ; 2 uses
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !61, !noalias !80
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit

bb.g:                                             ; preds = %.thread80.a
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !60, !noalias !80
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 504
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit: ; preds = %.thread80.a, %bb.g
  %i.as = phi ptr [ %i.ar, %bb.g ], [ %i.al, %.thread80.a ] ; 12 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69 ; 6 uses
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 6 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !75 ; 2 uses
  %cond = icmp eq i32 %i.aw, -1
  br i1 %cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.ax = load i32, ptr %i.af, align 4, !tbaa !36 ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.af, align 4, !tbaa !36
  %i.az = icmp slt i32 %i.ax, 1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.aj, align 8, !tbaa !24
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !76, !range !11, !noundef !12
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load ptr, ptr %0, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.au, i1 noundef zeroext %i.bc)
  %7 = zext i1 %i.bg to i8
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %i.bh = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !76, !range !11, !noundef !12
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = load ptr, ptr %0, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.au, i1 noundef zeroext %i.bj, ptr noundef nonnull %i.a)
  %i.bo = getelementptr inbounds i8, ptr %i.as, i64 -11
  %i.bp = zext i1 %i.bn to i8                     ; 2 uses
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !83
  %i.bq = load i8, ptr %i.a, align 1, !tbaa !9, !range !11, !noundef !12
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8, !tbaa !75
  %i.bs = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !18 ; 2 uses
  switch i16 %i.bu, label %bb.m [
    i16 1, label %bb.l
    i16 0, label %.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds i8, ptr %i.as, i64 -10
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !72
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bw = zext i16 %i.bu to i64
  %i.bx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #18
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !72
  %.pre.pre.pre = load i32, ptr %i.av, align 8, !tbaa !75
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  %.pre.pre = phi i32 [ 0, %bb.k ], [ %.pre.pre.pre, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.z

bb.o:                                             ; preds = %.thread, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %.pre = phi i32 [ %.pre.pre, %.thread ], [ %i.aw, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 6 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !18 ; 3 uses
  %.not71.a = icmp eq i16 %i.bz, 0
  br i1 %.not71.a, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp eq i16 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %.0.i = select i1 %i.ca, ptr %i.cb, ptr %i.cc   ; 3 uses
  %i.cd = zext i16 %i.bz to i32
  %.not72.a = icmp slt i32 %.pre, %i.cd
  br i1 %.not72.a, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ce = icmp sgt i32 %.pre, 0
  %or.cond = and i1 %3, %i.ce
  br i1 %or.cond, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cf = add nsw i32 %.pre, -1
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = zext nneg i32 %.pre to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !19
  %i.cm = icmp eq ptr %i.ci, %i.cl
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9, !range !11, !noundef !12
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = load ptr, ptr %0, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %i.cr)
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.cx = load i32, ptr %i.av, align 8, !tbaa !75 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 %i.cy
  %i.da = zext i1 %i.cv to i8
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !9
  %i.db = add nsw i32 %i.cx, 1
  store i32 %i.db, ptr %i.av, align 8, !tbaa !75
  br label %.thread80.backedge

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.dc = load i32, ptr %i.av, align 8, !tbaa !75
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19
  %i.dg = getelementptr inbounds i8, ptr %i.as, i64 -11
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !83, !range !11, !noundef !12
  store ptr %i.df, ptr %6, align 8, !tbaa !69
  store i32 -1, ptr %i.ag, align 8, !tbaa !75
  store i8 %i.dh, ptr %i.ah, align 4, !tbaa !76
  store ptr null, ptr %i.ai, align 8, !tbaa !72
  %i.di = load ptr, ptr %i.w, align 8, !tbaa !64  ; 2 uses
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !77
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -24
  %.not.i.i.i74 = icmp eq ptr %i.di, %i.dk
  br i1 %.not.i.i.i74, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !78
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.dm, ptr %i.w, align 8, !tbaa !64
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

bb.v:                                             ; preds = %bb.t
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.thread80.backedge

.thread80.backedge:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75, %bb.s, %bb.ae
  br label %.thread80.a, !llvm.loop !84

bb.w:                                             ; preds = %bb.p, %bb.o
  %i.dn = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !76, !range !11, !noundef !12
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = getelementptr inbounds i8, ptr %i.as, i64 -11
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !83, !range !11, !noundef !12
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !72
  %i.dv = load ptr, ptr %0, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef zeroext i1 %i.dx(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.au, i1 noundef zeroext %i.dp, i1 noundef zeroext %i.ds, ptr noundef %i.du, i32 noundef %.pre)
  %8 = zext i1 %i.dy to i8                        ; 3 uses
  %i.dz = load i16, ptr %i.by, align 2, !tbaa !18
  %i.ea = icmp ugt i16 %i.dz, 1
  br i1 %i.ea, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eb = load ptr, ptr %i.dt, align 8, !tbaa !72 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.w, %bb.y, %bb.x, %bb.i
  %.3 = phi i8 [ %7, %bb.i ], [ %8, %bb.x ], [ %8, %bb.y ], [ %8, %bb.w ], [ %i.bp, %bb.n ] ; 3 uses
  %i.ed = load ptr, ptr %i.w, align 8, !tbaa !64  ; 2 uses
  %i.ee = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i, label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.z
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -24 ; 4 uses
  store ptr %i.ef, ptr %i.w, align 8, !tbaa !64
  %i.eg = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %.thread82, label %bb.aa

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.ee) #16
  %i.ei = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 2 uses
  store ptr %i.ej, ptr %i.ae, align 8, !tbaa !60
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41 ; 3 uses
  store ptr %i.ek, ptr %i.ad, align 8, !tbaa !61
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 504
  store ptr %i.el, ptr %i.y, align 8, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 480 ; 3 uses
  store ptr %i.em, ptr %i.w, align 8, !tbaa !64
  %i.en = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.thread82, label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

.thread82:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %9 = trunc nuw i8 %.3 to i1
  br label %bb.af

bb.aa:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.ep = icmp eq ptr %i.ef, %i.ee
  br i1 %i.ep, label %bb.ab, label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %i.ae, align 8, !tbaa !60, !noalias !85
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !41
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 504
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76: ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %bb.aa, %bb.ab
  %i.eu = phi ptr [ %i.et, %bb.ab ], [ %i.ef, %bb.aa ], [ %i.em, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ] ; 5 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !72 ; 2 uses
  %.not73 = icmp eq ptr %i.ew, null
  br i1 %.not73, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 -16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !75 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ew, i64 %i.ez
  store i8 %.3, ptr %i.fa, align 1, !tbaa !9
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.fb = getelementptr inbounds i8, ptr %i.eu, i64 -10
  store i8 %.3, ptr %i.fb, align 2, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.eu, i64 -16
  %.pre86 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !75
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fc = phi i32 [ %.pre86, %bb.ad ], [ %i.ey, %bb.ac ]
  %i.fd = getelementptr inbounds i8, ptr %i.eu, i64 -16
  %i.fe = add nsw i32 %i.fc, 1
  store i32 %i.fe, ptr %i.fd, align 8, !tbaa !75
  br label %.thread80.backedge

bb.af:                                            ; preds = %.thread82, %_ZN10LogMessageD2Ev.exit
  %.2 = phi i1 [ %2, %_ZN10LogMessageD2Ev.exit ], [ %9, %.thread82 ]
  ret i1 %.2
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 384307168202282325
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58
  %i.ag = load ptr, ptr %0, align 8, !tbaa !38
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #18
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !78
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !60
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !62
  store ptr %i.as, ptr %i.a, align 8, !tbaa !64
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIbEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !38
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
  br i1 %i.y, label %bb.d, label %bb.e, !prof !89

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !41
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !41
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !89

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !41
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !41
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit, !prof !90

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !89

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN10duckdb_re29WalkStateIbEES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
end_hunk_0
