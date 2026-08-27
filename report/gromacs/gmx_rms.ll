Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_rms?download=true
inline.NumInlined: 401
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_Z7gmx_rmsiPPc:bb.a

bb.ik:                                            ; preds = %bb.ij
  store <2 x double> splat (double 1.000000e+00), ptr %19, align 16, !tbaa !156
  %.sroa.111198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store double 1.000000e+00, ptr %.sroa.111198.0..sroa_idx, align 16, !tbaa !156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  invoke void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi(ptr noundef %i.blr, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %.1673, i32 noundef %.2, ptr noundef %i.aye, ptr noundef %i.ayg, ptr noundef %.11406, float noundef %.6785, float noundef %.8794, ptr noundef nonnull byval(%struct.t_rgb) align 8 %19, ptr noundef nonnull byval(%struct.t_rgb) align 8 %20, ptr noundef nonnull @_ZZ7gmx_rmsiPPcE7nlevels)
          to label %bb.il unwind label %bb.iv

bb.il:                                            ; preds = %bb.ik
  %i.blw = load ptr, ptr %18, align 8, !tbaa !40  ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bly = icmp eq ptr %i.blw, %i.blx
  br i1 %i.bly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.il
  %i.blz = load i64, ptr %i.blx, align 8, !tbaa !17
  %i.bma = add i64 %i.blz, 1
  call void @_ZdlPvm(ptr noundef %i.blw, i64 noundef %i.bma) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.bmb = load ptr, ptr %17, align 8, !tbaa !40  ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bmd = icmp eq ptr %i.bmb, %i.bmc
  br i1 %i.bmd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bme = load i64, ptr %i.bmc, align 8, !tbaa !17
  %i.bmf = add i64 %i.bme, 1
  call void @_ZdlPvm(ptr noundef %i.bmb, i64 noundef %i.bmf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.bmg = load ptr, ptr %15, align 8, !tbaa !40  ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bmi = icmp eq ptr %i.bmg, %i.bmh
  br i1 %i.bmi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987
  %i.bmj = load i64, ptr %i.bmh, align 8, !tbaa !17
  %i.bmk = add i64 %i.bmj, 1
  call void @_ZdlPvm(ptr noundef %i.bmg, i64 noundef %i.bmk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.bml = load ptr, ptr %13, align 8, !tbaa !40  ; 2 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bmn = icmp eq ptr %i.bml, %i.bmm
  br i1 %i.bmn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990
  %i.bmo = load i64, ptr %i.bmm, align 8, !tbaa !17
  %i.bmp = add i64 %i.bmo, 1
  call void @_ZdlPvm(ptr noundef %i.bml, i64 noundef %i.bmp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bmq = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.91, i32 noundef 11, ptr noundef nonnull %4)
          to label %bb.im unwind label %.loopexit.split-lp1432.loopexit.split-lp

bb.im:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993
  br i1 %i.bmq, label %bb.in, label %bb.iy

bb.in:                                            ; preds = %bb.im
  %i.bmr = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.91, i32 noundef 11, ptr noundef nonnull %4)
          to label %bb.io unwind label %.loopexit.split-lp1432.loopexit.split-lp

bb.io:                                            ; preds = %bb.in
  %i.bms = load ptr, ptr %i.t, align 8, !tbaa !96
  invoke void @_Z13low_rmsd_distPKcfiPPfPK16gmx_output_env_t(ptr noundef %i.bmr, float noundef %.8794, i32 noundef %.1673, ptr noundef %.11406, ptr noundef %i.bms)
          to label %bb.iy unwind label %.loopexit.split-lp1432.loopexit.split-lp

bb.ip:                                            ; preds = %bb.ie, %bb.id
  %i.bmt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

bb.iq:                                            ; preds = %bb.if
  %i.bmu = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.ir:                                            ; preds = %bb.ig
  %i.bmv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

bb.is:                                            ; preds = %bb.ih
  %i.bmw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002

bb.it:                                            ; preds = %bb.ii
  %i.bmx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999

bb.iu:                                            ; preds = %bb.ij
  %i.bmy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996

bb.iv:                                            ; preds = %bb.ik
  %i.bmz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bna = load ptr, ptr %18, align 8, !tbaa !40  ; 2 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bnc = icmp eq ptr %i.bna, %i.bnb
  br i1 %i.bnc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994: ; preds = %bb.iv
  %i.bnd = load i64, ptr %i.bnb, align 8, !tbaa !17
  %i.bne = add i64 %i.bnd, 1
  call void @_ZdlPvm(ptr noundef %i.bna, i64 noundef %i.bne) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996: ; preds = %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994, %bb.iu
  %.pn867 = phi { ptr, i32 } [ %i.bmy, %bb.iu ], [ %i.bmz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994 ], [ %i.bmz, %bb.iv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.bnf = load ptr, ptr %17, align 8, !tbaa !40  ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bnh = icmp eq ptr %i.bnf, %i.bng
  br i1 %i.bnh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996
  %i.bni = load i64, ptr %i.bng, align 8, !tbaa !17
  %i.bnj = add i64 %i.bni, 1
  call void @_ZdlPvm(ptr noundef %i.bnf, i64 noundef %i.bnj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997, %bb.it
  %.pn867.pn = phi { ptr, i32 } [ %i.bmx, %bb.it ], [ %.pn867, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997 ], [ %.pn867, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.bnk = load ptr, ptr %15, align 8, !tbaa !40  ; 2 uses
  %i.bnl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bnm = icmp eq ptr %i.bnk, %i.bnl
  br i1 %i.bnm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999
  %i.bnn = load i64, ptr %i.bnl, align 8, !tbaa !17
  %i.bno = add i64 %i.bnn, 1
  call void @_ZdlPvm(ptr noundef %i.bnk, i64 noundef %i.bno) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000, %bb.is
  %.pn867.pn.pn = phi { ptr, i32 } [ %i.bmw, %bb.is ], [ %.pn867.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000 ], [ %.pn867.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.bnp = load ptr, ptr %13, align 8, !tbaa !40  ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bnr = icmp eq ptr %i.bnp, %i.bnq
  br i1 %i.bnr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002
  %i.bns = load i64, ptr %i.bnq, align 8, !tbaa !17
  %i.bnt = add i64 %i.bns, 1
  call void @_ZdlPvm(ptr noundef %i.bnp, i64 noundef %i.bnt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003, %bb.ir
  %.pn867.pn.pn.pn = phi { ptr, i32 } [ %i.bmv, %bb.ir ], [ %.pn867.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003 ], [ %.pn867.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.iw

bb.iw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, %bb.iq
  %.pn867.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn867.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %i.bmu, %bb.iq ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #20
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.ip
  %.pn867.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn867.pn.pn.pn.pn, %bb.iw ], [ %i.bmt, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %.loopexit.split-lp1432

bb.iy:                                            ; preds = %bb.io, %bb.im
  br i1 %i.gc, label %bb.iz, label %bb.jy

bb.iz:                                            ; preds = %bb.iy
  %i.bnu = sext i32 %.1748 to i64                 ; 2 uses
  %i.bnv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.105, i32 noundef 1028, i64 noundef range(i64 -2147483648, 2147483648) %i.bnu, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.preheader unwind label %.loopexit.split-lp1432.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.preheader: ; preds = %bb.iz
  %i.bnw = icmp sgt i32 %.1673, 1
  br i1 %i.bnw, label %.lr.ph1672, label %.preheader1422

.lr.ph1672:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.preheader
  %i.bnx = add nsw i32 %.1673, -1
  %i.bny = lshr i32 %.1673, 1
  %i.bnz = load i8, ptr @_ZZ7gmx_rmsiPPcE9bDeltaLog, align 1, !range !36
  %.fr1716 = freeze i8 %i.bnz
  %i.boa = trunc i8 %.fr1716 to i1
  %i.bob = zext nneg i32 %i.bny to i64            ; 2 uses
  %wide.trip.count1912 = zext nneg i32 %i.bnx to i64
  %wide.trip.count1900 = zext nneg i32 %.1673 to i64
  %wide.trip.count1907 = zext nneg i32 %.1673 to i64
  br label %.lr.ph1670

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit: ; preds = %bb.jf, %bb.jc
  %indvars.iv.next1894 = add nuw nsw i64 %indvars.iv1893, 1
  %exitcond1913.not = icmp eq i64 %indvars.iv.next1910, %wide.trip.count1912
  br i1 %exitcond1913.not, label %.preheader1422, label %.lr.ph1670, !llvm.loop !158

.preheader1422:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.preheader
  %i.boc = icmp sgt i32 %.1748, 0                 ; 2 uses
  br i1 %i.boc, label %.lr.ph1677.preheader, label %._crit_edge1678

.lr.ph1677.preheader:                             ; preds = %.preheader1422
  %wide.trip.count1921 = zext nneg i32 %.1748 to i64
  br label %.lr.ph1677

.lr.ph1670:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, %.lr.ph1672
  %indvars.iv1909 = phi i64 [ 0, %.lr.ph1672 ], [ %indvars.iv.next1910, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit ] ; 5 uses
  %indvars.iv1893 = phi i64 [ 1, %.lr.ph1672 ], [ %indvars.iv.next1894, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit ] ; 3 uses
  %indvars.iv.next1910 = add nuw nsw i64 %indvars.iv1909, 1 ; 2 uses
  br i1 %i.boa, label %.lr.ph1670.split.us, label %.lr.ph1670.split

.lr.ph1670.split.us:                              ; preds = %.lr.ph1670, %bb.jc
  %indvars.iv1902 = phi i64 [ %indvars.iv.next1903, %bb.jc ], [ %indvars.iv1893, %.lr.ph1670 ] ; 3 uses
  %i.bod = sub nuw nsw i64 %indvars.iv1902, %indvars.iv1909 ; 2 uses
  %i.boe = icmp samesign ult i64 %i.bod, %i.bob
  br i1 %i.boe, label %bb.ja, label %bb.jc

bb.ja:                                            ; preds = %.lr.ph1670.split.us
  %i.bof = trunc nuw nsw i64 %i.bod to i32
  %i.bog = uitofp nneg i32 %i.bof to float
  %i.boh = call noundef float @logf(float noundef %i.bog) #20
  %i.boi = fmul float %.1751, %i.boh
  %i.boj = call float @llvm.rint.f32(float %i.boi)
  %i.bok = fptosi float %i.boj to i32
  %i.bol = getelementptr inbounds nuw [8 x i8], ptr %.11406, i64 %indvars.iv1902
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !73
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %indvars.iv1909 ; 2 uses
  %i.boo = load float, ptr %i.bon, align 4, !tbaa !33
  %i.bop = sext i32 %i.bok to i64                 ; 2 uses
  %i.boq = getelementptr inbounds [4 x i8], ptr %i.bnv, i64 %i.bop ; 2 uses
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !33
  %i.bos = fadd float %i.bor, 1.000000e+00
  store float %i.bos, ptr %i.boq, align 4, !tbaa !33
  %i.bot = load float, ptr %i.bon, align 4, !tbaa !33 ; 2 uses
  %i.bou = fcmp ult float %i.bot, 0.000000e+00
  %i.bov = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bow = fcmp ugt float %i.bot, %i.bov
  %or.cond933.us = select i1 %i.bou, i1 true, i1 %i.bow
  br i1 %or.cond933.us, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.box = fmul float %.0749, %i.boo
  %i.boy = fmul float %i.box, 1.000000e+02
  %i.boz = call float @llvm.rint.f32(float %i.boy)
  %i.bpa = fptosi float %i.boz to i32
  %i.bpb = getelementptr inbounds [8 x i8], ptr %.01402, i64 %i.bop
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !73
  %i.bpd = sext i32 %i.bpa to i64
  %i.bpe = getelementptr inbounds [4 x i8], ptr %i.bpc, i64 %i.bpd ; 2 uses
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !33
  %i.bpg = fadd float %i.bpf, 1.000000e+00
  store float %i.bpg, ptr %i.bpe, align 4, !tbaa !33
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %.lr.ph1670.split.us
  %indvars.iv.next1903 = add nuw nsw i64 %indvars.iv1902, 1 ; 2 uses
  %exitcond1908.not = icmp eq i64 %indvars.iv.next1903, %wide.trip.count1907
  br i1 %exitcond1908.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, label %.lr.ph1670.split.us, !llvm.loop !159

.lr.ph1670.split:                                 ; preds = %.lr.ph1670, %bb.jf
  %indvars.iv1895 = phi i64 [ %indvars.iv.next1896, %bb.jf ], [ %indvars.iv1893, %.lr.ph1670 ] ; 3 uses
  %i.bph = sub nuw nsw i64 %indvars.iv1895, %indvars.iv1909 ; 3 uses
  %i.bpi = icmp samesign ult i64 %i.bph, %i.bob
  br i1 %i.bpi, label %bb.jd, label %bb.jf

bb.jd:                                            ; preds = %.lr.ph1670.split
  %i.bpj = getelementptr inbounds nuw [8 x i8], ptr %.11406, i64 %indvars.iv1895
  %i.bpk = load ptr, ptr %i.bpj, align 8, !tbaa !73
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %i.bpk, i64 %indvars.iv1909 ; 2 uses
  %i.bpm = load float, ptr %i.bpl, align 4, !tbaa !33
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.bnv, i64 %i.bph ; 2 uses
  %i.bpo = load float, ptr %i.bpn, align 4, !tbaa !33
  %i.bpp = fadd float %i.bpo, 1.000000e+00
  store float %i.bpp, ptr %i.bpn, align 4, !tbaa !33
  %i.bpq = load float, ptr %i.bpl, align 4, !tbaa !33 ; 2 uses
  %i.bpr = fcmp ult float %i.bpq, 0.000000e+00
  %i.bps = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bpt = fcmp ugt float %i.bpq, %i.bps
  %or.cond933 = select i1 %i.bpr, i1 true, i1 %i.bpt
  br i1 %or.cond933, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bpu = fmul float %.0749, %i.bpm
  %i.bpv = fmul float %i.bpu, 1.000000e+02
  %i.bpw = call float @llvm.rint.f32(float %i.bpv)
  %i.bpx = fptosi float %i.bpw to i32
  %i.bpy = getelementptr inbounds nuw [8 x i8], ptr %.01402, i64 %i.bph
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !73
  %i.bqa = sext i32 %i.bpx to i64
  %i.bqb = getelementptr inbounds [4 x i8], ptr %i.bpz, i64 %i.bqa ; 2 uses
  %i.bqc = load float, ptr %i.bqb, align 4, !tbaa !33
  %i.bqd = fadd float %i.bqc, 1.000000e+00
  store float %i.bqd, ptr %i.bqb, align 4, !tbaa !33
  br label %bb.jf

bb.jf:                                            ; preds = %.lr.ph1670.split, %bb.je, %bb.jd
  %indvars.iv.next1896 = add nuw nsw i64 %indvars.iv1895, 1 ; 2 uses
  %exitcond1901.not = icmp eq i64 %indvars.iv.next1896, %wide.trip.count1900
  br i1 %exitcond1901.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, label %.lr.ph1670.split, !llvm.loop !159

._crit_edge1678:                                  ; preds = %.loopexit, %.preheader1422
  %.0752.lcssa = phi float [ 0.000000e+00, %.preheader1422 ], [ %.3755, %.loopexit ] ; 2 uses
  %i.bqe = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.bqf = fpext float %.0752.lcssa to double
  %i.bqg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bqe, ptr noundef nonnull @.str.166, double noundef %i.bqf) #22 ; 0 uses
  %i.bqh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.105, i32 noundef 1066, i64 noundef range(i64 -2147483648, 2147483648) %i.bnu, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1009 unwind label %.loopexit.split-lp1432.loopexit.split-lp ; 15 uses

.lr.ph1677:                                       ; preds = %.lr.ph1677.preheader, %.loopexit
  %indvars.iv1918 = phi i64 [ 0, %.lr.ph1677.preheader ], [ %indvars.iv.next1919, %.loopexit ] ; 3 uses
  %.07521675 = phi float [ 0.000000e+00, %.lr.ph1677.preheader ], [ %.3755, %.loopexit ] ; 2 uses
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.bnv, i64 %indvars.iv1918 ; 6 uses
  %i.bqj = load float, ptr %i.bqi, align 4, !tbaa !33 ; 2 uses
  %i.bqk = fcmp ogt float %i.bqj, 0.000000e+00
  br i1 %i.bqk, label %bb.jg, label %.loopexit

bb.jg:                                            ; preds = %.lr.ph1677
  %i.bql = fdiv float 1.000000e+00, %i.bqj
  store float %i.bql, ptr %i.bqi, align 4, !tbaa !33
  %i.bqm = getelementptr inbounds nuw [8 x i8], ptr %.01402, i64 %indvars.iv1918
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !73 ; 4 uses
  br label %bb.jh

bb.jh:                                            ; preds = %bb.ji, %bb.jg
  %indvars.iv1914 = phi i64 [ 0, %bb.jg ], [ %indvars.iv.next1915.3, %bb.ji ] ; 6 uses
  %.17531674 = phi float [ %.07521675, %bb.jg ], [ %.2754.3, %bb.ji ] ; 2 uses
  %i.bqo = load float, ptr %i.bqi, align 4, !tbaa !33
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv1914 ; 2 uses
  %i.bqq = load float, ptr %i.bqp, align 4, !tbaa !33
  %i.bqr = fmul float %i.bqo, %i.bqq              ; 3 uses
  store float %i.bqr, ptr %i.bqp, align 4, !tbaa !33
  %i.bqs = fcmp ogt float %i.bqr, %.17531674
  %.2754 = select i1 %i.bqs, float %i.bqr, float %.17531674 ; 3 uses
  %exitcond1917.not = icmp eq i64 %indvars.iv1914, 100
  br i1 %exitcond1917.not, label %.loopexit, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bqt = load float, ptr %i.bqi, align 4, !tbaa !33
  %i.bqu = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv1914
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqu, i64 4 ; 2 uses
  %i.bqw = load float, ptr %i.bqv, align 4, !tbaa !33
  %i.bqx = fmul float %i.bqt, %i.bqw              ; 3 uses
  store float %i.bqx, ptr %i.bqv, align 4, !tbaa !33
  %i.bqy = fcmp ogt float %i.bqx, %.2754
  %.2754.1 = select i1 %i.bqy, float %i.bqx, float %.2754 ; 2 uses
  %i.bqz = load float, ptr %i.bqi, align 4, !tbaa !33
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv1914
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 8 ; 2 uses
  %i.brc = load float, ptr %i.brb, align 4, !tbaa !33
  %i.brd = fmul float %i.bqz, %i.brc              ; 3 uses
  store float %i.brd, ptr %i.brb, align 4, !tbaa !33
  %i.bre = fcmp ogt float %i.brd, %.2754.1
  %.2754.2 = select i1 %i.bre, float %i.brd, float %.2754.1 ; 2 uses
  %i.brf = load float, ptr %i.bqi, align 4, !tbaa !33
  %i.brg = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %indvars.iv1914
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 12 ; 2 uses
  %i.bri = load float, ptr %i.brh, align 4, !tbaa !33
  %i.brj = fmul float %i.brf, %i.bri              ; 3 uses
  store float %i.brj, ptr %i.brh, align 4, !tbaa !33
  %i.brk = fcmp ogt float %i.brj, %.2754.2
  %.2754.3 = select i1 %i.brk, float %i.brj, float %.2754.2
  %indvars.iv.next1915.3 = add nuw nsw i64 %indvars.iv1914, 4
  br label %bb.jh

.loopexit:                                        ; preds = %bb.jh, %.lr.ph1677
  %.3755 = phi float [ %.07521675, %.lr.ph1677 ], [ %.2754, %bb.jh ] ; 2 uses
  %indvars.iv.next1919 = add nuw nsw i64 %indvars.iv1918, 1 ; 2 uses
  %exitcond1922.not = icmp eq i64 %indvars.iv.next1919, %wide.trip.count1921
  br i1 %exitcond1922.not, label %._crit_edge1678, label %.lr.ph1677, !llvm.loop !160

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1009:      ; preds = %._crit_edge1678
  %i.brl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.105, i32 noundef 1067, i64 noundef 101, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader unwind label %.loopexit.split-lp1432.loopexit.split-lp ; 21 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1009
  br i1 %i.boc, label %iter.check2531, label %vector.memcheck2546

iter.check2531:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader
  %wide.trip.count1926 = zext nneg i32 %.1748 to i64 ; 9 uses
  %min.iters.check2514 = icmp ult i32 %.1748, 4
  br i1 %min.iters.check2514, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader2592, label %vector.memcheck2503

vector.memcheck2503:                              ; preds = %iter.check2531
  %i.brm = shl nuw nsw i64 %wide.trip.count1926, 2 ; 2 uses
  %scevgep2504 = getelementptr i8, ptr %i.bqh, i64 %i.brm ; 2 uses
  %scevgep2505 = getelementptr i8, ptr %i.aye, i64 4
  %scevgep2506 = getelementptr i8, ptr %i.aye, i64 %i.brm
  %bound02507 = icmp ult ptr %i.bqh, %scevgep2505
  %bound12508 = icmp ult ptr %i.aye, %scevgep2504
  %found.conflict2509 = and i1 %bound02507, %bound12508
  %bound02510 = icmp ult ptr %i.bqh, %scevgep2506
  %bound12511 = icmp ult ptr %i.aye, %scevgep2504
  %found.conflict2512 = and i1 %bound02510, %bound12511
  %conflict.rdx = or i1 %found.conflict2509, %found.conflict2512
  br i1 %conflict.rdx, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader2592, label %vector.main.loop.iter.check2515

vector.main.loop.iter.check2515:                  ; preds = %vector.memcheck2503
  %min.iters.check2516 = icmp ult i32 %.1748, 32
  br i1 %min.iters.check2516, label %vec.epilog.ph2535, label %vector.ph2517

vector.ph2517:                                    ; preds = %vector.main.loop.iter.check2515
  %i.brn = and i64 %wide.trip.count1926, 28
  %n.vec2518 = and i64 %wide.trip.count1926, 2147483616 ; 4 uses
  %i.bro = load float, ptr %i.aye, align 4, !tbaa !33, !alias.scope !161
  %broadcast.splatinsert2525 = insertelement <8 x float> poison, float %i.bro, i64 0
  %broadcast.splat2526 = shufflevector <8 x float> %broadcast.splatinsert2525, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2519

vector.body2519:                                  ; preds = %vector.body2519, %vector.ph2517
  %index2520 = phi i64 [ 0, %vector.ph2517 ], [ %index.next2527, %vector.body2519 ] ; 3 uses
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %index2520 ; 4 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 32
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brp, i64 64
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brp, i64 96
  %wide.load2521 = load <8 x float>, ptr %i.brp, align 4, !tbaa !33, !alias.scope !164
  %wide.load2522 = load <8 x float>, ptr %i.brq, align 4, !tbaa !33, !alias.scope !164
  %wide.load2523 = load <8 x float>, ptr %i.brr, align 4, !tbaa !33, !alias.scope !164
  %wide.load2524 = load <8 x float>, ptr %i.brs, align 4, !tbaa !33, !alias.scope !164
  %i.brt = fsub <8 x float> %wide.load2521, %broadcast.splat2526
  %i.bru = fsub <8 x float> %wide.load2522, %broadcast.splat2526
  %i.brv = fsub <8 x float> %wide.load2523, %broadcast.splat2526
  %i.brw = fsub <8 x float> %wide.load2524, %broadcast.splat2526
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %i.bqh, i64 %index2520 ; 4 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brx, i64 32
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brx, i64 64
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brx, i64 96
  store <8 x float> %i.brt, ptr %i.brx, align 4, !tbaa !33, !alias.scope !166, !noalias !168
  store <8 x float> %i.bru, ptr %i.bry, align 4, !tbaa !33, !alias.scope !166, !noalias !168
  store <8 x float> %i.brv, ptr %i.brz, align 4, !tbaa !33, !alias.scope !166, !noalias !168
  store <8 x float> %i.brw, ptr %i.bsa, align 4, !tbaa !33, !alias.scope !166, !noalias !168
  %index.next2527 = add nuw i64 %index2520, 32    ; 2 uses
  %i.bsb = icmp eq i64 %index.next2527, %n.vec2518
  br i1 %i.bsb, label %middle.block2528, label %vector.body2519, !llvm.loop !169

middle.block2528:                                 ; preds = %vector.body2519
  %cmp.n2529 = icmp eq i64 %n.vec2518, %wide.trip.count1926
  br i1 %cmp.n2529, label %vector.memcheck2546, label %vec.epilog.iter.check2533

vec.epilog.iter.check2533:                        ; preds = %middle.block2528
  %min.epilog.iters.check2534 = icmp eq i64 %i.brn, 0
  br i1 %min.epilog.iters.check2534, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader2592, label %vec.epilog.ph2535, !prof !70

vec.epilog.ph2535:                                ; preds = %vector.main.loop.iter.check2515, %vec.epilog.iter.check2533
  %vec.epilog.resume.val2530 = phi i64 [ %n.vec2518, %vec.epilog.iter.check2533 ], [ 0, %vector.main.loop.iter.check2515 ]
  %n.vec2536 = and i64 %wide.trip.count1926, 2147483644 ; 3 uses
  %i.bsc = load float, ptr %i.aye, align 4, !tbaa !33, !alias.scope !161
  %broadcast.splatinsert2540 = insertelement <4 x float> poison, float %i.bsc, i64 0
  %broadcast.splat2541 = shufflevector <4 x float> %broadcast.splatinsert2540, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2537

vec.epilog.vector.body2537:                       ; preds = %vec.epilog.vector.body2537, %vec.epilog.ph2535
  %index2538 = phi i64 [ %vec.epilog.resume.val2530, %vec.epilog.ph2535 ], [ %index.next2542, %vec.epilog.vector.body2537 ] ; 3 uses
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %index2538
  %wide.load2539 = load <4 x float>, ptr %i.bsd, align 4, !tbaa !33, !alias.scope !164
  %i.bse = fsub <4 x float> %wide.load2539, %broadcast.splat2541
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.bqh, i64 %index2538
  store <4 x float> %i.bse, ptr %i.bsf, align 4, !tbaa !33, !alias.scope !166, !noalias !168
  %index.next2542 = add nuw i64 %index2538, 4     ; 2 uses
  %i.bsg = icmp eq i64 %index.next2542, %n.vec2536
  br i1 %i.bsg, label %vec.epilog.middle.block2543, label %vec.epilog.vector.body2537, !llvm.loop !170

vec.epilog.middle.block2543:                      ; preds = %vec.epilog.vector.body2537
  %cmp.n2544 = icmp eq i64 %n.vec2536, %wide.trip.count1926
end_hunk_0
