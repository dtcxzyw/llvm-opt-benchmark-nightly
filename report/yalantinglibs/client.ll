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
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !4657

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
  %1 = alloca %struct.tm, align 8                 ; 11 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !323, !noalias !4660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !4660
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
  %2 = sdiv i32 %i.av, 10000
  %3 = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  %i.bu = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %i.bu to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %i.bv = sext i16 %4 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !231
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !231
  %5 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %5, align 1, !tbaa !231
  %6 = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %i.bz, align 16, !tbaa !231
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load <2 x i32>, ptr %1, align 8, !tbaa !232
  %9 = load i32, ptr %i.ca, align 4, !tbaa !4662
  %10 = load i32, ptr %1, align 8, !tbaa !4663
  %11 = sdiv i32 %10, 10
  %12 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %13 = insertelement <4 x i32> %12, i32 %2, i64 0
  %14 = insertelement <4 x i32> %13, i32 %11, i64 2
  %15 = srem <4 x i32> %14, splat (i32 10)        ; 4 uses
  %16 = extractelement <4 x i32> %15, i64 0
  %17 = sext i32 %16 to i64
  %i.cb = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %17
  %18 = load i8, ptr %i.cb, align 1, !tbaa !231
  store i8 %18, ptr %3, align 1, !tbaa !231
  %19 = extractelement <4 x i32> %15, i64 1
  %i.cc = sext i32 %19 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !231
  store i8 %i.ce, ptr %6, align 2, !tbaa !231
  %20 = extractelement <4 x i32> %15, i64 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !231
  store i8 %23, ptr %7, align 1, !tbaa !231
  %24 = extractelement <4 x i32> %15, i64 3
  %i.cf = sext i32 %24 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !231
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !231
  %i.cj = sdiv i32 %9, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !231
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !231
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !231
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !4664 ; 2 uses
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
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4665 ; 2 uses
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
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !4666
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
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4667
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
  call void @llvm.experimental.noalias.scope.decl(metadata !4680)
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  %i.r = load ptr, ptr %5, align 8, !tbaa !241, !noalias !4682 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !242, !noalias !4682 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !238, !alias.scope !4682
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
!4462 = distinct !{!4462, !227}
!4463 = distinct !{!4463, !227}
!4464 = distinct !{!4464, !227}
!4465 = distinct !{!4465, !227}
!4466 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !211, i64 0}
!4467 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !458, i64 0, !4466, i64 8}
!4468 = !{!4467, !4466, i64 8}
!4469 = distinct !{!4469, !227}
!4470 = distinct !{!4470, !227}
!4471 = !{!1197, !1179, i64 0}
!4472 = distinct !{!4472, !227}
!4473 = distinct !{ptr @_ZNKSt14default_deleteIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tEEclEPS2_, null, ptr @_ZN14memory_owner_tD2Ev, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4474 = distinct !{!4474, !227}
!4475 = distinct !{!4475, !227}
!4476 = distinct !{!4476, !227}
!4477 = distinct !{!4477, !227}
!4478 = !{!1188, !239, i64 96}
!4479 = !{!1174, !1155, i64 256}
!4480 = distinct !{!4480, !227}
!4481 = distinct !{!4481, !227}
!4482 = distinct !{!4482, !227}
!4483 = !{!1214, !336, i64 0}
!4484 = distinct !{!4484, !"_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!4485 = distinct !{!4485, !4484, !"_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4486 = distinct !{!4486, !"_ZNOSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!4487 = distinct !{!4487, !4486, !"_ZNOSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!4488 = !{!4485}
!4489 = !{!4487}
!4490 = !{!4487, !4485}
!4491 = distinct !{null, null, null, null}
!4492 = !{!"p1 _ZTSNSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEE", !211, i64 0}
!4493 = !{!4492, !4492, i64 0}
!4494 = distinct !{!4494, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!4495 = distinct !{!4495, !4494, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!4496 = !{!4495}
!4497 = distinct !{null}
!4498 = distinct !{!4498, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!4499 = distinct !{!4499, !4498, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!4500 = distinct !{!4500, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4501 = distinct !{!4501, !4500, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4502 = distinct !{!4502, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!4503 = distinct !{!4503, !4502, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4504 = !{!4499}
!4505 = !{!4501}
!4506 = !{!4503, !4501, !4499}
!4507 = !{!4501, !4499}
!4508 = distinct !{null, null, null, null}
!4509 = distinct !{null}
!4510 = !{!1242, !709, i64 0}
!4511 = distinct !{ptr @_ZZZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_ENUlS3_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaS3_ENUlNS6_10SignalTypeEPNS6_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4512 = !{!"_ZTSZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_EUlS3_E0_", !1245, i64 0, !273, i64 8, !696, i64 16, !1246, i64 24, !1247, i64 32, !211, i64 40}
!4513 = !{!4512, !1245, i64 0}
!4514 = !{!4512, !1246, i64 24}
!4515 = !{!4512, !273, i64 8}
!4516 = !{!4512, !696, i64 16}
!4517 = !{!4512, !1247, i64 32}
!4518 = !{!4512, !211, i64 40}
!4519 = distinct !{!4519, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12period_timer11async_awaitEvEUlOT_E_SB_EENS0_4coro4LazyISC_EET0_RT1_ENUlSC_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSC_EUlS3_S5_E_EENSt8__detail9_MakeUniqISC_E15__single_objectEDpOT0_"}
!4520 = distinct !{!4520, !4519, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12period_timer11async_awaitEvEUlOT_E_SB_EENS0_4coro4LazyISC_EET0_RT1_ENUlSC_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSC_EUlS3_S5_E_EENSt8__detail9_MakeUniqISC_E15__single_objectEDpOT0_: argument 0"}
!4521 = !{!4520}
!4522 = distinct !{!4522, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt10error_codeZNS2_12period_timer11async_awaitEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS2_21callback_awaitor_baseIS4_NS2_16callback_awaitorIS4_EEE15awaitor_handlerEEEDaS6_EUlvE_EENS0_7binder0INSt5decayIS6_E4typeEEES7_"}
!4523 = distinct !{!4523, !4522, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt10error_codeZNS2_12period_timer11async_awaitEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS2_21callback_awaitor_baseIS4_NS2_16callback_awaitorIS4_EEE15awaitor_handlerEEEDaS6_EUlvE_EENS0_7binder0INSt5decayIS6_E4typeEEES7_: argument 0"}
!4524 = !{!4523}
!4525 = !{!"_ZTSZZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_ENUlS3_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaS3_EUlNS6_10SignalTypeEPNS6_6SignalEE_", !273, i64 0, !1254, i64 8}
!4526 = !{!4525, !273, i64 0}
!4527 = distinct !{null, null, ptr @_ZZZN7coro_io8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S2_EEN12async_simple4coro4LazyIS3_EET0_RT1_ENUlS3_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaS3_ENUlNS6_10SignalTypeEPNS6_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4528 = distinct !{null, null, null, null}
!4529 = distinct !{null}
!4530 = !{!1256, !709, i64 0}
!4531 = distinct !{null}
!4532 = distinct !{!4532, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!4533 = distinct !{!4533, !4532, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!4534 = distinct !{!4534, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4535 = distinct !{!4535, !4534, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4536 = distinct !{!4536, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!4537 = distinct !{!4537, !4536, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4538 = !{!4533}
!4539 = !{!4535}
!4540 = !{!4537, !4535, !4533}
!4541 = !{!4535, !4533}
!4542 = distinct !{null, null, null, null}
!4543 = distinct !{null}
!4544 = !{!1268, !709, i64 0}
!4545 = !{!"_ZTSZN7coro_io11post_helperIN12async_simple3TryIvEEZNS_8async_ioISt10error_codeZNS_12period_timer11async_awaitEvEUlOT_E_S6_EENS1_4coro4LazyIS7_EET0_RT1_EUlvE_N4asio15any_io_executorEEclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvS7_EUlvE_", !1273, i64 0, !1275, i64 8}
!4546 = !{!4545, !1273, i64 0}
!4547 = distinct !{!4547, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_"}
!4548 = distinct !{!4548, !4547, !"_ZNK15asio_require_fn4implclIRKN4asio15any_io_executorERKNS2_9execution6detail8blocking7never_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SE_SG_vvvvvE11result_typeEE4typeEOSE_OSF_: argument 0"}
!4549 = distinct !{!4549, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4550 = distinct !{!4550, !4549, !"_ZNK4asio15any_io_executor7requireINS_9execution6detail8blocking7never_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits14require_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEES6_NS2_11prefer_onlyINS4_10possibly_tILi0EEEEENSG_INS3_16outstanding_work9tracked_tILi0EEEEENSG_INSK_11untracked_tILi0EEEEENSG_INS3_12relationship6fork_tILi0EEEEENSG_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4551 = distinct !{!4551, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE"}
!4552 = distinct !{!4552, !4551, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE7requireIS9_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_requirable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4553 = !{!4548}
!4554 = !{!4550}
!4555 = !{!4552, !4550, !4548}
!4556 = !{!4550, !4548}
!4557 = distinct !{!4557, !"_ZNK14asio_prefer_fn4implclIN4asio15any_io_executorERKNS2_9execution6detail12relationship6fork_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SC_SE_vvvvvvvE11result_typeEE4typeEOSC_OSD_"}
!4558 = distinct !{!4558, !4557, !"_ZNK14asio_prefer_fn4implclIN4asio15any_io_executorERKNS2_9execution6detail12relationship6fork_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SC_SE_vvvvvvvE11result_typeEE4typeEOSC_OSD_: argument 0"}
!4559 = distinct !{!4559, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail12relationship6fork_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS3_8blocking7never_tILi0EEENS2_11prefer_onlyINSG_10possibly_tILi0EEEEENSJ_INS3_16outstanding_work9tracked_tILi0EEEEENSJ_INSN_11untracked_tILi0EEEEENSJ_IS6_EENSJ_INS4_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!4560 = distinct !{!4560, !4559, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail12relationship6fork_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS3_8blocking7never_tILi0EEENS2_11prefer_onlyINSG_10possibly_tILi0EEEEENSJ_INS3_16outstanding_work9tracked_tILi0EEEEENSJ_INSN_11untracked_tILi0EEEEENSJ_IS6_EENSJ_INS4_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!4561 = distinct !{!4561, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISN_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!4562 = distinct !{!4562, !4561, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISN_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!4563 = distinct !{null, null, null}
!4564 = !{!4558}
!4565 = !{!4560}
!4566 = !{!4562, !4560, !4558}
!4567 = !{!4560, !4558}
!4568 = !{!1282, !709, i64 0}
!4569 = distinct !{!4569, !227}
!4570 = distinct !{null, ptr @_ZN14memory_owner_tD2Ev, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4571 = distinct !{null}
!4572 = distinct !{!4572, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv"}
!4573 = distinct !{!4573, !4572, !"_ZN12async_simple4coro6detail8LazyBaseIvLb0EE10coAwaitTryEv: argument 0"}
!4574 = !{!4573}
!4575 = distinct !{!4575, !"_ZZNK7coro_io10ib_deleterclEP6ibv_mrENKUlvE_clEv"}
!4576 = distinct !{!4576, !4575, !"_ZZNK7coro_io10ib_deleterclEP6ibv_mrENKUlvE_clEv: argument 0"}
!4577 = distinct !{!4577, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!4578 = distinct !{!4578, !4577, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!4579 = !{!4576}
!4580 = !{!4578}
!4581 = distinct !{null, null, null, null, null, null}
!4582 = distinct !{ptr @_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_ENUlNS9_10SignalTypeEPNS9_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4583 = distinct !{!4583, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_"}
!4584 = distinct !{!4584, !4583, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_: argument 0"}
!4585 = distinct !{!4585, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_"}
!4586 = distinct !{!4586, !4585, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_: argument 0"}
!4587 = distinct !{!4587, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE"}
!4588 = distinct !{!4588, !4587, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE: argument 0"}
!4589 = distinct !{!4589, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S8_EEN12async_simple4coro4LazyIS9_EET0_RT1_ENUlS9_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaS9_EUlvE_EENS0_7binder0INSt5decayIS9_E4typeEEESA_"}
!4590 = distinct !{!4590, !4589, !"_ZN4asio6detail12bind_handlerIZZN7coro_io8async_ioISt4pairISt10error_codemEZNS2_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S8_EEN12async_simple4coro4LazyIS9_EET0_RT1_ENUlS9_E0_clINS2_21callback_awaitor_baseIS6_NS2_16callback_awaitorIS6_EEE15awaitor_handlerEEEDaS9_EUlvE_EENS0_7binder0INSt5decayIS9_E4typeEEESA_: argument 0"}
!4591 = !{!"_ZTSZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_EUlS6_E0_", !1245, i64 0, !890, i64 8, !696, i64 16, !1246, i64 24, !1288, i64 32, !211, i64 40}
!4592 = !{!4591, !1245, i64 0}
!4593 = !{!4591, !1246, i64 24}
!4594 = !{!4591, !890, i64 8}
!4595 = !{!4591, !696, i64 16}
!4596 = !{!4591, !1288, i64 32}
!4597 = !{!4588, !4586, !4584}
!4598 = !{!4590}
!4599 = !{!4591, !211, i64 40}
!4600 = distinct !{!4600, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS8_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_SE_EENS0_4coro4LazyISF_EET0_RT1_ENUlSF_E0_clINS8_21callback_awaitor_baseISC_NS8_16callback_awaitorISC_EEE15awaitor_handlerEEEDaSF_EUlS3_S5_E_EENSt8__detail9_MakeUniqISF_E15__single_objectEDpOT0_"}
!4601 = distinct !{!4601, !4600, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt4pairISt10error_codemEZNS8_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_SE_EENS0_4coro4LazyISF_EET0_RT1_ENUlSF_E0_clINS8_21callback_awaitor_baseISC_NS8_16callback_awaitorISC_EEE15awaitor_handlerEEEDaSF_EUlS3_S5_E_EENSt8__detail9_MakeUniqISF_E15__single_objectEDpOT0_: argument 0"}
!4602 = !{!4601}
!4603 = distinct !{!4603, !"_ZN7coro_io6detail24ib_socket_shared_state_t19release_send_bufferEv"}
!4604 = distinct !{!4604, !4603, !"_ZN7coro_io6detail24ib_socket_shared_state_t19release_send_bufferEv: argument 0"}
!4605 = distinct !{!4605, !"_ZN7coro_io6detail13circle_bufferINS_11ib_buffer_tEE3popEv"}
!4606 = distinct !{!4606, !4605, !"_ZN7coro_io6detail13circle_bufferINS_11ib_buffer_tEE3popEv: argument 0"}
!4607 = !{!4604}
!4608 = !{!4606, !4604}
!4609 = !{!"_ZTSZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_EUlNS9_10SignalTypeEPNS9_6SignalEE_", !890, i64 0, !1254, i64 8}
!4610 = !{!4609, !890, i64 0}
!4611 = distinct !{null, null, ptr @_ZZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_ENUlNS9_10SignalTypeEPNS9_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4612 = distinct !{null, null, null, null, null, null}
!4613 = !{!"_ZTSZZN7coro_io8async_ioISt4pairISt10error_codemEZNS_6detail24ib_socket_shared_state_t8shutdownEvEUlOT_E_S5_EEN12async_simple4coro4LazyIS6_EET0_RT1_ENUlS6_E0_clINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEDaS6_EUlDpOT_E_", !1286, i64 0, !1246, i64 8}
!4614 = !{!4613, !1246, i64 8}
!4615 = distinct !{null, ptr @_ZN4asio6detail7binder0IZN7coro_io11ib_socket_t5closeEvEUlvE_ED2Ev, ptr @_ZZN7coro_io11ib_socket_t5closeEvENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4616 = !{ptr @_ZN4asio3ssl6detail6engineD2Ev}
!4617 = distinct !{!4617, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4618 = distinct !{!4618, !4617, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4619 = !{!1315, !816, i64 0}
!4620 = !{!4618}
!4621 = distinct !{!4621, !227}
!4622 = distinct !{!4622, !1359}
!4623 = distinct !{!4623, !227}
!4624 = distinct !{!4624, !1359}
!4625 = !{!1337, !1336, i64 0}
!4626 = distinct !{null}
!4627 = distinct !{!4627, !227}
!4628 = distinct !{null, null}
!4629 = !{!1324, !1324, i64 0}
!4630 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !614, i64 0, !211, i64 24}
!4631 = !{!4630, !211, i64 24}
!4632 = distinct !{!4632, !227}
!4633 = distinct !{!4633, !227}
!4634 = distinct !{!4634, !227}
!4635 = distinct !{!4635, !227}
!4636 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !211, i64 0}
!4637 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !458, i64 0, !4636, i64 8}
!4638 = !{!4637, !4636, i64 8}
!4639 = distinct !{!4639, !227}
!4640 = distinct !{!4640, !227}
!4641 = !{!1366, !255, i64 72}
!4642 = !{!1381, !239, i64 0}
!4643 = !{!1381, !1378, i64 16}
!4644 = !{!1386, !1372, i64 0}
!4645 = distinct !{!4645, !227}
!4646 = distinct !{!4646, !227}
!4647 = distinct !{!4647, !227}
!4648 = distinct !{!4648, !227}
!4649 = distinct !{!4649, !227}
!4650 = !{!1379, !239, i64 96}
!4651 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !239, i64 0, !1346, i64 8}
!4652 = !{!4651, !239, i64 0}
!4653 = !{!4651, !1346, i64 8}
!4654 = !{!1357, !1346, i64 2560}
!4655 = distinct !{!4655, !227}
!4656 = distinct !{!4656, !227}
!4657 = distinct !{!4657, !227}
!4658 = distinct !{!4658, !"_ZN7easylog14localtime_safeEl"}
!4659 = distinct !{!4659, !4658, !"_ZN7easylog14localtime_safeEl: argument 0"}
!4660 = !{!4659}
!4661 = !{!"_ZTS2tm", !208, i64 0, !208, i64 4, !208, i64 8, !208, i64 12, !208, i64 16, !208, i64 20, !208, i64 24, !208, i64 28, !208, i64 32, !239, i64 40, !236, i64 48}
!4662 = !{!4661, !208, i64 4}
!4663 = !{!4661, !208, i64 0}
!4664 = !{!4661, !208, i64 8}
!4665 = !{!4661, !208, i64 12}
!4666 = !{!4661, !208, i64 16}
!4667 = !{!4661, !208, i64 20}
!4668 = distinct !{!4668, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4669 = distinct !{!4669, !4668, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4670 = distinct !{!4670, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4671 = distinct !{!4671, !4670, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4672 = distinct !{!4672, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4673 = distinct !{!4673, !4672, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4674 = distinct !{!4674, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4675 = distinct !{!4675, !4674, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4676 = distinct !{!4676, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4677 = distinct !{!4677, !4676, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4678 = distinct !{!4678, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4679 = distinct !{!4679, !4678, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4680 = !{!4669}
!4681 = !{!4671}
!4682 = !{!4671, !4669}
!4683 = !{!4673}
!4684 = !{!4675}
!4685 = !{!4675, !4673}
!4686 = !{!4677}
!4687 = !{!4679}
!4688 = !{!4679, !4677}
!4689 = distinct !{!4689, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!4690 = distinct !{!4690, !4689, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!4691 = distinct !{!4691, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!4692 = distinct !{!4692, !4691, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!4693 = !{!4690}
!4694 = !{!4692}
!4695 = distinct !{!4695, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!4696 = distinct !{!4696, !4695, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!4697 = !{!4696}
!4698 = distinct !{!4698, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4699 = distinct !{!4699, !4698, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4700 = !{!4699}
!4701 = distinct !{!4701, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!4702 = distinct !{!4702, !4701, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!4703 = !{!4702}
!4704 = distinct !{!4704, !227}
!4705 = distinct !{!4705, !227}
!4706 = distinct !{!4706, !227}
!4707 = distinct !{!4707, !227}
!4708 = !{!1411, !208, i64 8}
!4709 = !{!1411, !208, i64 12}
!4710 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4711 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4712 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4713 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4714 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4715 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4716 = distinct !{!4716, !"_ZZN7coro_io16socket_wrapper_t11init_clientEbENKUlvE_clEv"}
!4717 = distinct !{!4717, !4716, !"_ZZN7coro_io16socket_wrapper_t11init_clientEbENKUlvE_clEv: argument 0"}
!4718 = !{!4717}
!4719 = distinct !{!4719, !"_ZN4asio2ip7address11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!4720 = distinct !{!4720, !4719, !"_ZN4asio2ip7address11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!4721 = distinct !{!4721, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!4722 = distinct !{!4722, !4721, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!4723 = distinct !{!4723, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!4724 = distinct !{!4724, !4723, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!4725 = distinct !{!4725, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!4726 = distinct !{!4726, !4725, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!4727 = !{!4722, !4720}
!4728 = !{!4724}
!4729 = !{!4726}
!4730 = !{!875, !208, i64 0}
!4731 = distinct !{!4731, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!4732 = distinct !{!4732, !4731, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!4733 = distinct !{!4733, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!4734 = distinct !{!4734, !4733, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!4735 = distinct !{!4735, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!4736 = distinct !{!4736, !4735, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!4737 = !{!4732}
!4738 = !{!4734}
!4739 = !{!4734, !4732}
!4740 = !{!4736, !4732}
!4741 = distinct !{null}
!4742 = distinct !{!4742, !"_ZNK4asio2ip7address5to_v4Ev"}
!4743 = distinct !{!4743, !4742, !"_ZNK4asio2ip7address5to_v4Ev: argument 0"}
!4744 = distinct !{!4744, !"_ZNK4asio2ip7address5to_v6Ev"}
!4745 = distinct !{!4745, !4744, !"_ZNK4asio2ip7address5to_v6Ev: argument 0"}
!4746 = !{!4743}
!4747 = !{!4745}
!4748 = distinct !{!4748, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE_clEv"}
!4749 = distinct !{!4749, !4748, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE_clEv: argument 0"}
!4750 = distinct !{!4750, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE0_clEv"}
!4751 = distinct !{!4751, !4750, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE0_clEv: argument 0"}
!4752 = distinct !{!4752, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4753 = distinct !{!4753, !4752, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4754 = distinct !{!4754, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4755 = distinct !{!4755, !4754, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4756 = distinct !{!4756, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE1_clEv"}
!4757 = distinct !{!4757, !4756, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE1_clEv: argument 0"}
!4758 = distinct !{!4758, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4759 = distinct !{!4759, !4758, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4760 = distinct !{!4760, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4761 = distinct !{!4761, !4760, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4762 = distinct !{!4762, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4763 = distinct !{!4763, !4762, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4764 = distinct !{!4764, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4765 = distinct !{!4765, !4764, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4766 = distinct !{!4766, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE2_clEv"}
!4767 = distinct !{!4767, !4766, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE2_clEv: argument 0"}
!4768 = distinct !{!4768, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4769 = distinct !{!4769, !4768, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4770 = distinct !{!4770, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4771 = distinct !{!4771, !4770, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4772 = distinct !{!4772, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE3_clEv"}
!4773 = distinct !{!4773, !4772, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE3_clEv: argument 0"}
!4774 = distinct !{!4774, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE4_clEv"}
!4775 = distinct !{!4775, !4774, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE4_clEv: argument 0"}
!4776 = distinct !{!4776, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4777 = distinct !{!4777, !4776, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4778 = distinct !{!4778, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4779 = distinct !{!4779, !4778, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4780 = distinct !{!4780, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE5_clEv"}
!4781 = distinct !{!4781, !4780, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE5_clEv: argument 0"}
!4782 = distinct !{!4782, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE6_clEv"}
!4783 = distinct !{!4783, !4782, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE6_clEv: argument 0"}
!4784 = distinct !{!4784, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!4785 = distinct !{!4785, !4784, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!4786 = distinct !{!4786, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!4787 = distinct !{!4787, !4786, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!4788 = distinct !{!4788, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE7_clEv"}
!4789 = distinct !{!4789, !4788, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE7_clEv: argument 0"}
!4790 = distinct !{!4790, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE8_clEv"}
!4791 = distinct !{!4791, !4790, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE8_clEv: argument 0"}
!4792 = distinct !{!4792, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE9_clEv"}
!4793 = distinct !{!4793, !4792, !"_ZZN8coro_rpc15coro_rpc_client19init_socket_wrapperERKNS0_19tcp_with_ssl_configEENKUlvE9_clEv: argument 0"}
!4794 = !{!4749}
!4795 = !{!4751}
!4796 = !{!4753}
!4797 = !{!4755}
!4798 = !{!4755, !4753}
!4799 = !{!4757}
!4800 = !{!4759}
!4801 = !{!4761}
!4802 = !{!4761, !4759}
!4803 = !{!4763}
!4804 = !{!4765}
!4805 = !{!4765, !4763}
!4806 = !{!4767}
!4807 = !{!4769}
!4808 = !{!4771}
!4809 = !{!4771, !4769}
!4810 = !{!4773}
!4811 = !{!4775}
!4812 = !{!4777}
!4813 = !{!4779}
!4814 = !{!4779, !4777}
!4815 = !{!4781}
!4816 = !{!4783}
!4817 = !{!4785}
!4818 = !{!4787}
!4819 = !{!4787, !4785}
!4820 = !{!4789}
!4821 = !{!4791}
!4822 = !{!4793}
!4823 = distinct !{!4823, !"_ZZN7coro_io16socket_wrapper_t11init_clientERN4asio3ssl7contextEbENKUlvE_clEv"}
!4824 = distinct !{!4824, !4823, !"_ZZN7coro_io16socket_wrapper_t11init_clientERN4asio3ssl7contextEbENKUlvE_clEv: argument 0"}
!4825 = !{!4824}
!4826 = distinct !{null}
!4827 = !{ptr @_ZN4asio3ssl6detail15verify_callbackINS0_22host_name_verificationEED2Ev}
!4828 = distinct !{!4828, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!4829 = distinct !{!4829, !4828, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!4830 = distinct !{!4830, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!4831 = distinct !{!4831, !4830, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!4832 = distinct !{!4832, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!4833 = distinct !{!4833, !4832, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!4834 = distinct !{!4834, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!4835 = distinct !{!4835, !4834, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!4836 = !{!4829}
!4837 = !{!4833, !4831, !4829}
!4838 = !{!4835, !4831, !4829}
!4839 = distinct !{!4839, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!4840 = distinct !{!4840, !4839, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!4841 = distinct !{!4841, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!4842 = distinct !{!4842, !4841, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!4843 = distinct !{!4843, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!4844 = distinct !{!4844, !4843, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!4845 = !{!4840}
!4846 = !{!4842}
!4847 = !{!4842, !4840}
!4848 = !{!4844, !4840}
!4849 = distinct !{!4849, !"_ZSt11make_uniqueIN4asio3ssl6streamIRNS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEEEEJS8_RNS1_7contextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4850 = distinct !{!4850, !4849, !"_ZSt11make_uniqueIN4asio3ssl6streamIRNS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEEEEJS8_RNS1_7contextEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4851 = distinct !{!4851, !"_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv"}
!4852 = distinct !{!4852, !4851, !"_ZN4asio12basic_socketINS_2ip3tcpENS_15any_io_executorEE12get_executorEv: argument 0"}
!4853 = !{!4850}
!4854 = !{!4852}
!4855 = !{!4852, !4850}
!4856 = distinct !{null}
!4857 = !{!1307, !236, i64 8}
!4858 = !{!1311, !1311, i64 0}
!4859 = distinct !{!4859, !"_ZSt11make_uniqueIN7coro_io11ib_socket_tEJRPNS0_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEERKNS1_8config_tEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!4860 = distinct !{!4860, !4859, !"_ZSt11make_uniqueIN7coro_io11ib_socket_tEJRPNS0_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEERKNS1_8config_tEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!4861 = distinct !{!4861, !"_ZZN7coro_io16socket_wrapper_t11init_clientERKNS_11ib_socket_t8config_tEENKUlvE_clEv"}
!4862 = distinct !{!4862, !4861, !"_ZZN7coro_io16socket_wrapper_t11init_clientERKNS_11ib_socket_t8config_tEENKUlvE_clEv: argument 0"}
!4863 = !{!906, !208, i64 0}
end_hunk_1
