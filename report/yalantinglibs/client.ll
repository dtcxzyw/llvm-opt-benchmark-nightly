Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/client?download=true
inline.NumInlined: 70008
inline.NumDeleted: 19195
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN7easylog8appender14roll_log_filesEv:bb.a
          to label %bb.r unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.040 = phi i32 [ %i.aa, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %.040)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.aj = add nuw nsw i32 %.040, 1
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %i.aj)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_RSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #44
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i15, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ak) #44
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16: ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %7, align 8, !tbaa !241   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ad
  br i1 %i.am, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !231
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #51
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19

_ZNSt10filesystem7__cxx114pathD2Ev.exit19:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i20, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, label %bb.l

bb.l:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ap) #44
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21: ; preds = %bb.l, %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  %i.aq = load ptr, ptr %6, align 8, !tbaa !241   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21
  %i.as = load i64, ptr %i.af, align 8, !tbaa !231
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #51
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24

_ZNSt10filesystem7__cxx114pathD2Ev.exit24:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.au = load ptr, ptr %5, align 8, !tbaa !241   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !231
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.ay = load ptr, ptr %4, align 8, !tbaa !241   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ah
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ah, align 8, !tbaa !231
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.bc = add nsw i32 %.040, -1
  %i.bd = icmp sgt i32 %.040, 0
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !4658

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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #44
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.bi = load ptr, ptr %5, align 8, !tbaa !241   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ag
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.q
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !231
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.bm = load ptr, ptr %4, align 8, !tbaa !241   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ah
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !231
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %i.bq = load ptr, ptr %1, align 8, !tbaa !241   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !231
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  ret void

bb.s:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bv, %bb.s ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %i.bw = load ptr, ptr %1, align 8, !tbaa !241   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !231
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 10 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !323 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 3 uses
  %.neg.i = mul nsw i64 %i.b, -1000000000
  %i.c = add i64 %.neg.i, %.sroa.0.0.copyload.i
  %i.d = sdiv i64 %i.c, 1000                      ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E9last_sec_) ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !323
  %i.g = icmp eq i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.d to i32                    ; 6 uses
  %i.i = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 8 uses
  %i.j = srem i32 %i.h, 10
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  store i8 %i.m, ptr %i.n, align 1, !tbaa !231
  %i.o = sdiv i32 %i.h, 10
  %i.p = srem i32 %i.o, 10
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !231
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %i.s, ptr %i.t, align 8, !tbaa !231
  %i.u = sdiv i32 %i.h, 100
  %i.v = srem i32 %i.u, 10
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !231
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 %i.y, ptr %i.z, align 1, !tbaa !231
  %i.aa = sdiv i32 %i.h, 1000
  %i.ab = srem i32 %i.aa, 10
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !231
  %i.ag = sdiv i32 %i.h, 10000
  %i.ah = srem i32 %i.ag, 10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 21
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !231
  %i.am = sdiv i32 %i.h, 100000
  %.lhs.trunc.i = trunc nsw i32 %i.am to i16
  %i.an = srem i16 %.lhs.trunc.i, 10
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !231
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !231
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 19
  store i8 46, ptr %i.as, align 1, !tbaa !231
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !323
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !323
  %i.at = sdiv i64 %.sroa.0.0.copyload.i.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !323, !noalias !4661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !4661
  %i.au = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #44 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = trunc i64 %i.d to i32                   ; 6 uses
  %i.aw = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 27 uses
  %i.ax = srem i32 %i.av, 10
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !231
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !231
  %i.bc = sdiv i32 %i.av, 10
  %i.bd = srem i32 %i.bc, 10
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !231
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !231
  %i.bi = sdiv i32 %i.av, 100
  %i.bj = srem i32 %i.bi, 10
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !231
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !231
  %i.bo = sdiv i32 %i.av, 1000
  %i.bp = srem i32 %i.bo, 10
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !231
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !231
  %i.bu = sdiv i32 %i.av, 10000
  %2 = srem i32 %i.bu, 10
  %i.bv = sext i32 %2 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !231
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !231
  %3 = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %3 to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %5 = sext i16 %4 to i64
  %i.bz = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %5
  %6 = load i8, ptr %i.bz, align 1, !tbaa !231
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %6, ptr %i.ca, align 4, !tbaa !231
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %7, align 1, !tbaa !231
  %8 = load i32, ptr %1, align 8, !tbaa !4663     ; 2 uses
  %9 = srem i32 %8, 10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !231
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  store i8 %12, ptr %i.cb, align 2, !tbaa !231
  %13 = sdiv i32 %8, 10
  %14 = srem i32 %13, 10
  %i.cc = sext i32 %14 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !231
  %15 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  store i8 %i.ce, ptr %15, align 1, !tbaa !231
  %16 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %16, align 16, !tbaa !231
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !4664   ; 2 uses
  %19 = srem i32 %18, 10
  %i.cf = sext i32 %19 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !231
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !231
  %i.cj = sdiv i32 %18, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !231
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !231
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !231
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !4665 ; 2 uses
  %i.cs = srem i32 %i.cr, 10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !231
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i8 %i.cv, ptr %i.cw, align 4, !tbaa !231
  %i.cx = sdiv i32 %i.cr, 10
  %i.cy = srem i32 %i.cx, 10
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !231
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !231
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i8 32, ptr %i.dd, align 2, !tbaa !231
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4666 ; 2 uses
  %i.dg = srem i32 %i.df, 10
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !231
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !231
  %i.dl = sdiv i32 %i.df, 10
  %i.dm = srem i32 %i.dl, 10
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !231
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !231
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  store i8 45, ptr %i.dr, align 1, !tbaa !231
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !4667
  %i.du = add nsw i32 %i.dt, 1                    ; 2 uses
  %i.dv = srem i32 %i.du, 10
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !231
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !231
  %i.ea = sdiv i32 %i.du, 10
  %i.eb = srem i32 %i.ea, 10
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !231
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !231
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i8 45, ptr %i.eg, align 4, !tbaa !231
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4668
  %i.ej = add nsw i32 %i.ei, 1900                 ; 4 uses
  %i.ek = srem i32 %i.ej, 10
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !231
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !231
  %i.ep = sdiv i32 %i.ej, 10
  %i.eq = srem i32 %i.ep, 10
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !231
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.et, ptr %i.eu, align 2, !tbaa !231
  %i.ev = sdiv i32 %i.ej, 100
  %i.ew = srem i32 %i.ev, 10
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !231
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !231
  %i.fb = sdiv i32 %i.ej, 1000
  %i.fc = srem i32 %i.fb, 10
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !231
  store i8 %i.ff, ptr %i.aw, align 16, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.aw, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #11

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
  store ptr %i.d, ptr %0, align 8, !tbaa !238
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !242  ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #53
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !243

.noexc6.i:                                        ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #53
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #52 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !241
  store i64 %i.g, ptr %i.d, align 8, !tbaa !231
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !231
  store i8 %i.n, ptr %i.m, align 1, !tbaa !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !242
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !231
  br label %bb.cf

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  invoke void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.ak

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  call void @llvm.experimental.noalias.scope.decl(metadata !4682)
  %i.r = load ptr, ptr %5, align 8, !tbaa !241, !noalias !4683 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !242, !noalias !4683 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !238, !alias.scope !4683
  %i.v = icmp eq ptr %i.r, null
  %i.w = icmp ne i64 %i.t, 0
  %or.cond.i.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i.i, label %.noexc.i23, label %bb.i

.noexc.i23:                                       ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #53
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %.noexc.i23
  unreachable

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i32
!4463 = distinct !{!4463, !227}
!4464 = distinct !{!4464, !227}
!4465 = distinct !{!4465, !227}
!4466 = distinct !{!4466, !227}
!4467 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !211, i64 0}
!4468 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !458, i64 0, !4467, i64 8}
!4469 = !{!4468, !4467, i64 8}
!4470 = distinct !{!4470, !227}
!4471 = distinct !{!4471, !227}
!4472 = !{!1197, !1179, i64 0}
!4473 = distinct !{!4473, !227}
!4474 = distinct !{ptr @_ZNKSt14default_deleteIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tEEclEPS2_, null, ptr @_ZN14memory_owner_tD2Ev, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4475 = distinct !{!4475, !227}
!4476 = distinct !{!4476, !227}
!4477 = distinct !{!4477, !227}
!4478 = distinct !{!4478, !227}
!4479 = !{!1188, !239, i64 96}
!4480 = !{!1174, !1155, i64 256}
!4481 = distinct !{!4481, !227}
!4482 = distinct !{!4482, !227}
!4483 = distinct !{!4483, !227}
!4484 = !{!1214, !336, i64 0}
!4485 = distinct !{!4485, i1 false, !"_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4486 = distinct !{!4486, !4485, !"_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4487 = distinct !{!4487, i1 false, !"_ZNOSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4488 = distinct !{!4488, !4487, !"_ZNOSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4489 = !{!4486}
!4490 = !{!4488}
!4491 = !{!4488, !4486}
!4492 = distinct !{null, null, null, null}
!4493 = !{!"p1 _ZTSNSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEE", !211, i64 0}
!4494 = !{!4493, !4493, i64 0}
!4495 = distinct !{!4495, i1 false, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!4496 = distinct !{!4496, !4495, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!4497 = !{!4496}
!4498 = distinct !{null}
!4499 = distinct !{!4499, i1 false, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!4500 = distinct !{!4500, !4499, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!4501 = distinct !{!4501, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4502 = distinct !{!4502, !4501, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4503 = distinct !{!4503, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!4504 = distinct !{!4504, !4503, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4505 = !{!4500}
!4506 = !{!4502}
!4507 = !{!4504, !4502, !4500}
!4508 = !{!4502, !4500}
!4509 = distinct !{null, null, null, null}
!4510 = distinct !{null}
!4511 = !{!1242, !709, i64 0}
!4512 = distinct !{ptr @_ZZZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_ENUlS3_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaS3_ENUlNS6_10SignalTypeEPNS6_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4513 = !{!"_ZTSZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_EUlS3_E0_", !1245, i64 0, !273, i64 8, !696, i64 16, !1246, i64 24, !1247, i64 32, !211, i64 40}
!4514 = !{!4513, !1245, i64 0}
!4515 = !{!4513, !1246, i64 24}
!4516 = !{!4513, !273, i64 8}
!4517 = !{!4513, !696, i64 16}
!4518 = !{!4513, !1247, i64 32}
!4519 = !{!4513, !211, i64 40}
!4520 = distinct !{!4520, i1 false, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12period_timer11async_awaitEvEUlOT_E_SB_EENS0_4coro4LazyISC_EET0_RT1_ENUlSC_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSC_EUlS3_S5_E_EENSt8__detail9_MakeUniqISC_E15__single_objectEDpOT0_"}
!4521 = distinct !{!4521, !4520, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12period_timer11async_awaitEvEUlOT_E_SB_EENS0_4coro4LazyISC_EET0_RT1_ENUlSC_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSC_EUlS3_S5_E_EENSt8__detail9_MakeUniqISC_E15__single_objectEDpOT0_: argument 0"}
!4522 = !{!4521}
!4523 = distinct !{!4523, i1 false, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt10error_codeZNS2_12period_timer11async_awaitEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS2_21callback_awaitor_baseIS4_NS2_16callback_awaitorIS4_EEE15awaitor_handlerEEEDaS6_EUlvE_EENS0_7binder0INSt5decayIS6_E4typeEEES7_"}
!4524 = distinct !{!4524, !4523, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt10error_codeZNS2_12period_timer11async_awaitEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS2_21callback_awaitor_baseIS4_NS2_16callback_awaitorIS4_EEE15awaitor_handlerEEEDaS6_EUlvE_EENS0_7binder0INSt5decayIS6_E4typeEEES7_: argument 0"}
!4525 = !{!4524}
!4526 = !{!"_ZTSZZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_ENUlS3_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaS3_EUlNS6_10SignalTypeEPNS6_6SignalEE_", !273, i64 0, !1254, i64 8}
!4527 = !{!4526, !273, i64 0}
!4528 = distinct !{null, null, ptr @_ZZZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_ENUlS3_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaS3_ENUlNS6_10SignalTypeEPNS6_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4529 = distinct !{null, null, null, null}
!4530 = distinct !{null}
!4531 = !{!1256, !709, i64 0}
!4532 = distinct !{null}
!4533 = distinct !{!4533, i1 false, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!4534 = distinct !{!4534, !4533, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!4535 = distinct !{!4535, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4536 = distinct !{!4536, !4535, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4537 = distinct !{!4537, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!4538 = distinct !{!4538, !4537, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4539 = !{!4534}
!4540 = !{!4536}
!4541 = !{!4538, !4536, !4534}
!4542 = !{!4536, !4534}
!4543 = distinct !{null, null, null, null}
!4544 = distinct !{null}
!4545 = !{!1268, !709, i64 0}
!4546 = !{!"_ZTSZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S6_EENS1_4coro4LazyIS7_EET0_RT1_EUlvE_N4asio15any_io_executorEEclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvS7_EUlvE_", !1273, i64 0, !1275, i64 8}
!4547 = !{!4546, !1273, i64 0}
!4548 = distinct !{!4548, i1 false, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_"}
!4549 = distinct !{!4549, !4548, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_: argument 0"}
!4550 = distinct !{!4550, i1 false, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4551 = distinct !{!4551, !4550, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4552 = distinct !{!4552, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE"}
!4553 = distinct !{!4553, !4552, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4554 = !{!4549}
!4555 = !{!4551}
!4556 = !{!4553, !4551, !4549}
!4557 = !{!4551, !4549}
!4558 = distinct !{!4558, i1 false, !"_ZNK14asio_prefer_fn4implclIN4asio15any_io_executorERKNS2_9execution6detail12relationship6fork_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SC_SE_vvvvvvvE11result_typeEE4typeEOSC_OSD_"}
!4559 = distinct !{!4559, !4558, !"_ZNK14asio_prefer_fn4implclIN4asio15any_io_executorERKNS2_9execution6detail12relationship6fork_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SC_SE_vvvvvvvE11result_typeEE4typeEOSC_OSD_: argument 0"}
!4560 = distinct !{!4560, i1 false, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail12relationship6fork_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS3_8blocking7never_tILi0EEENS2_11prefer_onlyINSG_10possibly_tILi0EEEEENSJ_INS3_16outstanding_work9tracked_tILi0EEEEENSJ_INSN_11untracked_tILi0EEEEENSJ_IS6_EENSJ_INS4_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4561 = distinct !{!4561, !4560, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail12relationship6fork_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS3_8blocking7never_tILi0EEENS2_11prefer_onlyINSG_10possibly_tILi0EEEEENSJ_INS3_16outstanding_work9tracked_tILi0EEEEENSJ_INSN_11untracked_tILi0EEEEENSJ_IS6_EENSJ_INS4_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4562 = distinct !{!4562, i1 false, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISN_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!4563 = distinct !{!4563, !4562, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISN_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4564 = distinct !{null, null, null}
!4565 = !{!4559}
!4566 = !{!4561}
!4567 = !{!4563, !4561, !4559}
!4568 = !{!4561, !4559}
!4569 = !{!1282, !709, i64 0}
!4570 = distinct !{!4570, !227}
!4571 = distinct !{null, ptr @_ZN14memory_owner_tD2Ev, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4572 = distinct !{null}
!4573 = distinct !{!4573, i1 false, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!4574 = distinct !{!4574, !4573, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!4575 = !{!4574}
!4576 = distinct !{!4576, i1 false, !"_ZZNK7coro_io10ib_deleterclEP6ibv_mrENKUlvE_clEv"}
!4577 = distinct !{!4577, !4576, !"_ZZNK7coro_io10ib_deleterclEP6ibv_mrENKUlvE_clEv: argument 0"}
!4578 = distinct !{!4578, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!4579 = distinct !{!4579, !4578, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!4580 = !{!4577}
!4581 = !{!4579}
!4582 = distinct !{null, null, null, null, null, null}
!4583 = distinct !{ptr @_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_ENUlNS9_10SignalTypeEPNS9_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4584 = distinct !{!4584, i1 false, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_"}
!4585 = distinct !{!4585, !4584, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_: argument 0"}
!4586 = distinct !{!4586, i1 false, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_"}
!4587 = distinct !{!4587, !4586, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_: argument 0"}
!4588 = distinct !{!4588, i1 false, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE"}
!4589 = distinct !{!4589, !4588, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE: argument 0"}
!4590 = distinct !{!4590, i1 false, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S8_EEN12async_simple4coro4LazyIS9_EET0_RT1_ENUlS9_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaS9_EUlvE_EENS0_7binder0INSt5decayIS9_E4typeEEESA_"}
!4591 = distinct !{!4591, !4590, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S8_EEN12async_simple4coro4LazyIS9_EET0_RT1_ENUlS9_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaS9_EUlvE_EENS0_7binder0INSt5decayIS9_E4typeEEESA_: argument 0"}
!4592 = !{!"_ZTSZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_EUlS6_E0_", !1245, i64 0, !890, i64 8, !696, i64 16, !1246, i64 24, !1288, i64 32, !211, i64 40}
!4593 = !{!4592, !1245, i64 0}
!4594 = !{!4592, !1246, i64 24}
!4595 = !{!4592, !890, i64 8}
!4596 = !{!4592, !696, i64 16}
!4597 = !{!4592, !1288, i64 32}
!4598 = !{!4589, !4587, !4585}
!4599 = !{!4591}
!4600 = !{!4592, !211, i64 40}
!4601 = distinct !{!4601, i1 false, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS8_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_SE_EENS0_4coro4LazyISF_EET0_RT1_ENUlSF_E0_clINS8_21callback_awaitor_baseISC_NS8_16callback_awaitorISC_EEE15awaitor_handlerEEEDaSF_EUlS3_S5_E_EENSt8__detail9_MakeUniqISF_E15__single_objectEDpOT0_"}
!4602 = distinct !{!4602, !4601, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS8_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_SE_EENS0_4coro4LazyISF_EET0_RT1_ENUlSF_E0_clINS8_21callback_awaitor_baseISC_NS8_16callback_awaitorISC_EEE15awaitor_handlerEEEDaSF_EUlS3_S5_E_EENSt8__detail9_MakeUniqISF_E15__single_objectEDpOT0_: argument 0"}
!4603 = !{!4602}
!4604 = distinct !{!4604, i1 false, !"_ZN7coro_io6detail24ib_socket_shared_state_t19release_send_bufferEv"}
!4605 = distinct !{!4605, !4604, !"_ZN7coro_io6detail24ib_socket_shared_state_t19release_send_bufferEv: argument 0"}
!4606 = distinct !{!4606, i1 false, !"_ZN7coro_io6detail13circle_bufferINS_11ib_buffer_tEE3popEv"}
!4607 = distinct !{!4607, !4606, !"_ZN7coro_io6detail13circle_bufferINS_11ib_buffer_tEE3popEv: argument 0"}
!4608 = !{!4605}
!4609 = !{!4607, !4605}
!4610 = !{!"_ZTSZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_EUlNS9_10SignalTypeEPNS9_6SignalEE_", !890, i64 0, !1254, i64 8}
!4611 = !{!4610, !890, i64 0}
!4612 = distinct !{null, null, ptr @_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_ENUlNS9_10SignalTypeEPNS9_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4613 = distinct !{null, null, null, null, null, null}
!4614 = !{!"_ZTSZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_EUlDpOT_E_", !1286, i64 0, !1246, i64 8}
!4615 = !{!4614, !1246, i64 8}
!4616 = distinct !{null, ptr @_ZN4asio6detail7binder0IZN7coro_io11ib_socket_t5closeEvEUlvE_ED2Ev, ptr @_ZZN7coro_io11ib_socket_t5closeEvENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4617 = !{ptr @_ZN4asio3ssl6detail6engineD2Ev}
!4618 = distinct !{!4618, i1 false, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4619 = distinct !{!4619, !4618, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4620 = !{!1315, !816, i64 0}
!4621 = !{!4619}
!4622 = distinct !{!4622, !227}
!4623 = distinct !{!4623, !1359}
!4624 = distinct !{!4624, !227}
!4625 = distinct !{!4625, !1359}
!4626 = !{!1337, !1336, i64 0}
!4627 = distinct !{null}
!4628 = distinct !{!4628, !227}
!4629 = distinct !{null, null}
!4630 = !{!1324, !1324, i64 0}
!4631 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !614, i64 0, !211, i64 24}
!4632 = !{!4631, !211, i64 24}
!4633 = distinct !{!4633, !227}
!4634 = distinct !{!4634, !227}
!4635 = distinct !{!4635, !227}
!4636 = distinct !{!4636, !227}
!4637 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !211, i64 0}
!4638 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !458, i64 0, !4637, i64 8}
!4639 = !{!4638, !4637, i64 8}
!4640 = distinct !{!4640, !227}
!4641 = distinct !{!4641, !227}
!4642 = !{!1366, !255, i64 72}
!4643 = !{!1381, !239, i64 0}
!4644 = !{!1381, !1378, i64 16}
!4645 = !{!1386, !1372, i64 0}
!4646 = distinct !{!4646, !227}
!4647 = distinct !{!4647, !227}
!4648 = distinct !{!4648, !227}
!4649 = distinct !{!4649, !227}
!4650 = distinct !{!4650, !227}
!4651 = !{!1379, !239, i64 96}
!4652 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !239, i64 0, !1346, i64 8}
!4653 = !{!4652, !239, i64 0}
!4654 = !{!4652, !1346, i64 8}
!4655 = !{!1357, !1346, i64 2560}
!4656 = distinct !{!4656, !227}
!4657 = distinct !{!4657, !227}
!4658 = distinct !{!4658, !227}
!4659 = distinct !{!4659, i1 false, !"_ZN7easylog14localtime_safeEl"}
!4660 = distinct !{!4660, !4659, !"_ZN7easylog14localtime_safeEl: argument 0"}
!4661 = !{!4660}
!4662 = !{!"_ZTS2tm", !208, i64 0, !208, i64 4, !208, i64 8, !208, i64 12, !208, i64 16, !208, i64 20, !208, i64 24, !208, i64 28, !208, i64 32, !239, i64 40, !236, i64 48}
!4663 = !{!4662, !208, i64 0}
!4664 = !{!4662, !208, i64 4}
!4665 = !{!4662, !208, i64 8}
!4666 = !{!4662, !208, i64 12}
!4667 = !{!4662, !208, i64 16}
!4668 = !{!4662, !208, i64 20}
!4669 = distinct !{!4669, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4670 = distinct !{!4670, !4669, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4671 = distinct !{!4671, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4672 = distinct !{!4672, !4671, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4673 = distinct !{!4673, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4674 = distinct !{!4674, !4673, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4675 = distinct !{!4675, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4676 = distinct !{!4676, !4675, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4677 = distinct !{!4677, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4678 = distinct !{!4678, !4677, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4679 = distinct !{!4679, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4680 = distinct !{!4680, !4679, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4681 = !{!4670}
!4682 = !{!4672}
!4683 = !{!4672, !4670}
!4684 = !{!4674}
!4685 = !{!4676}
!4686 = !{!4676, !4674}
!4687 = !{!4678}
!4688 = !{!4680}
!4689 = !{!4680, !4678}
!4690 = distinct !{!4690, i1 false, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!4691 = distinct !{!4691, !4690, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!4692 = distinct !{!4692, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!4693 = distinct !{!4693, !4692, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!4694 = !{!4691}
!4695 = !{!4693}
!4696 = distinct !{!4696, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!4697 = distinct !{!4697, !4696, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!4698 = !{!4697}
!4699 = distinct !{!4699, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4700 = distinct !{!4700, !4699, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4701 = !{!4700}
!4702 = distinct !{!4702, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!4703 = distinct !{!4703, !4702, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!4704 = !{!4703}
!4705 = distinct !{!4705, !227}
!4706 = distinct !{!4706, !227}
!4707 = distinct !{!4707, !227}
!4708 = distinct !{!4708, !227}
!4709 = !{!1411, !208, i64 8}
!4710 = !{!1411, !208, i64 12}
!4711 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4712 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4713 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4714 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4715 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4716 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4717 = distinct !{!4717, i1 false, !"_ZZN7coro_io16socket_wrapper_t11init_clientEbENKUlvE_clEv"}
!4718 = distinct !{!4718, !4717, !"_ZZN7coro_io16socket_wrapper_t11init_clientEbENKUlvE_clEv: argument 0"}
!4719 = !{!4718}
!4720 = distinct !{!4720, i1 false, !"_ZN4asio2ip7address11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!4721 = distinct !{!4721, !4720, !"_ZN4asio2ip7address11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!4722 = distinct !{!4722, i1 false, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!4723 = distinct !{!4723, !4722, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!4724 = distinct !{!4724, i1 false, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!4725 = distinct !{!4725, !4724, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!4726 = distinct !{!4726, i1 false, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!4727 = distinct !{!4727, !4726, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!4728 = !{!4723, !4721}
!4729 = !{!4725}
!4730 = !{!4727}
!4731 = !{!875, !208, i64 0}
!4732 = distinct !{!4732, i1 false, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!4733 = distinct !{!4733, !4732, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!4734 = distinct !{!4734, i1 false, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!4735 = distinct !{!4735, !4734, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!4736 = distinct !{!4736, i1 false, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!4737 = distinct !{!4737, !4736, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!4738 = !{!4733}
!4739 = !{!4735}
!4740 = !{!4735, !4733}
!4741 = !{!4737, !4733}
!4742 = distinct !{null}
!4743 = distinct !{!4743, i1 false, !"_ZNK4asio2ip7address5to_v4Ev"}
!4744 = distinct !{!4744, !4743, !"_ZNK4asio2ip7address5to_v4Ev: argument 0"}
!4745 = distinct !{!4745, i1 false, !"_ZNK4asio2ip7address5to_v6Ev"}
!4746 = distinct !{!4746, !4745, !"_ZNK4asio2ip7address5to_v6Ev: argument 0"}
!4747 = !{!4744}
!4748 = !{!4746}
!4749 = distinct !{!4749, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE_clEv"}
!4750 = distinct !{!4750, !4749, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE_clEv: argument 0"}
!4751 = distinct !{!4751, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE0_clEv"}
!4752 = distinct !{!4752, !4751, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE0_clEv: argument 0"}
!4753 = distinct !{!4753, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4754 = distinct !{!4754, !4753, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4755 = distinct !{!4755, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4756 = distinct !{!4756, !4755, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4757 = distinct !{!4757, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE1_clEv"}
!4758 = distinct !{!4758, !4757, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE1_clEv: argument 0"}
!4759 = distinct !{!4759, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4760 = distinct !{!4760, !4759, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4761 = distinct !{!4761, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4762 = distinct !{!4762, !4761, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4763 = distinct !{!4763, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4764 = distinct !{!4764, !4763, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4765 = distinct !{!4765, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4766 = distinct !{!4766, !4765, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4767 = distinct !{!4767, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE2_clEv"}
!4768 = distinct !{!4768, !4767, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE2_clEv: argument 0"}
!4769 = distinct !{!4769, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4770 = distinct !{!4770, !4769, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4771 = distinct !{!4771, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4772 = distinct !{!4772, !4771, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4773 = distinct !{!4773, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE3_clEv"}
!4774 = distinct !{!4774, !4773, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE3_clEv: argument 0"}
!4775 = distinct !{!4775, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE4_clEv"}
!4776 = distinct !{!4776, !4775, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE4_clEv: argument 0"}
!4777 = distinct !{!4777, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4778 = distinct !{!4778, !4777, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4779 = distinct !{!4779, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4780 = distinct !{!4780, !4779, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4781 = distinct !{!4781, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE5_clEv"}
!4782 = distinct !{!4782, !4781, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE5_clEv: argument 0"}
!4783 = distinct !{!4783, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE6_clEv"}
!4784 = distinct !{!4784, !4783, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE6_clEv: argument 0"}
!4785 = distinct !{!4785, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4786 = distinct !{!4786, !4785, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4787 = distinct !{!4787, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4788 = distinct !{!4788, !4787, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4789 = distinct !{!4789, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE7_clEv"}
!4790 = distinct !{!4790, !4789, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE7_clEv: argument 0"}
!4791 = distinct !{!4791, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE8_clEv"}
!4792 = distinct !{!4792, !4791, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE8_clEv: argument 0"}
!4793 = distinct !{!4793, i1 false, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE9_clEv"}
!4794 = distinct !{!4794, !4793, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE9_clEv: argument 0"}
!4795 = !{!4750}
!4796 = !{!4752}
!4797 = !{!4754}
!4798 = !{!4756}
!4799 = !{!4756, !4754}
!4800 = !{!4758}
!4801 = !{!4760}
!4802 = !{!4762}
!4803 = !{!4762, !4760}
!4804 = !{!4764}
!4805 = !{!4766}
!4806 = !{!4766, !4764}
!4807 = !{!4768}
!4808 = !{!4770}
!4809 = !{!4772}
!4810 = !{!4772, !4770}
!4811 = !{!4774}
!4812 = !{!4776}
!4813 = !{!4778}
!4814 = !{!4780}
!4815 = !{!4780, !4778}
!4816 = !{!4782}
!4817 = !{!4784}
!4818 = !{!4786}
!4819 = !{!4788}
!4820 = !{!4788, !4786}
!4821 = !{!4790}
!4822 = !{!4792}
!4823 = !{!4794}
!4824 = distinct !{!4824, i1 false, !"_ZZN7coro_io16socket_wrapper_t11init_clientERN4asio3ssl7contextEbENKUlvE_clEv"}
!4825 = distinct !{!4825, !4824, !"_ZZN7coro_io16socket_wrapper_t11init_clientERN4asio3ssl7contextEbENKUlvE_clEv: argument 0"}
!4826 = !{!4825}
!4827 = distinct !{null}
!4828 = !{ptr @_ZN4asio3ssl6detail15verify_callbackINS0_22host_name_verificationEED2Ev}
!4829 = distinct !{!4829, i1 false, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!4830 = distinct !{!4830, !4829, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!4831 = distinct !{!4831, i1 false, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!4832 = distinct !{!4832, !4831, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!4833 = distinct !{!4833, i1 false, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!4834 = distinct !{!4834, !4833, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!4835 = distinct !{!4835, i1 false, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!4836 = distinct !{!4836, !4835, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!4837 = !{!4830}
!4838 = !{!4834, !4832, !4830}
!4839 = !{!4836, !4832, !4830}
!4840 = distinct !{!4840, i1 false, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!4841 = distinct !{!4841, !4840, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!4842 = distinct !{!4842, i1 false, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!4843 = distinct !{!4843, !4842, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!4844 = distinct !{!4844, i1 false, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!4845 = distinct !{!4845, !4844, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!4846 = !{!4841}
!4847 = !{!4843}
!4848 = !{!4843, !4841}
!4849 = !{!4845, !4841}
!4850 = distinct !{!4850, i1 false, !"_ZSt11make_uniqueIN4asio3ssl6streamIRNS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEEEEJS8_RNS1_7contextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4851 = distinct !{!4851, !4850, !"_ZSt11make_uniqueIN4asio3ssl6streamIRNS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEEEEJS8_RNS1_7contextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4852 = distinct !{!4852, i1 false, !"_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv"}
!4853 = distinct !{!4853, !4852, !"_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv: argument 0"}
!4854 = !{!4851}
!4855 = !{!4853}
!4856 = !{!4853, !4851}
!4857 = distinct !{null}
!4858 = !{!1307, !236, i64 8}
!4859 = !{!1311, !1311, i64 0}
!4860 = distinct !{!4860, i1 false, !"_ZSt11make_uniqueIN7coro_io11ib_socket_tEJRPNS0_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEERKNS1_8config_tEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4861 = distinct !{!4861, !4860, !"_ZSt11make_uniqueIN7coro_io11ib_socket_tEJRPNS0_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEERKNS1_8config_tEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4862 = distinct !{!4862, i1 false, !"_ZZN7coro_io16socket_wrapper_t11init_clientERKNS_11ib_socket_t8config_tEENKUlvE_clEv"}
!4863 = distinct !{!4863, !4862, !"_ZZN7coro_io16socket_wrapper_t11init_clientERKNS_11ib_socket_t8config_tEENKUlvE_clEv: argument 0"}
!4864 = !{!906, !208, i64 0}
end_hunk_1
