Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/rdma_example?download=true
inline.NumInlined: 46041
inline.NumDeleted: 16659
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN7easylog8appender14roll_log_filesEv:bb.a
          to label %bb.r unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.040 = phi i32 [ %i.aa, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %.040)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.aj = add nuw nsw i32 %.040, 1
  invoke void @_ZN7easylog8appender14build_filenameB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1361) %0, i32 noundef %i.aj)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_RSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !599 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i15, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ak) #37
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16: ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %7, align 8, !tbaa !251   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ad
  br i1 %i.am, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !241
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #51
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit19

_ZNSt10filesystem7__cxx114pathD2Ev.exit19:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !599 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i20, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, label %bb.l

bb.l:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ap) #37
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21: ; preds = %bb.l, %_ZNSt10filesystem7__cxx114pathD2Ev.exit19
  %i.aq = load ptr, ptr %6, align 8, !tbaa !251   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21
  %i.as = load i64, ptr %i.af, align 8, !tbaa !241
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #51
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit24

_ZNSt10filesystem7__cxx114pathD2Ev.exit24:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.au = load ptr, ptr %5, align 8, !tbaa !251   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !241
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ay = load ptr, ptr %4, align 8, !tbaa !251   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ah
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ah, align 8, !tbaa !241
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.bc = add nsw i32 %.040, -1
  %i.bd = icmp sgt i32 %.040, 0
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !6010

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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.bi = load ptr, ptr %5, align 8, !tbaa !251   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ag
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.q
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !241
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.bm = load ptr, ptr %4, align 8, !tbaa !251   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ah
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !241
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.bq = load ptr, ptr %1, align 8, !tbaa !251   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.r
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !241
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void

bb.s:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bv, %bb.s ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.bw = load ptr, ptr %1, align 8, !tbaa !251   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !241
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 11 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !314 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 3 uses
  %.neg.i = mul nsw i64 %i.b, -1000000000
  %i.c = add i64 %.neg.i, %.sroa.0.0.copyload.i
  %i.d = sdiv i64 %i.c, 1000                      ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E9last_sec_) ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !314
  %i.g = icmp eq i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.d to i32                    ; 6 uses
  %i.i = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 8 uses
  %i.j = srem i32 %i.h, 10
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !241
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  store i8 %i.m, ptr %i.n, align 1, !tbaa !241
  %i.o = sdiv i32 %i.h, 10
  %i.p = srem i32 %i.o, 10
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !241
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %i.s, ptr %i.t, align 8, !tbaa !241
  %i.u = sdiv i32 %i.h, 100
  %i.v = srem i32 %i.u, 10
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !241
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 %i.y, ptr %i.z, align 1, !tbaa !241
  %i.aa = sdiv i32 %i.h, 1000
  %i.ab = srem i32 %i.aa, 10
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !241
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !241
  %i.ag = sdiv i32 %i.h, 10000
  %i.ah = srem i32 %i.ag, 10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !241
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 21
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !241
  %i.am = sdiv i32 %i.h, 100000
  %.lhs.trunc.i = trunc nsw i32 %i.am to i16
  %i.an = srem i16 %.lhs.trunc.i, 10
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !241
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !241
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 19
  store i8 46, ptr %i.as, align 1, !tbaa !241
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !314
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !314
  %i.at = sdiv i64 %.sroa.0.0.copyload.i.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !314, !noalias !6013
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !alias.scope !6013
  %i.au = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = trunc i64 %i.d to i32                   ; 6 uses
  %i.aw = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZN7easylog12get_time_strINSt6chrono10time_pointINS1_3_V212system_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEEPcRKT_E3buf) ; 27 uses
  %i.ax = srem i32 %i.av, 10
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !241
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !241
  %i.bc = sdiv i32 %i.av, 10
  %i.bd = srem i32 %i.bc, 10
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !241
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !241
  %i.bi = sdiv i32 %i.av, 100
  %i.bj = srem i32 %i.bi, 10
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !241
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !241
  %i.bo = sdiv i32 %i.av, 1000
  %i.bp = srem i32 %i.bo, 10
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !241
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !241
  %2 = sdiv i32 %i.av, 10000
  %3 = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  %i.bu = sdiv i32 %i.av, 100000
  %.lhs.trunc.i11 = trunc nsw i32 %i.bu to i16
  %4 = srem i16 %.lhs.trunc.i11, 10
  %i.bv = sext i16 %4 to i64
  %i.bw = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !241
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !241
  %5 = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  store i8 46, ptr %5, align 1, !tbaa !241
  %6 = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 58, ptr %i.bz, align 16, !tbaa !241
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load <2 x i32>, ptr %1, align 8, !tbaa !242
  %9 = load i32, ptr %i.ca, align 4, !tbaa !6015
  %10 = load i32, ptr %1, align 8, !tbaa !6016
  %11 = sdiv i32 %10, 10
  %12 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %13 = insertelement <4 x i32> %12, i32 %2, i64 0
  %14 = insertelement <4 x i32> %13, i32 %11, i64 2
  %15 = srem <4 x i32> %14, splat (i32 10)        ; 4 uses
  %16 = extractelement <4 x i32> %15, i64 0
  %17 = sext i32 %16 to i64
  %i.cb = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %17
  %18 = load i8, ptr %i.cb, align 1, !tbaa !241
  store i8 %18, ptr %3, align 1, !tbaa !241
  %19 = extractelement <4 x i32> %15, i64 1
  %i.cc = sext i32 %19 to i64
  %i.cd = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !241
  store i8 %i.ce, ptr %6, align 2, !tbaa !241
  %20 = extractelement <4 x i32> %15, i64 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !241
  store i8 %23, ptr %7, align 1, !tbaa !241
  %24 = extractelement <4 x i32> %15, i64 3
  %i.cf = sext i32 %24 to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !241
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !241
  %i.cj = sdiv i32 %9, 10
  %i.ck = srem i32 %i.cj, 10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !241
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !241
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  store i8 58, ptr %i.cp, align 1, !tbaa !241
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !6017 ; 2 uses
  %i.cs = srem i32 %i.cr, 10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !241
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i8 %i.cv, ptr %i.cw, align 4, !tbaa !241
  %i.cx = sdiv i32 %i.cr, 10
  %i.cy = srem i32 %i.cx, 10
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !241
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !241
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i8 32, ptr %i.dd, align 2, !tbaa !241
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !6018 ; 2 uses
  %i.dg = srem i32 %i.df, 10
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !241
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !241
  %i.dl = sdiv i32 %i.df, 10
  %i.dm = srem i32 %i.dl, 10
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !241
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !241
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  store i8 45, ptr %i.dr, align 1, !tbaa !241
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !6019
  %i.du = add nsw i32 %i.dt, 1                    ; 2 uses
  %i.dv = srem i32 %i.du, 10
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !241
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !241
  %i.ea = sdiv i32 %i.du, 10
  %i.eb = srem i32 %i.ea, 10
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !241
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !241
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i8 45, ptr %i.eg, align 4, !tbaa !241
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !6020
  %i.ej = add nsw i32 %i.ei, 1900                 ; 4 uses
  %i.ek = srem i32 %i.ej, 10
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !241
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !241
  %i.ep = sdiv i32 %i.ej, 10
  %i.eq = srem i32 %i.ep, 10
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !241
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %i.et, ptr %i.eu, align 2, !tbaa !241
  %i.ev = sdiv i32 %i.ej, 100
  %i.ew = srem i32 %i.ev, 10
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !241
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !241
  %i.fb = sdiv i32 %i.ej, 1000
  %i.fc = srem i32 %i.fb, 10
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr @_ZN7easylogL6digitsE, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !241
  store i8 %i.ff, ptr %i.aw, align 16, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
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
  store ptr %i.d, ptr %0, align 8, !tbaa !248
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !251  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !252  ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #53
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !253

.noexc6.i:                                        ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #53
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #52 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !251
  store i64 %i.g, ptr %i.d, align 8, !tbaa !241
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !241
  store i8 %i.n, ptr %i.m, align 1, !tbaa !241
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !252
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !241
  br label %bb.cf

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.ak

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !6033)
  call void @llvm.experimental.noalias.scope.decl(metadata !6034)
  %i.r = load ptr, ptr %5, align 8, !tbaa !251, !noalias !6035 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !252, !noalias !6035 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !248, !alias.scope !6035
  %i.v = icmp eq ptr %i.r, null
  %i.w = icmp ne i64 %i.t, 0
  %or.cond.i.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i.i, label %.noexc.i23, label %bb.i

.noexc.i23:                                       ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.128) #53
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %.noexc.i23
  unreachable

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i32
!5815 = distinct !{!5815, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!5816 = distinct !{!5816, !5815, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!5817 = !{!5814}
!5818 = !{!5816}
!5819 = distinct !{!5819, !"_ZZNK7coro_io10ib_deleterclEP6ibv_pdENKUlvE_clEv"}
!5820 = distinct !{!5820, !5819, !"_ZZNK7coro_io10ib_deleterclEP6ibv_pdENKUlvE_clEv: argument 0"}
!5821 = distinct !{!5821, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!5822 = distinct !{!5822, !5821, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!5823 = !{!5820}
!5824 = !{!5822}
!5825 = distinct !{!5825, !"_ZSt11make_sharedIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEJEESt10shared_ptrIT_EDpOT0_"}
!5826 = distinct !{!5826, !5825, !"_ZSt11make_sharedIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!5827 = !{!5826}
!5828 = !{!537, !537, i64 0}
!5829 = distinct !{!5829, !237}
!5830 = distinct !{!5830, !1424}
!5831 = distinct !{!5831, !237}
!5832 = distinct !{!5832, !1424}
!5833 = !{!1229, !1228, i64 0}
!5834 = distinct !{null}
!5835 = distinct !{!5835, !237}
!5836 = distinct !{ptr @_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEED2Ev, null, null, null}
!5837 = distinct !{ptr @_ZNSt23enable_shared_from_thisIN7coro_io11ib_device_tEED2Ev, null, null, null}
!5838 = distinct !{!5838, !"_ZSt11make_uniqueISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!5839 = distinct !{!5839, !5838, !"_ZSt11make_uniqueISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3anySt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!5840 = !{!5839}
!5841 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5842 = !{!1993, !221, i64 8}
!5843 = !{!"_ZTSZZN7coro_io11ib_device_t25start_async_event_watcherEvENKUlSt8weak_ptrIS0_EPNS_15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEEEE_clES2_SA_EUlT_E_", !295, i64 0}
!5844 = !{!5843, !295, i64 0}
!5845 = distinct !{!5845, !"_ZZN7coro_io11ib_device_t17poll_async_eventsEvENKUlvE_clEv"}
!5846 = distinct !{!5846, !5845, !"_ZZN7coro_io11ib_device_t17poll_async_eventsEvENKUlvE_clEv: argument 0"}
!5847 = distinct !{!5847, !237}
!5848 = distinct !{!5848, !"_ZZN7coro_io11ib_device_t17poll_async_eventsEvENKUlvE0_clEv"}
!5849 = distinct !{!5849, !5848, !"_ZZN7coro_io11ib_device_t17poll_async_eventsEvENKUlvE0_clEv: argument 0"}
!5850 = !{!5846}
!5851 = !{!5849}
!5852 = distinct !{!5852, !237}
!5853 = distinct !{null, null, null, null, null, null, null, null, null}
!5854 = distinct !{null, null, ptr @_ZNSt10_HashtableIPN7coro_io11ib_device_tESt4pairIKS2_St8weak_ptrIS1_EESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv, null, null, null, null, null, null, null}
!5855 = distinct !{!5855, !"_ZNKSt8weak_ptrIN7coro_io11ib_device_tEE4lockEv"}
!5856 = distinct !{!5856, !5855, !"_ZNKSt8weak_ptrIN7coro_io11ib_device_tEE4lockEv: argument 0"}
!5857 = !{!5856}
!5858 = !{!2003, !2001, i64 0}
!5859 = !{!2005, !2005, i64 0}
!5860 = !{!"_ZTSSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !1550, i64 0}
!5861 = !{!5860, !1550, i64 0}
!5862 = !{!"_ZTSSt10_Head_baseILm0EON7coro_io11ib_device_t29async_event_watcher_manager_tELb0EE", !2005, i64 0}
!5863 = !{!5862, !2005, i64 0}
!5864 = distinct !{!5864, !237}
!5865 = distinct !{null, null, null, null, null, null, null}
!5866 = distinct !{!5866, !237}
!5867 = !{!832, !437, i64 48}
!5868 = distinct !{null, null, null, null, null, null}
!5869 = distinct !{!5869, !237}
!5870 = distinct !{null}
!5871 = distinct !{!5871, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!5872 = distinct !{!5872, !5871, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!5873 = distinct !{!5873, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!5874 = distinct !{!5874, !5873, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!5875 = distinct !{!5875, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!5876 = distinct !{!5876, !5875, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!5877 = !{!5872}
!5878 = !{!5874}
!5879 = !{!5876, !5874, !5872}
!5880 = !{!5874, !5872}
!5881 = distinct !{null, null, null, null, null}
!5882 = distinct !{null}
!5883 = !{!2024, !838, i64 0}
!5884 = distinct !{!5884, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE_clEv"}
!5885 = distinct !{!5885, !5884, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE_clEv: argument 0"}
!5886 = distinct !{!5886, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE0_clEv"}
!5887 = distinct !{!5887, !5886, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE0_clEv: argument 0"}
!5888 = distinct !{!5888, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE1_clEv"}
!5889 = distinct !{!5889, !5888, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE1_clEv: argument 0"}
!5890 = distinct !{!5890, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE2_clEv"}
!5891 = distinct !{!5891, !5890, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE2_clEv: argument 0"}
!5892 = distinct !{!5892, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE3_clEv"}
!5893 = distinct !{!5893, !5892, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE3_clEv: argument 0"}
!5894 = distinct !{!5894, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE4_clEv"}
!5895 = distinct !{!5895, !5894, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE4_clEv: argument 0"}
!5896 = distinct !{!5896, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE5_clEv"}
!5897 = distinct !{!5897, !5896, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE5_clEv: argument 0"}
!5898 = distinct !{!5898, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE6_clEv"}
!5899 = distinct !{!5899, !5898, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE6_clEv: argument 0"}
!5900 = distinct !{!5900, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE7_clEv"}
!5901 = distinct !{!5901, !5900, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE7_clEv: argument 0"}
!5902 = distinct !{!5902, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE8_clEv"}
!5903 = distinct !{!5903, !5902, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE8_clEv: argument 0"}
!5904 = distinct !{!5904, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE9_clEv"}
!5905 = distinct !{!5905, !5904, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE9_clEv: argument 0"}
!5906 = distinct !{!5906, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE10_clEv"}
!5907 = distinct !{!5907, !5906, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE10_clEv: argument 0"}
!5908 = distinct !{!5908, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE11_clEv"}
!5909 = distinct !{!5909, !5908, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE11_clEv: argument 0"}
!5910 = distinct !{!5910, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE12_clEv"}
!5911 = distinct !{!5911, !5910, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE12_clEv: argument 0"}
!5912 = distinct !{!5912, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE13_clEv"}
!5913 = distinct !{!5913, !5912, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE13_clEv: argument 0"}
!5914 = distinct !{!5914, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE14_clEv"}
!5915 = distinct !{!5915, !5914, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE14_clEv: argument 0"}
!5916 = distinct !{!5916, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE15_clEv"}
!5917 = distinct !{!5917, !5916, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE15_clEv: argument 0"}
!5918 = distinct !{!5918, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE16_clEv"}
!5919 = distinct !{!5919, !5918, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE16_clEv: argument 0"}
!5920 = distinct !{!5920, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE17_clEv"}
!5921 = distinct !{!5921, !5920, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE17_clEv: argument 0"}
!5922 = distinct !{!5922, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE18_clEv"}
!5923 = distinct !{!5923, !5922, !"_ZZN7coro_io6detail17print_async_eventEP11ibv_contextP15ibv_async_eventENKUlvE18_clEv: argument 0"}
!5924 = !{!"_ZTS15ibv_async_event", !217, i64 0, !1995, i64 8}
!5925 = !{!5924, !1995, i64 8}
!5926 = !{!5885}
!5927 = !{!5887}
!5928 = !{!5889}
!5929 = !{!5891}
!5930 = !{!5893}
!5931 = !{!5895}
!5932 = !{!5897}
!5933 = !{!5899}
!5934 = !{!5901}
!5935 = !{!5903}
!5936 = !{!5905}
!5937 = !{!5907}
!5938 = !{!5909}
!5939 = !{!5911}
!5940 = !{!5913}
!5941 = !{!5915}
!5942 = !{!5917}
!5943 = !{!5919}
!5944 = !{!5921}
!5945 = !{!1193, !1191, i64 0}
!5946 = !{!5923}
!5947 = !{!1063, !1063, i64 0}
!5948 = distinct !{!5948, !237}
!5949 = distinct !{!5949, !"_ZN12async_simple4coro6detail8LazyBaseIvLb1EE10coAwaitTryEv"}
!5950 = distinct !{!5950, !5949, !"_ZN12async_simple4coro6detail8LazyBaseIvLb1EE10coAwaitTryEv: argument 0"}
!5951 = !{!5950}
!5952 = distinct !{!5952, !237}
!5953 = distinct !{ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7coro_io11ib_device_tEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5954 = !{!2029, !2027, i64 0}
!5955 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5956 = distinct !{!5956, !237}
!5957 = !{!1976, !437, i64 48}
!5958 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5959 = distinct !{!5959, !237}
!5960 = distinct !{!5960, !237}
!5961 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5962 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5963 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5964 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5965 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5966 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5967 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5968 = !{!369, !368, i64 0}
!5969 = distinct !{!5969, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!5970 = distinct !{!5970, !5969, !"_ZSt11make_uniqueIN7easylog8appenderEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!5971 = !{!2038, !500, i64 0}
!5972 = !{!5970}
!5973 = distinct !{!5973, !237}
!5974 = distinct !{!5974, !1424}
!5975 = distinct !{!5975, !237}
!5976 = distinct !{!5976, !1424}
!5977 = !{!2060, !2059, i64 0}
!5978 = distinct !{null}
!5979 = distinct !{!5979, !237}
!5980 = distinct !{null, null}
!5981 = distinct !{null}
!5982 = !{!2047, !2047, i64 0}
!5983 = !{!"_ZTSSt8functionIFvRN7easylog8record_tEEE", !462, i64 0, !221, i64 24}
!5984 = !{!5983, !221, i64 24}
!5985 = distinct !{!5985, !237}
!5986 = distinct !{!5986, !237}
!5987 = distinct !{!5987, !237}
!5988 = distinct !{!5988, !237}
!5989 = !{!"p1 _ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE", !221, i64 0}
!5990 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE19ImplicitProducerKVPE", !417, i64 0, !5989, i64 8}
!5991 = !{!5990, !5989, i64 8}
!5992 = distinct !{!5992, !237}
!5993 = distinct !{!5993, !237}
!5994 = !{!2084, !265, i64 72}
!5995 = !{!2099, !249, i64 0}
!5996 = !{!2099, !2096, i64 16}
!5997 = !{!2104, !2090, i64 0}
!5998 = distinct !{!5998, !237}
!5999 = distinct !{!5999, !237}
!6000 = distinct !{!6000, !237}
!6001 = distinct !{!6001, !237}
!6002 = distinct !{!6002, !237}
!6003 = !{!2097, !249, i64 96}
!6004 = !{!"_ZTSN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer15BlockIndexEntryE", !249, i64 0, !2068, i64 8}
!6005 = !{!6004, !249, i64 0}
!6006 = !{!6004, !2068, i64 8}
!6007 = !{!2079, !2068, i64 2560}
!6008 = distinct !{!6008, !237}
!6009 = distinct !{!6009, !237}
!6010 = distinct !{!6010, !237}
!6011 = distinct !{!6011, !"_ZN7easylog14localtime_safeEl"}
!6012 = distinct !{!6012, !6011, !"_ZN7easylog14localtime_safeEl: argument 0"}
!6013 = !{!6012}
!6014 = !{!"_ZTS2tm", !218, i64 0, !218, i64 4, !218, i64 8, !218, i64 12, !218, i64 16, !218, i64 20, !218, i64 24, !218, i64 28, !218, i64 32, !249, i64 40, !246, i64 48}
!6015 = !{!6014, !218, i64 4}
!6016 = !{!6014, !218, i64 0}
!6017 = !{!6014, !218, i64 8}
!6018 = !{!6014, !218, i64 12}
!6019 = !{!6014, !218, i64 16}
!6020 = !{!6014, !218, i64 20}
!6021 = distinct !{!6021, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!6022 = distinct !{!6022, !6021, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!6023 = distinct !{!6023, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!6024 = distinct !{!6024, !6023, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!6025 = distinct !{!6025, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!6026 = distinct !{!6026, !6025, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!6027 = distinct !{!6027, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!6028 = distinct !{!6028, !6027, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!6029 = distinct !{!6029, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!6030 = distinct !{!6030, !6029, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!6031 = distinct !{!6031, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!6032 = distinct !{!6032, !6031, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!6033 = !{!6022}
!6034 = !{!6024}
!6035 = !{!6024, !6022}
!6036 = !{!6026}
!6037 = !{!6028}
!6038 = !{!6028, !6026}
!6039 = !{!6030}
!6040 = !{!6032}
!6041 = !{!6032, !6030}
!6042 = distinct !{!6042, !"_ZN7easylog8appender14build_filenameB5cxx11Ei"}
!6043 = distinct !{!6043, !6042, !"_ZN7easylog8appender14build_filenameB5cxx11Ei: argument 0"}
!6044 = distinct !{!6044, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!6045 = distinct !{!6045, !6044, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!6046 = !{!6043}
!6047 = !{!6045}
!6048 = distinct !{!6048, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!6049 = distinct !{!6049, !6048, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!6050 = !{!6049}
!6051 = distinct !{!6051, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!6052 = distinct !{!6052, !6051, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!6053 = !{!6052}
!6054 = distinct !{!6054, !237}
!6055 = distinct !{!6055, !237}
!6056 = distinct !{!6056, !237}
!6057 = distinct !{!6057, !237}
!6058 = !{!2129, !218, i64 8}
!6059 = !{!2129, !218, i64 12}
!6060 = distinct !{!6060, !"_ZN4asio10io_context12get_executorEv"}
!6061 = distinct !{!6061, !6060, !"_ZN4asio10io_context12get_executorEv: argument 0"}
!6062 = distinct !{!6062, !"_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE14init_acceptorsESt17basic_string_viewIcSt11char_traitsIcEEtENKUlvE_clEv"}
!6063 = distinct !{!6063, !6062, !"_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE14init_acceptorsESt17basic_string_viewIcSt11char_traitsIcEEtENKUlvE_clEv: argument 0"}
!6064 = !{!6061}
!6065 = !{!6063}
!6066 = distinct !{null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6067 = distinct !{null, null, null, null, null, null}
!6068 = distinct !{!6068, !237}
!6069 = distinct !{!6069, !237}
!6070 = distinct !{!6070, !237}
!6071 = !{!445, !437, i64 16}
!6072 = distinct !{null, null, null, null, null, null, null, null, null}
!6073 = distinct !{!6073, !237}
!6074 = !{!"branch_weights", i32 -1320871959, i32 1320871959}
!6075 = distinct !{!6075, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!6076 = distinct !{!6076, !6075, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!6077 = distinct !{!6077, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!6078 = distinct !{!6078, !6077, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!6079 = distinct !{!6079, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!6080 = distinct !{!6080, !6079, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!6081 = distinct !{!6081, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!6082 = distinct !{!6082, !6081, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!6083 = distinct !{!6083, !"_ZNSt7__cxx119to_stringEi"}
!6084 = distinct !{!6084, !6083, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!6085 = distinct !{!6085, !"_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code"}
!6086 = distinct !{!6086, !6085, !"_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code: argument 0"}
!6087 = !{!6076}
!6088 = !{!6078}
!6089 = !{!6080}
!6090 = !{!6080, !6078, !6076}
!6091 = !{!6078, !6076}
!6092 = !{!6082, !6078, !6076}
!6093 = !{!6084}
!6094 = !{!6086}
!6095 = distinct !{!6095, !"_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!6096 = distinct !{!6096, !6095, !"_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!6097 = distinct !{!6097, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!6098 = distinct !{!6098, !6097, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!6099 = distinct !{!6099, !6097, !"_ZSt19__relocate_object_aISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!6100 = distinct !{!6100, !"LVerDomain"}
!6101 = distinct !{!6101, !6100}
!6102 = distinct !{!6102, !6100}
!6103 = distinct !{!6103, !237, !634, !635}
!6104 = distinct !{!6104, !237, !634}
!6105 = distinct !{null, null}
!6106 = !{!6096}
!6107 = !{!6098}
!6108 = !{!6099}
!6109 = !{!6099, !6101}
!6110 = !{!6098, !6102}
!6111 = distinct !{!6111, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code"}
!6112 = distinct !{!6112, !6111, !"_ZN4asio2ip12make_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_code: argument 0"}
!6113 = distinct !{!6113, !"_ZN4asio2ip12make_addressEPKcRSt10error_code"}
!6114 = distinct !{!6114, !6113, !"_ZN4asio2ip12make_addressEPKcRSt10error_code: argument 0"}
!6115 = distinct !{!6115, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code"}
!6116 = distinct !{!6116, !6115, !"_ZN4asio2ip15make_address_v6EPKcRSt10error_code: argument 0"}
!6117 = distinct !{!6117, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code"}
!6118 = distinct !{!6118, !6117, !"_ZN4asio2ip15make_address_v4EPKcRSt10error_code: argument 0"}
!6119 = !{!6112}
!6120 = !{!6114}
!6121 = !{!6116}
!6122 = !{!6116, !6114, !6112}
!6123 = !{!6114, !6112}
!6124 = !{!6118, !6114, !6112}
!6125 = distinct !{!6125, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev"}
!6126 = distinct !{!6126, !6125, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev: argument 0"}
!6127 = distinct !{!6127, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev"}
!6128 = distinct !{!6128, !6127, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev: argument 0"}
!6129 = distinct !{!6129, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev"}
!6130 = distinct !{!6130, !6129, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE9host_nameB5cxx11Ev: argument 0"}
!6131 = distinct !{!6131, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev"}
!6132 = distinct !{!6132, !6131, !"_ZNK4asio2ip20basic_resolver_queryINS0_3tcpEE12service_nameB5cxx11Ev: argument 0"}
!6133 = !{!6126}
!6134 = !{!6128}
!6135 = !{!6130}
!6136 = !{!6132}
!6137 = distinct !{!6137, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_"}
!6138 = distinct !{!6138, !6137, !"_ZSt11make_sharedINSt13__future_base13_State_baseV2EJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!6139 = distinct !{!6139, !"_ZNSt7promiseIvE10get_futureEv"}
!6140 = distinct !{!6140, !6139, !"_ZNSt7promiseIvE10get_futureEv: argument 0"}
!6141 = !{!6138}
!6142 = !{!6140}
!6143 = distinct !{null, null}
!6144 = distinct !{!6144, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!6145 = distinct !{!6145, !6144, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!6146 = distinct !{!6146, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_"}
!6147 = distinct !{!6147, !6146, !"_ZNK14asio_prefer_fn4implclIRKN4asio10io_context19basic_executor_typeISaIvELm0EEERKNS2_9execution6detail8blocking10possibly_tILi0EEENS9_11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_T1_EEE8overloadLNS_13overload_typeE5EENS_11call_traitsIS0_SJ_SM_vvvvvvvE11result_typeEE4typeEOSJ_OSK_OSL_: argument 0"}
!6148 = distinct !{!6148, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_"}
!6149 = distinct !{!6149, !6148, !"_ZNK14asio_prefer_fn4implclIN4asio10io_context19basic_executor_typeISaIvELm0EEENS2_9execution11allocator_tIS5_EEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE1EENS_11call_traitsIS0_SB_SD_vvvvvvvE11result_typeEE4typeEOSB_OSC_: argument 0"}
!6150 = distinct !{!6150, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE"}
!6151 = distinct !{!6151, !6150, !"_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7requireIS2_EENS1_IT_Lm0EEENS_9execution11allocator_tIS5_EE: argument 0"}
!6152 = distinct !{!6152, !"_ZN4asio6detail12bind_handlerIZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_EENS0_7binder0INSt5decayIT_E4typeEEEOS7_"}
!6153 = distinct !{!6153, !6152, !"_ZN4asio6detail12bind_handlerIZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_EENS0_7binder0INSt5decayIT_E4typeEEEOS7_: argument 0"}
!6154 = !{!6145}
!6155 = !{!6151, !6149, !6147}
!6156 = !{!6153}
!6157 = distinct !{!6157, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!6158 = distinct !{!6158, !6157, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!6159 = distinct !{!6159, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv"}
!6160 = distinct !{!6160, !6159, !"_ZNK7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE17get_asio_executorEv: argument 0"}
!6161 = distinct !{!6161, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!6162 = distinct !{!6162, !6161, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!6163 = distinct !{!6163, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!6164 = distinct !{!6164, !6163, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!6165 = distinct !{!6165, !"_ZNK4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEE14local_endpointERSt10error_code"}
!6166 = distinct !{!6166, !6165, !"_ZNK4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEE14local_endpointERSt10error_code: argument 0"}
!6167 = distinct !{!6167, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!6168 = distinct !{!6168, !6167, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!6169 = !{!6158}
!6170 = !{!6160}
!6171 = !{!6162}
!6172 = !{!6164}
!6173 = !{!6166}
!6174 = !{!6168}
!6175 = distinct !{!6175, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE17get_return_objectEv"}
!6176 = distinct !{!6176, !6175, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE17get_return_objectEv: argument 0"}
!6177 = distinct !{!6177, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE39get_return_object_on_allocation_failureEv"}
!6178 = distinct !{!6178, !6177, !"_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE39get_return_object_on_allocation_failureEv: argument 0"}
!6179 = !{!6176}
!6180 = !{!6178}
!6181 = !{ptr @_ZN7coro_io20server_acceptor_baseD2Ev}
!6182 = !{!"_ZTSZN7coro_io19tcp_server_acceptor9close_nowEvEUlvE_", !2147, i64 0}
!6183 = !{!6182, !2147, i64 0}
!6184 = !{!"_ZTSN4asio6detail13socket_option7booleanILi1ELi2EEE", !218, i64 0}
!6185 = !{!6184, !218, i64 0}
!6186 = !{!"_ZTSN4asio6detail13socket_option7booleanILi41ELi26EEE", !218, i64 0}
!6187 = !{!6186, !218, i64 0}
!6188 = distinct !{!6188, !"_ZZZN7coro_io12async_acceptERN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEERNS0_19basic_stream_socketIS3_S4_EEENKUlOT_E_clIZZNS_8async_ioISt10error_codeSC_S5_EEN12async_simple4coro4LazyISA_EET0_RT1_ENKUlSA_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSA_EUlDpOT_E_EEDaSB_ENKUlvE_clEv"}
!6189 = distinct !{!6189, !6188, !"_ZZZN7coro_io12async_acceptERN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEERNS0_19basic_stream_socketIS3_S4_EEENKUlOT_E_clIZZNS_8async_ioISt10error_codeSC_S5_EEN12async_simple4coro4LazyISA_EET0_RT1_ENKUlSA_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSA_EUlDpOT_E_EEDaSB_ENKUlvE_clEv: argument 0"}
!6190 = !{!6189}
!6191 = distinct !{null}
!6192 = !{!2175, !1587, i64 80}
!6193 = distinct !{!6193, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_"}
!6194 = distinct !{!6194, !6193, !"_ZNK14asio_prefer_fn4implclIRN4asio15any_io_executorERKNS2_9execution6detail8blocking10possibly_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SD_SF_vvvvvvvE11result_typeEE4typeEOSD_OSE_: argument 0"}
!6195 = distinct !{!6195, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE"}
!6196 = distinct !{!6196, !6195, !"_ZNK4asio15any_io_executor6preferINS_9execution6detail8blocking10possibly_tILi0EEEEES0_RKT_NS_10constraintIXsr6traits13prefer_memberIRKNS2_12any_executorIJNS2_12context_as_tIRNS_17execution_contextEEENS4_7never_tILi0EEENS2_11prefer_onlyIS6_EENSI_INS3_16outstanding_work9tracked_tILi0EEEEENSI_INSK_11untracked_tILi0EEEEENSI_INS3_12relationship6fork_tILi0EEEEENSI_INSR_14continuation_tILi0EEEEEEEES9_EE8is_validEiE4typeE: argument 0"}
!6197 = distinct !{!6197, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE"}
!6198 = distinct !{!6198, !6197, !"_ZNK4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE6preferISC_EESS_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISU_EE5valueEvE4typeE: argument 0"}
!6199 = !{!6194}
!6200 = !{!6196}
!6201 = !{!6198, !6196, !6194}
!6202 = !{!6196, !6194}
!6203 = distinct !{null, null, null, null}
!6204 = distinct !{null}
!6205 = !{!2182, !838, i64 0}
!6206 = distinct !{!6206, !237}
!6207 = distinct !{ptr @_ZZZN7coro_io8async_ioISt10error_codeZNS_12async_acceptERN4asio21basic_socket_acceptorINS2_2ip3tcpENS2_15any_io_executorEEERNS2_19basic_stream_socketIS5_S6_EEEUlOT_E_S7_EEN12async_simple4coro4LazyISC_EET0_RT1_ENUlSC_E0_clINS_21callback_awaitor_baseIS1_NS_16callback_awaitorIS1_EEE15awaitor_handlerEEEDaSC_ENUlNSF_10SignalTypeEPNSF_6SignalEE_D2Ev, ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6208 = !{!"_ZTSZN7coro_io8async_ioISt10error_codeZNS_12async_acceptERN4asio21basic_socket_acceptorINS2_2ip3tcpENS2_15any_io_executorEEERNS2_19basic_stream_socketIS5_S6_EEEUlOT_E_S7_EEN12async_simple4coro4LazyISC_EET0_RT1_EUlSC_E0_", !1321, i64 0, !2167, i64 8, !825, i64 16, !1322, i64 24, !1323, i64 32, !221, i64 40}
!6209 = !{!6208, !1321, i64 0}
!6210 = !{!6208, !1322, i64 24}
!6211 = !{!6208, !2167, i64 8}
!6212 = !{!6208, !825, i64 16}
!6213 = !{!6208, !1323, i64 32}
!6214 = !{!6208, !221, i64 40}
!6215 = distinct !{!6215, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12async_acceptERN4asio21basic_socket_acceptorINSB_2ip3tcpENSB_15any_io_executorEEERNSB_19basic_stream_socketISE_SF_EEEUlOT_E_SG_EENS0_4coro4LazyISL_EET0_RT1_ENUlSL_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSL_EUlS3_S5_E_EENSt8__detail9_MakeUniqISL_E15__single_objectEDpOT0_"}
!6216 = distinct !{!6216, !6215, !"_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZZN7coro_io8async_ioISt10error_codeZNS8_12async_acceptERN4asio21basic_socket_acceptorINSB_2ip3tcpENSB_15any_io_executorEEERNSB_19basic_stream_socketISE_SF_EEEUlOT_E_SG_EENS0_4coro4LazyISL_EET0_RT1_ENUlSL_E0_clINS8_21callback_awaitor_baseISA_NS8_16callback_awaitorISA_EEE15awaitor_handlerEEEDaSL_EUlS3_S5_E_EENSt8__detail9_MakeUniqISL_E15__single_objectEDpOT0_: argument 0"}
end_hunk_1
