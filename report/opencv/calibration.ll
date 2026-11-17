Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration?download=true
inline.NumInlined: 1836
inline.NumDeleted: 634
begin_hunk_0_@_ZL10runAndSaveRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_IN2cv6Point_IfEESaISA_EESaISC_EENS8_5Size_IiEESI_7PatternffbfiRNS8_3MatESL_bbb:bb.a
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 24
  %i.amu = load ptr, ptr %i.amt, align 8
  invoke void %i.amu(ptr noundef nonnull align 8 dereferenceable(8) %i.amr, ptr noundef nonnull align 8 dereferenceable(688) %68, ptr noundef nonnull align 8 dereferenceable(208) %62, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit241.i unwind label %bb.if, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit241.i:            ; preds = %bb.ia
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ala) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.alb) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.alc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  %i.amv = load ptr, ptr %i.zt, align 8, !tbaa !132
  %i.amw = load ptr, ptr %102, align 8, !tbaa !130
  %i.amx = ptrtoint ptr %i.amv to i64
  %i.amy = ptrtoint ptr %i.amw to i64
  %i.amz = sub i64 %i.amx, %i.amy
  %i.ana = sdiv exact i64 %i.amz, 208
  %i.anb = shl i64 %i.ana, 32
  %i.anc = ashr exact i64 %i.anb, 32
  %i.and = icmp slt i64 %indvars.iv.next.i, %i.anc
  br i1 %i.and, label %bb.hg, label %._crit_edge.i, !llvm.loop !257

bb.ib:                                            ; preds = %bb.hy
  %i.ane = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.ic:                                            ; preds = %bb.hz
  %i.anf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %67) #24
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.pn81.i = phi { ptr, i32 } [ %i.anf, %bb.ic ], [ %i.ane, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  br label %bb.ih

bb.ie:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i74
  %i.ang = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.if:                                            ; preds = %bb.ia
  %i.anh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %68) #24
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.pn83.i = phi { ptr, i32 } [ %i.anh, %bb.if ], [ %i.ang, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i
  %.pn83.pn.i = phi { ptr, i32 } [ %.pn83.i, %bb.ig ], [ %.pn81.i, %bb.id ], [ %.pn79.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i ], [ %.pn77.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #24
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.hl
  %.pn83.pn.pn.i = phi { ptr, i32 } [ %.pn83.pn.i, %bb.ih ], [ %i.alo, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #24
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.hk
  %.pn83.pn.pn.pn.i = phi { ptr, i32 } [ %.pn83.pn.pn.i, %bb.ii ], [ %i.aln, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  br label %.body248.i

bb.ik:                                            ; preds = %._crit_edge.i
  %i.ani = load ptr, ptr %i.ald, align 8, !tbaa !47
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 24
  %i.ank = load ptr, ptr %i.anj, align 8
  %i.anl = invoke noundef zeroext i1 %i.ank(ptr noundef nonnull align 8 dereferenceable(64) %i.ald)
          to label %.noexc246.i unwind label %bb.ir, !inline_history !251

.noexc246.i:                                      ; preds = %bb.ik
  br i1 %i.anl, label %bb.il, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit251.i

bb.il:                                            ; preds = %.noexc246.i
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ald, i64 8 ; 3 uses
  %i.ann = load i32, ptr %i.anm, align 8, !tbaa !280
  %i.ano = icmp eq i32 %i.ann, 6
  br i1 %i.ano, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.130, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %.noexc247.i unwind label %bb.ir

.noexc247.i:                                      ; preds = %bb.im
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.131, i32 noundef 1173) #27
          to label %bb.in unwind label %bb.io

bb.in:                                            ; preds = %.noexc247.i
  unreachable

bb.io:                                            ; preds = %.noexc247.i
  %i.anp = landingpad { ptr, i32 }
          cleanup
  %i.anq = load ptr, ptr %24, align 8, !tbaa !29  ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ans = icmp eq ptr %i.anq, %i.anr
  br i1 %i.ans, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i244.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243.i: ; preds = %bb.io
  %i.ant = load i64, ptr %i.anr, align 8, !tbaa !27
  %i.anu = add i64 %i.ant, 1
  call void @_ZdlPvm(ptr noundef %i.anq, i64 noundef %i.anu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i244.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i244.i: ; preds = %bb.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body248.i

bb.ip:                                            ; preds = %bb.il
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(64) %i.ald, ptr noundef nonnull align 8 dereferenceable(32) %i.anv, ptr noundef nonnull align 8 dereferenceable(208) %60)
          to label %.noexc250.i unwind label %bb.ir

.noexc250.i:                                      ; preds = %bb.ip
  %i.anw = load i32, ptr %i.anm, align 8, !tbaa !280
  %i.anx = and i32 %i.anw, 4
  %.not.i242.i = icmp eq i32 %i.anx, 0
  br i1 %.not.i242.i, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit251.i, label %bb.iq

bb.iq:                                            ; preds = %.noexc250.i
  store i32 6, ptr %i.anm, align 8, !tbaa !280
  br label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit251.i

_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit251.i: ; preds = %bb.iq, %.noexc250.i, %.noexc246.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  br label %bb.it

bb.ir:                                            ; preds = %bb.ip, %bb.im, %bb.ik, %._crit_edge.i
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %.body248.i

.body248.i:                                       ; preds = %bb.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i244.i, %bb.ij
  %.pn83.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn83.pn.pn.pn.i, %bb.ij ], [ %i.any, %bb.ir ], [ %i.anp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i244.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #24
  br label %bb.is

bb.is:                                            ; preds = %.body248.i, %bb.hf
  %.pn83.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn83.pn.pn.pn.pn.i, %.body248.i ], [ %i.ale, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  br label %.body.i71

bb.it:                                            ; preds = %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit251.i, %bb.gx, %bb.gw
  %i.anz = icmp eq ptr %.pr.i89, %i.xv            ; 2 uses
  br i1 %i.anz, label %bb.js, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #24
  %i.aoa = ptrtoint ptr %i.xv to i64
  %i.aob = ptrtoint ptr %.pr.i89 to i64
  %i.aoc = sub i64 %i.aoa, %i.aob
  %i.aod = sdiv exact i64 %i.aoc, 24              ; 2 uses
  %i.aoe = trunc i64 %i.aod to i32                ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %.pr.i89, i64 8
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !101
  %i.aoh = load ptr, ptr %.pr.i89, align 8, !tbaa !102
  %i.aoi = ptrtoint ptr %i.aog to i64
  %i.aoj = ptrtoint ptr %i.aoh to i64
  %i.aok = sub i64 %i.aoi, %i.aoj
  %i.aol = lshr exact i64 %i.aok, 3
  %i.aom = trunc i64 %i.aol to i32
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %69, i32 noundef %i.aoe, i32 noundef %i.aom, i32 noundef 37)
          to label %.preheader.i unwind label %bb.iv

.preheader.i:                                     ; preds = %bb.iu
  %i.aon = icmp sgt i32 %i.aoe, 0
  br i1 %i.aon, label %.lr.ph292.i, label %._crit_edge293.i

.lr.ph292.i:                                      ; preds = %.preheader.i
  %i.aoo = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.aop = getelementptr inbounds nuw i8, ptr %69, i64 12
  %i.aoq = getelementptr inbounds nuw i8, ptr %72, i64 4
  %i.aor = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.aos = getelementptr inbounds nuw i8, ptr %72, i64 12 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.aou = getelementptr inbounds nuw i8, ptr %72, i64 24 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %72, i64 32
  %i.aow = getelementptr inbounds nuw i8, ptr %72, i64 40
  %i.aox = getelementptr inbounds nuw i8, ptr %72, i64 48
  %i.aoy = getelementptr inbounds nuw i8, ptr %72, i64 72
  %i.aoz = getelementptr inbounds nuw i8, ptr %72, i64 128
  %i.apa = getelementptr inbounds nuw i8, ptr %72, i64 136
  %i.apb = getelementptr inbounds nuw i8, ptr %72, i64 84
  %i.apc = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.apd = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.ape = and i64 %i.aod, 2147483647
  %106 = call i64 @llvm.umax.i64(i64 %i.ape, i64 1)
  br label %bb.iw

._crit_edge293.i:                                 ; preds = %bb.jb, %.preheader.i
  %i.apf = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %55, ptr noundef nonnull @.str.128)
          to label %bb.jj unwind label %bb.jq     ; 5 uses

bb.iv:                                            ; preds = %bb.iu
  %i.apg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.iw:                                            ; preds = %bb.jb, %.lr.ph292.i
  %indvars.iv295.i = phi i64 [ 0, %.lr.ph292.i ], [ %indvars.iv.next296.i, %bb.jb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !283
  %indvars.iv.next296.i = add nuw nsw i64 %indvars.iv295.i, 1 ; 3 uses
  %i.aph = trunc nuw nsw i64 %indvars.iv295.i to i32
  store i32 %i.aph, ptr %22, align 4, !tbaa !285, !noalias !283
  %i.api = trunc nuw nsw i64 %indvars.iv.next296.i to i32
  store i32 %i.api, ptr %i.aoo, align 4, !tbaa !286, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24, !noalias !283
  store i64 9223372034707292160, ptr %23, align 8, !noalias !283
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %71, ptr noundef nonnull align 8 dereferenceable(208) %69, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23)
          to label %bb.ix unwind label %bb.jc

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !283
  %i.apj = load i32, ptr %i.aop, align 4, !tbaa !110
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %70, ptr noundef nonnull align 8 dereferenceable(208) %71, i32 noundef 2, i32 noundef %i.apj)
          to label %bb.iy unwind label %bb.jd

bb.iy:                                            ; preds = %bb.ix
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  %i.apk = getelementptr inbounds nuw [24 x i8], ptr %.pr.i89, i64 %indvars.iv295.i ; 3 uses
  store i32 1124024357, ptr %72, align 8, !tbaa !108
  store i32 1, ptr %i.aoq, align 4, !tbaa !50
  store i32 1, ptr %i.aor, align 8, !tbaa !109
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 8 ; 2 uses
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !101
  %i.apn = load ptr, ptr %i.apk, align 8, !tbaa !102
  %i.apo = ptrtoint ptr %i.apm to i64
  %i.app = ptrtoint ptr %i.apn to i64
  %i.apq = sub i64 %i.apo, %i.app
  %i.apr = lshr exact i64 %i.apq, 3
  %i.aps = trunc i64 %i.apr to i32
  store i32 %i.aps, ptr %i.aos, align 4, !tbaa !110
  store i32 153, ptr %i.aot, align 8, !tbaa !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aou, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.aoy, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc253.i unwind label %bb.jf

.noexc253.i:                                      ; preds = %bb.iy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.apa, i8 0, i64 72, i1 false), !tbaa !28
  %i.apt = load i32, ptr %i.aos, align 4, !tbaa !110 ; 2 uses
  store i32 %i.apt, ptr %i.apb, align 4, !tbaa !30
  store i64 8, ptr %i.aoz, align 8, !tbaa !28
  %i.apu = load ptr, ptr %i.apk, align 8, !tbaa !105 ; 4 uses
  %i.apv = load ptr, ptr %i.apl, align 8, !tbaa !105
  %i.apw = icmp eq ptr %i.apu, %i.apv
  br i1 %i.apw, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %.noexc253.i
  store ptr %i.apu, ptr %i.aou, align 8, !tbaa !49
  store ptr %i.apu, ptr %i.aov, align 8, !tbaa !112
  %i.apx = sext i32 %i.apt to i64
  %i.apy = shl nsw i64 %i.apx, 3
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apu, i64 %i.apy ; 2 uses
  store ptr %i.apz, ptr %i.aow, align 8, !tbaa !113
  store ptr %i.apz, ptr %i.aox, align 8, !tbaa !114
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %.noexc253.i
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #24
  store i64 0, ptr %i.apd, align 8
  store i32 33619968, ptr %73, align 8, !tbaa !86
  store ptr %70, ptr %i.apc, align 8, !tbaa !87
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %72, ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %bb.jb unwind label %bb.jg

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %70) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  %exitcond.not = icmp eq i64 %indvars.iv.next296.i, %106
  br i1 %exitcond.not, label %._crit_edge293.i, label %bb.iw, !llvm.loop !260

bb.jc:                                            ; preds = %bb.iw
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.jd:                                            ; preds = %bb.ix
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #24
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %.pn90.i = phi { ptr, i32 } [ %i.aqb, %bb.jd ], [ %i.aqa, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  br label %bb.ji

bb.jf:                                            ; preds = %bb.iy
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.jg:                                            ; preds = %bb.ja
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #24
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %.pn92.pn.i = phi { ptr, i32 } [ %i.aqd, %bb.jg ], [ %i.aqc, %bb.jf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %70) #24
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.je
  %.pn92.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.i, %bb.jh ], [ %.pn90.i, %bb.je ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  br label %.body260.i

bb.jj:                                            ; preds = %._crit_edge293.i
  %i.aqe = load ptr, ptr %i.apf, align 8, !tbaa !47
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 24
  %i.aqg = load ptr, ptr %i.aqf, align 8
  %i.aqh = invoke noundef zeroext i1 %i.aqg(ptr noundef nonnull align 8 dereferenceable(64) %i.apf)
          to label %.noexc258.i unwind label %bb.jq, !inline_history !251

.noexc258.i:                                      ; preds = %bb.jj
  br i1 %i.aqh, label %bb.jk, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit263.i

bb.jk:                                            ; preds = %.noexc258.i
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apf, i64 8 ; 3 uses
  %i.aqj = load i32, ptr %i.aqi, align 8, !tbaa !280
  %i.aqk = icmp eq i32 %i.aqj, 6
  br i1 %i.aqk, label %bb.jl, label %bb.jo

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.130, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc259.i unwind label %bb.jq

.noexc259.i:                                      ; preds = %bb.jl
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.131, i32 noundef 1173) #27
          to label %bb.jm unwind label %bb.jn

bb.jm:                                            ; preds = %.noexc259.i
  unreachable

bb.jn:                                            ; preds = %.noexc259.i
  %i.aql = landingpad { ptr, i32 }
          cleanup
  %i.aqm = load ptr, ptr %20, align 8, !tbaa !29  ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.aqo = icmp eq ptr %i.aqm, %i.aqn
  br i1 %i.aqo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i256.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255.i: ; preds = %bb.jn
  %i.aqp = load i64, ptr %i.aqn, align 8, !tbaa !27
  %i.aqq = add i64 %i.aqp, 1
  call void @_ZdlPvm(ptr noundef %i.aqm, i64 noundef %i.aqq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i256.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i256.i: ; preds = %bb.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body260.i

bb.jo:                                            ; preds = %bb.jk
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.apf, i64 16
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(64) %i.apf, ptr noundef nonnull align 8 dereferenceable(32) %i.aqr, ptr noundef nonnull align 8 dereferenceable(208) %69)
          to label %.noexc262.i unwind label %bb.jq

.noexc262.i:                                      ; preds = %bb.jo
  %i.aqs = load i32, ptr %i.aqi, align 8, !tbaa !280
  %i.aqt = and i32 %i.aqs, 4
  %.not.i254.i = icmp eq i32 %i.aqt, 0
  br i1 %.not.i254.i, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit263.i, label %bb.jp

bb.jp:                                            ; preds = %.noexc262.i
  store i32 6, ptr %i.aqi, align 8, !tbaa !280
  br label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit263.i

_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit263.i: ; preds = %bb.jp, %.noexc262.i, %.noexc258.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  br label %bb.js

bb.jq:                                            ; preds = %bb.jo, %bb.jl, %bb.jj, %._crit_edge293.i
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  br label %.body260.i

.body260.i:                                       ; preds = %bb.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i256.i, %bb.ji
  %.pn92.pn.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.pn.i, %bb.ji ], [ %i.aqu, %bb.jq ], [ %i.aql, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i256.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #24
  br label %bb.jr

bb.jr:                                            ; preds = %.body260.i, %bb.iv
  %.pn92.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.pn.pn.i, %.body260.i ], [ %i.apg, %bb.iv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  br label %.body.i71

bb.js:                                            ; preds = %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit263.i, %bb.it
  %i.aqv = load ptr, ptr %105, align 8, !tbaa !127
  %i.aqw = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !127
  %i.aqy = icmp eq ptr %i.aqv, %i.aqx
  br i1 %i.aqy, label %bb.kh, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aqz = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %55, ptr noundef nonnull @.str.129)
          to label %bb.ju unwind label %bb.dq     ; 6 uses

bb.ju:                                            ; preds = %bb.jt
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !47
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 24
  %i.arc = load ptr, ptr %i.arb, align 8
  %i.ard = invoke noundef zeroext i1 %i.arc(ptr noundef nonnull align 8 dereferenceable(64) %i.aqz)
          to label %.noexc268.i unwind label %bb.dq, !inline_history !261

.noexc268.i:                                      ; preds = %bb.ju
  br i1 %i.ard, label %bb.jv, label %bb.kh

bb.jv:                                            ; preds = %.noexc268.i
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8 ; 3 uses
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !280
  %i.arg = icmp eq i32 %i.arf, 6
  br i1 %i.arg, label %bb.jw, label %bb.kb

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.130, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.jx unwind label %bb.jz

bb.jx:                                            ; preds = %bb.jw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.131, i32 noundef 1173) #27
          to label %bb.jy unwind label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  unreachable

bb.jz:                                            ; preds = %bb.jw
  %i.arh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i265.i

bb.ka:                                            ; preds = %bb.jx
  %i.ari = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.arj = load ptr, ptr %18, align 8, !tbaa !29  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.arl = icmp eq ptr %i.arj, %i.ark
  br i1 %i.arl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i265.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i: ; preds = %bb.ka
  %i.arm = load i64, ptr %i.ark, align 8, !tbaa !27
  %i.arn = add i64 %i.arm, 1
  call void @_ZdlPvm(ptr noundef %i.arj, i64 noundef %i.arn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i265.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i265.i: ; preds = %bb.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i, %bb.jz
  %.pn.i.i = phi { ptr, i32 } [ %i.arh, %bb.jz ], [ %i.ari, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i ], [ %i.ari, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %.body.i71

bb.kb:                                            ; preds = %bb.jv
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.arp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.arp, ptr %17, align 8, !tbaa !23
  %i.arq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.arq, align 8, !tbaa !26
  store i8 0, ptr %i.arp, align 8, !tbaa !27
  invoke void @_ZN2cv8internal18WriteStructContextC1ERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSB_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(64) %i.aqz, ptr noundef nonnull align 8 dereferenceable(32) %i.aro, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.kc unwind label %bb.kd

end_hunk_0
