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
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !8045

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
  %1 = alloca %struct.tm, align 8                 ; 11 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !340, !noalias !8048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !8048
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
  %2 = sdiv i32 %i.av, 10000
  %3 = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  %i.bu = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %i.bu to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %i.bv = sext i16 %4 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !285
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !285
  %5 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %5, align 1, !tbaa !285
  %6 = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %i.bz, align 16, !tbaa !285
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load <2 x i32>, ptr %1, align 8, !tbaa !286
  %9 = load i32, ptr %i.ca, align 4, !tbaa !8050
  %10 = load i32, ptr %1, align 8, !tbaa !8051
  %11 = sdiv i32 %10, 10
  %12 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %13 = insertelement <4 x i32> %12, i32 %2, i64 0
  %14 = insertelement <4 x i32> %13, i32 %11, i64 2
  %15 = srem <4 x i32> %14, splat (i32 10)        ; 4 uses
  %16 = extractelement <4 x i32> %15, i64 0
  %17 = sext i32 %16 to i64
  %i.cb = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %17
  %18 = load i8, ptr %i.cb, align 1, !tbaa !285
  store i8 %18, ptr %3, align 1, !tbaa !285
  %19 = extractelement <4 x i32> %15, i64 1
  %i.cc = sext i32 %19 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !285
  store i8 %i.ce, ptr %6, align 2, !tbaa !285
  %20 = extractelement <4 x i32> %15, i64 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !285
  store i8 %23, ptr %7, align 1, !tbaa !285
  %24 = extractelement <4 x i32> %15, i64 3
  %i.cf = sext i32 %24 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !285
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !285
  %i.cj = sdiv i32 %9, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !285
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !285
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !285
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !8052 ; 2 uses
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
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8053 ; 2 uses
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
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8054
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
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8055
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
  call void @llvm.experimental.noalias.scope.decl(metadata !8068)
  call void @llvm.experimental.noalias.scope.decl(metadata !8069)
  %i.r = load ptr, ptr %5, align 8, !tbaa !295, !noalias !8070 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !296, !noalias !8070 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !292, !alias.scope !8070
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
!7850 = distinct !{!7850, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!7851 = distinct !{!7851, !7850, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!7852 = !{!7845}
!7853 = !{!7847}
!7854 = !{!7849}
!7855 = !{!7851}
!7856 = distinct !{!7856, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!7857 = distinct !{!7857, !7856, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!7858 = distinct !{!7858, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!7859 = distinct !{!7859, !7858, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!7860 = !{!7857}
!7861 = !{!7859}
!7862 = distinct !{!7862, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!7863 = distinct !{!7863, !7862, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!7864 = distinct !{!7864, !7862, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!7865 = distinct !{!7865, !281}
!7866 = distinct !{!7866, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!7867 = distinct !{!7867, !7866, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!7868 = distinct !{!7868, !7866, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!7869 = !{!7863}
!7870 = !{!7864}
!7871 = !{!7863, !7864}
!7872 = !{!7867}
!7873 = !{!7868}
!7874 = !{!7867, !7868}
!7875 = !{!3115, !3115, i64 0}
!7876 = !{!"_ZTSSt4pairIKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !261, i64 0, !294, i64 8}
!7877 = !{!7876, !261, i64 0}
!7878 = distinct !{!7878, !281}
!7879 = distinct !{!7879, !281}
!7880 = distinct !{!7880, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_"}
!7881 = distinct !{!7881, !7880, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7882 = distinct !{!7882, !7880, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7883 = distinct !{!7883, !281}
!7884 = distinct !{!7884, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_"}
!7885 = distinct !{!7885, !7884, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7886 = distinct !{!7886, !7884, !"_ZSt19__relocate_object_aISt10shared_ptrIN7coro_io11ib_device_tEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7887 = !{!7881}
!7888 = !{!7882}
!7889 = !{!7885}
!7890 = !{!7886}
!7891 = distinct !{null}
!7892 = distinct !{!7892, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!7893 = distinct !{!7893, !7892, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!7894 = !{!7893}
!7895 = distinct !{!7895, !281}
!7896 = !{!"p1 _ZTSSt18__atomic_semaphore", !265, i64 0}
!7897 = !{!"_ZTSZNSt18__atomic_semaphore10_M_acquireEvEUlvE_", !7896, i64 0}
!7898 = !{!7897, !7896, i64 0}
!7899 = distinct !{null}
!7900 = distinct !{!7900, !"_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE10coAwaitTryEv"}
!7901 = distinct !{!7901, !7900, !"_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE10coAwaitTryEv: argument 0"}
!7902 = !{!7901}
!7903 = !{!"_ZTSZSt9call_onceIZN7coro_io15io_context_pool4stopEbEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !265, i64 0}
!7904 = !{!7903, !265, i64 0}
!7905 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7906 = distinct !{!7906, !"_ZNSt7promiseIvE10get_futureEv"}
!7907 = distinct !{!7907, !7906, !"_ZNSt7promiseIvE10get_futureEv: argument 0"}
!7908 = distinct !{null}
!7909 = !{!541, !541, i64 0}
!7910 = !{!7907}
!7911 = !{!"_ZTSZZN7coro_io15io_context_pool4stopEbENKUlvE_clEvEUlvE_", !546, i64 0}
!7912 = !{!7911, !546, i64 0}
!7913 = distinct !{!7913, !281}
!7914 = distinct !{!7914, !281}
!7915 = distinct !{!7915, !281}
!7916 = !{!598, !597, i64 0}
!7917 = distinct !{!7917, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io15io_context_poolESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!7918 = distinct !{!7918, !7917, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io15io_context_poolESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!7919 = !{!7918}
!7920 = distinct !{null, null, null}
!7921 = distinct !{!7921, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_"}
!7922 = distinct !{!7922, !7921, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!7923 = distinct !{!7923, !"_ZSt11make_uniqueIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEJS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!7924 = distinct !{!7924, !7923, !"_ZSt11make_uniqueIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEJS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!7925 = distinct !{!7925, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESB_SaISB_EEvPT_PT0_RT1_"}
!7926 = distinct !{!7926, !7925, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESB_SaISB_EEvPT_PT0_RT1_: argument 0"}
!7927 = distinct !{!7927, !7925, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESB_SaISB_EEvPT_PT0_RT1_: argument 1"}
!7928 = distinct !{!7928, !"LVerDomain"}
!7929 = distinct !{!7929, !7928}
!7930 = distinct !{!7930, !7928}
!7931 = distinct !{!7931, !281, !1149, !1150}
!7932 = distinct !{!7932, !281, !1149}
!7933 = distinct !{ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7934 = distinct !{!7934, !281}
!7935 = distinct !{null, null}
!7936 = !{!7922}
!7937 = !{!7924}
!7938 = !{!7926}
!7939 = !{!7927}
!7940 = !{!7927, !7929}
!7941 = !{!7926, !7930}
!7942 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7943 = distinct !{null, null, null, null, null, null}
!7944 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7945 = distinct !{!7945, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_"}
!7946 = distinct !{!7946, !7945, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7947 = distinct !{!7947, !7945, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7948 = distinct !{!7948, !281}
!7949 = distinct !{!7949, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_"}
!7950 = distinct !{!7950, !7949, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!7951 = distinct !{!7951, !7949, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_contextEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!7952 = !{!7946}
!7953 = !{!7947}
!7954 = !{!7950}
!7955 = !{!7951}
!7956 = distinct !{!7956, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_"}
!7957 = distinct !{!7957, !7956, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!7958 = distinct !{!7958, !7956, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!7959 = distinct !{!7959, !281}
!7960 = distinct !{!7960, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_"}
!7961 = distinct !{!7961, !7960, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!7962 = distinct !{!7962, !7960, !"_ZSt19__relocate_object_aISt10shared_ptrIN4asio10io_context4workEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!7963 = !{!7957}
!7964 = !{!7958}
!7965 = !{!7961}
!7966 = !{!7962}
!7967 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN4asio10io_context4workEESaIS4_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7968 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt14default_deleteIS8_EESaISB_EED2Ev, null, null, null, null, null, null}
!7969 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7970 = !{!551, !551, i64 0}
!7971 = distinct !{ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7972 = distinct !{null, null, ptr @_ZZZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_jENKUlS2_E_clISt10shared_ptrIS1_EEEDaS2_ENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7973 = distinct !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZZN7coro_io17g_io_context_poolINS3_15io_context_poolEEERT_jENKUlS6_E_clISt10shared_ptrIS5_EEEDaS6_EUlvE_EEEEED2Ev, null, null, ptr @_ZZZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_jENKUlS2_E_clISt10shared_ptrIS1_EEEDaS2_ENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io15io_context_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7974 = !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZZN7coro_io17g_io_context_poolINS3_15io_context_poolEEERT_jENKUlS6_E_clISt10shared_ptrIS5_EEEDaS6_EUlvE_EEEEED2Ev}
!7975 = distinct !{!7975, !"_ZSt11make_sharedISt6threadJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_RS6_EES3_IT_EDpOT0_"}
!7976 = distinct !{!7976, !7975, !"_ZSt11make_sharedISt6threadJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_RS6_EES3_IT_EDpOT0_: argument 0"}
!7977 = distinct !{ptr @_ZNSt12__shared_ptrISt6threadLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7978 = distinct !{!7978, !281}
!7979 = distinct !{!7979, !281}
!7980 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrISt6threadESaIS2_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrISt6threadLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7981 = !{!7976}
!7982 = !{!3144, !3144, i64 0}
!7983 = !{!571, !293, i64 0}
!7984 = distinct !{!7984, !281}
!7985 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrISt6threadLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7986 = distinct !{!7986, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_"}
!7987 = distinct !{!7987, !7986, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!7988 = distinct !{!7988, !7986, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!7989 = distinct !{!7989, !281}
!7990 = distinct !{!7990, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_"}
!7991 = distinct !{!7991, !7990, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!7992 = distinct !{!7992, !7990, !"_ZSt19__relocate_object_aISt10shared_ptrISt6threadES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!7993 = !{!7987}
!7994 = !{!7988}
!7995 = !{!7991}
!7996 = !{!7992}
!7997 = distinct !{!7997, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_"}
!7998 = distinct !{!7998, !7997, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceISt6threadSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_: argument 0"}
!7999 = distinct !{null, null, null, null, null}
!8000 = !{!7998}
!8001 = !{!3148, !3148, i64 0}
!8002 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8003 = distinct !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8004 = !{ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7coro_io15io_context_pool3runEvEUlSt10shared_ptrIN4asio10io_contextEEE_S8_EEEEED2Ev}
!8005 = distinct !{!8005, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8006 = distinct !{!8006, !8005, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8007 = !{!482, !386, i64 0}
!8008 = !{!8006}
!8009 = distinct !{!8009, !281}
!8010 = distinct !{!8010, !731}
!8011 = distinct !{!8011, !281}
!8012 = distinct !{!8012, !731}
!8013 = !{!3163, !3162, i64 0}
!8014 = distinct !{null}
!8015 = distinct !{!8015, !281}
!8016 = distinct !{null, null}
!8017 = !{!491, !491, i64 0}
!8018 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !610, i64 0, !265, i64 24}
!8019 = !{!8018, !265, i64 24}
!8020 = distinct !{!8020, !281}
!8021 = distinct !{!8021, !281}
!8022 = distinct !{!8022, !281}
!8023 = distinct !{!8023, !281}
!8024 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !265, i64 0}
!8025 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !556, i64 0, !8024, i64 8}
!8026 = !{!8025, !8024, i64 8}
!8027 = distinct !{!8027, !281}
!8028 = distinct !{!8028, !281}
!8029 = !{!3187, !309, i64 72}
!8030 = !{!3202, !293, i64 0}
!8031 = !{!3202, !3199, i64 16}
!8032 = !{!3207, !3193, i64 0}
!8033 = distinct !{!8033, !281}
!8034 = distinct !{!8034, !281}
!8035 = distinct !{!8035, !281}
!8036 = distinct !{!8036, !281}
!8037 = distinct !{!8037, !281}
!8038 = !{!3200, !293, i64 96}
!8039 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !293, i64 0, !3171, i64 8}
!8040 = !{!8039, !293, i64 0}
!8041 = !{!8039, !3171, i64 8}
!8042 = !{!3182, !3171, i64 2560}
!8043 = distinct !{!8043, !281}
!8044 = distinct !{!8044, !281}
!8045 = distinct !{!8045, !281}
!8046 = distinct !{!8046, !"_ZN7easylog14localtime_safeEl"}
!8047 = distinct !{!8047, !8046, !"_ZN7easylog14localtime_safeEl: argument 0"}
!8048 = !{!8047}
!8049 = !{!"_ZTS2tm", !262, i64 0, !262, i64 4, !262, i64 8, !262, i64 12, !262, i64 16, !262, i64 20, !262, i64 24, !262, i64 28, !262, i64 32, !293, i64 40, !290, i64 48}
!8050 = !{!8049, !262, i64 4}
!8051 = !{!8049, !262, i64 0}
!8052 = !{!8049, !262, i64 8}
!8053 = !{!8049, !262, i64 12}
!8054 = !{!8049, !262, i64 16}
!8055 = !{!8049, !262, i64 20}
!8056 = distinct !{!8056, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8057 = distinct !{!8057, !8056, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8058 = distinct !{!8058, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8059 = distinct !{!8059, !8058, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8060 = distinct !{!8060, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8061 = distinct !{!8061, !8060, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8062 = distinct !{!8062, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8063 = distinct !{!8063, !8062, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8064 = distinct !{!8064, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!8065 = distinct !{!8065, !8064, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!8066 = distinct !{!8066, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!8067 = distinct !{!8067, !8066, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!8068 = !{!8057}
!8069 = !{!8059}
!8070 = !{!8059, !8057}
!8071 = !{!8061}
!8072 = !{!8063}
!8073 = !{!8063, !8061}
!8074 = !{!8065}
!8075 = !{!8067}
!8076 = !{!8067, !8065}
!8077 = distinct !{!8077, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!8078 = distinct !{!8078, !8077, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!8079 = distinct !{!8079, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!8080 = distinct !{!8080, !8079, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!8081 = !{!8078}
!8082 = !{!8080}
!8083 = distinct !{!8083, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8084 = distinct !{!8084, !8083, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8085 = !{!8084}
!8086 = distinct !{!8086, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8087 = distinct !{!8087, !8086, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8088 = !{!8087}
!8089 = distinct !{!8089, !281}
!8090 = distinct !{!8090, !281}
!8091 = distinct !{!8091, !281}
!8092 = distinct !{!8092, !281}
!8093 = !{!3232, !262, i64 8}
!8094 = !{!3232, !262, i64 12}
!8095 = !{!318, !318, i64 0}
!8096 = !{!319, !318, i64 0}
!8097 = distinct !{!8097, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS1_15io_context_poolEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!8098 = distinct !{!8098, !8097, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS1_15io_context_poolEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!8099 = distinct !{null, null, null, null, null}
!8100 = !{!8098}
!8101 = distinct !{!8101, !"_ZSt11make_sharedISt6vectorIN4asio2ip14basic_endpointINS2_3tcpEEESaIS5_EEJEESt10shared_ptrIT_EDpOT0_"}
!8102 = distinct !{!8102, !8101, !"_ZSt11make_sharedISt6vectorIN4asio2ip14basic_endpointINS2_3tcpEEESaIS5_EEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8103 = distinct !{!8103, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev"}
!8104 = distinct !{!8104, !8103, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev: argument 0"}
!8105 = distinct !{!8105, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_"}
!8106 = distinct !{!8106, !8105, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8107 = !{!1166, !262, i64 0}
!8108 = !{!1165, !309, i64 8}
!8109 = !{!8102}
!8110 = !{!8104}
!8111 = !{!8106}
!8112 = !{!8106, !8104}
!8113 = distinct !{!8113, !281}
!8114 = distinct !{!8114, !731}
!8115 = distinct !{!8115, !281}
!8116 = distinct !{!8116, !731}
!8117 = !{!1272, !1271, i64 0}
!8118 = distinct !{null}
!8119 = distinct !{!8119, !281}
!8120 = distinct !{null}
!8121 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !3235, i64 0}
!8122 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8121, i64 0}
!8123 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8122, i64 0}
!8124 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8123, i64 0}
!8125 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEEE", !8124, i64 0}
!8126 = !{!"_ZTSSt7variantIJSt9monostateN12async_simple4UnitENSt15__exception_ptr13exception_ptrEEE", !8125, i64 0}
!8127 = !{!"_ZTSN12async_simple3TryINS_4UnitEEE", !8126, i64 0}
!8128 = !{!"_ZTSN12async_simple11FutureStateINS_4UnitEEE", !633, i64 0, !1833, i64 1, !1833, i64 2, !8127, i64 8, !261, i64 24, !418, i64 56, !265, i64 64, !556, i64 72, !309, i64 80}
!8129 = !{!8128, !309, i64 80}
!8130 = !{!8128, !418, i64 56}
!8131 = !{!8128, !265, i64 64}
!8132 = distinct !{ptr @_ZN3ylt4util17atomic_shared_ptrISt6vectorIN4asio2ip14basic_endpointINS4_3tcpEEESaIS7_EENS0_6detail20shared_ptr_internalsEED2Ev, ptr @_ZNSt12__shared_ptrISt6vectorIN4asio2ip14basic_endpointINS2_3tcpEEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8133 = distinct !{ptr @_ZNSt23enable_shared_from_thisIN7coro_io11client_poolIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEEED2Ev, null, null, null}
!8134 = distinct !{!8134, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev"}
!8135 = distinct !{!8135, !8134, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev: argument 0"}
!8136 = distinct !{!8136, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_"}
!8137 = distinct !{!8137, !8136, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8138 = distinct !{!8138, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!8139 = distinct !{!8139, !8138, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!8140 = distinct !{!8140, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8141 = distinct !{!8141, !8140, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8142 = distinct !{!8142, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8143 = distinct !{!8143, !8142, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8144 = distinct !{null, null, null, null}
!8145 = distinct !{!8145, !281}
!8146 = !{!8139, !8137, !8135}
!8147 = !{!8137, !8135}
!8148 = !{!8141}
!8149 = !{!8143}
!8150 = !{!8143, !8141}
!8151 = distinct !{!8151, !"LVerDomain"}
!8152 = distinct !{!8152, !8151}
!8153 = distinct !{!8153, !8151}
!8154 = distinct !{!8154, !281, !1149, !1150}
!8155 = distinct !{!8155, !281, !1149}
!8156 = !{!8152}
!8157 = !{!8153}
!8158 = distinct !{null}
!8159 = distinct !{!8159, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!8160 = distinct !{!8160, !8159, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!8161 = !{!8160}
!8162 = distinct !{!8162, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev"}
!8163 = distinct !{!8163, !8162, !"_ZN12async_simple6Signal6createIS0_EESt10shared_ptrIT_Ev: argument 0"}
!8164 = distinct !{!8164, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_"}
!8165 = distinct !{!8165, !8164, !"_ZSt11make_sharedIN12async_simple6SignalEJNS1_19PrivateConstructTagEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!8166 = distinct !{!8166, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!8167 = distinct !{!8167, !8166, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12async_simple6SignalESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!8168 = !{!8167, !8165, !8163}
!8169 = !{!8165, !8163}
!8170 = distinct !{!8170, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8171 = distinct !{!8171, !8170, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8172 = distinct !{!8172, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8173 = distinct !{!8173, !8172, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8174 = distinct !{null, null, null, null}
!8175 = !{!8171}
!8176 = !{!8173}
!8177 = !{!8173, !8171}
!8178 = !{!3294, !3294, i64 0}
!8179 = distinct !{!8179, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8180 = distinct !{!8180, !8179, !"_ZSt11make_uniqueIN12async_simple4coro13LazyLocalBaseEJPNS0_6SignalEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8181 = distinct !{!8181, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!8182 = distinct !{!8182, !8181, !"_ZSt11make_uniqueIN12async_simple4SlotEJRPNS0_6SignalERNS0_10SignalTypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!8183 = distinct !{null, null, null, null}
!8184 = !{!8180}
!8185 = !{!8182}
!8186 = !{!8182, !8180}
!8187 = distinct !{null}
!8188 = distinct !{!8188, !"_ZN12async_simple4coro6detail8LazyBaseISt6vectorINS_3TryIvEESaIS5_EELb0EE10coAwaitTryEv"}
!8189 = distinct !{!8189, !8188, !"_ZN12async_simple4coro6detail8LazyBaseISt6vectorINS_3TryIvEESaIS5_EELb0EE10coAwaitTryEv: argument 0"}
!8190 = !{!8189}
!8191 = !{!3295, !3294, i64 16}
!8192 = distinct !{null}
!8193 = distinct !{!8193, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!8194 = distinct !{!8194, !8193, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!8195 = !{!8194}
!8196 = !{!3297, !446, i64 16}
!8197 = !{ptr @_ZN7cmdline6parser17option_with_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!8198 = distinct !{!8198, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!8199 = distinct !{!8199, !8198, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!8200 = distinct !{!8200, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8201 = distinct !{!8201, !8200, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8202 = distinct !{!8202, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v"}
!8203 = distinct !{!8203, !8202, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v: argument 0"}
!8204 = !{!8199}
!8205 = !{!8201}
!8206 = !{!8203}
!8207 = distinct !{!8207, !"_ZN7cmdline14default_readerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_"}
!8208 = distinct !{!8208, !8207, !"_ZN7cmdline14default_readerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_: argument 0"}
!8209 = distinct !{!8209, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_"}
!8210 = distinct !{!8210, !8209, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_: argument 0"}
!8211 = distinct !{!8211, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_"}
!8212 = distinct !{!8212, !8211, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_: argument 0"}
!8213 = !{!8208}
!8214 = !{!8210}
!8215 = !{!8212}
!8216 = !{!8212, !8210, !8208}
!8217 = distinct !{!8217, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!8218 = distinct !{!8218, !8217, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!8219 = distinct !{!8219, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v"}
!8220 = distinct !{!8220, !8219, !"_ZN7cmdline6detail17readable_typenameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_v: argument 0"}
!8221 = distinct !{!8221, !"_ZN7cmdline6detail13default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_T_"}
!8222 = distinct !{!8222, !8221, !"_ZN7cmdline6detail13default_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_T_: argument 0"}
!8223 = distinct !{!8223, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_"}
!8224 = distinct !{!8224, !8223, !"_ZN7cmdline6detail12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EET_RKT0_: argument 0"}
!8225 = distinct !{!8225, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_"}
!8226 = distinct !{!8226, !8225, !"_ZN7cmdline6detail14lexical_cast_tINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Lb1EE4castERKS7_: argument 0"}
!8227 = distinct !{!8227, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!8228 = distinct !{!8228, !8227, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!8229 = distinct !{!8229, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8230 = distinct !{!8230, !8229, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8231 = distinct !{!8231, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8232 = distinct !{!8232, !8231, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8233 = !{!8218}
!8234 = !{!8220}
!8235 = !{!8222}
!8236 = !{!8224}
!8237 = !{!8226}
!8238 = !{!8226, !8224, !8222}
!8239 = !{!8228}
!8240 = !{!8230}
!8241 = !{!8232}
!8242 = !{ptr @_ZN7cmdline6parser17option_with_valueImED2Ev}
!8243 = distinct !{!8243, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!8244 = distinct !{!8244, !8243, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!8245 = distinct !{!8245, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!8246 = distinct !{!8246, !8245, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!8247 = !{!8244}
!8248 = !{!8246}
!8249 = distinct !{!8249, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!8250 = distinct !{!8250, !8249, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!8251 = distinct !{!8251, !"_ZN7cmdline6detail13default_valueImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_"}
end_hunk_1
