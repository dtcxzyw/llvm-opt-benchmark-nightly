Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPURegisterBankInfo?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm22AMDGPURegisterBankInfo15getInstrMappingERKNS_12MachineInstrE:bb.a
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !83 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !52
  %i.dh = tail call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.de, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dg) #21 ; 2 uses
  %.not1747 = icmp eq ptr %i.dh, null
  br i1 %.not1747, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.01705 = phi i32 [ %i.di, %bb.x ], [ -1, %bb.w ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dk = load i24, ptr %i.dj, align 8
  %i.dl = zext i24 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -1
  %.not = icmp ult i32 %i.dm, 2
  br i1 %.not, label %_ZL16regBankBoolUnionjj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %bb.y ] ; 2 uses
  %.117062752 = phi i32 [ %.21707.ph, %bb.af ], [ %.01705, %bb.y ] ; 5 uses
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !82
  %.idx = shl nuw nsw i64 %indvars.iv, 6
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83
  %i.dr = load ptr, ptr %i.df, align 8, !tbaa !52
  %i.ds = tail call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.dq, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dr) #21 ; 2 uses
  %.not1748 = icmp eq ptr %i.ds, null
  br i1 %.not1748, label %_ZL16regBankBoolUnionjj.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !58 ; 6 uses
  %i.du = icmp eq i32 %i.dt, 3
  br i1 %i.du, label %_ZL16regBankBoolUnionjj.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = icmp eq i32 %.117062752, -1
  br i1 %i.dv, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = icmp eq i32 %i.dt, -1
  br i1 %i.dw, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = icmp eq i32 %.117062752, 2
  %i.dy = icmp eq i32 %i.dt, 2
  %or.cond.i = or i1 %i.dx, %i.dy
  br i1 %or.cond.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = icmp eq i32 %.117062752, 1
  %i.ea = icmp eq i32 %i.dt, 1
  %or.cond.i.i = and i1 %i.dz, %i.ea
  br i1 %or.cond.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = or i32 %i.dt, %.117062752
  %or.cond3.i.i = icmp eq i32 %i.eb, 0
  %..i.i = select i1 %or.cond3.i.i, i32 0, i32 3
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.21707.ph = phi i32 [ %..i.i, %bb.ae ], [ 1, %bb.ad ], [ %.117062752, %bb.ab ], [ %i.dt, %bb.aa ], [ 2, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = load i24, ptr %i.dj, align 8
  %i.ed = zext i24 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, 4294967295
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = and i64 %i.ef, 2147483647
  %i.eh = icmp samesign ult i64 %indvars.iv.next, %i.eg
  br i1 %i.eh, label %.lr.ph, label %_ZL16regBankBoolUnionjj.exit, !llvm.loop !845

_ZL16regBankBoolUnionjj.exit:                     ; preds = %bb.af, %.lr.ph, %bb.z, %bb.y
  %.31708 = phi i32 [ %.01705, %bb.y ], [ 3, %.lr.ph ], [ 3, %bb.z ], [ %.21707.ph, %bb.af ]
  %i.ei = icmp slt i32 %i.de, 0
  br i1 %i.ei, label %bb.ag, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread2627

bb.ag:                                            ; preds = %_ZL16regBankBoolUnionjj.exit
  %i.ej = and i32 %i.de, 2147483647               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !94
  %i.em = icmp ugt i32 %i.el, %i.ej
  br i1 %i.em, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1771, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread2627

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1771: ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.eo = zext nneg i32 %i.ej to i64
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !93
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !83
  %.fr = freeze i64 %i.er                         ; 10 uses
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.es = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.es, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1771
  %i.et = lshr i64 %.fr, 60
  %.off.i.i = add nsw i64 %i.et, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1771, %bb.ah
  %i.eu = icmp slt i64 %.fr, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.eu, %i.es
  %i.ev = lshr i64 %.fr, 44
  %i.ew = and i64 %i.ev, 65535
  %i.ex = lshr i64 %.fr, 28
  %i.ey = select i1 %spec.select.i.i.i, i64 %i.ew, i64 %i.ex
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread2627

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.ah
  %i.ez = lshr i64 %.fr, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ez, 65535
  %i.fa = icmp slt i64 %.fr, -8070450532247928832
  %i.fb = lshr i64 %.fr, 44
  %i.fc = and i64 %i.fb, 65535
  %i.fd = lshr i64 %.fr, 28
  %spec.select2731 = select i1 %i.fa, i64 %i.fc, i64 %i.fd
  %i.fe = mul nuw nsw i64 %spec.select2731, %.sroa.0.0.insert.ext.i.i.i
  %i.ff = trunc i64 %.fr to i1
  br i1 %i.ff, label %bb.ai, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread2627

bb.ai:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread2627:   ; preds = %bb.ag, %_ZL16regBankBoolUnionjj.exit, %_ZNK4llvm3LLT13getSizeInBitsEv.exit, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread
  %.sroa.05.0.i2626 = phi i64 [ %i.ey, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.fe, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ], [ 0, %_ZL16regBankBoolUnionjj.exit ], [ 0, %bb.ag ]
  %i.fg = trunc i64 %.sroa.05.0.i2626 to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !44
  %i.fj = zext i32 %.31708 to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !46
  %i.fm = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4llvm16RegisterBankInfo15getValueMappingEjjRKNS_12RegisterBankE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef 0, i32 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.fl) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.fm, ptr %i.b, align 8, !tbaa !97
  %i.fn = call noundef ptr @_ZNK4llvm16RegisterBankInfo18getOperandsMappingESt16initializer_listIPKNS0_12ValueMappingEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nonnull %i.b, i64 1) #21
  %i.fo = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo25getInstructionMappingImplEbjjPKNS0_12ValueMappingEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, ptr noundef %i.fn, i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.tw

bb.aj:                                            ; preds = %bb.a
  %i.fp = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo19getInstrMappingImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #21 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !854
  %i.fr = load i32, ptr @_ZN4llvm16RegisterBankInfo16InvalidMappingIDE, align 4, !tbaa !28 ; 4 uses
  %.not.i1775 = icmp ne i32 %i.fq, %i.fr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = icmp ne ptr %i.ft, null
  %i.fv = select i1 %.not.i1775, i1 %i.fu, i1 false
  br i1 %i.fv, label %bb.tw, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 10 uses
  %i.fx = load i24, ptr %i.fw, align 8            ; 4 uses
  %i.fy = zext i24 %i.fx to i32
  %i.fz = zext i24 %i.fx to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ga, ptr %7, align 8, !tbaa !93
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.gb, align 8, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 8, ptr %i.gc, align 4, !tbaa !95
  %i.gd = icmp eq i24 %i.fx, 0
  br i1 %i.gd, label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ge = icmp ugt i24 %i.fx, 8
  br i1 %i.ge, label %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i1779, label %.lr.ph.preheader.i.i.i1776

_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i1779: ; preds = %bb.al
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.ga, i64 noundef %i.fz, i64 noundef 8) #21
  %.pre.i.i.i1780 = load i32, ptr %i.gb, align 8, !tbaa !94
  %.pre13.i.i.i1781 = zext i32 %.pre.i.i.i1780 to i64 ; 2 uses
  %.not11.i.i.i1782 = icmp samesign eq i64 %i.fz, %.pre13.i.i.i1781
  br i1 %.not11.i.i.i1782, label %.sink.split.i.i.i1778, label %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i1783

_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i1783: ; preds = %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i1779
  %.pre.i1784 = load ptr, ptr %7, align 8, !tbaa !93
  br label %.lr.ph.preheader.i.i.i1776

.lr.ph.preheader.i.i.i1776:                       ; preds = %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i1783, %bb.al
  %i.gf = phi ptr [ %.pre.i1784, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i1783 ], [ %i.ga, %bb.al ]
  %.pre-phi.i.i3.i1777 = phi i64 [ %.pre13.i.i.i1781, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i1783 ], [ 0, %bb.al ] ; 2 uses
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %.pre-phi.i.i3.i1777
  %i.gh = sub nsw i64 %i.fz, %.pre-phi.i.i3.i1777
  %i.gi = shl nsw i64 %i.gh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gg, i8 0, i64 %i.gi, i1 false), !tbaa !97
  br label %.sink.split.i.i.i1778

.sink.split.i.i.i1778:                            ; preds = %.lr.ph.preheader.i.i.i1776, %_ZN4llvm15SmallVectorImplIPKNS_16RegisterBankInfo12ValueMappingEE7reserveEm.exit.i.i.i1779
  store i32 %i.fy, ptr %i.gb, align 8, !tbaa !94
  br label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit

_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit: ; preds = %bb.ak, %.sink.split.i.i.i1778
  %i.gj = load i32, ptr %i.f, align 4, !tbaa !396 ; 2 uses
  switch i32 %i.gj, label %bb.am [
    i32 64, label %bb.an
    i32 65, label %bb.an
    i32 66, label %bb.an
    i32 57, label %bb.an
    i32 240, label %bb.bi
    i32 241, label %bb.bi
    i32 55, label %bb.bi
    i32 56, label %bb.bi
    i32 155, label %bb.bi
    i32 156, label %bb.bi
    i32 157, label %bb.bi
    i32 167, label %bb.bi
    i32 169, label %bb.bi
    i32 168, label %bb.bi
    i32 172, label %bb.bi
    i32 170, label %bb.bi
    i32 174, label %bb.bi
    i32 246, label %bb.bi
    i32 256, label %bb.bi
    i32 329, label %bb.bi
    i32 330, label %bb.bi
    i32 4174, label %bb.bi
    i32 4175, label %bb.bi
    i32 242, label %bb.bs
    i32 243, label %bb.bs
    i32 244, label %bb.bs
    i32 245, label %bb.bs
    i32 193, label %bb.cb
    i32 194, label %bb.cb
    i32 195, label %bb.cb
    i32 196, label %bb.cb
    i32 282, label %bb.cb
    i32 269, label %bb.cb
    i32 96, label %bb.cb
    i32 224, label %bb.cb
    i32 225, label %bb.cb
    i32 230, label %bb.cb
    i32 231, label %bb.cb
    i32 92, label %bb.cb
    i32 291, label %bb.cb
    i32 292, label %bb.cb
    i32 293, label %bb.cb
    i32 296, label %bb.cb
    i32 228, label %bb.cl
    i32 229, label %bb.cl
    i32 214, label %bb.cv
    i32 215, label %bb.cv
    i32 218, label %bb.cv
    i32 219, label %bb.cv
    i32 216, label %bb.cv
    i32 217, label %bb.cv
    i32 213, label %bb.df
    i32 212, label %bb.df
    i32 281, label %bb.dp
    i32 204, label %bb.dp
    i32 207, label %bb.dp
    i32 180, label %bb.dx
    i32 182, label %bb.dx
    i32 179, label %bb.dx
    i32 181, label %bb.dx
    i32 197, label %bb.dx
    i32 209, label %bb.dx
    i32 226, label %bb.dx
    i32 227, label %bb.dx
    i32 223, label %bb.dx
    i32 298, label %bb.dx
    i32 266, label %bb.dx
    i32 159, label %bb.dx
    i32 4147, label %bb.dx
    i32 4143, label %bb.dx
    i32 4162, label %bb.dx
    i32 4133, label %bb.dx
    i32 4134, label %bb.dx
    i32 4135, label %bb.dx
    i32 4136, label %bb.dx
    i32 4137, label %bb.dx
    i32 4165, label %bb.dx
    i32 4144, label %bb.dx
    i32 177, label %bb.dy
    i32 178, label %bb.dy
    i32 4161, label %bb.ec
    i32 4160, label %bb.ec
    i32 73, label %bb.ek
    i32 149, label %bb.eo
    i32 148, label %bb.eo
    i32 76, label %bb.eo
    i32 75, label %bb.eo
    i32 286, label %bb.eo
    i32 98, label %bb.eo
    i32 97, label %bb.eo
    i32 288, label %bb.es
    i32 4183, label %bb.et
    i32 81, label %bb.eu
    i32 79, label %bb.ey
    i32 83, label %bb.fc
    i32 84, label %bb.fc
    i32 82, label %bb.fo
    i32 85, label %bb.fo
    i32 267, label %bb.fv
    i32 88, label %bb.fv
    i32 87, label %bb.fv
    i32 86, label %bb.fv
    i32 220, label %bb.fv
    i32 211, label %bb.fv
    i32 4138, label %bb.ga
    i32 4139, label %bb.ga
    i32 263, label %bb.ga
    i32 261, label %bb.ga
    i32 265, label %bb.ge
    i32 144, label %bb.gi
    i32 154, label %bb.gm
    i32 152, label %bb.gm
    i32 143, label %bb.gm
    i32 153, label %bb.gm
    i32 222, label %bb.gp
    i32 106, label %bb.gw
    i32 162, label %bb.ha
    i32 163, label %bb.ha
    i32 255, label %bb.hk
    i32 254, label %bb.hx
    i32 80, label %bb.im
    i32 4109, label %bb.ip
    i32 4118, label %bb.ip
    i32 4113, label %bb.ip
    i32 4120, label %bb.ip
    i32 4115, label %bb.ip
    i32 4117, label %bb.ip
    i32 4119, label %bb.ip
    i32 4114, label %bb.ip
    i32 4121, label %bb.ip
    i32 4116, label %bb.ip
    i32 4110, label %bb.ip
    i32 4112, label %bb.ip
    i32 4111, label %bb.ip
    i32 4176, label %bb.ip
    i32 4177, label %bb.ip
    i32 4178, label %bb.ip
    i32 4179, label %bb.ip
    i32 4122, label %bb.ip
    i32 4123, label %bb.ip
    i32 4126, label %bb.ip
    i32 4124, label %bb.ip
    i32 4125, label %bb.ip
    i32 4105, label %bb.iq
    i32 4091, label %bb.iq
    i32 4103, label %bb.iq
    i32 4102, label %bb.iq
    i32 4107, label %bb.iq
    i32 4101, label %bb.iq
    i32 4106, label %bb.iq
    i32 4092, label %bb.iq
    i32 4100, label %bb.iq
    i32 4108, label %bb.iq
    i32 4099, label %bb.iq
    i32 4095, label %bb.iq
    i32 4104, label %bb.iq
    i32 4094, label %bb.iq
    i32 4096, label %bb.iq
    i32 4098, label %bb.iq
    i32 4097, label %bb.iq
    i32 4093, label %bb.ir
    i32 4168, label %bb.is
    i32 4171, label %bb.is
    i32 4169, label %bb.is
    i32 4172, label %bb.is
    i32 4170, label %bb.is
    i32 4173, label %bb.iz
    i32 4167, label %bb.ja
    i32 139, label %bb.je
    i32 141, label %bb.je
    i32 4149, label %bb.pq
    i32 4150, label %bb.pq
    i32 4151, label %bb.pq
    i32 4152, label %bb.pq
    i32 4153, label %bb.pq
    i32 4148, label %bb.ts
    i32 4140, label %bb.ts
    i32 4184, label %bb.tr
    i32 140, label %bb.qm
    i32 142, label %bb.qm
    i32 166, label %bb.sz
    i32 4186, label %bb.tg
    i32 99, label %bb.tl
    i32 101, label %bb.tl
    i32 100, label %bb.tl
    i32 111, label %bb.tm
    i32 112, label %bb.tm
    i32 113, label %bb.tm
    i32 114, label %bb.tm
    i32 116, label %bb.tm
    i32 117, label %bb.tm
    i32 118, label %bb.tm
    i32 119, label %bb.tm
    i32 120, label %bb.tm
    i32 121, label %bb.tm
    i32 122, label %bb.tm
    i32 125, label %bb.tm
    i32 124, label %bb.tm
    i32 130, label %bb.tm
    i32 131, label %bb.tm
    i32 132, label %bb.tm
    i32 133, label %bb.tm
    i32 4090, label %bb.tm
    i32 110, label %bb.tn
    i32 136, label %bb.to
    i32 91, label %bb.tp
    i32 135, label %bb.tq
    i32 4185, label %bb.tr
    i32 4128, label %bb.pr
    i32 4127, label %80
    i32 4129, label %80
  ]

bb.am:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.gk = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo25getInstructionMappingImplEbjjPKNS0_12ValueMappingEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext true, i32 noundef %i.fr, i32 noundef 0, ptr noundef null, i32 noundef 0) #21
  br label %.thread2669

bb.an:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !83 ; 2 uses
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %bb.ao, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1786

bb.ao:                                            ; preds = %bb.an
  %i.gq = and i32 %i.go, 2147483647               ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !94
  %i.gt = icmp ugt i32 %i.gs, %i.gq
  br i1 %i.gt, label %bb.ap, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1786

bb.ap:                                            ; preds = %bb.ao
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.gv = zext nneg i32 %i.gq to i64
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !93
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1786

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1786: ; preds = %bb.an, %bb.ao, %bb.ap
  %.sroa.04.0.i1785 = phi i64 [ %i.gy, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.an ]
  store i64 %.sroa.04.0.i1785, ptr %8, align 8
  %i.gz = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %8) ; 2 uses
  %.fca.1.extract991 = extractvalue { i64, i8 } %i.gz, 1
  %i.ha = trunc nuw i8 %.fca.1.extract991 to i1
  br i1 %i.ha, label %bb.aq, label %_ZNK4llvm8TypeSizecvmEv.exit1787

bb.aq:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1786
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1787:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1786
  %.fca.0.extract990 = extractvalue { i64, i8 } %i.gz, 0
  %i.hb = trunc i64 %.fca.0.extract990 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  switch i32 %i.hb, label %bb.bi [
    i32 1, label %bb.ar
    i32 64, label %bb.bc
  ]

bb.ar:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1787
  %i.hc = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !83
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !52
  %i.hh = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.he, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.hg) #21 ; 3 uses
  %.not1758 = icmp eq ptr %i.hh, null
  br i1 %.not1758, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !58
  %.fr2744 = freeze i32 %i.hi                     ; 2 uses
  %i.hj = icmp eq ptr %i.hh, @_ZN4llvm6AMDGPUL10VCCRegBankE
  br i1 %i.hj, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1797.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hk = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !83
  %i.hn = load ptr, ptr %i.hf, align 8, !tbaa !52
  %i.ho = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.hm, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.hn) #21 ; 2 uses
  %.not.i1788 = icmp eq ptr %i.ho, null
  br i1 %.not.i1788, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1789, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1789

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1789: ; preds = %bb.at, %bb.au
  %i.hq = phi i32 [ %i.hp, %bb.au ], [ 1, %bb.at ] ; 2 uses
  %i.hr = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 68
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !83
  %i.hu = load ptr, ptr %i.hf, align 8, !tbaa !52
  %i.hv = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.ht, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.hu) #21 ; 2 uses
  %.not.i1790 = icmp eq ptr %i.hv, null
  br i1 %.not.i1790, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791, label %bb.av

bb.av:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1789
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791

bb.aw:                                            ; preds = %bb.ar
  %i.hx = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 36
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !83
  %i.ia = load ptr, ptr %i.hf, align 8, !tbaa !52
  %i.ib = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.hz, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.ia) #21 ; 2 uses
  %.not.i1792 = icmp eq ptr %i.ib, null
  br i1 %.not.i1792, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1793, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1793

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1793: ; preds = %bb.aw, %bb.ax
  %i.id = phi i32 [ %i.ic, %bb.ax ], [ 2, %bb.aw ] ; 4 uses
  %i.ie = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 68
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !83
  %i.ih = load ptr, ptr %i.hf, align 8, !tbaa !52
  %i.ii = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.ig, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.ih) #21 ; 2 uses
  %.not.i1794 = icmp eq ptr %i.ii, null
  br i1 %.not.i1794, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1795, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1793
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1795

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1795: ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1793, %bb.ay
  %i.ik = phi i32 [ %i.ij, %bb.ay ], [ 2, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1793 ] ; 4 uses
  %i.il = icmp eq i32 %i.id, 3
  %i.im = icmp eq i32 %i.ik, 3
  %or.cond12 = or i1 %i.il, %i.im
  br i1 %or.cond12, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread, label %bb.az

bb.az:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1795
  %i.in = icmp eq i32 %i.id, 2
  %i.io = icmp eq i32 %i.ik, 2
  %or.cond14 = or i1 %i.in, %i.io
  br i1 %or.cond14, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1797.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ip = icmp eq i32 %i.id, 1
  %i.iq = icmp eq i32 %i.ik, 1
  %or.cond16 = and i1 %i.ip, %i.iq
  br i1 %or.cond16, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread

_ZN4llvm6AMDGPU15getValueMappingEjj.exit1797.thread: ; preds = %bb.az, %bb.as
  %i.ir = load ptr, ptr %7, align 8, !tbaa !93    ; 3 uses
  store ptr @_ZN4llvm6AMDGPUL11ValMappingsE, ptr %i.ir, align 8, !tbaa !97
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr @_ZN4llvm6AMDGPUL11ValMappingsE, ptr %i.is, align 8, !tbaa !97
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1799

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791: ; preds = %bb.av, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1789
  %.01713 = phi i32 [ 1, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1789 ], [ %i.hw, %bb.av ] ; 2 uses
  %i.it = icmp eq i32 %.fr2744, 2
  br i1 %i.it, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread: ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1795, %bb.ba
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread: ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791
  %i.iu = icmp eq i32 %.fr2744, 1
  %spec.select2732 = select i1 %i.iu, i64 1, i64 12
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718: ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread, %bb.ba, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread
  %.0171326392717 = phi i32 [ %i.ik, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread ], [ %.01713, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread ], [ 1, %bb.ba ]
  %.0171126412716 = phi i32 [ %i.id, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread ], [ %i.hq, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread ], [ 1, %bb.ba ]
  %i.iv = phi i64 [ 12, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread ], [ %spec.select2732, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread ], [ 1, %bb.ba ]
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.iv
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

_ZN4llvm6AMDGPU15getValueMappingEjj.exit:         ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718
  %.017112642 = phi i32 [ %.0171126412716, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718 ], [ %i.hq, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791 ] ; 2 uses
  %.017132640 = phi i32 [ %.0171326392717, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718 ], [ %.01713, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791 ] ; 2 uses
  %.012.i = phi ptr [ %i.iw, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791.thread.thread2718 ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1791 ]
  %i.ix = load ptr, ptr %7, align 8, !tbaa !93    ; 4 uses
  store ptr %.012.i, ptr %i.ix, align 8, !tbaa !97
  %i.iy = icmp eq i32 %.017112642, 2
  %i.iz = icmp eq i32 %.017112642, 1
  %i.ja = select i1 %i.iz, i64 1, i64 12
  %.012.i1796.idx = select i1 %i.iy, i64 0, i64 %i.ja
  %.012.i1796 = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %.012.i1796.idx
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %.012.i1796, ptr %i.jb, align 8, !tbaa !97
  %i.jc = icmp eq i32 %.017132640, 2
  br i1 %i.jc, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1799, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit
  %i.jd = icmp eq i32 %.017132640, 1
  %i.je = select i1 %i.jd, i64 1, i64 12
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.je
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1799

_ZN4llvm6AMDGPU15getValueMappingEjj.exit1799:     ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1797.thread, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit, %bb.bb
  %i.jg = phi ptr [ %i.ix, %bb.bb ], [ %i.ix, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit ], [ %i.ir, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1797.thread ]
  %.012.i1798 = phi ptr [ %i.jf, %bb.bb ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1797.thread ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %.012.i1798, ptr %i.jh, align 8, !tbaa !97
  br label %.thread2655

bb.bc:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1787
  %i.ji = call noundef zeroext i1 @_ZNK4llvm22AMDGPURegisterBankInfo13isSALUMappingERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.ji, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jj = load ptr, ptr %7, align 8, !tbaa !93    ; 3 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 32), ptr %i.jj, align 8, !tbaa !97
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 32), ptr %i.jk, align 8, !tbaa !97
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 32), ptr %i.jl, align 8, !tbaa !97
  br label %.thread2655

bb.be:                                            ; preds = %bb.bc
  %i.jm = load i32, ptr %i.f, align 4, !tbaa !396
  %i.jn = icmp eq i32 %i.jm, 57
  br i1 %i.jn, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !112, !nonnull !65, !align !113
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 884
  %i.jr = load i8, ptr %i.jq, align 4, !tbaa !534, !range !64, !noundef !65
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 64), %bb.bg ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 288), %bb.bf ]
  %i.jt = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %.sink, ptr %i.jt, align 8, !tbaa !97
  %i.ju = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 36
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !83
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !52
  %i.jz = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.jw, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.jy) #21 ; 2 uses
  %.not.i1804 = icmp eq ptr %i.jz, null
  br i1 %.not.i1804, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1808, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1805

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1805: ; preds = %bb.bh
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !58
  %i.kb = zext nneg i32 %i.ka to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo15getInstrMappingERKNS_12MachineInstrE.97, i64 %i.kb
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1808

_ZN4llvm6AMDGPU15getValueMappingEjj.exit1808:     ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1805, %bb.bh
  %.0.i1806 = phi i64 [ %switch.ext, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1805 ], [ 18, %bb.bh ]
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %.0.i1806
  %i.kd = load ptr, ptr %7, align 8, !tbaa !93
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %i.kc, ptr %i.ke, align 8, !tbaa !97
  %i.kf = load ptr, ptr %i.gl, align 8, !tbaa !82
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 68
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !83
  %i.ki = load ptr, ptr %i.jx, align 8, !tbaa !52
  %i.kj = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.kh, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.ki) #21 ; 2 uses
  %.not.i1809 = icmp eq ptr %i.kj, null
  br i1 %.not.i1809, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1814, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1810

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1810: ; preds = %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1808
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !58
  %i.kl = zext nneg i32 %i.kk to i64
  %switch.gep3053 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo15getInstrMappingERKNS_12MachineInstrE.97, i64 %i.kl
  %switch.load3054 = load i8, ptr %switch.gep3053, align 1
  %switch.ext3055 = zext i8 %switch.load3054 to i64
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1814

_ZN4llvm6AMDGPU15getValueMappingEjj.exit1814:     ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1810, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1808
  %.0.i1811 = phi i64 [ %switch.ext3055, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1810 ], [ 18, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1808 ]
  %i.km = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %.0.i1811
  %i.kn = load ptr, ptr %7, align 8, !tbaa !93
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store ptr %i.km, ptr %i.ko, align 8, !tbaa !97
  br label %.thread2655

bb.bi:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZNK4llvm8TypeSizecvmEv.exit1787
  %i.kp = call noundef zeroext i1 @_ZNK4llvm22AMDGPURegisterBankInfo13isSALUMappingERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.kp, label %bb.bj, label %bb.br

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !82
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !83 ; 2 uses
  %i.ku = icmp slt i32 %i.kt, 0
  br i1 %i.ku, label %bb.bk, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1816

bb.bk:                                            ; preds = %bb.bj
  %i.kv = and i32 %i.kt, 2147483647               ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !94
  %i.ky = icmp ugt i32 %i.kx, %i.kv
  br i1 %i.ky, label %bb.bl, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1816

bb.bl:                                            ; preds = %bb.bk
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.la = zext nneg i32 %i.kv to i64
  %i.lb = load ptr, ptr %i.kz, align 8, !tbaa !93
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.la
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1816

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1816: ; preds = %bb.bj, %bb.bk, %bb.bl
  %.sroa.04.0.i1815 = phi i64 [ %i.ld, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bj ]
  store i64 %.sroa.04.0.i1815, ptr %9, align 8
  %i.le = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %9) ; 2 uses
  %.fca.0.extract963 = extractvalue { i64, i8 } %i.le, 0
  %.fca.1.extract964 = extractvalue { i64, i8 } %i.le, 1
  %i.lf = trunc nuw i8 %.fca.1.extract964 to i1
  br i1 %i.lf, label %bb.bm, label %_ZNK4llvm8TypeSizecvmEv.exit1817

bb.bm:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1816
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1817:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1816
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !112, !nonnull !65, !align !113
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 820
  %i.lj = load i8, ptr %i.li, align 4, !tbaa !855, !range !64, !noundef !65
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1817
  %i.ll = load i64, ptr %9, align 8
  %i.lm = lshr i64 %i.ll, 60
  %i.ln = add nsw i64 %i.lm, -5
  %switch.selectcmp.i = icmp ult i64 %i.ln, 4
  %i.lo = and i64 %.fca.0.extract963, 4294967295
  %i.lp = icmp eq i64 %i.lo, 128
  %or.cond18 = and i1 %i.lp, %switch.selectcmp.i
  br i1 %or.cond18, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lq = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo20getDefaultMappingVOPERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %_ZNK4llvm8TypeSizecvmEv.exit1817
  %i.lr = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo20getDefaultMappingSOPERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.2 = phi ptr [ %i.lq, %bb.bo ], [ %i.lr, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.thread2669

bb.br:                                            ; preds = %bb.bi
  %i.ls = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo20getDefaultMappingVOPERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %.thread2669

bb.bs:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.lt = call noundef zeroext i1 @_ZNK4llvm22AMDGPURegisterBankInfo13isSALUMappingERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.lt, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !82
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !83 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, 0
  br i1 %i.ly, label %bb.bu, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1819

bb.bu:                                            ; preds = %bb.bt
  %i.lz = and i32 %i.lx, 2147483647               ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !94
  %i.mc = icmp ugt i32 %i.mb, %i.lz
  br i1 %i.mc, label %bb.bv, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1819

bb.bv:                                            ; preds = %bb.bu
  %i.md = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.me = zext nneg i32 %i.lz to i64
  %i.mf = load ptr, ptr %i.md, align 8, !tbaa !93
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.me
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1819

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1819: ; preds = %bb.bt, %bb.bu, %bb.bv
  %.sroa.04.0.i1818 = phi i64 [ %i.mh, %bb.bv ], [ 0, %bb.bu ], [ 0, %bb.bt ]
  store i64 %.sroa.04.0.i1818, ptr %10, align 8
  %i.mi = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) ; 2 uses
  %.fca.1.extract959 = extractvalue { i64, i8 } %i.mi, 1
  %i.mj = trunc nuw i8 %.fca.1.extract959 to i1
  br i1 %i.mj, label %bb.bw, label %_ZNK4llvm8TypeSizecvmEv.exit1820

bb.bw:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1819
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1820:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1819
  %.fca.0.extract958 = extractvalue { i64, i8 } %i.mi, 0
  %i.mk = icmp eq i64 %.fca.0.extract958, 64
  br i1 %i.mk, label %bb.bx, label %.critedge20

bb.bx:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1820
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !112, !nonnull !65, !align !113
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 800
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !856, !range !64, !noundef !65
  %i.mp = trunc nuw i8 %i.mo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %i.mp, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mq = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo20getDefaultMappingVOPERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %.thread2669

.critedge20:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1820
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bz

bb.bz:                                            ; preds = %.critedge20, %bb.bx
  %i.mr = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo20getDefaultMappingSOPERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %.thread2669

bb.ca:                                            ; preds = %bb.bs
  %i.ms = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo20getDefaultMappingVOPERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %.thread2669

bb.cb:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !82
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !83 ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %bb.cc, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1822

bb.cc:                                            ; preds = %bb.cb
  %i.my = and i32 %i.mw, 2147483647               ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !94
  %i.nb = icmp ugt i32 %i.na, %i.my
  br i1 %i.nb, label %bb.cd, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1822

bb.cd:                                            ; preds = %bb.cc
  %i.nc = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.nd = zext nneg i32 %i.my to i64
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !93
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nd
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1822

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1822: ; preds = %bb.cb, %bb.cc, %bb.cd
  %.sroa.04.0.i1821 = phi i64 [ %i.ng, %bb.cd ], [ 0, %bb.cc ], [ 0, %bb.cb ]
  store i64 %.sroa.04.0.i1821, ptr %11, align 8
  %i.nh = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %11) ; 2 uses
  %.fca.1.extract952 = extractvalue { i64, i8 } %i.nh, 1
  %i.ni = trunc nuw i8 %.fca.1.extract952 to i1
  br i1 %i.ni, label %bb.ce, label %_ZNK4llvm8TypeSizecvmEv.exit1823

bb.ce:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1822
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1823:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1822
  %.fca.0.extract951 = extractvalue { i64, i8 } %i.nh, 0
  %i.nj = trunc i64 %.fca.0.extract951 to i32
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !112, !nonnull !65, !align !113
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 836
  %i.nn = load i8, ptr %i.nm, align 4, !tbaa !533, !range !64, !noundef !65
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1823
  %i.np = load i64, ptr %11, align 8
  %i.nq = lshr i64 %i.np, 60
  %.off.i = add nsw i64 %i.nq, -1
  %switch.i = icmp ult i64 %.off.i, 3
  br i1 %switch.i, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  switch i32 %i.nj, label %bb.cj [
end_hunk_0
begin_hunk_1_@_ZNK4llvm22AMDGPURegisterBankInfo15getInstrMappingERKNS_12MachineInstrE:bb.a
bb.ez:                                            ; preds = %bb.ey
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1882

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1882: ; preds = %bb.ey, %bb.ez
  %i.yr = phi i32 [ %i.yq, %bb.ez ], [ 3, %bb.ey ] ; 2 uses
  %i.ys = load ptr, ptr %i.yj, align 8, !tbaa !82
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !83
  %i.yv = load ptr, ptr %i.yn, align 8, !tbaa !52
  %i.yw = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.yu, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.yv) #21 ; 2 uses
  %.fca.1.extract859 = extractvalue { i64, i8 } %i.yw, 1
  %i.yx = trunc nuw i8 %.fca.1.extract859 to i1
  br i1 %i.yx, label %bb.fa, label %_ZNK4llvm8TypeSizecvmEv.exit1883

bb.fa:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1882
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1883:                 ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1882
  %i.yy = load ptr, ptr %i.yj, align 8, !tbaa !82
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 36
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !83
  %i.zb = load ptr, ptr %i.yn, align 8, !tbaa !52
  %i.zc = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.za, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.zb) #21 ; 2 uses
  %.fca.1.extract853 = extractvalue { i64, i8 } %i.zc, 1
  %i.zd = trunc nuw i8 %.fca.1.extract853 to i1
  br i1 %i.zd, label %bb.fb, label %_ZNK4llvm8TypeSizecvmEv.exit1884

bb.fb:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1883
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1884:                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1883
  %.fca.0.extract852 = extractvalue { i64, i8 } %i.zc, 0
  %.fca.0.extract858 = extractvalue { i64, i8 } %i.yw, 0
  %i.ze = trunc i64 %.fca.0.extract858 to i32
  %i.zf = trunc i64 %.fca.0.extract852 to i32
  %i.zg = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.yr, i32 noundef %i.ze)
  %i.zh = load ptr, ptr %7, align 8, !tbaa !93    ; 3 uses
  store ptr %i.zg, ptr %i.zh, align 8, !tbaa !97
  %i.zi = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.yr, i32 noundef %i.zf)
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !97
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store ptr null, ptr %i.zk, align 8, !tbaa !97
  br label %.thread2655

bb.fc:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !82
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !83 ; 2 uses
  %i.zp = icmp slt i32 %i.zo, 0
  br i1 %i.zp, label %bb.fd, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1886

bb.fd:                                            ; preds = %bb.fc
  %i.zq = and i32 %i.zo, 2147483647               ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !94
  %i.zt = icmp ugt i32 %i.zs, %i.zq
  br i1 %i.zt, label %bb.fe, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1886

bb.fe:                                            ; preds = %bb.fd
  %i.zu = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.zv = zext nneg i32 %i.zq to i64
  %i.zw = load ptr, ptr %i.zu, align 8, !tbaa !93
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %i.zv
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1886

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1886: ; preds = %bb.fc, %bb.fd, %bb.fe
  %.sroa.04.0.i1885 = phi i64 [ %i.zy, %bb.fe ], [ 0, %bb.fd ], [ 0, %bb.fc ]
  store i64 %.sroa.04.0.i1885, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store i64 5764607527329202208, ptr %21, align 8
  %i.zz = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br i1 %i.zz, label %bb.ff, label %.thread2675

.thread2675:                                      ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1886
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.fo

bb.ff:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1886
  %i.aaa = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %20) ; 2 uses
  %.fca.1.extract847 = extractvalue { i64, i8 } %i.aaa, 1
  %i.aab = trunc nuw i8 %.fca.1.extract847 to i1
  br i1 %i.aab, label %bb.fg, label %_ZNK4llvm8TypeSizecvmEv.exit1887

bb.fg:                                            ; preds = %bb.ff
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1887:                 ; preds = %bb.ff
  %.fca.0.extract846 = extractvalue { i64, i8 } %i.aaa, 0
  %i.aac = trunc i64 %.fca.0.extract846 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.aad = load ptr, ptr %i.zl, align 8, !tbaa !82
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 36
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !83 ; 2 uses
  %i.aag = icmp slt i32 %i.aaf, 0
  br i1 %i.aag, label %bb.fh, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1889

bb.fh:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1887
  %i.aah = and i32 %i.aaf, 2147483647             ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !94
  %i.aak = icmp ugt i32 %i.aaj, %i.aah
  br i1 %i.aak, label %bb.fi, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1889

bb.fi:                                            ; preds = %bb.fh
  %i.aal = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.aam = zext nneg i32 %i.aah to i64
  %i.aan = load ptr, ptr %i.aal, align 8, !tbaa !93
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.aam
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1889

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1889: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1887, %bb.fh, %bb.fi
  %.sroa.04.0.i1888 = phi i64 [ %i.aap, %bb.fi ], [ 0, %bb.fh ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit1887 ]
  store i64 %.sroa.04.0.i1888, ptr %22, align 8
  %i.aaq = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %22) ; 2 uses
  %.fca.1.extract840 = extractvalue { i64, i8 } %i.aaq, 1
  %i.aar = trunc nuw i8 %.fca.1.extract840 to i1
  br i1 %i.aar, label %bb.fj, label %_ZNK4llvm8TypeSizecvmEv.exit1890

bb.fj:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1889
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1890:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1889
  %.fca.0.extract839 = extractvalue { i64, i8 } %i.aaq, 0
  %i.aas = trunc i64 %.fca.0.extract839 to i32    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.aat = load ptr, ptr %i.zl, align 8, !tbaa !82
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 36
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !83
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !52
  %i.aay = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.aav, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.aax) #21 ; 2 uses
  %.not.i1891 = icmp eq ptr %i.aay, null
  br i1 %.not.i1891, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1892, label %bb.fk

bb.fk:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1890
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1892

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1892: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1890, %bb.fk
  %i.aba = phi i32 [ %i.aaz, %bb.fk ], [ 3, %_ZNK4llvm8TypeSizecvmEv.exit1890 ] ; 6 uses
  %i.abb = load ptr, ptr %i.zl, align 8, !tbaa !82
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 68
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !83
  %i.abe = load ptr, ptr %i.aaw, align 8, !tbaa !52
  %i.abf = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.abd, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.abe) #21 ; 2 uses
  %.not.i1893 = icmp eq ptr %i.abf, null
  br i1 %.not.i1893, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894.thread, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894: ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1892
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !58 ; 5 uses
  %i.abh = icmp eq i32 %i.aba, -1
  br i1 %i.abh, label %bb.fn, label %bb.fl

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894.thread: ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1892
  %i.abi = icmp eq i32 %i.aba, -1
  br i1 %i.abi, label %bb.fn, label %.thread2673

bb.fl:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894
  %i.abj = icmp eq i32 %i.abg, -1
  br i1 %i.abj, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.abk = icmp eq i32 %i.aba, 1
  %i.abl = icmp eq i32 %i.abg, 1
  %or.cond.i1895 = and i1 %i.abk, %i.abl
  br i1 %or.cond.i1895, label %bb.fn, label %.thread2673

.thread2673:                                      ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894.thread, %bb.fm
  %i.abm = phi i32 [ %i.abg, %bb.fm ], [ 3, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894.thread ] ; 2 uses
  %i.abn = or i32 %i.abm, %i.aba
  %or.cond3.i = icmp eq i32 %i.abn, 0
  %..i = select i1 %or.cond3.i, i32 0, i32 3
  br label %bb.fn

bb.fn:                                            ; preds = %.thread2673, %bb.fm, %bb.fl, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894.thread
  %i.abo = phi i32 [ 1, %bb.fm ], [ %i.abg, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894 ], [ -1, %bb.fl ], [ %i.abm, %.thread2673 ], [ 3, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894.thread ]
  %.0.i1896 = phi i32 [ 1, %bb.fm ], [ %i.abg, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894 ], [ %i.aba, %bb.fl ], [ %..i, %.thread2673 ], [ 3, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1894.thread ]
  %i.abp = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %.0.i1896, i32 noundef %i.aac)
  %i.abq = load ptr, ptr %7, align 8, !tbaa !93   ; 3 uses
  store ptr %i.abp, ptr %i.abq, align 8, !tbaa !97
  %i.abr = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.aba, i32 noundef %i.aas)
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  store ptr %i.abr, ptr %i.abs, align 8, !tbaa !97
  %i.abt = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.abo, i32 noundef %i.aas)
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  store ptr %i.abt, ptr %i.abu, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %.thread2655

bb.fo:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %.thread2675
  %i.abv = call noundef i32 @_ZNK4llvm22AMDGPURegisterBankInfo14getMappingTypeERKNS_19MachineRegisterInfoERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !82
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !83 ; 2 uses
  %i.aca = icmp slt i32 %i.abz, 0
  br i1 %i.aca, label %bb.fp, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1898

bb.fp:                                            ; preds = %bb.fo
  %i.acb = and i32 %i.abz, 2147483647             ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !94
  %i.ace = icmp ugt i32 %i.acd, %i.acb
  br i1 %i.ace, label %bb.fq, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1898

bb.fq:                                            ; preds = %bb.fp
  %i.acf = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.acg = zext nneg i32 %i.acb to i64
  %i.ach = load ptr, ptr %i.acf, align 8, !tbaa !93
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.acg
  %i.acj = load i64, ptr %i.aci, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1898

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1898: ; preds = %bb.fo, %bb.fp, %bb.fq
  %.sroa.04.0.i1897 = phi i64 [ %i.acj, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ]
  store i64 %.sroa.04.0.i1897, ptr %23, align 8
  %i.ack = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %23) ; 2 uses
  %.fca.1.extract825 = extractvalue { i64, i8 } %i.ack, 1
  %i.acl = trunc nuw i8 %.fca.1.extract825 to i1
  br i1 %i.acl, label %bb.fr, label %_ZNK4llvm8TypeSizecvmEv.exit1899

bb.fr:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1898
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1899:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1898
  %.fca.0.extract824 = extractvalue { i64, i8 } %i.ack, 0
  %i.acm = trunc i64 %.fca.0.extract824 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.acn = load ptr, ptr %i.abw, align 8, !tbaa !82
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 36
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !83 ; 2 uses
  %i.acq = icmp slt i32 %i.acp, 0
  br i1 %i.acq, label %bb.fs, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1901

bb.fs:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1899
  %i.acr = and i32 %i.acp, 2147483647             ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.act = load i32, ptr %i.acs, align 8, !tbaa !94
  %i.acu = icmp ugt i32 %i.act, %i.acr
  br i1 %i.acu, label %bb.ft, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1901

bb.ft:                                            ; preds = %bb.fs
  %i.acv = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.acw = zext nneg i32 %i.acr to i64
  %i.acx = load ptr, ptr %i.acv, align 8, !tbaa !93
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %i.acw
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1901

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1901: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1899, %bb.fs, %bb.ft
  %.sroa.04.0.i1900 = phi i64 [ %i.acz, %bb.ft ], [ 0, %bb.fs ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit1899 ]
  store i64 %.sroa.04.0.i1900, ptr %24, align 8
  %i.ada = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %24) ; 2 uses
  %.fca.1.extract819 = extractvalue { i64, i8 } %i.ada, 1
  %i.adb = trunc nuw i8 %.fca.1.extract819 to i1
  br i1 %i.adb, label %bb.fu, label %_ZNK4llvm8TypeSizecvmEv.exit1902

bb.fu:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1901
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1902:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1901
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %i.adc = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.abv, i32 noundef %i.acm)
  %i.add = load ptr, ptr %7, align 8, !tbaa !93   ; 3 uses
  store ptr %i.adc, ptr %i.add, align 8, !tbaa !97
  %i.ade = load i24, ptr %i.fw, align 8           ; 2 uses
  %i.adf = zext i24 %i.ade to i32                 ; 2 uses
  %.not17552781 = icmp eq i24 %i.ade, 1
  br i1 %.not17552781, label %.thread2655, label %.lr.ph2783

.lr.ph2783:                                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1902
  %.fca.0.extract818 = extractvalue { i64, i8 } %i.ada, 0
  %i.adg = trunc i64 %.fca.0.extract818 to i32
  %i.adh = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.abv, i32 noundef %i.adg) ; 2 uses
  %i.adi = add nsw i32 %i.adf, -1                 ; 2 uses
  %i.adj = zext i32 %i.adi to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.adi, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph2783
  %n.vec = and i64 %i.adj, 4294967292             ; 3 uses
  %i.adk = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.adh, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 24
  store <2 x ptr> %broadcast.splat, ptr %i.adm, align 8, !tbaa !97
  store <2 x ptr> %broadcast.splat, ptr %i.adn, align 8, !tbaa !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ado = icmp eq i64 %index.next, %n.vec
  br i1 %i.ado, label %middle.block, label %vector.body, !llvm.loop !846

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.adj
  br i1 %cmp.n, label %.thread2655, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2783, %middle.block
  %indvars.iv2810.ph = phi i64 [ 1, %.lr.ph2783 ], [ %i.adk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2810 = phi i64 [ %indvars.iv.next2811, %scalar.ph ], [ %indvars.iv2810.ph, %scalar.ph.preheader ] ; 2 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv2810
  store ptr %i.adh, ptr %i.adp, align 8, !tbaa !97
  %indvars.iv.next2811 = add nuw nsw i64 %indvars.iv2810, 1 ; 2 uses
  %lftr.wideiv2813 = trunc i64 %indvars.iv.next2811 to i32
  %exitcond2814 = icmp eq i32 %lftr.wideiv2813, %i.adf
  br i1 %exitcond2814, label %.thread2655, label %scalar.ph, !llvm.loop !847

bb.fv:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !82
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !83 ; 2 uses
  %i.adu = icmp slt i32 %i.adt, 0
  br i1 %i.adu, label %bb.fw, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1904

bb.fw:                                            ; preds = %bb.fv
  %i.adv = and i32 %i.adt, 2147483647             ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !94
  %i.ady = icmp ugt i32 %i.adx, %i.adv
  br i1 %i.ady, label %bb.fx, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1904

bb.fx:                                            ; preds = %bb.fw
  %i.adz = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.aea = zext nneg i32 %i.adv to i64
  %i.aeb = load ptr, ptr %i.adz, align 8, !tbaa !93
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %i.aea
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1904

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1904: ; preds = %bb.fv, %bb.fw, %bb.fx
  %.sroa.04.0.i1903 = phi i64 [ %i.aed, %bb.fx ], [ 0, %bb.fw ], [ 0, %bb.fv ]
  store i64 %.sroa.04.0.i1903, ptr %25, align 8
  %i.aee = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %25) ; 2 uses
  %.fca.1.extract809 = extractvalue { i64, i8 } %i.aee, 1
  %i.aef = trunc nuw i8 %.fca.1.extract809 to i1
  br i1 %i.aef, label %bb.fy, label %_ZNK4llvm8TypeSizecvmEv.exit1905

bb.fy:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1904
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1905:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1904
  %.fca.0.extract808 = extractvalue { i64, i8 } %i.aee, 0
  %i.aeg = trunc i64 %.fca.0.extract808 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.aeh = load ptr, ptr %i.adq, align 8, !tbaa !82
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 36
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !83
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !52
  %i.aem = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.aej, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.ael) #21 ; 2 uses
  %.not.i1906 = icmp eq ptr %i.aem, null
  br i1 %.not.i1906, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1907, label %bb.fz

bb.fz:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1905
  %i.aen = load i32, ptr %i.aem, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1907

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1907: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1905, %bb.fz
  %i.aeo = phi i32 [ %i.aen, %bb.fz ], [ 3, %_ZNK4llvm8TypeSizecvmEv.exit1905 ]
  %i.aep = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.aeo, i32 noundef %i.aeg) ; 2 uses
  %i.aeq = load ptr, ptr %7, align 8, !tbaa !93   ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  store ptr %i.aep, ptr %i.aer, align 8, !tbaa !97
  store ptr %i.aep, ptr %i.aeq, align 8, !tbaa !97
  br label %.thread2655

bb.ga:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !82
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 36
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !83 ; 2 uses
  %i.aew = icmp slt i32 %i.aev, 0
  br i1 %i.aew, label %bb.gb, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit1909

bb.gb:                                            ; preds = %bb.ga
end_hunk_1
begin_hunk_2_@_ZNK4llvm22AMDGPURegisterBankInfo15getInstrMappingERKNS_12MachineInstrE:bb.a
  br i1 %.not.i2115, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2116, label %bb.pa

bb.pa:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2114
  %i.chb = load i32, ptr %i.cha, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2116

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2116: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2114, %bb.pa
  %i.chc = phi i32 [ %i.chb, %bb.pa ], [ 1, %_ZNK4llvm8TypeSizecvmEv.exit2114 ]
  %i.chd = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 1, i32 noundef %i.cgx)
  %i.che = load ptr, ptr %7, align 8, !tbaa !93   ; 2 uses
  store ptr %i.chd, ptr %i.che, align 8, !tbaa !97
  %i.chf = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.chc, i32 noundef %i.cgx)
  %i.chg = getelementptr inbounds nuw i8, ptr %i.che, i64 16
  store ptr %i.chf, ptr %i.chg, align 8, !tbaa !97
  br label %.thread2655

bb.pb:                                            ; preds = %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je, %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  %i.chh = getelementptr inbounds nuw i8, ptr %i.bci, i64 4
  %i.chi = load i32, ptr %i.chh, align 4, !tbaa !83 ; 2 uses
  %i.chj = icmp slt i32 %i.chi, 0
  br i1 %i.chj, label %bb.pc, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2118

bb.pc:                                            ; preds = %bb.pb
  %i.chk = and i32 %i.chi, 2147483647             ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.chm = load i32, ptr %i.chl, align 8, !tbaa !94
  %i.chn = icmp ugt i32 %i.chm, %i.chk
  br i1 %i.chn, label %bb.pd, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2118

bb.pd:                                            ; preds = %bb.pc
  %i.cho = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.chp = zext nneg i32 %i.chk to i64
  %i.chq = load ptr, ptr %i.cho, align 8, !tbaa !93
  %i.chr = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %i.chp
  %i.chs = load i64, ptr %i.chr, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2118

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2118: ; preds = %bb.pb, %bb.pc, %bb.pd
  %.sroa.04.0.i2117 = phi i64 [ %i.chs, %bb.pd ], [ 0, %bb.pc ], [ 0, %bb.pb ]
  store i64 %.sroa.04.0.i2117, ptr %67, align 8
  %i.cht = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %67) ; 2 uses
  %.fca.1.extract318 = extractvalue { i64, i8 } %i.cht, 1
  %i.chu = trunc nuw i8 %.fca.1.extract318 to i1
  br i1 %i.chu, label %bb.pe, label %_ZNK4llvm8TypeSizecvmEv.exit2119

bb.pe:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2118
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2119:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2118
  %.fca.0.extract317 = extractvalue { i64, i8 } %i.cht, 0
  %i.chv = trunc i64 %.fca.0.extract317 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.chw = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 1, i32 noundef %i.chv)
  %i.chx = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %i.chw, ptr %i.chx, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  %i.chy = load ptr, ptr %i.bch, align 8, !tbaa !82
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chy, i64 68
  %i.cia = load i32, ptr %i.chz, align 4, !tbaa !83 ; 2 uses
  %i.cib = icmp slt i32 %i.cia, 0
  br i1 %i.cib, label %bb.pf, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2121

bb.pf:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2119
  %i.cic = and i32 %i.cia, 2147483647             ; 2 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.cie = load i32, ptr %i.cid, align 8, !tbaa !94
  %i.cif = icmp ugt i32 %i.cie, %i.cic
  br i1 %i.cif, label %bb.pg, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2121

bb.pg:                                            ; preds = %bb.pf
  %i.cig = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.cih = zext nneg i32 %i.cic to i64
  %i.cii = load ptr, ptr %i.cig, align 8, !tbaa !93
  %i.cij = getelementptr inbounds nuw [8 x i8], ptr %i.cii, i64 %i.cih
  %i.cik = load i64, ptr %i.cij, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2121

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2121: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2119, %bb.pf, %bb.pg
  %.sroa.04.0.i2120 = phi i64 [ %i.cik, %bb.pg ], [ 0, %bb.pf ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit2119 ]
  store i64 %.sroa.04.0.i2120, ptr %68, align 8
  %i.cil = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %68) ; 2 uses
  %.fca.1.extract312 = extractvalue { i64, i8 } %i.cil, 1
  %i.cim = trunc nuw i8 %.fca.1.extract312 to i1
  br i1 %i.cim, label %bb.ph, label %_ZNK4llvm8TypeSizecvmEv.exit2122

bb.ph:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2121
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2122:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2121
  %.fca.0.extract311 = extractvalue { i64, i8 } %i.cil, 0
  %i.cin = trunc i64 %.fca.0.extract311 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  %i.cio = call noundef zeroext i1 @_ZNK4llvm22AMDGPURegisterBankInfo13isSALUMappingERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.cip = select i1 %i.cio, i32 1, i32 3
  %i.ciq = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.cip, i32 noundef %i.cin)
  %i.cir = load ptr, ptr %7, align 8, !tbaa !93
  %i.cis = getelementptr inbounds nuw i8, ptr %i.cir, i64 16
  store ptr %i.ciq, ptr %i.cis, align 8, !tbaa !97
  br label %.thread2655

bb.pi:                                            ; preds = %bb.je
  %i.cit = getelementptr inbounds nuw i8, ptr %i.bci, i64 68
  %i.ciu = load i32, ptr %i.cit, align 4, !tbaa !83
  %i.civ = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ciw = load ptr, ptr %i.civ, align 8, !tbaa !52
  %i.cix = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.ciu, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.ciw) #21 ; 2 uses
  %.not.i2123 = icmp eq ptr %i.cix, null
  br i1 %.not.i2123, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124.thread, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124.thread: ; preds = %bb.pi
  %i.ciy = load ptr, ptr %7, align 8, !tbaa !93   ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 112), ptr %i.ciy, align 8, !tbaa !97
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2131

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124: ; preds = %bb.pi
  %i.ciz = load i32, ptr %i.cix, align 8, !tbaa !58
  %i.cja = load ptr, ptr %7, align 8, !tbaa !93   ; 4 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 112), ptr %i.cja, align 8, !tbaa !97
  switch i32 %i.ciz, label %bb.pl [
    i32 3, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2131
    i32 1, label %bb.pj
    i32 0, label %bb.pk
  ]

bb.pj:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2131

bb.pk:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2131

bb.pl:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124
  unreachable

_ZN4llvm6AMDGPU15getValueMappingEjj.exit2131:     ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124.thread, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124, %bb.pj, %bb.pk
  %i.cjb = phi ptr [ %i.cja, %bb.pk ], [ %i.cja, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124 ], [ %i.ciy, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124.thread ], [ %i.cja, %bb.pj ]
  %.0.i2128 = phi i64 [ 43, %bb.pk ], [ 17, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124 ], [ 6, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2124.thread ], [ 6, %bb.pj ]
  %i.cjc = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %.0.i2128
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cjb, i64 16
  store ptr %i.cjc, ptr %i.cjd, align 8, !tbaa !97
  br label %.thread2655

bb.pm:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  %i.cje = getelementptr inbounds nuw i8, ptr %i.bci, i64 4
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !83 ; 2 uses
  %i.cjg = icmp slt i32 %i.cjf, 0
  br i1 %i.cjg, label %bb.pn, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2133

bb.pn:                                            ; preds = %bb.pm
  %i.cjh = and i32 %i.cjf, 2147483647             ; 2 uses
  %i.cji = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.cjj = load i32, ptr %i.cji, align 8, !tbaa !94
  %i.cjk = icmp ugt i32 %i.cjj, %i.cjh
  br i1 %i.cjk, label %bb.po, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2133

bb.po:                                            ; preds = %bb.pn
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.cjm = zext nneg i32 %i.cjh to i64
  %i.cjn = load ptr, ptr %i.cjl, align 8, !tbaa !93
  %i.cjo = getelementptr inbounds nuw [8 x i8], ptr %i.cjn, i64 %i.cjm
  %i.cjp = load i64, ptr %i.cjo, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2133

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2133: ; preds = %bb.pm, %bb.pn, %bb.po
  %.sroa.04.0.i2132 = phi i64 [ %i.cjp, %bb.po ], [ 0, %bb.pn ], [ 0, %bb.pm ]
  store i64 %.sroa.04.0.i2132, ptr %69, align 8
  %i.cjq = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %69) ; 2 uses
  %.fca.1.extract300 = extractvalue { i64, i8 } %i.cjq, 1
  %i.cjr = trunc nuw i8 %.fca.1.extract300 to i1
  br i1 %i.cjr, label %bb.pp, label %_ZNK4llvm8TypeSizecvmEv.exit2134

bb.pp:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2133
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2134:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2133
  %.fca.0.extract299 = extractvalue { i64, i8 } %i.cjq, 0
  %i.cjs = trunc i64 %.fca.0.extract299 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  %i.cjt = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %i.cjs) ; 3 uses
  %i.cju = load ptr, ptr %7, align 8, !tbaa !93   ; 3 uses
  store ptr %i.cjt, ptr %i.cju, align 8, !tbaa !97
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cju, i64 16
  store ptr %i.cjt, ptr %i.cjv, align 8, !tbaa !97
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cju, i64 24
  store ptr %i.cjt, ptr %i.cjw, align 8, !tbaa !97
  br label %.thread2655

bb.pq:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.cjx = call noundef i32 @_ZN4llvm6AMDGPU14getIntrinsicIDERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  %i.cjy = call noundef ptr @_ZN4llvm6AMDGPU19lookupRsrcIntrinsicEj(i32 noundef %i.cjx) #21
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 4
  %i.cka = load i8, ptr %i.cjz, align 4, !tbaa !536
  %i.ckb = zext i8 %i.cka to i32
  %i.ckc = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo15getImageMappingERKNS_19MachineRegisterInfoERKNS_12MachineInstrEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.ckb)
  br label %.thread2669

80:                                               ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %81 = icmp eq i32 %i.gj, 4127
  br label %bb.pr

bb.pr:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %80
  %82 = phi i1 [ true, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit ], [ %81, %80 ] ; 3 uses
  %not. = xor i1 %82, true
  %.neg = sext i1 %not. to i32
  %i.ckd = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  %83 = add i32 %i.ckd, -1
  %i.cke = add i32 %83, %.neg                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #21
  %i.ckf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ckg = load ptr, ptr %i.ckf, align 8, !tbaa !82
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.ckg, i64 4
  %i.cki = load i32, ptr %i.ckh, align 4, !tbaa !83 ; 2 uses
  %i.ckj = icmp slt i32 %i.cki, 0
  br i1 %i.ckj, label %bb.ps, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2136

bb.ps:                                            ; preds = %bb.pr
  %i.ckk = and i32 %i.cki, 2147483647             ; 2 uses
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.ckm = load i32, ptr %i.ckl, align 8, !tbaa !94
  %i.ckn = icmp ugt i32 %i.ckm, %i.ckk
  br i1 %i.ckn, label %bb.pt, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2136

bb.pt:                                            ; preds = %bb.ps
  %i.cko = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.ckp = zext nneg i32 %i.ckk to i64
  %i.ckq = load ptr, ptr %i.cko, align 8, !tbaa !93
  %i.ckr = getelementptr inbounds nuw [8 x i8], ptr %i.ckq, i64 %i.ckp
  %i.cks = load i64, ptr %i.ckr, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2136

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2136: ; preds = %bb.pr, %bb.ps, %bb.pt
  %.sroa.04.0.i2135 = phi i64 [ %i.cks, %bb.pt ], [ 0, %bb.ps ], [ 0, %bb.pr ]
  store i64 %.sroa.04.0.i2135, ptr %70, align 8
  %i.ckt = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %70) ; 2 uses
  %.fca.1.extract285 = extractvalue { i64, i8 } %i.ckt, 1
  %i.cku = trunc nuw i8 %.fca.1.extract285 to i1
  br i1 %i.cku, label %bb.pu, label %_ZNK4llvm8TypeSizecvmEv.exit2137

bb.pu:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2136
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2137:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2136
  %.fca.0.extract284 = extractvalue { i64, i8 } %i.ckt, 0
  %i.ckv = trunc i64 %.fca.0.extract284 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21
  %i.ckw = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %i.ckv)
  %i.ckx = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %i.ckw, ptr %i.ckx, align 8, !tbaa !97
  br i1 %82, label %bb.pv, label %bb.qc

bb.pv:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2137
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #21
  %i.cky = load ptr, ptr %i.ckf, align 8, !tbaa !82
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cky, i64 36
  %i.cla = load i32, ptr %i.ckz, align 4, !tbaa !83 ; 2 uses
  %i.clb = icmp slt i32 %i.cla, 0
  br i1 %i.clb, label %bb.pw, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2139

bb.pw:                                            ; preds = %bb.pv
  %i.clc = and i32 %i.cla, 2147483647             ; 2 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.cle = load i32, ptr %i.cld, align 8, !tbaa !94
  %i.clf = icmp ugt i32 %i.cle, %i.clc
  br i1 %i.clf, label %bb.px, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2139

bb.px:                                            ; preds = %bb.pw
  %i.clg = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.clh = zext nneg i32 %i.clc to i64
  %i.cli = load ptr, ptr %i.clg, align 8, !tbaa !93
  %i.clj = getelementptr inbounds nuw [8 x i8], ptr %i.cli, i64 %i.clh
  %i.clk = load i64, ptr %i.clj, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2139

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2139: ; preds = %bb.pv, %bb.pw, %bb.px
  %.sroa.04.0.i2138 = phi i64 [ %i.clk, %bb.px ], [ 0, %bb.pw ], [ 0, %bb.pv ]
  store i64 %.sroa.04.0.i2138, ptr %71, align 8
  %i.cll = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %71) ; 2 uses
  %.fca.1.extract280 = extractvalue { i64, i8 } %i.cll, 1
  %i.clm = trunc nuw i8 %.fca.1.extract280 to i1
  br i1 %i.clm, label %bb.py, label %_ZNK4llvm8TypeSizecvmEv.exit2140

bb.py:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2139
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2140:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2139
  %.fca.0.extract279 = extractvalue { i64, i8 } %i.cll, 0
  %i.cln = trunc i64 %.fca.0.extract279 to i32
  %i.clo = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %i.cln)
  %i.clp = load ptr, ptr %7, align 8, !tbaa !93
  %i.clq = getelementptr inbounds nuw i8, ptr %i.clp, i64 8
  store ptr %i.clo, ptr %i.clq, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #21
  %i.clr = load ptr, ptr %i.ckf, align 8, !tbaa !82
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clr, i64 68
  %i.clt = load i32, ptr %i.cls, align 4, !tbaa !83 ; 2 uses
  %i.clu = icmp slt i32 %i.clt, 0
  br i1 %i.clu, label %bb.pz, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2142

bb.pz:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2140
  %i.clv = and i32 %i.clt, 2147483647             ; 2 uses
  %i.clw = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.clx = load i32, ptr %i.clw, align 8, !tbaa !94
  %i.cly = icmp ugt i32 %i.clx, %i.clv
  br i1 %i.cly, label %bb.qa, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2142

bb.qa:                                            ; preds = %bb.pz
  %i.clz = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.cma = zext nneg i32 %i.clv to i64
  %i.cmb = load ptr, ptr %i.clz, align 8, !tbaa !93
  %i.cmc = getelementptr inbounds nuw [8 x i8], ptr %i.cmb, i64 %i.cma
  %i.cmd = load i64, ptr %i.cmc, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2142

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2142: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2140, %bb.pz, %bb.qa
  %.sroa.04.0.i2141 = phi i64 [ %i.cmd, %bb.qa ], [ 0, %bb.pz ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit2140 ]
  store i64 %.sroa.04.0.i2141, ptr %72, align 8
  %i.cme = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %72) ; 2 uses
  %.fca.1.extract275 = extractvalue { i64, i8 } %i.cme, 1
  %i.cmf = trunc nuw i8 %.fca.1.extract275 to i1
  br i1 %i.cmf, label %bb.qb, label %_ZNK4llvm8TypeSizecvmEv.exit2143

bb.qb:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2142
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2143:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2142
  %.fca.0.extract274 = extractvalue { i64, i8 } %i.cme, 0
  %i.cmg = trunc i64 %.fca.0.extract274 to i32
  %i.cmh = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %i.cmg)
  %i.cmi = load ptr, ptr %7, align 8, !tbaa !93
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 16
  store ptr %i.cmh, ptr %i.cmj, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  br label %bb.qc

bb.qc:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2143, %_ZNK4llvm8TypeSizecvmEv.exit2137
  %i.cmk = load ptr, ptr %i.ckf, align 8, !tbaa !82
  %i.cml = zext i32 %i.cke to i64                 ; 2 uses
  %i.cmm = getelementptr inbounds nuw [32 x i8], ptr %i.cmk, i64 %i.cml
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cmm, i64 4
  %i.cmo = load i32, ptr %i.cmn, align 4, !tbaa !83
  %i.cmp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cmq = load ptr, ptr %i.cmp, align 8, !tbaa !52
  %i.cmr = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.cmo, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.cmq)
  %i.cms = load ptr, ptr %7, align 8, !tbaa !93
  %i.cmt = getelementptr inbounds nuw [8 x i8], ptr %i.cms, i64 %i.cml
  store ptr %i.cmr, ptr %i.cmt, align 8, !tbaa !97
  %i.cmu = icmp eq i32 %i.cke, 3
  br i1 %i.cmu, label %bb.qd, label %bb.qh

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #21
  %i.cmv = load ptr, ptr %i.ckf, align 8, !tbaa !82
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 68
  %i.cmx = load i32, ptr %i.cmw, align 4, !tbaa !83 ; 2 uses
  %i.cmy = icmp slt i32 %i.cmx, 0
  br i1 %i.cmy, label %bb.qe, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2145

bb.qe:                                            ; preds = %bb.qd
  %i.cmz = and i32 %i.cmx, 2147483647             ; 2 uses
  %i.cna = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.cnb = load i32, ptr %i.cna, align 8, !tbaa !94
  %i.cnc = icmp ugt i32 %i.cnb, %i.cmz
  br i1 %i.cnc, label %bb.qf, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2145

bb.qf:                                            ; preds = %bb.qe
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.cne = zext nneg i32 %i.cmz to i64
  %i.cnf = load ptr, ptr %i.cnd, align 8, !tbaa !93
  %i.cng = getelementptr inbounds nuw [8 x i8], ptr %i.cnf, i64 %i.cne
  %i.cnh = load i64, ptr %i.cng, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2145

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2145: ; preds = %bb.qd, %bb.qe, %bb.qf
  %.sroa.04.0.i2144 = phi i64 [ %i.cnh, %bb.qf ], [ 0, %bb.qe ], [ 0, %bb.qd ]
  store i64 %.sroa.04.0.i2144, ptr %73, align 8
  %i.cni = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %73) ; 2 uses
  %.fca.1.extract267 = extractvalue { i64, i8 } %i.cni, 1
  %i.cnj = trunc nuw i8 %.fca.1.extract267 to i1
  br i1 %i.cnj, label %bb.qg, label %_ZNK4llvm8TypeSizecvmEv.exit2146

bb.qg:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2145
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2146:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2145
  %.fca.0.extract266 = extractvalue { i64, i8 } %i.cni, 0
  %i.cnk = trunc i64 %.fca.0.extract266 to i32    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #21
  %i.cnl = icmp ugt i32 %i.cnk, 256
  %spec.store.select47 = select i1 %i.cnl, i32 512, i32 %i.cnk
  %i.cnm = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %spec.store.select47)
  %i.cnn = load ptr, ptr %7, align 8, !tbaa !93
  %i.cno = getelementptr inbounds nuw i8, ptr %i.cnn, i64 16
  store ptr %i.cnm, ptr %i.cno, align 8, !tbaa !97
  br label %.thread2655

bb.qh:                                            ; preds = %bb.qc
  %i.cnp = select i1 %82, i32 4, i32 2            ; 2 uses
  %i.cnq = icmp ult i32 %i.cnp, %i.cke
  br i1 %i.cnq, label %.lr.ph2773, label %.thread2655

.lr.ph2773:                                       ; preds = %bb.qh
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.cns = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.cnt = zext nneg i32 %i.cnp to i64
  br label %bb.qi

bb.qi:                                            ; preds = %.lr.ph2773, %_ZNK4llvm8TypeSizecvmEv.exit2149
  %indvars.iv2801 = phi i64 [ %i.cnt, %.lr.ph2773 ], [ %indvars.iv.next2802, %_ZNK4llvm8TypeSizecvmEv.exit2149 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #21
  %i.cnu = load ptr, ptr %i.ckf, align 8, !tbaa !82
  %i.cnv = getelementptr inbounds nuw [32 x i8], ptr %i.cnu, i64 %indvars.iv2801
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnv, i64 4
  %i.cnx = load i32, ptr %i.cnw, align 4, !tbaa !83 ; 2 uses
  %i.cny = icmp slt i32 %i.cnx, 0
  br i1 %i.cny, label %bb.qj, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2148

bb.qj:                                            ; preds = %bb.qi
  %i.cnz = and i32 %i.cnx, 2147483647             ; 2 uses
  %i.coa = load i32, ptr %i.cnr, align 8, !tbaa !94
  %i.cob = icmp ugt i32 %i.coa, %i.cnz
  br i1 %i.cob, label %bb.qk, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2148

bb.qk:                                            ; preds = %bb.qj
  %i.coc = zext nneg i32 %i.cnz to i64
  %i.cod = load ptr, ptr %i.cns, align 8, !tbaa !93
  %i.coe = getelementptr inbounds nuw [8 x i8], ptr %i.cod, i64 %i.coc
  %i.cof = load i64, ptr %i.coe, align 8, !tbaa !83
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2148

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2148: ; preds = %bb.qi, %bb.qj, %bb.qk
  %.sroa.04.0.i2147 = phi i64 [ %i.cof, %bb.qk ], [ 0, %bb.qj ], [ 0, %bb.qi ]
  store i64 %.sroa.04.0.i2147, ptr %74, align 8
  %i.cog = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %74) ; 2 uses
  %.fca.1.extract256 = extractvalue { i64, i8 } %i.cog, 1
  %i.coh = trunc nuw i8 %.fca.1.extract256 to i1
  br i1 %i.coh, label %bb.ql, label %_ZNK4llvm8TypeSizecvmEv.exit2149

bb.ql:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2148
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2149:                 ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2148
  %.fca.0.extract255 = extractvalue { i64, i8 } %i.cog, 0
  %i.coi = trunc i64 %.fca.0.extract255 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  %i.coj = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %i.coi)
  %i.cok = load ptr, ptr %7, align 8, !tbaa !93
  %i.col = getelementptr inbounds nuw [8 x i8], ptr %i.cok, i64 %indvars.iv2801
  store ptr %i.coj, ptr %i.col, align 8, !tbaa !97
  %indvars.iv.next2802 = add nuw nsw i64 %indvars.iv2801, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next2802 to i32
  %exitcond.not = icmp eq i32 %i.cke, %lftr.wideiv
  br i1 %exitcond.not, label %.thread2655, label %bb.qi, !llvm.loop !850

bb.qm:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.com = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #21
  %i.con = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 41 uses
  %i.coo = load ptr, ptr %i.con, align 8, !tbaa !82 ; 31 uses
  %i.cop = zext i32 %i.com to i64
  %i.coq = getelementptr inbounds nuw [32 x i8], ptr %i.coo, i64 %i.cop
  %i.cor = getelementptr inbounds nuw i8, ptr %i.coq, i64 16
  %i.cos = load i32, ptr %i.cor, align 8, !tbaa !83
  switch i32 %i.cos, label %bb.sy [
    i32 3487, label %bb.qn
    i32 3490, label %bb.qn
    i32 3489, label %bb.qn
    i32 3485, label %bb.qn
    i32 3497, label %bb.qn
    i32 2502, label %bb.qr
    i32 2501, label %bb.qr
    i32 2489, label %bb.qr
    i32 2488, label %bb.qr
    i32 2503, label %bb.qr
    i32 2514, label %bb.qr
    i32 2513, label %bb.qr
    i32 2515, label %bb.qr
    i32 2516, label %bb.qr
    i32 2464, label %bb.qr
    i32 2461, label %bb.qr
    i32 2462, label %bb.qr
    i32 2463, label %bb.qr
    i32 2469, label %bb.qr
    i32 2470, label %bb.qr
    i32 2471, label %bb.qr
    i32 2468, label %bb.qr
    i32 2446, label %bb.qr
    i32 2447, label %bb.qr
    i32 2465, label %bb.qs
    i32 2466, label %bb.qs
    i32 2445, label %bb.qw
    i32 2454, label %bb.qw
    i32 2478, label %bb.ra
    i32 2477, label %bb.rb
    i32 2479, label %bb.rc
    i32 3465, label %bb.rd
    i32 3496, label %bb.re
    i32 3498, label %bb.re
    i32 3502, label %bb.rf
    i32 3505, label %bb.rg
    i32 2475, label %bb.rh
    i32 2474, label %bb.rj
    i32 3292, label %bb.rl
    i32 3313, label %bb.rl
    i32 3727, label %bb.rm
    i32 3308, label %bb.rm
    i32 3422, label %bb.rn
    i32 3447, label %bb.rn
    i32 3403, label %bb.rn
    i32 3428, label %bb.rn
    i32 3455, label %bb.rn
    i32 3453, label %bb.rn
    i32 3425, label %bb.ro
    i32 3423, label %bb.ro
    i32 3450, label %bb.ro
    i32 3448, label %bb.ro
    i32 3426, label %bb.rp
    i32 3451, label %bb.rp
    i32 3427, label %bb.rp
    i32 3452, label %bb.rp
    i32 3456, label %bb.rp
    i32 3454, label %bb.rp
    i32 3587, label %bb.rq
    i32 3612, label %bb.rq
    i32 3620, label %bb.rq
    i32 3618, label %bb.rq
    i32 3568, label %bb.rq
    i32 3593, label %bb.rq
    i32 3590, label %bb.rr
    i32 3588, label %bb.rr
    i32 3615, label %bb.rr
    i32 3613, label %bb.rr
    i32 3591, label %bb.rs
    i32 3616, label %bb.rs
    i32 3621, label %bb.rs
    i32 3619, label %bb.rs
    i32 3291, label %bb.rt
    i32 2456, label %bb.rv
    i32 2455, label %bb.rv
    i32 2457, label %bb.rv
    i32 2460, label %bb.rw
    i32 2458, label %bb.rw
    i32 2459, label %bb.rw
    i32 2288, label %bb.rx
    i32 2289, label %bb.rx
    i32 2287, label %bb.rx
    i32 2286, label %bb.ry
    i32 2284, label %bb.ry
    i32 2285, label %bb.ry
    i32 2283, label %bb.ry
    i32 2521, label %bb.rz
    i32 2519, label %bb.rz
    i32 2520, label %bb.rz
    i32 2518, label %bb.rz
    i32 2508, label %bb.rz
    i32 2506, label %bb.rz
    i32 2507, label %bb.rz
    i32 2505, label %bb.rz
    i32 3315, label %bb.sa
    i32 3314, label %bb.sa
    i32 2509, label %bb.sa
    i32 2504, label %bb.sa
    i32 3309, label %bb.sb
    i32 2444, label %bb.si
    i32 2472, label %bb.si
    i32 2453, label %bb.sj
    i32 2450, label %bb.sj
    i32 2451, label %bb.sj
    i32 2452, label %bb.sj
    i32 3504, label %bb.sk
    i32 3468, label %bb.sl
    i32 3519, label %bb.sl
    i32 3467, label %bb.sm
    i32 3472, label %bb.sm
    i32 3471, label %bb.sn
    i32 3483, label %bb.so
    i32 3484, label %bb.so
    i32 3398, label %bb.sp
    i32 3650, label %bb.sq
    i32 3651, label %bb.sq
    i32 3493, label %bb.sw
    i32 3494, label %bb.sw
    i32 2493, label %bb.sx
    i32 2517, label %bb.sx
  ]

bb.qn:                                            ; preds = %bb.qm, %bb.qm, %bb.qm, %bb.qm, %bb.qm
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #21
  %i.cot = getelementptr inbounds nuw i8, ptr %i.coo, i64 4
  %i.cou = load i32, ptr %i.cot, align 4, !tbaa !83 ; 2 uses
  %i.cov = icmp slt i32 %i.cou, 0
  br i1 %i.cov, label %bb.qo, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit2151

bb.qo:                                            ; preds = %bb.qn
  %i.cow = and i32 %i.cou, 2147483647             ; 2 uses
  %i.cox = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.coy = load i32, ptr %i.cox, align 8, !tbaa !94
  %i.coz = icmp ugt i32 %i.coy, %i.cow
end_hunk_2
begin_hunk_3_@_ZNK4llvm22AMDGPURegisterBankInfo15getInstrMappingERKNS_12MachineInstrE:bb.a
  %i.dpe = and i32 %i.dpd, 255
  %i.dpf = icmp eq i32 %i.dpe, 0
  br i1 %i.dpf, label %bb.th, label %bb.tk

bb.th:                                            ; preds = %.lr.ph2765
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dpc, i64 4
  %i.dph = load i32, ptr %i.dpg, align 4, !tbaa !83 ; 2 uses
  %i.dpi = load ptr, ptr %i.dot, align 8, !tbaa !52
  %i.dpj = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.dph, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dpi) #21 ; 2 uses
  %.not.i2291 = icmp eq ptr %i.dpj, null
  br i1 %.not.i2291, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2292, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.dpk = load i32, ptr %i.dpj, align 8, !tbaa !58
  br label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2292

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2292: ; preds = %bb.th, %bb.ti
  %i.dpl = phi i32 [ %i.dpk, %bb.ti ], [ 3, %bb.th ]
  %i.dpm = load ptr, ptr %i.dot, align 8, !tbaa !52
  %i.dpn = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.dph, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dpm) #21 ; 2 uses
  %.fca.1.extract71 = extractvalue { i64, i8 } %i.dpn, 1
  %i.dpo = trunc nuw i8 %.fca.1.extract71 to i1
  br i1 %i.dpo, label %bb.tj, label %_ZNK4llvm8TypeSizecvmEv.exit2293

bb.tj:                                            ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2292
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2293:                 ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2292
  %.fca.0.extract70 = extractvalue { i64, i8 } %i.dpn, 0
  %i.dpp = trunc i64 %.fca.0.extract70 to i32
  %i.dpq = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef %i.dpl, i32 noundef %i.dpp)
  %i.dpr = load ptr, ptr %7, align 8, !tbaa !93
  %i.dps = getelementptr inbounds nuw [8 x i8], ptr %i.dpr, i64 %indvars.iv2792
  store ptr %i.dpq, ptr %i.dps, align 8, !tbaa !97
  %.pre2818 = load i24, ptr %i.fw, align 8
  br label %bb.tk

bb.tk:                                            ; preds = %.lr.ph2765, %_ZNK4llvm8TypeSizecvmEv.exit2293
  %i.dpt = phi i24 [ %i.dpa, %.lr.ph2765 ], [ %.pre2818, %_ZNK4llvm8TypeSizecvmEv.exit2293 ] ; 2 uses
  %indvars.iv.next2793 = add nuw nsw i64 %indvars.iv2792, 1 ; 2 uses
  %i.dpu = zext i24 %i.dpt to i64
  %i.dpv = icmp samesign ult i64 %indvars.iv.next2793, %i.dpu
  br i1 %i.dpv, label %.lr.ph2765, label %.thread2655, !llvm.loop !853

bb.tl:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dpw = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo22getInstrMappingForLoadERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %.thread2669

bb.tm:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dpx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.dpy = load ptr, ptr %i.dpx, align 8, !tbaa !82
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dpy, i64 4
  %i.dqa = load i32, ptr %i.dpz, align 4, !tbaa !83
  %i.dqb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dqc = load ptr, ptr %i.dqb, align 8, !tbaa !52
  %i.dqd = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo16getVGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.dqa, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dqc)
  %i.dqe = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %i.dqd, ptr %i.dqe, align 8, !tbaa !97
  %i.dqf = load ptr, ptr %i.dpx, align 8, !tbaa !82
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dqf, i64 36
  %i.dqh = load i32, ptr %i.dqg, align 4, !tbaa !83
  %i.dqi = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo21getValueMappingForPtrERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(520) %i.e, i32 %i.dqh)
  %i.dqj = load ptr, ptr %7, align 8, !tbaa !93
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dqj, i64 8
  store ptr %i.dqi, ptr %i.dqk, align 8, !tbaa !97
  %i.dql = load ptr, ptr %i.dpx, align 8, !tbaa !82
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dql, i64 68
  %i.dqn = load i32, ptr %i.dqm, align 4, !tbaa !83
  %i.dqo = load ptr, ptr %i.dqb, align 8, !tbaa !52
  %i.dqp = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo16getVGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.dqn, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dqo)
  %i.dqq = load ptr, ptr %7, align 8, !tbaa !93
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.dqq, i64 16
  store ptr %i.dqp, ptr %i.dqr, align 8, !tbaa !97
  br label %.thread2655

bb.tn:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dqs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.dqt = load ptr, ptr %i.dqs, align 8, !tbaa !82
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dqt, i64 4
  %i.dqv = load i32, ptr %i.dqu, align 4, !tbaa !83
  %i.dqw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.dqx = load ptr, ptr %i.dqw, align 8, !tbaa !52
  %i.dqy = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo16getVGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.dqv, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dqx)
  %i.dqz = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %i.dqy, ptr %i.dqz, align 8, !tbaa !97
  %i.dra = load ptr, ptr %i.dqs, align 8, !tbaa !82
  %i.drb = getelementptr inbounds nuw i8, ptr %i.dra, i64 36
  %i.drc = load i32, ptr %i.drb, align 4, !tbaa !83
  %i.drd = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo21getValueMappingForPtrERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(520) %i.e, i32 %i.drc)
  %i.dre = load ptr, ptr %7, align 8, !tbaa !93
  %i.drf = getelementptr inbounds nuw i8, ptr %i.dre, i64 8
  store ptr %i.drd, ptr %i.drf, align 8, !tbaa !97
  %i.drg = load ptr, ptr %i.dqs, align 8, !tbaa !82
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drg, i64 68
  %i.dri = load i32, ptr %i.drh, align 4, !tbaa !83
  %i.drj = load ptr, ptr %i.dqw, align 8, !tbaa !52
  %i.drk = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo16getVGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.dri, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.drj)
  %i.drl = load ptr, ptr %7, align 8, !tbaa !93
  %i.drm = getelementptr inbounds nuw i8, ptr %i.drl, i64 16
  store ptr %i.drk, ptr %i.drm, align 8, !tbaa !97
  %i.drn = load ptr, ptr %i.dqs, align 8, !tbaa !82
  %i.dro = getelementptr inbounds nuw i8, ptr %i.drn, i64 100
  %i.drp = load i32, ptr %i.dro, align 4, !tbaa !83
  %i.drq = load ptr, ptr %i.dqw, align 8, !tbaa !52
  %i.drr = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo16getVGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.drp, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.drq)
  %i.drs = load ptr, ptr %7, align 8, !tbaa !93
  %i.drt = getelementptr inbounds nuw i8, ptr %i.drs, i64 24
  store ptr %i.drr, ptr %i.drt, align 8, !tbaa !97
  br label %.thread2655

bb.to:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dru = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.drv = load ptr, ptr %i.dru, align 8, !tbaa !82
  %i.drw = getelementptr inbounds nuw i8, ptr %i.drv, i64 4
  %i.drx = load i32, ptr %i.drw, align 4, !tbaa !83
  %i.dry = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.drz = load ptr, ptr %i.dry, align 8, !tbaa !52
  %i.dsa = call noundef ptr @_ZNK4llvm16RegisterBankInfo10getRegBankENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.drx, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.drz) #21 ; 2 uses
  %.not.i2294 = icmp eq ptr %i.dsa, null
  br i1 %.not.i2294, label %.thread2708, label %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2295

_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2295: ; preds = %bb.to
  %i.dsb = load i32, ptr %i.dsa, align 8, !tbaa !58
  %.not1749 = icmp eq i32 %i.dsb, 1
  br i1 %.not1749, label %.thread2708, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2297

.thread2708:                                      ; preds = %bb.to, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2295
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2297

_ZN4llvm6AMDGPU15getValueMappingEjj.exit2297:     ; preds = %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2295, %.thread2708
  %.012.i2296 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 16), %.thread2708 ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2295 ]
  %i.dsc = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %.012.i2296, ptr %i.dsc, align 8, !tbaa !97
  br label %.thread2655

bb.tp:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dsd = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm22AMDGPURegisterBankInfo20getDefaultMappingVOPERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %.thread2669

bb.tq:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dse = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dsf = load ptr, ptr %i.dse, align 8, !tbaa !82
  %i.dsg = getelementptr inbounds nuw i8, ptr %i.dsf, i64 4
  %i.dsh = load i32, ptr %i.dsg, align 4, !tbaa !83
  %i.dsi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dsj = load ptr, ptr %i.dsi, align 8, !tbaa !52
  %i.dsk = call noundef ptr @_ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 %i.dsh, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dsj)
  %i.dsl = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %i.dsk, ptr %i.dsl, align 8, !tbaa !97
  br label %.thread2655

bb.tr:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dsm = load ptr, ptr %7, align 8, !tbaa !93
  store ptr @_ZN4llvm6AMDGPUL11ValMappingsE, ptr %i.dsm, align 8, !tbaa !97
  br label %.thread2655

bb.ts:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EEC2Em.exit
  %i.dsn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dso = load ptr, ptr %i.dsn, align 8, !tbaa !82
  %i.dsp = getelementptr inbounds nuw i8, ptr %i.dso, i64 4
  %i.dsq = load i32, ptr %i.dsp, align 4, !tbaa !83
  %i.dsr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dss = load ptr, ptr %i.dsr, align 8, !tbaa !52
  %i.dst = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.dsq, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dss) #21 ; 2 uses
  %.fca.1.extract54 = extractvalue { i64, i8 } %i.dst, 1
  %i.dsu = trunc nuw i8 %.fca.1.extract54 to i1
  br i1 %i.dsu, label %bb.tt, label %_ZNK4llvm8TypeSizecvmEv.exit2299

bb.tt:                                            ; preds = %bb.ts
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2299:                 ; preds = %bb.ts
  %i.dsv = load ptr, ptr %i.dsn, align 8, !tbaa !82
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.dsv, i64 36
  %i.dsx = load i32, ptr %i.dsw, align 4, !tbaa !83
  %i.dsy = load ptr, ptr %i.dsr, align 8, !tbaa !52
  %i.dsz = call { i64, i8 } @_ZNK4llvm16RegisterBankInfo13getSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %i.dsx, ptr noundef nonnull align 8 dereferenceable(520) %i.e, ptr noundef nonnull align 8 dereferenceable(316) %i.dsy) #21 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.dsz, 1
  %i.dta = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.dta, label %bb.tu, label %_ZNK4llvm8TypeSizecvmEv.exit2300

bb.tu:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2299
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit2300:                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2299
  %.fca.0.extract = extractvalue { i64, i8 } %i.dsz, 0
  %.fca.0.extract53 = extractvalue { i64, i8 } %i.dst, 0
  %i.dtb = trunc i64 %.fca.0.extract53 to i32
  %i.dtc = trunc i64 %.fca.0.extract to i32
  %i.dtd = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %i.dtb)
  %i.dte = load ptr, ptr %7, align 8, !tbaa !93   ; 2 uses
  store ptr %i.dtd, ptr %i.dte, align 8, !tbaa !97
  %i.dtf = call noundef ptr @_ZN4llvm6AMDGPU15getValueMappingEjj(i32 noundef 3, i32 noundef %i.dtc)
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.dte, i64 8
  store ptr %i.dtf, ptr %i.dtg, align 8, !tbaa !97
  br label %.thread2655

.thread2655:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit2149, %bb.tk, %bb.sv, %_ZNK4llvm8TypeSizecvmEv.exit1985, %scalar.ph, %middle.block, %bb.qh, %bb.tg, %bb.sq, %bb.im, %_ZNK4llvm8TypeSizecvmEv.exit1902, %_ZNK4llvm8TypeSizecvmEv.exit2152, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2161, %_ZNK4llvm8TypeSizecvmEv.exit2167, %bb.ra, %bb.rb, %bb.rc, %bb.rd, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2207, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2213, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2219, %_ZNK4llvm8TypeSizecvmEv.exit2220, %_ZNK4llvm8TypeSizecvmEv.exit2221, %bb.rl, %bb.rm, %bb.rn, %bb.ro, %bb.rp, %bb.rq, %bb.rr, %bb.rs, %_ZNK4llvm8TypeSizecvmEv.exit2225, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2234, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2240, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2246, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2252, %bb.rz, %bb.sa, %switch.lookup3106, %bb.si, %bb.sj, %bb.sk, %bb.sl, %bb.sm, %bb.sn, %bb.so, %bb.sw, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1814, %bb.bd, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1799, %bb.fn, %bb.ej, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2281, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2287, %_ZNK4llvm8TypeSizecvmEv.exit2146, %_ZNK4llvm8TypeSizecvmEv.exit2002, %_ZNK4llvm8TypeSizecvmEv.exit2005, %bb.kf, %_ZNK4llvm8TypeSizecvmEv.exit2015, %_ZNK4llvm8TypeSizecvmEv.exit2024, %_ZNK4llvm8TypeSizecvmEv.exit2030, %_ZNK4llvm8TypeSizecvmEv.exit2041, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2054, %_ZNK4llvm8TypeSizecvmEv.exit2055, %_ZNK4llvm8TypeSizecvmEv.exit2057, %_ZNK4llvm8TypeSizecvmEv.exit2058, %_ZNK4llvm8TypeSizecvmEv.exit2059, %_ZNK4llvm8TypeSizecvmEv.exit2060, %bb.my, %bb.ni, %bb.ns, %switch.lookup, %_ZNK4llvm8TypeSizecvmEv.exit2086, %_ZNK4llvm8TypeSizecvmEv.exit2098, %_ZNK4llvm8TypeSizecvmEv.exit2104, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2109, %_ZNK4llvm8TypeSizecvmEv.exit2111, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit2116, %_ZNK4llvm8TypeSizecvmEv.exit2122, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2131, %_ZNK4llvm8TypeSizecvmEv.exit2134, %_ZNK4llvm8TypeSizecvmEv.exit2300, %bb.tr, %bb.tq, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit2297, %bb.tn, %bb.tm, %_ZNK4llvm8TypeSizecvmEv.exit1996, %bb.iz, %_ZNK4llvm8TypeSizecvmEv.exit1993, %bb.ir, %bb.iq, %bb.ip, %bb.il, %_ZL12regBankUnionjj.exit1970, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1952, %_ZNK4llvm8TypeSizecvmEv.exit1940, %_ZNK4llvm8TypeSizecvmEv.exit1937, %_ZNK4llvm8TypeSizecvmEv.exit1931, %_ZNK4llvm8TypeSizecvmEv.exit1929, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1925, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1916, %_ZNK4llvm22AMDGPURegisterBankInfo12getRegBankIDENS_8RegisterERKNS_19MachineRegisterInfoEj.exit1907, %_ZNK4llvm8TypeSizecvmEv.exit1884, %_ZNK4llvm8TypeSizecvmEv.exit1880, %bb.et, %_ZN4llvm6AMDGPU15getValueMappingEjj.exit1871, %_ZNK4llvm8TypeSizecvmEv.exit1862, %_ZNK4llvm8TypeSizecvmEv.exit1859
  %i.dth = call noundef ptr @_ZNK4llvm16RegisterBankInfo18getOperandsMappingERKNS_15SmallVectorImplIPKNS0_12ValueMappingEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  %i.dti = load i24, ptr %i.fw, align 8
  %i.dtj = zext i24 %i.dti to i32
  %i.dtk = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo25getInstructionMappingImplEbjjPKNS0_12ValueMappingEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, ptr noundef %i.dth, i32 noundef %i.dtj) #21
  br label %.thread2669

.thread2669:                                      ; preds = %.thread2664, %bb.ei, %bb.qr, %bb.sp, %bb.sx, %bb.sy, %bb.jn, %bb.jo, %bb.dv, %bb.dw, %bb.dn, %bb.do, %bb.dd, %bb.de, %.thread2655, %bb.tp, %bb.tl, %bb.pq, %bb.jw, %bb.jv, %bb.js, %bb.jr, %bb.jq, %bb.jg, %bb.jf, %bb.eb, %bb.ea, %bb.dx, %bb.cu, %bb.ck, %bb.ca, %bb.bz, %bb.by, %bb.br, %bb.bq, %bb.am
  %.11 = phi ptr [ %i.gk, %bb.am ], [ %.2, %bb.bq ], [ %i.ls, %bb.br ], [ %i.dtk, %.thread2655 ], [ %i.mq, %bb.by ], [ %i.mr, %bb.bz ], [ %i.ms, %bb.ca ], [ %.3, %bb.ck ], [ %.4, %bb.cu ], [ %i.dsd, %bb.tp ], [ %i.ql, %bb.de ], [ %i.sc, %bb.do ], [ %i.tc, %bb.dx ], [ %i.tj, %bb.ea ], [ %i.tk, %bb.eb ], [ %i.dko, %bb.sp ], [ %i.bcn, %bb.jf ], [ %i.bco, %bb.jg ], [ %i.tb, %bb.dw ], [ %i.bdn, %bb.jq ], [ %i.bdo, %bb.jr ], [ %i.bdp, %bb.js ], [ %i.bdw, %bb.jv ], [ %i.bdx, %bb.jw ], [ %i.ckc, %bb.pq ], [ %i.bdl, %bb.jo ], [ %i.dpw, %bb.tl ], [ %i.qk, %bb.dd ], [ %i.sb, %bb.dn ], [ %i.ta, %bb.dv ], [ %i.bdk, %bb.jn ], [ %i.dmd, %bb.sy ], [ %i.dmc, %bb.sx ], [ %i.cpk, %bb.qr ], [ %i.ux, %.thread2664 ], [ %i.ur, %bb.ei ]
  %i.dtl = load ptr, ptr %7, align 8, !tbaa !93   ; 2 uses
  %i.dtm = icmp eq ptr %i.dtl, %i.ga
  br i1 %i.dtm, label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EED2Ev.exit, label %bb.tv

bb.tv:                                            ; preds = %.thread2669
  call void @free(ptr noundef %i.dtl) #21
  br label %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EED2Ev.exit: ; preds = %.thread2669, %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.tw

bb.tw:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread2627, %bb.n, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj1EED2Ev.exit, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EED2Ev.exit, %bb.aj, %_ZNK4llvm8TypeSizecvmEv.exit1769
  %.13 = phi ptr [ %i.fp, %bb.aj ], [ %i.da, %_ZNK4llvm8TypeSizecvmEv.exit1769 ], [ %i.fo, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread2627 ], [ %.11, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj8EED2Ev.exit ], [ %i.bd, %bb.n ], [ %i.bv, %_ZN4llvm11SmallVectorIPKNS_16RegisterBankInfo12ValueMappingELj1EED2Ev.exit ]
  ret ptr %.13
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4llvm16RegisterBankInfo15getValueMappingEjjRKNS_12RegisterBankE(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo19getInstrMappingImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16RegisterBankInfo16applyMappingImplERNS_16MachineIRBuilderERKNS0_14OperandsMapperE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(120) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm25AMDGPUGenRegisterBankInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm16RegisterBankInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm16RegisterBankInfo18isDivergentRegBankEPKNS_12RegisterBankE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm16RegisterBankInfo16getBreakDownCostERKNS0_12ValueMappingEPKNS_12RegisterBankE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 -1
}

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZNK4llvm16RegisterBankInfo15getInstrMappingERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16RegisterBankInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm16RegisterBankInfoE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i32, ptr %i.a, align 4, !tbaa !870  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_10MCRegisterEPKNS_15MCRegisterClassENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !871
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_10MCRegisterEPKNS_15MCRegisterClassENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit

_ZN4llvm8DenseMapINS_10MCRegisterEPKNS_15MCRegisterClassENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !872  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapINS_10MCRegisterEPKNS_15MCRegisterClassENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !873
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !874
  %i.s = zext i32 %i.n to i64
  %i.t = add nuw nsw i64 %i.s, 31
  %i.u = lshr i64 %i.t, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !28   ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.x = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !538 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIKN4llvm16RegisterBankInfo18InstructionMappingEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIKN4llvm16RegisterBankInfo18InstructionMappingEEclEPS3_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 24) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN4llvm16RegisterBankInfo18InstructionMappingEEclEPS3_.exit.i.i.i.i, %bb.c
  %i.ae = add i32 %.0.i3.i.i, -1
  %i.af = and i32 %i.ae, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !862

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.u
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !863

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.m, align 4, !tbaa !872 ; 2 uses
  %i.ag = icmp eq i32 %.pr.i, 0
  br i1 %i.ag, label %_ZN4llvm8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !873
  %i.ai = zext i32 %.pr.i to i64                  ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ah, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S8_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S8_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_10MCRegisterEPKNS_15MCRegisterClassENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEv.exit.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !875 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapINS_9hash_codeESt10unique_ptrIA_NS_16RegisterBankInfo12ValueMappingESt14default_deleteIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i1

.lr.ph7.preheader.i.i1:                           ; preds = %_ZN4llvm8DenseMapINS_9hash_codeESt10unique_ptrIKNS_16RegisterBankInfo18InstructionMappingESt14default_deleteIS5_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S8_EEED2Ev.exit
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !876
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !877
  %i.av = zext i32 %i.aq to i64
  %i.aw = add nuw nsw i64 %i.av, 31
  %i.ax = lshr i64 %i.aw, 5
  br label %.lr.ph7.i.i2

.lr.ph7.i.i2:                                     ; preds = %._crit_edge.i.i10, %.lr.ph7.preheader.i.i1
  %indvars.iv.i.i3 = phi i64 [ 0, %.lr.ph7.preheader.i.i1 ], [ %indvars.iv.next.i.i11, %._crit_edge.i.i10 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i3
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28 ; 2 uses
  %.not11.i2.i.i4 = icmp eq i32 %i.az, 0
  br i1 %.not11.i2.i.i4, label %._crit_edge.i.i10, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %.lr.ph7.i.i2
  %indvars.iv.tr.i.i6 = trunc nuw i64 %indvars.iv.i.i3 to i32
  %i.ba = shl nuw i32 %indvars.iv.tr.i.i6, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIA_NS_16RegisterBankInfo12ValueMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i5
  %.0.i3.i.i7 = phi i32 [ %i.az, %.lr.ph.i.i5 ], [ %i.bi, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIA_NS_16RegisterBankInfo12ValueMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i7, i1 true)
  %i.bc = or disjoint i32 %i.bb, %i.ba
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i8, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIA_NS_16RegisterBankInfo12ValueMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIA_N4llvm16RegisterBankInfo12ValueMappingEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIA_N4llvm16RegisterBankInfo12ValueMappingEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIA_NS_16RegisterBankInfo12ValueMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIA_NS_16RegisterBankInfo12ValueMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_N4llvm16RegisterBankInfo12ValueMappingEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i, %bb.e
  %i.bh = add i32 %.0.i3.i.i7, -1
  %i.bi = and i32 %i.bh, %.0.i3.i.i7              ; 2 uses
  %.not11.i.i.i9 = icmp eq i32 %i.bi, 0
  br i1 %.not11.i.i.i9, label %._crit_edge.i.i10, label %bb.e, !llvm.loop !864

._crit_edge.i.i10:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9hash_codeESt10unique_ptrIA_NS_16RegisterBankInfo12ValueMappingESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i2
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i3, 1 ; 2 uses
  %.not.i.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %i.ax
end_hunk_3
