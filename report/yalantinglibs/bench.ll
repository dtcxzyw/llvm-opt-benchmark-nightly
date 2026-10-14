Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/bench?download=true
inline.NumInlined: 54229
inline.NumDeleted: 19446
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN7easylog8appender14roll_log_filesEv:bb.a
          to label %bb.r unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.040 = phi i32 [ %i.aa, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %.040)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.aj = add nuw nsw i32 %.040, 1
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %i.aj)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_RSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #43
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !673 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i15, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ak) #43
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16: ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %7, align 8, !tbaa !295   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ad
  br i1 %i.am, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !285
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #52
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19

_ZNSt10filesystem7__cxx114pathD2Ev.exit19:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !673 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i20, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, label %bb.l

bb.l:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ap) #43
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21: ; preds = %bb.l, %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  %i.aq = load ptr, ptr %6, align 8, !tbaa !295   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21
  %i.as = load i64, ptr %i.af, align 8, !tbaa !285
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #52
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24

_ZNSt10filesystem7__cxx114pathD2Ev.exit24:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.au = load ptr, ptr %5, align 8, !tbaa !295   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !285
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.ay = load ptr, ptr %4, align 8, !tbaa !295   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ah
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ah, align 8, !tbaa !285
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.bc = add nsw i32 %.040, -1
  %i.bd = icmp sgt i32 %.040, 0
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !8046

bb.m:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.n:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.o:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #43
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.bi = load ptr, ptr %5, align 8, !tbaa !295   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ag
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.q
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !285
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.bm = load ptr, ptr %4, align 8, !tbaa !295   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ah
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !285
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.bq = load ptr, ptr %1, align 8, !tbaa !295   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !285
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.s:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bv, %bb.s ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.bw = load ptr, ptr %1, align 8, !tbaa !295   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !285
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !340 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 3 uses
  %.neg.i = mul nsw i64 %i.b, -1000000000
  %i.c = add i64 %.neg.i, %.sroa.0.0.copyload.i
  %i.d = sdiv i64 %i.c, 1000                      ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E9last_sec_) ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !340
  %i.g = icmp eq i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.d to i32                    ; 6 uses
  %i.i = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 8 uses
  %i.j = srem i32 %i.h, 10
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !285
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  store i8 %i.m, ptr %i.n, align 1, !tbaa !285
  %i.o = sdiv i32 %i.h, 10
  %i.p = srem i32 %i.o, 10
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !285
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %i.s, ptr %i.t, align 8, !tbaa !285
  %i.u = sdiv i32 %i.h, 100
  %i.v = srem i32 %i.u, 10
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !285
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 %i.y, ptr %i.z, align 1, !tbaa !285
  %i.aa = sdiv i32 %i.h, 1000
  %i.ab = srem i32 %i.aa, 10
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !285
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !285
  %i.ag = sdiv i32 %i.h, 10000
  %i.ah = srem i32 %i.ag, 10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !285
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 21
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !285
  %i.am = sdiv i32 %i.h, 100000
  %.lhs.trunc.i = trunc nsw i32 %i.am to i16
  %i.an = srem i16 %.lhs.trunc.i, 10
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !285
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !285
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 19
  store i8 46, ptr %i.as, align 1, !tbaa !285
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !340
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !340
  %i.at = sdiv i64 %.sroa.0.0.copyload.i.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !340, !noalias !8049
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !8049
  %i.au = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = trunc i64 %i.d to i32                   ; 6 uses
  %i.aw = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 27 uses
  %i.ax = srem i32 %i.av, 10
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !285
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !285
  %i.bc = sdiv i32 %i.av, 10
  %i.bd = srem i32 %i.bc, 10
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !285
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !285
  %i.bi = sdiv i32 %i.av, 100
  %i.bj = srem i32 %i.bi, 10
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !285
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !285
  %i.bo = sdiv i32 %i.av, 1000
  %i.bp = srem i32 %i.bo, 10
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !285
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !285
  %i.bu = sdiv i32 %i.av, 10000
  %2 = srem i32 %i.bu, 10
  %i.bv = sext i32 %2 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !285
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !285
  %3 = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %3 to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %5 = sext i16 %4 to i64
  %i.bz = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %5
  %6 = load i8, ptr %i.bz, align 1, !tbaa !285
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %6, ptr %i.ca, align 4, !tbaa !285
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %7, align 1, !tbaa !285
  %8 = load i32, ptr %1, align 8, !tbaa !8051     ; 2 uses
  %9 = srem i32 %8, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !285
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  store i8 %12, ptr %i.cb, align 2, !tbaa !285
  %13 = sdiv i32 %8, 10
  %14 = srem i32 %13, 10
  %i.cc = sext i32 %14 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !285
  %15 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  store i8 %i.ce, ptr %15, align 1, !tbaa !285
  %16 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %16, align 16, !tbaa !285
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !8052   ; 2 uses
  %19 = srem i32 %18, 10
  %i.cf = sext i32 %19 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !285
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !285
  %i.cj = sdiv i32 %18, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !285
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !285
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !285
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !8053 ; 2 uses
  %i.cs = srem i32 %i.cr, 10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !285
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i8 %i.cv, ptr %i.cw, align 4, !tbaa !285
  %i.cx = sdiv i32 %i.cr, 10
  %i.cy = srem i32 %i.cx, 10
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !285
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !285
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i8 32, ptr %i.dd, align 2, !tbaa !285
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8054 ; 2 uses
  %i.dg = srem i32 %i.df, 10
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !285
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !285
  %i.dl = sdiv i32 %i.df, 10
  %i.dm = srem i32 %i.dl, 10
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !285
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !285
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  store i8 45, ptr %i.dr, align 1, !tbaa !285
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8055
  %i.du = add nsw i32 %i.dt, 1                    ; 2 uses
  %i.dv = srem i32 %i.du, 10
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !285
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !285
  %i.ea = sdiv i32 %i.du, 10
  %i.eb = srem i32 %i.ea, 10
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !285
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !285
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i8 45, ptr %i.eg, align 4, !tbaa !285
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8056
  %i.ej = add nsw i32 %i.ei, 1900                 ; 4 uses
  %i.ek = srem i32 %i.ej, 10
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !285
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !285
  %i.ep = sdiv i32 %i.ej, 10
  %i.eq = srem i32 %i.ep, 10
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !285
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.et, ptr %i.eu, align 2, !tbaa !285
  %i.ev = sdiv i32 %i.ej, 100
  %i.ew = srem i32 %i.ev, 10
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !285
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !285
  %i.fb = sdiv i32 %i.ej, 1000
  %i.fc = srem i32 %i.fb, 10
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !285
  store i8 %i.ff, ptr %i.aw, align 16, !tbaa !285
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.aw, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1361) %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 8 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !292
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !295  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !296  ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #54
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !297

.noexc6.i:                                        ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #54
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #53 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !295
  store i64 %i.g, ptr %i.d, align 8, !tbaa !285
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !285
  store i8 %i.n, ptr %i.m, align 1, !tbaa !285
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !296
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !285
  br label %bb.cf

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  invoke void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.ak

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !8069)
  call void @llvm.experimental.noalias.scope.decl(metadata !8070)
  %i.r = load ptr, ptr %5, align 8, !tbaa !295, !noalias !8071 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !296, !noalias !8071 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !292, !alias.scope !8071
  %i.v = icmp eq ptr %i.r, null
  %i.w = icmp ne i64 %i.t, 0
  %or.cond.i.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i.i, label %.noexc.i23, label %bb.i

.noexc.i23:                                       ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.134) #54
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %.noexc.i23
  unreachable

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i32
!7851 = distinct !{!7851, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!7852 = distinct !{!7852, !7851, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!7853 = !{!7846}
!7854 = !{!7848}
!7855 = !{!7850}
!7856 = !{!7852}
!7857 = distinct !{!7857, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!7858 = distinct !{!7858, !7857, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!7859 = distinct !{!7859, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!7860 = distinct !{!7860, !7859, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!7861 = !{!7858}
!7862 = !{!7860}
!7863 = distinct !{!7863, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!7864 = distinct !{!7864, !7863, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!7865 = distinct !{!7865, !7863, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!7866 = distinct !{!7866, !281}
!7867 = distinct !{!7867, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!7868 = distinct !{!7868, !7867, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!7869 = distinct !{!7869, !7867, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!7870 = !{!7864}
!7871 = !{!7865}
!7872 = !{!7864, !7865}
!7873 = !{!7868}
!7874 = !{!7869}
!7875 = !{!7868, !7869}
!7876 = !{!3115, !3115, i64 0}
!7877 = !{!"_ZTSSt4pairIKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !261, i64 0, !294, i64 8}
!7878 = !{!7877, !261, i64 0}
!7879 = distinct !{!7879, !281}
!7880 = distinct !{!7880, !281}
!7881 = distinct !{!7881, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_"}
!7882 = distinct !{!7882, !7881, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7883 = distinct !{!7883, !7881, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7884 = distinct !{!7884, !281}
!7885 = distinct !{!7885, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_"}
!7886 = distinct !{!7886, !7885, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7887 = distinct !{!7887, !7885, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7888 = !{!7882}
!7889 = !{!7883}
!7890 = !{!7886}
!7891 = !{!7887}
!7892 = distinct !{null}
!7893 = distinct !{!7893, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!7894 = distinct !{!7894, !7893, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!7895 = !{!7894}
!7896 = distinct !{!7896, !281}
!7897 = !{!"p1 _ZTSSt18__atomic_semaphore", !265, i64 0}
!7898 = !{!"_ZTSZNSt18__atomic_semaphore10_M_acquireEvEUlvE_", !7897, i64 0}
!7899 = !{!7898, !7897, i64 0}
!7900 = distinct !{null}
!7901 = distinct !{!7901, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE10coAwaitTryEv"}
!7902 = distinct !{!7902, !7901, !"_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE10coAwaitTryEv: argument 0"}
!7903 = !{!7902}
!7904 = !{!"_ZTSZSt9call_onceIZN7coro_io15io_context_pool4stopEbEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !265, i64 0}
!7905 = !{!7904, !265, i64 0}
!7906 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7907 = distinct !{!7907, i1 false, !"_ZNSt7promiseIvE10get_futureEv"}
!7908 = distinct !{!7908, !7907, !"_ZNSt7promiseIvE10get_futureEv: argument 0"}
!7909 = distinct !{null}
!7910 = !{!541, !541, i64 0}
!7911 = !{!7908}
!7912 = !{!"_ZTSZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_", !546, i64 0}
!7913 = !{!7912, !546, i64 0}
!7914 = distinct !{!7914, !281}
!7915 = distinct !{!7915, !281}
!7916 = distinct !{!7916, !281}
!7917 = !{!598, !597, i64 0}
!7918 = distinct !{!7918, i1 false, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io15io_context_poolESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!7919 = distinct !{!7919, !7918, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io15io_context_poolESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!7920 = !{!7919}
!7921 = distinct !{null, null, null}
!7922 = distinct !{!7922, i1 false, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_"}
!7923 = distinct !{!7923, !7922, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!7924 = distinct !{!7924, i1 false, !"_ZSt11make_uniqueIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEJS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!7925 = distinct !{!7925, !7924, !"_ZSt11make_uniqueIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEJS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!7926 = distinct !{!7926, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESB_SaISB_EEvPT_PT0_RT1_"}
!7927 = distinct !{!7927, !7926, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESB_SaISB_EEvPT_PT0_RT1_: argument 0"}
!7928 = distinct !{!7928, !7926, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESB_SaISB_EEvPT_PT0_RT1_: argument 1"}
!7929 = distinct !{!7929, i1 false, !"LVerDomain"}
!7930 = distinct !{!7930, !7929}
!7931 = distinct !{!7931, !7929}
!7932 = distinct !{!7932, !281, !1149, !1150}
!7933 = distinct !{!7933, !281, !1149}
!7934 = distinct !{ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7935 = distinct !{!7935, !281}
!7936 = distinct !{null, null}
!7937 = !{!7923}
!7938 = !{!7925}
!7939 = !{!7927}
!7940 = !{!7928}
!7941 = !{!7928, !7930}
!7942 = !{!7927, !7931}
!7943 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7944 = distinct !{null, null, null, null, null, null}
!7945 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7946 = distinct !{!7946, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_"}
!7947 = distinct !{!7947, !7946, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7948 = distinct !{!7948, !7946, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7949 = distinct !{!7949, !281}
!7950 = distinct !{!7950, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_"}
!7951 = distinct !{!7951, !7950, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7952 = distinct !{!7952, !7950, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7953 = !{!7947}
!7954 = !{!7948}
!7955 = !{!7951}
!7956 = !{!7952}
!7957 = distinct !{!7957, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_"}
!7958 = distinct !{!7958, !7957, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!7959 = distinct !{!7959, !7957, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!7960 = distinct !{!7960, !281}
!7961 = distinct !{!7961, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_"}
!7962 = distinct !{!7962, !7961, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!7963 = distinct !{!7963, !7961, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!7964 = !{!7958}
!7965 = !{!7959}
!7966 = !{!7962}
!7967 = !{!7963}
!7968 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7969 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EED2Ev, null, null, null, null, null, null}
!7970 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7971 = !{!551, !551, i64 0}
!7972 = distinct !{ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7973 = distinct !{null, null, ptr @_ZZZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_jENKUlS2_E_clISt10shared_ptrIS1_EEEDaS2_ENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7974 = distinct !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZZN7coro_io17g_io_context_poolINS3_15io_context_poolEEERT_jENKUlS6_E_clISt10shared_ptrIS5_EEEDaS6_EUlvE_EEEEED2Ev, null, null, ptr @_ZZZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_jENKUlS2_E_clISt10shared_ptrIS1_EEEDaS2_ENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7975 = !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZZN7coro_io17g_io_context_poolINS3_15io_context_poolEEERT_jENKUlS6_E_clISt10shared_ptrIS5_EEEDaS6_EUlvE_EEEEED2Ev}
!7976 = distinct !{!7976, i1 false, !"_ZSt11make_sharedISt6threadJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_RS6_EES3_IT_EDpOT0_"}
!7977 = distinct !{!7977, !7976, !"_ZSt11make_sharedISt6threadJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_RS6_EES3_IT_EDpOT0_: argument 0"}
!7978 = distinct !{ptr @_ZNSt12__shared_ptrISt6threadLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7979 = distinct !{!7979, !281}
!7980 = distinct !{!7980, !281}
!7981 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrISt6threadLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7982 = !{!7977}
!7983 = !{!3144, !3144, i64 0}
!7984 = !{!571, !293, i64 0}
!7985 = distinct !{!7985, !281}
!7986 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrISt6threadLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7987 = distinct !{!7987, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_"}
!7988 = distinct !{!7988, !7987, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!7989 = distinct !{!7989, !7987, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!7990 = distinct !{!7990, !281}
!7991 = distinct !{!7991, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_"}
!7992 = distinct !{!7992, !7991, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!7993 = distinct !{!7993, !7991, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!7994 = !{!7988}
!7995 = !{!7989}
!7996 = !{!7992}
!7997 = !{!7993}
!7998 = distinct !{!7998, i1 false, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_"}
!7999 = distinct !{!7999, !7998, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_: argument 0"}
!8000 = distinct !{null, null, null, null, null}
!8001 = !{!7999}
!8002 = !{!3148, !3148, i64 0}
!8003 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8004 = distinct !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8005 = !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEED2Ev}
!8006 = distinct !{!8006, i1 false, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8007 = distinct !{!8007, !8006, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8008 = !{!482, !386, i64 0}
!8009 = !{!8007}
!8010 = distinct !{!8010, !281}
!8011 = distinct !{!8011, !731}
!8012 = distinct !{!8012, !281}
!8013 = distinct !{!8013, !731}
!8014 = !{!3163, !3162, i64 0}
!8015 = distinct !{null}
!8016 = distinct !{!8016, !281}
!8017 = distinct !{null, null}
!8018 = !{!491, !491, i64 0}
!8019 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !610, i64 0, !265, i64 24}
!8020 = !{!8019, !265, i64 24}
!8021 = distinct !{!8021, !281}
!8022 = distinct !{!8022, !281}
!8023 = distinct !{!8023, !281}
!8024 = distinct !{!8024, !281}
!8025 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !265, i64 0}
!8026 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !556, i64 0, !8025, i64 8}
!8027 = !{!8026, !8025, i64 8}
!8028 = distinct !{!8028, !281}
!8029 = distinct !{!8029, !281}
!8030 = !{!3187, !309, i64 72}
!8031 = !{!3202, !293, i64 0}
!8032 = !{!3202, !3199, i64 16}
!8033 = !{!3207, !3193, i64 0}
!8034 = distinct !{!8034, !281}
!8035 = distinct !{!8035, !281}
!8036 = distinct !{!8036, !281}
!8037 = distinct !{!8037, !281}
!8038 = distinct !{!8038, !281}
!8039 = !{!3200, !293, i64 96}
!8040 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !293, i64 0, !3171, i64 8}
!8041 = !{!8040, !293, i64 0}
!8042 = !{!8040, !3171, i64 8}
!8043 = !{!3182, !3171, i64 2560}
!8044 = distinct !{!8044, !281}
!8045 = distinct !{!8045, !281}
!8046 = distinct !{!8046, !281}
!8047 = distinct !{!8047, i1 false, !"_ZN7easylog14localtime_safeEl"}
!8048 = distinct !{!8048, !8047, !"_ZN7easylog14localtime_safeEl: argument 0"}
!8049 = !{!8048}
!8050 = !{!"_ZTS2tm", !262, i64 0, !262, i64 4, !262, i64 8, !262, i64 12, !262, i64 16, !262, i64 20, !262, i64 24, !262, i64 28, !262, i64 32, !293, i64 40, !290, i64 48}
!8051 = !{!8050, !262, i64 0}
!8052 = !{!8050, !262, i64 4}
!8053 = !{!8050, !262, i64 8}
!8054 = !{!8050, !262, i64 12}
!8055 = !{!8050, !262, i64 16}
!8056 = !{!8050, !262, i64 20}
!8057 = distinct !{!8057, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8058 = distinct !{!8058, !8057, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8059 = distinct !{!8059, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8060 = distinct !{!8060, !8059, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8061 = distinct !{!8061, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8062 = distinct !{!8062, !8061, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8063 = distinct !{!8063, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8064 = distinct !{!8064, !8063, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8065 = distinct !{!8065, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8066 = distinct !{!8066, !8065, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8067 = distinct !{!8067, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8068 = distinct !{!8068, !8067, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8069 = !{!8058}
!8070 = !{!8060}
!8071 = !{!8060, !8058}
!8072 = !{!8062}
!8073 = !{!8064}
!8074 = !{!8064, !8062}
!8075 = !{!8066}
!8076 = !{!8068}
!8077 = !{!8068, !8066}
!8078 = distinct !{!8078, i1 false, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!8079 = distinct !{!8079, !8078, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!8080 = distinct !{!8080, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8081 = distinct !{!8081, !8080, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8082 = !{!8079}
!8083 = !{!8081}
!8084 = distinct !{!8084, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8085 = distinct !{!8085, !8084, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8086 = !{!8085}
!8087 = distinct !{!8087, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8088 = distinct !{!8088, !8087, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8089 = !{!8088}
!8090 = distinct !{!8090, !281}
!8091 = distinct !{!8091, !281}
!8092 = distinct !{!8092, !281}
!8093 = distinct !{!8093, !281}
!8094 = !{!3232, !262, i64 8}
!8095 = !{!3232, !262, i64 12}
!8096 = !{!318, !318, i64 0}
!8097 = !{!319, !318, i64 0}
!8098 = distinct !{!8098, i1 false, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS1_15io_context_poolEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!8099 = distinct !{!8099, !8098, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS1_15io_context_poolEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!8100 = distinct !{null, null, null, null, null}
!8101 = !{!8099}
!8102 = distinct !{!8102, i1 false, !"_ZSt11make_sharedISt6vectorIN4asio2ip14basic_endpointINS2_3tcpEEESaIS5_EEJEESt10shared_ptrIT_EDpOT0_"}
!8103 = distinct !{!8103, !8102, !"_ZSt11make_sharedISt6vectorIN4asio2ip14basic_endpointINS2_3tcpEEESaIS5_EEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8104 = distinct !{!8104, i1 false, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev"}
!8105 = distinct !{!8105, !8104, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev: argument 0"}
!8106 = distinct !{!8106, i1 false, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_"}
!8107 = distinct !{!8107, !8106, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8108 = !{!1166, !262, i64 0}
!8109 = !{!1165, !309, i64 8}
!8110 = !{!8103}
!8111 = !{!8105}
!8112 = !{!8107}
!8113 = !{!8107, !8105}
!8114 = distinct !{!8114, !281}
!8115 = distinct !{!8115, !731}
!8116 = distinct !{!8116, !281}
!8117 = distinct !{!8117, !731}
!8118 = !{!1272, !1271, i64 0}
!8119 = distinct !{null}
!8120 = distinct !{!8120, !281}
!8121 = distinct !{null}
!8122 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !3235, i64 0}
!8123 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8122, i64 0}
!8124 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8123, i64 0}
!8125 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8124, i64 0}
!8126 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8125, i64 0}
!8127 = !{!"_ZTSSt7variantIJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEE", !8126, i64 0}
!8128 = !{!"_ZTSN12async_simple3TryINS_4UnitEEE", !8127, i64 0}
!8129 = !{!"_ZTSN12async_simple11FutureStateINS_4UnitEEE", !633, i64 0, !1833, i64 1, !1833, i64 2, !8128, i64 8, !261, i64 24, !418, i64 56, !265, i64 64, !556, i64 72, !309, i64 80}
!8130 = !{!8129, !309, i64 80}
!8131 = !{!8129, !418, i64 56}
!8132 = !{!8129, !265, i64 64}
!8133 = distinct !{ptr @_ZN3ylt4util17atomic_shared_ptrISt6vectorIN4asio2ip14basic_endpointINS4_3tcpEEESaIS7_EENS0_6detail20shared_ptr_internalsEED2Ev, ptr @_ZNSt12__shared_ptrISt6vectorIN4asio2ip14basic_endpointINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8134 = distinct !{ptr @_ZNSt23enable_shared_from_thisIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEEED2Ev, null, null, null}
!8135 = distinct !{!8135, i1 false, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev"}
!8136 = distinct !{!8136, !8135, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev: argument 0"}
!8137 = distinct !{!8137, i1 false, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_"}
!8138 = distinct !{!8138, !8137, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8139 = distinct !{!8139, i1 false, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!8140 = distinct !{!8140, !8139, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!8141 = distinct !{!8141, i1 false, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8142 = distinct !{!8142, !8141, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8143 = distinct !{!8143, i1 false, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8144 = distinct !{!8144, !8143, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8145 = distinct !{null, null, null, null}
!8146 = distinct !{!8146, !281}
!8147 = !{!8140, !8138, !8136}
!8148 = !{!8138, !8136}
!8149 = !{!8142}
!8150 = !{!8144}
!8151 = !{!8144, !8142}
!8152 = distinct !{!8152, !281, !1149, !1150}
!8153 = distinct !{!8153, !281, !1150, !1149}
!8154 = distinct !{null}
!8155 = distinct !{!8155, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!8156 = distinct !{!8156, !8155, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!8157 = !{!8156}
!8158 = distinct !{!8158, i1 false, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev"}
!8159 = distinct !{!8159, !8158, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev: argument 0"}
!8160 = distinct !{!8160, i1 false, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_"}
!8161 = distinct !{!8161, !8160, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8162 = distinct !{!8162, i1 false, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!8163 = distinct !{!8163, !8162, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!8164 = !{!8163, !8161, !8159}
!8165 = !{!8161, !8159}
!8166 = distinct !{!8166, i1 false, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8167 = distinct !{!8167, !8166, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8168 = distinct !{!8168, i1 false, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8169 = distinct !{!8169, !8168, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8170 = distinct !{null, null, null, null}
!8171 = !{!8167}
!8172 = !{!8169}
!8173 = !{!8169, !8167}
!8174 = !{!3294, !3294, i64 0}
!8175 = distinct !{!8175, i1 false, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8176 = distinct !{!8176, !8175, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8177 = distinct !{!8177, i1 false, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8178 = distinct !{!8178, !8177, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8179 = distinct !{null, null, null, null}
!8180 = !{!8176}
!8181 = !{!8178}
!8182 = !{!8178, !8176}
!8183 = distinct !{null}
!8184 = distinct !{!8184, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseISt6vectorINS_3TryIvEESaIS5_EELb0EE10coAwaitTryEv"}
!8185 = distinct !{!8185, !8184, !"_ZN12async_simple4coro6detail8LazyBaseISt6vectorINS_3TryIvEESaIS5_EELb0EE10coAwaitTryEv: argument 0"}
!8186 = !{!8185}
!8187 = !{!3295, !3294, i64 16}
!8188 = distinct !{null}
!8189 = distinct !{!8189, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!8190 = distinct !{!8190, !8189, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!8191 = !{!8190}
!8192 = !{!3297, !446, i64 16}
!8193 = !{ptr @_ZN7cmdline6parser17option_with_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!8194 = distinct !{!8194, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!8195 = distinct !{!8195, !8194, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!8196 = distinct !{!8196, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8197 = distinct !{!8197, !8196, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8198 = distinct !{!8198, i1 false, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v"}
!8199 = distinct !{!8199, !8198, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v: argument 0"}
!8200 = !{!8195}
!8201 = !{!8197}
!8202 = !{!8199}
!8203 = distinct !{!8203, i1 false, !"_ZN7cmdline14default_readerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_"}
!8204 = distinct !{!8204, !8203, !"_ZN7cmdline14default_readerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_: argument 0"}
!8205 = distinct !{!8205, i1 false, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_"}
!8206 = distinct !{!8206, !8205, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_: argument 0"}
!8207 = distinct !{!8207, i1 false, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_"}
!8208 = distinct !{!8208, !8207, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_: argument 0"}
!8209 = !{!8204}
!8210 = !{!8206}
!8211 = !{!8208}
!8212 = !{!8208, !8206, !8204}
!8213 = distinct !{!8213, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!8214 = distinct !{!8214, !8213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!8215 = distinct !{!8215, i1 false, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v"}
!8216 = distinct !{!8216, !8215, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v: argument 0"}
!8217 = distinct !{!8217, i1 false, !"_ZN7cmdline6detail13default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_T_"}
!8218 = distinct !{!8218, !8217, !"_ZN7cmdline6detail13default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_T_: argument 0"}
!8219 = distinct !{!8219, i1 false, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_"}
!8220 = distinct !{!8220, !8219, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_: argument 0"}
!8221 = distinct !{!8221, i1 false, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_"}
!8222 = distinct !{!8222, !8221, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_: argument 0"}
!8223 = distinct !{!8223, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!8224 = distinct !{!8224, !8223, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!8225 = distinct !{!8225, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8226 = distinct !{!8226, !8225, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8227 = distinct !{!8227, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8228 = distinct !{!8228, !8227, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8229 = !{!8214}
!8230 = !{!8216}
!8231 = !{!8218}
!8232 = !{!8220}
!8233 = !{!8222}
!8234 = !{!8222, !8220, !8218}
!8235 = !{!8224}
!8236 = !{!8226}
!8237 = !{!8228}
!8238 = !{ptr @_ZN7cmdline6parser17option_with_valueImED2Ev}
!8239 = distinct !{!8239, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!8240 = distinct !{!8240, !8239, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!8241 = distinct !{!8241, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8242 = distinct !{!8242, !8241, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8243 = !{!8240}
!8244 = !{!8242}
!8245 = distinct !{!8245, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!8246 = distinct !{!8246, !8245, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!8247 = distinct !{!8247, i1 false, !"_ZN7cmdline6detail13default_valueImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_"}
!8248 = distinct !{!8248, !8247, !"_ZN7cmdline6detail13default_valueImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_: argument 0"}
!8249 = distinct !{!8249, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!8250 = distinct !{!8250, !8249, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!8251 = distinct !{!8251, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8252 = distinct !{!8252, !8251, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
end_hunk_1
