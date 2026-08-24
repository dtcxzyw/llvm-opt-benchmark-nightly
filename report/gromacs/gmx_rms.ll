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
  %i.bny = lshr i32 %.1673, 1                     ; 2 uses
  %i.bnz = zext nneg i32 %i.bny to i64
  %i.boa = zext nneg i32 %i.bny to i64
  %wide.trip.count1912 = zext nneg i32 %i.bnx to i64
  %wide.trip.count1900 = zext nneg i32 %.1673 to i64
  %wide.trip.count1907 = zext nneg i32 %.1673 to i64
  br label %.lr.ph1670

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit: ; preds = %bb.jf, %bb.jc
  %indvars.iv.next1894 = add nuw nsw i64 %indvars.iv1893, 1
  %exitcond1913.not = icmp eq i64 %indvars.iv.next1910, %wide.trip.count1912
  br i1 %exitcond1913.not, label %.preheader1422, label %.lr.ph1670, !llvm.loop !158

.preheader1422:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.preheader
  %i.bob = icmp sgt i32 %.1748, 0                 ; 2 uses
  br i1 %i.bob, label %.lr.ph1677.preheader, label %._crit_edge1678

.lr.ph1677.preheader:                             ; preds = %.preheader1422
  %wide.trip.count1921 = zext nneg i32 %.1748 to i64
  br label %.lr.ph1677

.lr.ph1670:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, %.lr.ph1672
  %indvars.iv1909 = phi i64 [ 0, %.lr.ph1672 ], [ %indvars.iv.next1910, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit ] ; 5 uses
  %indvars.iv1893 = phi i64 [ 1, %.lr.ph1672 ], [ %indvars.iv.next1894, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit ] ; 3 uses
  %indvars.iv.next1910 = add nuw nsw i64 %indvars.iv1909, 1 ; 2 uses
  %55 = load i8, ptr @_ZZ7gmx_rmsiPPcE9bDeltaLog, align 1, !range !36
  %.fr1716 = freeze i8 %55
  %56 = trunc i8 %.fr1716 to i1
  br i1 %56, label %.lr.ph1670.split.us, label %.lr.ph1670.split

.lr.ph1670.split.us:                              ; preds = %.lr.ph1670, %bb.jc
  %indvars.iv1902 = phi i64 [ %indvars.iv.next1903, %bb.jc ], [ %indvars.iv1893, %.lr.ph1670 ] ; 3 uses
  %i.boc = sub nuw nsw i64 %indvars.iv1902, %indvars.iv1909 ; 2 uses
  %i.bod = icmp samesign ult i64 %i.boc, %i.boa
  br i1 %i.bod, label %bb.ja, label %bb.jc

bb.ja:                                            ; preds = %.lr.ph1670.split.us
  %i.boe = trunc nuw nsw i64 %i.boc to i32
  %i.bof = uitofp nneg i32 %i.boe to float
  %i.bog = call noundef float @logf(float noundef %i.bof) #20
  %i.boh = fmul float %.1751, %i.bog
  %i.boi = call float @llvm.rint.f32(float %i.boh)
  %i.boj = fptosi float %i.boi to i32
  %i.bok = getelementptr inbounds nuw [8 x i8], ptr %.11406, i64 %indvars.iv1902
  %i.bol = load ptr, ptr %i.bok, align 8, !tbaa !73
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %i.bol, i64 %indvars.iv1909 ; 2 uses
  %i.bon = load float, ptr %i.bom, align 4, !tbaa !33
  %i.boo = sext i32 %i.boj to i64                 ; 2 uses
  %i.bop = getelementptr inbounds [4 x i8], ptr %i.bnv, i64 %i.boo ; 2 uses
  %i.boq = load float, ptr %i.bop, align 4, !tbaa !33
  %i.bor = fadd float %i.boq, 1.000000e+00
  store float %i.bor, ptr %i.bop, align 4, !tbaa !33
  %i.bos = load float, ptr %i.bom, align 4, !tbaa !33 ; 2 uses
  %i.bot = fcmp ult float %i.bos, 0.000000e+00
  %i.bou = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bov = fcmp ugt float %i.bos, %i.bou
  %or.cond933.us = select i1 %i.bot, i1 true, i1 %i.bov
  br i1 %or.cond933.us, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bow = fmul float %.0749, %i.bon
  %i.box = fmul float %i.bow, 1.000000e+02
  %i.boy = call float @llvm.rint.f32(float %i.box)
  %i.boz = fptosi float %i.boy to i32
  %i.bpa = getelementptr inbounds [8 x i8], ptr %.01402, i64 %i.boo
  %i.bpb = load ptr, ptr %i.bpa, align 8, !tbaa !73
  %i.bpc = sext i32 %i.boz to i64
  %i.bpd = getelementptr inbounds [4 x i8], ptr %i.bpb, i64 %i.bpc ; 2 uses
  %i.bpe = load float, ptr %i.bpd, align 4, !tbaa !33
  %i.bpf = fadd float %i.bpe, 1.000000e+00
  store float %i.bpf, ptr %i.bpd, align 4, !tbaa !33
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %.lr.ph1670.split.us
  %indvars.iv.next1903 = add nuw nsw i64 %indvars.iv1902, 1 ; 2 uses
  %exitcond1908.not = icmp eq i64 %indvars.iv.next1903, %wide.trip.count1907
  br i1 %exitcond1908.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, label %.lr.ph1670.split.us, !llvm.loop !159

.lr.ph1670.split:                                 ; preds = %.lr.ph1670, %bb.jf
  %indvars.iv1895 = phi i64 [ %indvars.iv.next1896, %bb.jf ], [ %indvars.iv1893, %.lr.ph1670 ] ; 3 uses
  %i.bpg = sub nuw nsw i64 %indvars.iv1895, %indvars.iv1909 ; 3 uses
  %i.bph = icmp samesign ult i64 %i.bpg, %i.bnz
  br i1 %i.bph, label %bb.jd, label %bb.jf

bb.jd:                                            ; preds = %.lr.ph1670.split
  %i.bpi = getelementptr inbounds nuw [8 x i8], ptr %.11406, i64 %indvars.iv1895
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !73
  %i.bpk = getelementptr inbounds nuw [4 x i8], ptr %i.bpj, i64 %indvars.iv1909 ; 2 uses
  %i.bpl = load float, ptr %i.bpk, align 4, !tbaa !33
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.bnv, i64 %i.bpg ; 2 uses
  %i.bpn = load float, ptr %i.bpm, align 4, !tbaa !33
  %i.bpo = fadd float %i.bpn, 1.000000e+00
  store float %i.bpo, ptr %i.bpm, align 4, !tbaa !33
  %i.bpp = load float, ptr %i.bpk, align 4, !tbaa !33 ; 2 uses
  %i.bpq = fcmp ult float %i.bpp, 0.000000e+00
  %i.bpr = load float, ptr @_ZZ7gmx_rmsiPPcE10delta_maxy, align 4
  %i.bps = fcmp ugt float %i.bpp, %i.bpr
  %or.cond933 = select i1 %i.bpq, i1 true, i1 %i.bps
  br i1 %or.cond933, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bpt = fmul float %.0749, %i.bpl
  %i.bpu = fmul float %i.bpt, 1.000000e+02
  %i.bpv = call float @llvm.rint.f32(float %i.bpu)
  %i.bpw = fptosi float %i.bpv to i32
  %i.bpx = getelementptr inbounds nuw [8 x i8], ptr %.01402, i64 %i.bpg
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !73
  %i.bpz = sext i32 %i.bpw to i64
  %i.bqa = getelementptr inbounds [4 x i8], ptr %i.bpy, i64 %i.bpz ; 2 uses
  %i.bqb = load float, ptr %i.bqa, align 4, !tbaa !33
  %i.bqc = fadd float %i.bqb, 1.000000e+00
  store float %i.bqc, ptr %i.bqa, align 4, !tbaa !33
  br label %bb.jf

bb.jf:                                            ; preds = %.lr.ph1670.split, %bb.je, %bb.jd
  %indvars.iv.next1896 = add nuw nsw i64 %indvars.iv1895, 1 ; 2 uses
  %exitcond1901.not = icmp eq i64 %indvars.iv.next1896, %wide.trip.count1900
  br i1 %exitcond1901.not, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1007.loopexit, label %.lr.ph1670.split, !llvm.loop !159

._crit_edge1678:                                  ; preds = %.loopexit, %.preheader1422
  %.0752.lcssa = phi float [ 0.000000e+00, %.preheader1422 ], [ %.3755, %.loopexit ] ; 2 uses
  %i.bqd = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.bqe = fpext float %.0752.lcssa to double
  %i.bqf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bqd, ptr noundef nonnull @.str.166, double noundef %i.bqe) #22 ; 0 uses
  %i.bqg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.105, i32 noundef 1066, i64 noundef range(i64 -2147483648, 2147483648) %i.bnu, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1009 unwind label %.loopexit.split-lp1432.loopexit.split-lp ; 15 uses

.lr.ph1677:                                       ; preds = %.lr.ph1677.preheader, %.loopexit
  %indvars.iv1918 = phi i64 [ 0, %.lr.ph1677.preheader ], [ %indvars.iv.next1919, %.loopexit ] ; 3 uses
  %.07521675 = phi float [ 0.000000e+00, %.lr.ph1677.preheader ], [ %.3755, %.loopexit ] ; 2 uses
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %i.bnv, i64 %indvars.iv1918 ; 6 uses
  %i.bqi = load float, ptr %i.bqh, align 4, !tbaa !33 ; 2 uses
  %i.bqj = fcmp ogt float %i.bqi, 0.000000e+00
  br i1 %i.bqj, label %bb.jg, label %.loopexit

bb.jg:                                            ; preds = %.lr.ph1677
  %i.bqk = fdiv float 1.000000e+00, %i.bqi
  store float %i.bqk, ptr %i.bqh, align 4, !tbaa !33
  %i.bql = getelementptr inbounds nuw [8 x i8], ptr %.01402, i64 %indvars.iv1918
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !73 ; 4 uses
  br label %bb.jh

bb.jh:                                            ; preds = %bb.ji, %bb.jg
  %indvars.iv1914 = phi i64 [ 0, %bb.jg ], [ %indvars.iv.next1915.3, %bb.ji ] ; 6 uses
  %.17531674 = phi float [ %.07521675, %bb.jg ], [ %.2754.3, %bb.ji ] ; 2 uses
  %i.bqn = load float, ptr %i.bqh, align 4, !tbaa !33
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bqm, i64 %indvars.iv1914 ; 2 uses
  %i.bqp = load float, ptr %i.bqo, align 4, !tbaa !33
  %i.bqq = fmul float %i.bqn, %i.bqp              ; 3 uses
  store float %i.bqq, ptr %i.bqo, align 4, !tbaa !33
  %i.bqr = fcmp ogt float %i.bqq, %.17531674
  %.2754 = select i1 %i.bqr, float %i.bqq, float %.17531674 ; 3 uses
  %exitcond1917.not = icmp eq i64 %indvars.iv1914, 100
  br i1 %exitcond1917.not, label %.loopexit, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bqs = load float, ptr %i.bqh, align 4, !tbaa !33
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %i.bqm, i64 %indvars.iv1914
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 4 ; 2 uses
  %i.bqv = load float, ptr %i.bqu, align 4, !tbaa !33
  %i.bqw = fmul float %i.bqs, %i.bqv              ; 3 uses
  store float %i.bqw, ptr %i.bqu, align 4, !tbaa !33
  %i.bqx = fcmp ogt float %i.bqw, %.2754
  %.2754.1 = select i1 %i.bqx, float %i.bqw, float %.2754 ; 2 uses
  %i.bqy = load float, ptr %i.bqh, align 4, !tbaa !33
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.bqm, i64 %indvars.iv1914
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 8 ; 2 uses
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !33
  %i.brc = fmul float %i.bqy, %i.brb              ; 3 uses
  store float %i.brc, ptr %i.bra, align 4, !tbaa !33
  %i.brd = fcmp ogt float %i.brc, %.2754.1
  %.2754.2 = select i1 %i.brd, float %i.brc, float %.2754.1 ; 2 uses
  %i.bre = load float, ptr %i.bqh, align 4, !tbaa !33
  %i.brf = getelementptr inbounds nuw [4 x i8], ptr %i.bqm, i64 %indvars.iv1914
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 12 ; 2 uses
  %i.brh = load float, ptr %i.brg, align 4, !tbaa !33
  %i.bri = fmul float %i.bre, %i.brh              ; 3 uses
  store float %i.bri, ptr %i.brg, align 4, !tbaa !33
  %i.brj = fcmp ogt float %i.bri, %.2754.2
  %.2754.3 = select i1 %i.brj, float %i.bri, float %.2754.2
  %indvars.iv.next1915.3 = add nuw nsw i64 %indvars.iv1914, 4
  br label %bb.jh

.loopexit:                                        ; preds = %bb.jh, %.lr.ph1677
  %.3755 = phi float [ %.07521675, %.lr.ph1677 ], [ %.2754, %bb.jh ] ; 2 uses
  %indvars.iv.next1919 = add nuw nsw i64 %indvars.iv1918, 1 ; 2 uses
  %exitcond1922.not = icmp eq i64 %indvars.iv.next1919, %wide.trip.count1921
  br i1 %exitcond1922.not, label %._crit_edge1678, label %.lr.ph1677, !llvm.loop !160

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1009:      ; preds = %._crit_edge1678
  %i.brk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.105, i32 noundef 1067, i64 noundef 101, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader unwind label %.loopexit.split-lp1432.loopexit.split-lp ; 21 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1009
  br i1 %i.bob, label %iter.check2531, label %vector.memcheck2546

iter.check2531:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader
  %wide.trip.count1926 = zext nneg i32 %.1748 to i64 ; 9 uses
  %min.iters.check2514 = icmp ult i32 %.1748, 4
  br i1 %min.iters.check2514, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader2592, label %vector.memcheck2503

vector.memcheck2503:                              ; preds = %iter.check2531
  %i.brl = shl nuw nsw i64 %wide.trip.count1926, 2 ; 2 uses
  %scevgep2504 = getelementptr i8, ptr %i.bqg, i64 %i.brl ; 2 uses
  %scevgep2505 = getelementptr i8, ptr %i.aye, i64 4
  %scevgep2506 = getelementptr i8, ptr %i.aye, i64 %i.brl
  %bound02507 = icmp ult ptr %i.bqg, %scevgep2505
  %bound12508 = icmp ult ptr %i.aye, %scevgep2504
  %found.conflict2509 = and i1 %bound02507, %bound12508
  %bound02510 = icmp ult ptr %i.bqg, %scevgep2506
  %bound12511 = icmp ult ptr %i.aye, %scevgep2504
  %found.conflict2512 = and i1 %bound02510, %bound12511
  %conflict.rdx = or i1 %found.conflict2509, %found.conflict2512
  br i1 %conflict.rdx, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit1011.preheader2592, label %vector.main.loop.iter.check2515

vector.main.loop.iter.check2515:                  ; preds = %vector.memcheck2503
  %min.iters.check2516 = icmp ult i32 %.1748, 32
  br i1 %min.iters.check2516, label %vec.epilog.ph2535, label %vector.ph2517

vector.ph2517:                                    ; preds = %vector.main.loop.iter.check2515
  %i.brm = and i64 %wide.trip.count1926, 28
  %n.vec2518 = and i64 %wide.trip.count1926, 2147483616 ; 4 uses
  %i.brn = load float, ptr %i.aye, align 4, !tbaa !33, !alias.scope !161
  %broadcast.splatinsert2525 = insertelement <8 x float> poison, float %i.brn, i64 0
  %broadcast.splat2526 = shufflevector <8 x float> %broadcast.splatinsert2525, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2519

vector.body2519:                                  ; preds = %vector.body2519, %vector.ph2517
end_hunk_0
