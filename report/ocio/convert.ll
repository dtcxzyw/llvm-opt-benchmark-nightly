inline.NumInlined: 292
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4YAML7convertIbE6decodeERKNS_4NodeERb:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 4
  %i.ep = add nsw i64 %.052.i.i.i.i.i34.i, -1
  %i.eq = icmp sgt i64 %.052.i.i.i.i.i34.i, 1
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i33.i, label %._crit_edge.i.i.i.i.i26.i, !llvm.loop !56

._crit_edge.i.i.i.i.i26.i:                        ; preds = %bb.ax, %bb.at
  %.sroa.032.0.lcssa.i.i.i.i.i27.i = phi ptr [ %.pre.i, %bb.at ], [ %scevgep44.i, %bb.ax ] ; 6 uses
  %.pre-phi.i.i.i.i.i28.i = ptrtoint ptr %.sroa.032.0.lcssa.i.i.i.i.i27.i to i64
  %i.er = sub i64 %i.cm, %.pre-phi.i.i.i.i.i28.i
  switch i64 %i.er, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i [
    i64 3, label %bb.ay
    i64 2, label %bb.ba
    i64 1, label %bb.bc
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i26.i
  %i.es = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i27.i, align 1, !tbaa !55
  %i.et = add i8 %i.es, -65
  %i.eu = icmp ult i8 %i.et, 26
  br i1 %i.eu, label %bb.az, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

bb.az:                                            ; preds = %bb.ay
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i27.i, i64 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i.i.i26.i
  %.sroa.032.1.i.i.i.i.i32.i = phi ptr [ %i.ev, %bb.az ], [ %.sroa.032.0.lcssa.i.i.i.i.i27.i, %._crit_edge.i.i.i.i.i26.i ] ; 3 uses
  %i.ew = load i8, ptr %.sroa.032.1.i.i.i.i.i32.i, align 1, !tbaa !55
  %i.ex = add i8 %i.ew, -65
  %i.ey = icmp ult i8 %i.ex, 26
  br i1 %i.ey, label %bb.bb, label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

bb.bb:                                            ; preds = %bb.ba
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i32.i, i64 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i.i26.i
  %.sroa.032.2.i.i.i.i.i29.i = phi ptr [ %i.ez, %bb.bb ], [ %.sroa.032.0.lcssa.i.i.i.i.i27.i, %._crit_edge.i.i.i.i.i26.i ] ; 2 uses
  %i.fa = load i8, ptr %.sroa.032.2.i.i.i.i.i29.i, align 1, !tbaa !55
  %i.fb = add i8 %i.fa, -65
  %i.fc = icmp ult i8 %i.fb, 26
  %spec.select.i.i.i.i.i30.i = select i1 %i.fc, ptr %i.cl, ptr %.sroa.032.2.i.i.i.i.i29.i
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit: ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 1
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit189: ; preds = %bb.av
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 2
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit191: ; preds = %bb.aw
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i35.i, i64 3
  br label %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i

_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i: ; preds = %.lr.ph.i.i.i.i.i33.i, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit189, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit191, %bb.bc, %bb.ba, %bb.ay, %._crit_edge.i.i.i.i.i26.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i31.i = phi ptr [ %.sroa.032.1.i.i.i.i.i32.i, %bb.ba ], [ %spec.select.i.i.i.i.i30.i, %bb.bc ], [ %i.cl, %._crit_edge.i.i.i.i.i26.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i27.i, %bb.ay ], [ %i.ff, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit191 ], [ %i.fd, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit ], [ %i.fe, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i.loopexit.split.loop.exit189 ], [ %.sroa.032.051.i.i.i.i.i35.i, %.lr.ph.i.i.i.i.i33.i ]
  %i.fg = icmp eq ptr %i.cl, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i31.i
  br label %.thread.i

.thread.i:                                        ; preds = %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i, %.loopexit.i, %._crit_edge.i.i.i.i.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.fh = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i ], [ true, %.loopexit.i ], [ %i.fg, %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit39.i ], [ true, %._crit_edge.i.i.i.i.i12.i ]
  %i.fi = icmp eq ptr %.pre.i, %i.bz
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.thread.i
  %i.fj = load i64, ptr %i.bz, align 8, !tbaa !55
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.fk) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %i.fh, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_110IsEntirelyIPFbcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit.i, %._crit_edge.i.i.i.i.i.i, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  br label %bb.bn

bb.bd:                                            ; preds = %bb.h
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.be:                                            ; preds = %bb.j
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.bf:                                            ; preds = %bb.l
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60

bb.bg:                                            ; preds = %bb.n
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.bh:                                            ; preds = %bb.o
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 192), align 16, !tbaa !63 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 208)
  br i1 %i.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  %i.fw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 208), align 16, !tbaa !55
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.bh, %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.bg ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ft, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60

bb.bi:                                            ; preds = %bb.m
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 128), align 16, !tbaa !63 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 144)
  br i1 %i.ga, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.bi
  %i.gb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 144), align 16, !tbaa !55
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %bb.bi, %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.bf ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.fy, %bb.bi ]
  %.126 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 128), %bb.bf ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 192), %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 128), %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 128), %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.bj:                                            ; preds = %bb.k
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 64), align 16, !tbaa !63 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 80)
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.bj
  %i.gg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 80), align 16, !tbaa !55
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.bk:                                            ; preds = %bb.i
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.gj = load ptr, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, align 16, !tbaa !63 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 16)
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.bk
  %i.gl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 16), align 16, !tbaa !55
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %bb.bk, %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.fp, %bb.bd ], [ %i.gi, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, %bb.be
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fq, %bb.be ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60 ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.gd, %bb.bj ]
  %.328 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 64), %bb.be ], [ %.126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 64), %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 64), %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.bl
  %i.gn = phi ptr [ %.328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.go, %bb.bl ]
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -64 ; 3 uses
  call fastcc void @"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.go) #15
  %i.gp = icmp eq ptr %i.go, @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names
  br i1 %i.gp, label %.loopexit, label %bb.bl

.loopexit:                                        ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread
  %.pn.pn.pn.pn.pn.pn.pn108 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ], [ %.pn.pn.pn.pn.pn, %bb.bl ]
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names) #15
  br label %common.resume

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.029.add = add nuw nsw i64 %.029.idx134, 64    ; 2 uses
  %.not53 = icmp eq i64 %.029.add, 256
  br i1 %.not53, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %.preheader, %bb.bm
  %.029.idx134 = phi i64 [ 0, %.preheader ], [ %.029.add, %bb.bm ] ; 2 uses
  %.029.ptr135 = getelementptr inbounds nuw i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 %.029.idx134 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.gq = load i8, ptr %0, align 8, !tbaa !8, !range !22, !noundef !23
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gs = call ptr @__cxa_allocate_exception(i64 64) #15 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %i.gt)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @__cxa_throw(ptr nonnull %i.gs, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #16
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gs) #15
  br label %common.resume

bb.br:                                            ; preds = %bb.bn
  %i.gv = load ptr, ptr %i.i, align 8, !tbaa !24  ; 2 uses
  %.not.i68 = icmp eq ptr %i.gv, null
  br i1 %.not.i68, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !25
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 64
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit69

bb.bt:                                            ; preds = %bb.br
  %i.gz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit69

_ZNK4YAML4Node6ScalarB5cxx11Ev.exit69:            ; preds = %bb.bs, %bb.bt
  %i.ha = phi ptr [ %i.gy, %bb.bs ], [ %i.gz, %bb.bt ] ; 2 uses
  %.val57 = load ptr, ptr %i.ha, align 8, !tbaa !63 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %.val58 = load i64, ptr %i.hb, align 8, !tbaa !54 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  store ptr %i.fl, ptr %11, align 8, !tbaa !61, !alias.scope !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !64
  store i64 %.val58, ptr %i.b, align 8, !tbaa !62, !noalias !64
  %i.hc = icmp ugt i64 %.val58, 15
  br i1 %i.hc, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit69
  %i.hd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.hd, ptr %11, align 8, !tbaa !63, !alias.scope !64
  %i.he = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !64
  store i64 %i.he, ptr %i.fl, align 8, !tbaa !55, !alias.scope !64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit69
  %i.hf = phi ptr [ %i.hd, %.noexc.i.i ], [ %i.fl, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit69 ] ; 2 uses
  switch i64 %.val58, label %bb.bv [
    i64 1, label %bb.bu
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bu:                                            ; preds = %._crit_edge.i.i.i
  %i.hg = load i8, ptr %.val57, align 1, !tbaa !55, !noalias !64
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr readonly align 1 %.val57, i64 %.val58, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bv, %bb.bu, %._crit_edge.i.i.i
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !64 ; 2 uses
  store i64 %i.hh, ptr %i.fm, align 8, !tbaa !54, !alias.scope !64
  %i.hi = load ptr, ptr %11, align 8, !tbaa !63, !alias.scope !64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !64
  %i.hk = load ptr, ptr %11, align 8, !tbaa !63, !alias.scope !64 ; 6 uses
  %i.hl = load i64, ptr %i.fm, align 8, !tbaa !54, !alias.scope !64 ; 9 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hl
  %.not6.i.i = icmp samesign eq i64 %i.hl, 0
  br i1 %.not6.i.i, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %iter.check232

iter.check232:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %min.iters.check218 = icmp ult i64 %i.hl, 8
  br i1 %min.iters.check218, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check219

vector.main.loop.iter.check219:                   ; preds = %iter.check232
  %min.iters.check220 = icmp ult i64 %i.hl, 32
  br i1 %min.iters.check220, label %vec.epilog.ph236, label %vector.ph221

vector.ph221:                                     ; preds = %vector.main.loop.iter.check219
  %i.hn = and i64 %i.hl, 24
  %n.vec222 = and i64 %i.hl, -32                  ; 4 uses
  %i.ho = getelementptr i8, ptr %i.hk, i64 %n.vec222
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next228, %vector.body223 ] ; 2 uses
  %next.gep225 = getelementptr i8, ptr %i.hk, i64 %index224 ; 3 uses
  %i.hp = getelementptr i8, ptr %next.gep225, i64 16 ; 2 uses
  %wide.load226 = load <16 x i8>, ptr %next.gep225, align 1, !tbaa !55 ; 3 uses
  %wide.load227 = load <16 x i8>, ptr %i.hp, align 1, !tbaa !55 ; 3 uses
  %i.hq = add <16 x i8> %wide.load226, splat (i8 -65)
  %i.hr = add <16 x i8> %wide.load227, splat (i8 -65)
  %i.hs = icmp ult <16 x i8> %i.hq, splat (i8 26)
  %i.ht = icmp ult <16 x i8> %i.hr, splat (i8 26)
  %i.hu = add nuw nsw <16 x i8> %wide.load226, splat (i8 32)
  %i.hv = add nuw nsw <16 x i8> %wide.load227, splat (i8 32)
  %i.hw = select <16 x i1> %i.hs, <16 x i8> %i.hu, <16 x i8> %wide.load226
  %i.hx = select <16 x i1> %i.ht, <16 x i8> %i.hv, <16 x i8> %wide.load227
  store <16 x i8> %i.hw, ptr %next.gep225, align 1, !tbaa !55
  store <16 x i8> %i.hx, ptr %i.hp, align 1, !tbaa !55
  %index.next228 = add nuw i64 %index224, 32      ; 2 uses
  %i.hy = icmp eq i64 %index.next228, %n.vec222
  br i1 %i.hy, label %middle.block229, label %vector.body223, !llvm.loop !67

middle.block229:                                  ; preds = %vector.body223
  %cmp.n230 = icmp eq i64 %i.hl, %n.vec222
  br i1 %cmp.n230, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block229
  %min.epilog.iters.check235 = icmp eq i64 %i.hn, 0
  br i1 %min.epilog.iters.check235, label %.lr.ph.i.i.preheader, label %vec.epilog.ph236, !prof !70

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check219, %vec.epilog.iter.check234
  %vec.epilog.resume.val231 = phi i64 [ %n.vec222, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check219 ]
  %n.vec237 = and i64 %i.hl, -8                   ; 3 uses
  %i.hz = getelementptr i8, ptr %i.hk, i64 %n.vec237
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph236
  %index239 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph236 ], [ %index.next242, %vec.epilog.vector.body238 ] ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.hk, i64 %index239 ; 2 uses
  %wide.load241 = load <8 x i8>, ptr %next.gep240, align 1, !tbaa !55 ; 3 uses
  %i.ia = add <8 x i8> %wide.load241, splat (i8 -65)
  %i.ib = icmp ult <8 x i8> %i.ia, splat (i8 26)
  %i.ic = add nuw nsw <8 x i8> %wide.load241, splat (i8 32)
  %i.id = select <8 x i1> %i.ib, <8 x i8> %i.ic, <8 x i8> %wide.load241
  store <8 x i8> %i.id, ptr %next.gep240, align 1, !tbaa !55
  %index.next242 = add nuw i64 %index239, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next242, %n.vec237
  br i1 %i.ie, label %vec.epilog.middle.block243, label %vec.epilog.vector.body238, !llvm.loop !71

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body238
  %cmp.n244 = icmp eq i64 %i.hl, %n.vec237
  br i1 %cmp.n244, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check232, %vec.epilog.iter.check234, %vec.epilog.middle.block243
  %.sroa.0.08.i.i.ph = phi ptr [ %i.hk, %iter.check232 ], [ %i.ho, %vec.epilog.iter.check234 ], [ %i.hz, %vec.epilog.middle.block243 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ik, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.if = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !55 ; 3 uses
  %i.ig = add i8 %i.if, -65
  %i.ih = icmp ult i8 %i.ig, 26
  %i.ii = add nuw nsw i8 %i.if, 32
  %i.ij = select i1 %i.ih, i8 %i.ii, i8 %i.if
  store i8 %i.ij, ptr %.sroa.0.08.i.i, align 1, !tbaa !55
  %i.ik = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.ik, %i.hm
  br i1 %.not.i.i70, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !72

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block243, %middle.block229
  %.pre = load i64, ptr %i.fm, align 8, !tbaa !54 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !54
  %i.in = icmp eq i64 %i.im, %.pre
  br i1 %i.in, label %bb.bw, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.io = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !54
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %.thread, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

.thread:                                          ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.pre149170 = load ptr, ptr %11, align 8, !tbaa !63
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre148 = load ptr, ptr %11, align 8, !tbaa !63
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.bw:                                            ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ir = icmp eq i64 %.pre, 0
  %.pre149 = load ptr, ptr %11, align 8, !tbaa !63 ; 3 uses
  br i1 %i.ir, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.is = load ptr, ptr %.029.ptr135, align 16, !tbaa !63
  %bcmp.i = call i32 @bcmp(ptr %i.is, ptr %.pre149, i64 %.pre)
  %i.it = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.thread, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.bw, %bb.bx
  %i.iu = phi ptr [ %.pre148, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre149, %bb.bx ], [ %.pre149, %bb.bw ], [ %.pre149170, %.thread ] ; 2 uses
  %i.iv = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.it, %bb.bx ], [ true, %bb.bw ], [ true, %.thread ]
  %i.iw = icmp eq ptr %i.iu, %i.fl
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ix = load i64, ptr %i.fl, align 8, !tbaa !55
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br i1 %i.iv, label %.critedge.sink.split, label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.iz = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ja = load i8, ptr %0, align 8, !tbaa !8, !range !22, !noundef !23
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jc = call ptr @__cxa_allocate_exception(i64 64) #15 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.jc, ptr noundef nonnull align 8 dereferenceable(32) %i.jd)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @__cxa_throw(ptr nonnull %i.jc, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #16
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jc) #15
  br label %common.resume

bb.cc:                                            ; preds = %bb.by
  %i.jf = load ptr, ptr %i.i, align 8, !tbaa !24  ; 2 uses
  %.not.i74 = icmp eq ptr %i.jf, null
  br i1 %.not.i74, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !25
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !28
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75

bb.ce:                                            ; preds = %bb.cc
  %i.jj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
  br label %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75

_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75:            ; preds = %bb.cd, %bb.ce
  %i.jk = phi ptr [ %i.ji, %bb.cd ], [ %i.jj, %bb.ce ] ; 2 uses
  %.val55 = load ptr, ptr %i.jk, align 8, !tbaa !63 ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 8
  %.val56 = load i64, ptr %i.jl, align 8, !tbaa !54 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  store ptr %i.fn, ptr %12, align 8, !tbaa !61, !alias.scope !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !73
  store i64 %.val56, ptr %i.a, align 8, !tbaa !62, !noalias !73
  %i.jm = icmp ugt i64 %.val56, 15
  br i1 %i.jm, label %.noexc.i.i82, label %._crit_edge.i.i.i76

.noexc.i.i82:                                     ; preds = %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75
  %i.jn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.jn, ptr %12, align 8, !tbaa !63, !alias.scope !73
  %i.jo = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !73
  store i64 %i.jo, ptr %i.fn, align 8, !tbaa !55, !alias.scope !73
  br label %._crit_edge.i.i.i76

._crit_edge.i.i.i76:                              ; preds = %.noexc.i.i82, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75
  %i.jp = phi ptr [ %i.jn, %.noexc.i.i82 ], [ %i.fn, %_ZNK4YAML4Node6ScalarB5cxx11Ev.exit75 ] ; 2 uses
  switch i64 %.val56, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i76
  %i.jq = load i8, ptr %.val55, align 1, !tbaa !55, !noalias !73
  store i8 %i.jq, ptr %i.jp, align 1, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77

bb.cg:                                            ; preds = %._crit_edge.i.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jp, ptr readonly align 1 %.val55, i64 %.val56, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77: ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i76
  %i.jr = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !73 ; 2 uses
  store i64 %i.jr, ptr %i.fo, align 8, !tbaa !54, !alias.scope !73
  %i.js = load ptr, ptr %12, align 8, !tbaa !63, !alias.scope !73
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jr
  store i8 0, ptr %i.jt, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !73
  %i.ju = load ptr, ptr %12, align 8, !tbaa !63, !alias.scope !73 ; 6 uses
  %i.jv = load i64, ptr %i.fo, align 8, !tbaa !54, !alias.scope !73 ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jv
  %.not6.i.i78 = icmp samesign eq i64 %i.jv, 0
  br i1 %.not6.i.i78, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  %min.iters.check = icmp ult i64 %i.jv, 8
  br i1 %min.iters.check, label %.lr.ph.i.i79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check209 = icmp ult i64 %i.jv, 32
  br i1 %min.iters.check209, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jx = and i64 %i.jv, 24
  %n.vec = and i64 %i.jv, -32                     ; 4 uses
  %i.jy = getelementptr i8, ptr %i.ju, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ju, i64 %index ; 3 uses
  %i.jz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !55 ; 3 uses
  %wide.load210 = load <16 x i8>, ptr %i.jz, align 1, !tbaa !55 ; 3 uses
  %i.ka = add <16 x i8> %wide.load, splat (i8 -65)
  %i.kb = add <16 x i8> %wide.load210, splat (i8 -65)
  %i.kc = icmp ult <16 x i8> %i.ka, splat (i8 26)
  %i.kd = icmp ult <16 x i8> %i.kb, splat (i8 26)
  %i.ke = add nuw nsw <16 x i8> %wide.load, splat (i8 32)
  %i.kf = add nuw nsw <16 x i8> %wide.load210, splat (i8 32)
  %i.kg = select <16 x i1> %i.kc, <16 x i8> %i.ke, <16 x i8> %wide.load
  %i.kh = select <16 x i1> %i.kd, <16 x i8> %i.kf, <16 x i8> %wide.load210
  store <16 x i8> %i.kg, ptr %next.gep, align 1, !tbaa !55
  store <16 x i8> %i.kh, ptr %i.jz, align 1, !tbaa !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jv, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i79.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec211 = and i64 %i.jv, -8                   ; 3 uses
  %i.kj = getelementptr i8, ptr %i.ju, i64 %n.vec211
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index212 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next215, %vec.epilog.vector.body ] ; 2 uses
  %next.gep213 = getelementptr i8, ptr %i.ju, i64 %index212 ; 2 uses
  %wide.load214 = load <8 x i8>, ptr %next.gep213, align 1, !tbaa !55 ; 3 uses
  %i.kk = add <8 x i8> %wide.load214, splat (i8 -65)
  %i.kl = icmp ult <8 x i8> %i.kk, splat (i8 26)
  %i.km = add nuw nsw <8 x i8> %wide.load214, splat (i8 32)
  %i.kn = select <8 x i1> %i.kl, <8 x i8> %i.km, <8 x i8> %wide.load214
  store <8 x i8> %i.kn, ptr %next.gep213, align 1, !tbaa !55
  %index.next215 = add nuw i64 %index212, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next215, %n.vec211
  br i1 %i.ko, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n216 = icmp eq i64 %i.jv, %n.vec211
  br i1 %cmp.n216, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %.lr.ph.i.i79.preheader

.lr.ph.i.i79.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i80.ph = phi ptr [ %i.ju, %iter.check ], [ %i.jy, %vec.epilog.iter.check ], [ %i.kj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %.lr.ph.i.i79.preheader, %.lr.ph.i.i79
  %.sroa.0.08.i.i80 = phi ptr [ %i.ku, %.lr.ph.i.i79 ], [ %.sroa.0.08.i.i80.ph, %.lr.ph.i.i79.preheader ] ; 3 uses
  %i.kp = load i8, ptr %.sroa.0.08.i.i80, align 1, !tbaa !55 ; 3 uses
  %i.kq = add i8 %i.kp, -65
  %i.kr = icmp ult i8 %i.kq, 26
  %i.ks = add nuw nsw i8 %i.kp, 32
  %i.kt = select i1 %i.kr, i8 %i.ks, i8 %i.kp
  store i8 %i.kt, ptr %.sroa.0.08.i.i80, align 1, !tbaa !55
  %i.ku = getelementptr i8, ptr %.sroa.0.08.i.i80, i64 1 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ku, %i.jw
  br i1 %.not.i.i81, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83, label %.lr.ph.i.i79, !llvm.loop !78

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83: ; preds = %.lr.ph.i.i79, %vec.epilog.middle.block, %middle.block
  %.pre150 = load i64, ptr %i.fo, align 8, !tbaa !54 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 40
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !54
  %i.kx = icmp eq i64 %i.kw, %.pre150
  br i1 %i.kx, label %bb.ch, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i77
  %i.ky = getelementptr inbounds nuw i8, ptr %.029.ptr135, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !54
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %.thread171, label %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge

.thread171:                                       ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread
  %.pre152172 = load ptr, ptr %12, align 8, !tbaa !63
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85

_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge: ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83.thread, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83
  %.pre151 = load ptr, ptr %12, align 8, !tbaa !63
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85

bb.ch:                                            ; preds = %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83
  %i.lb = icmp eq i64 %.pre150, 0
  %.pre152 = load ptr, ptr %12, align 8, !tbaa !63 ; 3 uses
  br i1 %i.lb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lc = load ptr, ptr %i.iz, align 16, !tbaa !63
  %bcmp.i84 = call i32 @bcmp(ptr %i.lc, ptr %.pre152, i64 %.pre150)
  %i.ld = icmp eq i32 %bcmp.i84, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85: ; preds = %.thread171, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge, %bb.ch, %bb.ci
  %i.le = phi ptr [ %.pre151, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge ], [ %.pre152, %bb.ci ], [ %.pre152, %bb.ch ], [ %.pre152172, %.thread171 ] ; 2 uses
  %i.lf = phi i1 [ false, %_ZN12_GLOBAL__N_17tolowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit83._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85_crit_edge ], [ %i.ld, %bb.ci ], [ true, %bb.ch ], [ true, %.thread171 ]
  %i.lg = icmp eq ptr %i.le, %i.fn
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85
  %i.lh = load i64, ptr %i.fn, align 8, !tbaa !55
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br i1 %i.lf, label %.critedge.sink.split, label %bb.bm

.critedge.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.sink = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  store i8 %.sink, ptr %1, align 1, !tbaa !79
  br label %.critedge

.critedge:                                        ; preds = %bb.bm, %.critedge.sink.split, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNK4YAML4Node8IsScalarEv.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ true, %.critedge.sink.split ], [ false, %_ZNK4YAML4Node8IsScalarEv.exit ], [ false, %bb.e ], [ false, %bb.bm ]
  ret i1 %.3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !61
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !63
  %i.g = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.g, ptr %i.b, align 8, !tbaa !55
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.i, ptr %i.h, align 1, !tbaa !55
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !54
  %i.l = load ptr, ptr %0, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !55
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #4 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 224), align 16, !tbaa !63 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 240)
  br i1 %i.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 240), align 16, !tbaa !55
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 192), align 16, !tbaa !63 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 208)
  br i1 %i.f, label %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 208), align 16, !tbaa !55
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #17
  br label %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit"

"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 160), align 16, !tbaa !63 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 176)
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit"
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 176), align 16, !tbaa !55
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1: ; preds = %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 128), align 16, !tbaa !63 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 144)
  br i1 %i.n, label %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.1", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 144), align 16, !tbaa !55
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #17
  br label %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.1"

"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.1": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 96), align 16, !tbaa !63 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 112)
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.1"
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 112), align 16, !tbaa !55
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2: ; preds = %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.1", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 64), align 16, !tbaa !63 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 80)
  br i1 %i.v, label %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.2", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 80), align 16, !tbaa !55
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #17
  br label %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.2"

"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.2": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 32), align 16, !tbaa !63 ; 2 uses
  %i.z = icmp eq ptr %i.y, getelementptr inbounds nuw (i8, ptr @_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbE5names, i64 48)
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %"_ZZN4YAML7convertIbE6decodeERKNS_4NodeERbEN3$_0D2Ev.exit.2"
end_hunk_0
