Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fisheye?download=true
inline.NumInlined: 2237
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE:bb.a

bb.bq:                                            ; preds = %bb.bk, %bb.bi
  %i.ca = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.br unwind label %bb.g

bb.br:                                            ; preds = %bb.bq
  br i1 %i.ca, label %.critedge885, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cb = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.cc = icmp eq i64 %i.cb, 12884901891
  br i1 %i.cc, label %.critedge885, label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aep

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %180, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %181)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %180, ptr noundef nonnull @__func__._ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 219) #19
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %bb.bv
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924

bb.bz:                                            ; preds = %bb.bw
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %180, align 8, !tbaa !8   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922: ; preds = %bb.bz
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922, %bb.by
  %.pn550 = phi { ptr, i32 } [ %i.ce, %bb.by ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922 ], [ %i.cf, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #18
  br label %bb.aep

.critedge885:                                     ; preds = %bb.br, %bb.bt
  %i.cl = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ca unwind label %bb.g

bb.ca:                                            ; preds = %.critedge885
  br i1 %i.cl, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.cm = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.cc unwind label %bb.g

bb.cc:                                            ; preds = %bb.cb
  %i.cn = icmp eq i64 %i.cm, 4
  br i1 %i.cn, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %182, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %183)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %182, ptr noundef nonnull @__func__._ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 220) #19
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cd
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

bb.ch:                                            ; preds = %bb.ce
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %182, align 8, !tbaa !8   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %182, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925: ; preds = %bb.ch
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !14
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925, %bb.cg
  %.pn552 = phi { ptr, i32 } [ %i.co, %bb.cg ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925 ], [ %i.cp, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #18
  br label %bb.aep

bb.ci:                                            ; preds = %bb.cc, %bb.ca
  %i.cv = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cj unwind label %bb.g

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.cv, label %bb.cq, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.cw = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cl unwind label %bb.g

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.cw, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.cx = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cn unwind label %bb.g

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.cx, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.cy = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.cp unwind label %bb.g

bb.cp:                                            ; preds = %bb.co
  %i.cz = and i32 %12, 256
  %.not = icmp ne i32 %i.cz, 0
  %or.cond.not = and i1 %.not, %i.cy
  br i1 %or.cond.not, label %bb.cr, label %bb.cw

bb.cq:                                            ; preds = %bb.cn, %bb.cl, %bb.cj
  %.old = and i32 %12, 256
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %bb.cw, label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %184, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %185)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %184, ptr noundef nonnull @__func__._ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 222) #19
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %bb.cr
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930

bb.cv:                                            ; preds = %bb.cs
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %184, align 8, !tbaa !8   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %184, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928: ; preds = %bb.cv
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !14
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928, %bb.cu
  %.pn879 = phi { ptr, i32 } [ %i.da, %bb.cu ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928 ], [ %i.db, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #18
  br label %bb.aep

bb.cw:                                            ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #18
  %i.dh = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.dj    ; 0 uses

.noexc:                                           ; preds = %bb.cw
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %186, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.dj

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %.noexc
  %i.di = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %186)
          to label %bb.cx unwind label %bb.dk

bb.cx:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.dj = trunc i64 %i.di to i32                  ; 3 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %186) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #18
  %i.dk = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.cy unwind label %bb.dm     ; 6 uses

bb.cy:                                            ; preds = %bb.cx
  %i.dl = trunc i64 %i.dk to i32                  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #18
  invoke void @_ZN2cv8internal15IntrinsicParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %187)
          to label %bb.cz unwind label %bb.dn

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #18
  invoke void @_ZN2cv8internal15IntrinsicParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %188)
          to label %bb.da unwind label %bb.do

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #18
  invoke void @_ZN2cv8internal15IntrinsicParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %189)
          to label %bb.db unwind label %bb.dp

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #18
  invoke void @_ZN2cv8internal15IntrinsicParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %190)
          to label %bb.dc unwind label %bb.dq

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %191, i8 0, i64 72, i1 false), !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %192, i8 0, i64 72, i1 false), !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %193, i8 0, i64 32, i1 false), !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %194, i8 0, i64 32, i1 false), !tbaa !18
  %i.dm = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.dd unwind label %bb.dr

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.dm, label %bb.dv, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #18
  %i.dn = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc932 unwind label %bb.ds

.noexc932:                                        ; preds = %bb.de
  %i.do = icmp eq i32 %i.dn, 65536
  br i1 %i.do, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %.noexc932
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !20, !noalias !208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %195, ptr noundef nonnull align 8 dereferenceable(208) %i.dq)
          to label %bb.dh unwind label %bb.ds

bb.dg:                                            ; preds = %.noexc932
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %195, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.dh unwind label %bb.ds

bb.dh:                                            ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #18
  %i.dr = getelementptr inbounds nuw i8, ptr %196, i64 8
  store i32 -1040056314, ptr %196, align 8, !tbaa !26
  store ptr %191, ptr %i.dr, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %196, i64 16
  store i64 12884901891, ptr %i.ds, align 8
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %195, ptr noundef nonnull align 8 dereferenceable(24) %196, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.di unwind label %bb.dt

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %195) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #18
  br label %bb.dv

bb.dj:                                            ; preds = %.noexc, %bb.cw
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %186) #18
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn554 = phi { ptr, i32 } [ %i.du, %bb.dk ], [ %i.dt, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #18
  br label %bb.aep

bb.dm:                                            ; preds = %bb.cx
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aep

bb.dn:                                            ; preds = %bb.cy
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit1297

bb.do:                                            ; preds = %bb.cz
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit1295

bb.dp:                                            ; preds = %bb.da
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit1293

bb.dq:                                            ; preds = %bb.db
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8internal15IntrinsicParamsD2Ev.exit1291

bb.dr:                                            ; preds = %bb.ep, %bb.ef, %bb.dv, %bb.dc
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.aek

bb.ds:                                            ; preds = %bb.dg, %bb.df, %bb.de
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.dh
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %195) #18
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn556.pn = phi { ptr, i32 } [ %i.ec, %bb.dt ], [ %i.eb, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #18
  br label %bb.aek

bb.dv:                                            ; preds = %bb.di, %bb.dd
  %i.ed = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.dw unwind label %bb.dr

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.ed, label %bb.ef, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #18
  %i.ee = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc936 unwind label %bb.ec

.noexc936:                                        ; preds = %bb.dx
  %i.ef = icmp eq i32 %i.ee, 65536
  br i1 %i.ef, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.noexc936
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !20, !noalias !211
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %197, ptr noundef nonnull align 8 dereferenceable(208) %i.eh)
          to label %bb.ea unwind label %bb.ec

bb.dz:                                            ; preds = %.noexc936
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %197, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #18
  %i.ei = getelementptr inbounds nuw i8, ptr %198, i64 8
  store i32 -1040056314, ptr %198, align 8, !tbaa !26
  store ptr %193, ptr %i.ei, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %198, i64 16
  store i64 17179869185, ptr %i.ej, align 8
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %197, ptr noundef nonnull align 8 dereferenceable(24) %198, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %197) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #18
  br label %bb.ef

bb.ec:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %197) #18
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn559.pn = phi { ptr, i32 } [ %i.el, %bb.ed ], [ %i.ek, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #18
  br label %bb.aek

bb.ef:                                            ; preds = %bb.eb, %bb.dw
  %i.em = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
end_hunk_0
begin_hunk_1_@_ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #18, !noalias !225
  store i64 0, ptr %i.nv, align 8
  store i32 -1040121856, ptr %245, align 8, !tbaa !26
  store ptr %246, ptr %i.nu, align 8, !tbaa !20
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %244, ptr noundef nonnull align 8 dereferenceable(24) %245)
          to label %bb.hd unwind label %bb.ia

bb.hd:                                            ; preds = %bb.hc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %246) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %244) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #18
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.gi, !llvm.loop !228

bb.he:                                            ; preds = %bb.gj, %bb.gi
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #18
  br label %bb.adz

bb.hf:                                            ; preds = %bb.gl, %bb.gk
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #18
  br label %bb.adz

bb.hg:                                            ; preds = %bb.gm
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hh:                                            ; preds = %bb.gn
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.hi:                                            ; preds = %bb.go
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %233) #18
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.pn841 = phi { ptr, i32 } [ %i.pe, %bb.hi ], [ %i.pd, %bb.hh ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %234) #18
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hg
  %.pn841.pn = phi { ptr, i32 } [ %.pn841, %bb.hj ], [ %i.pc, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #18
  br label %bb.adz

bb.hl:                                            ; preds = %.noexc989, %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hm:                                            ; preds = %.noexc991, %bb.gq
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body993

bb.hn:                                            ; preds = %bb.gs
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.ho:                                            ; preds = %bb.gt
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.hp:                                            ; preds = %bb.gu
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %235) #18
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.pn844 = phi { ptr, i32 } [ %i.pj, %bb.hp ], [ %i.pi, %bb.ho ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %237) #18
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hn
  %.pn844.pn = phi { ptr, i32 } [ %.pn844, %bb.hq ], [ %i.ph, %bb.hn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %238) #18
  br label %.body993

.body993:                                         ; preds = %bb.hm, %bb.gr, %bb.hr
  %.pn844.pn.pn = phi { ptr, i32 } [ %.pn844.pn, %bb.hr ], [ %i.pg, %bb.hm ], [ %i.os, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %238) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %236) #18
  br label %.body

.body:                                            ; preds = %bb.hl, %bb.gp, %.body993
  %.pn844.pn.pn.pn = phi { ptr, i32 } [ %.pn844.pn.pn, %.body993 ], [ %i.pf, %bb.hl ], [ %i.op, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #18
  br label %bb.adz

bb.hs:                                            ; preds = %bb.gw, %bb.gv
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #18
  br label %bb.adz

bb.ht:                                            ; preds = %bb.gx
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.hu:                                            ; preds = %bb.gy
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hv:                                            ; preds = %bb.gz
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %243) #18
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.pn852.pn = phi { ptr, i32 } [ %i.pn, %bb.hv ], [ %i.pm, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %243) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %241) #18
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.ht
  %.pn852.pn.pn = phi { ptr, i32 } [ %.pn852.pn, %bb.hw ], [ %i.pl, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #18
  br label %bb.adz

bb.hy:                                            ; preds = %bb.ha
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hb
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hc
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %246) #18
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.pn856.pn = phi { ptr, i32 } [ %i.pq, %bb.ia ], [ %i.pp, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %244) #18
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hy
  %.pn856.pn.pn = phi { ptr, i32 } [ %.pn856.pn, %bb.ib ], [ %i.po, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #18
  br label %bb.adz

._crit_edge:                                      ; preds = %bb.hd, %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %247) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %248) #18
  %i.pr = getelementptr inbounds nuw i8, ptr %248, i64 16
  store i32 0, ptr %i.pr, align 8, !tbaa !46
  %i.ps = getelementptr inbounds nuw i8, ptr %248, i64 20
  store i32 0, ptr %i.ps, align 4, !tbaa !47
  store i32 16842752, ptr %248, align 8, !tbaa !26
  %i.pt = getelementptr inbounds nuw i8, ptr %248, i64 8
  store ptr %222, ptr %i.pt, align 8, !tbaa !20
  invoke void @_ZN2cv8internal8median3dERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.11") align 8 %247, ptr noundef nonnull align 8 dereferenceable(24) %248)
          to label %bb.id unwind label %bb.ij

bb.id:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %249) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %250) #18
  %i.pu = getelementptr inbounds nuw i8, ptr %250, i64 16
  store i32 0, ptr %i.pu, align 8, !tbaa !46
  %i.pv = getelementptr inbounds nuw i8, ptr %250, i64 20
  store i32 0, ptr %i.pv, align 4, !tbaa !47
  store i32 16842752, ptr %250, align 8, !tbaa !26
  %i.pw = getelementptr inbounds nuw i8, ptr %250, i64 8
  store ptr %223, ptr %i.pw, align 8, !tbaa !20
  invoke void @_ZN2cv8internal8median3dERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.11") align 8 %249, ptr noundef nonnull align 8 dereferenceable(24) %250)
          to label %bb.ie unwind label %bb.ik

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %251) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %252) #18
  %i.px = shl i32 %i.dj, 2                        ; 16 uses
  %i.py = mul nsw i32 %i.px, %i.dl                ; 4 uses
  %i.pz = add i32 %i.kz, 24                       ; 4 uses
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %252, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef 6)
          to label %bb.if unwind label %bb.il

bb.if:                                            ; preds = %bb.ie
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %251) #18
  %i.qa = load ptr, ptr %252, align 8, !tbaa !48, !noalias !229 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !61
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8
  invoke void %i.qd(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef nonnull align 8 dereferenceable(688) %252, ptr noundef nonnull align 8 dereferenceable(208) %251, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body1001

.body1001:                                        ; preds = %bb.if
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %251) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %252) #18
  br label %bb.im

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.if
  %i.qf = getelementptr inbounds nuw i8, ptr %252, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qf) #18
  %i.qg = getelementptr inbounds nuw i8, ptr %252, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qg) #18
  %i.qh = getelementptr inbounds nuw i8, ptr %252, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qh) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %253) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %254) #18
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %254, i32 noundef %i.py, i32 noundef 1, i32 noundef 6)
          to label %bb.ig unwind label %bb.in

bb.ig:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %253) #18
  %i.qi = load ptr, ptr %254, align 8, !tbaa !48, !noalias !232 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !61
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8
  invoke void %i.ql(ptr noundef nonnull align 8 dereferenceable(8) %i.qi, ptr noundef nonnull align 8 dereferenceable(688) %254, ptr noundef nonnull align 8 dereferenceable(208) %253, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit1005 unwind label %.body1003

.body1003:                                        ; preds = %bb.ig
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %253) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %254) #18
  br label %bb.io

_ZNK2cv7MatExprcvNS_3MatEEv.exit1005:             ; preds = %bb.ig
  %i.qn = getelementptr inbounds nuw i8, ptr %254, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qn) #18
  %i.qo = getelementptr inbounds nuw i8, ptr %254, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qo) #18
  %i.qp = getelementptr inbounds nuw i8, ptr %254, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qp) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %255) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %255) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %256) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %256) #18
  %i.qq = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.qr = load i32, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.qs = icmp ne i32 %i.qr, 1
  %i.qt = load i32, ptr %i.qq, align 4
  %.not6041473 = icmp sgt i32 %i.qt, 0            ; 2 uses
  %or.cond8891474 = select i1 %i.qs, i1 true, i1 %.not6041473
  br i1 %or.cond8891474, label %.lr.ph1478, label %._crit_edge1479

.lr.ph1478:                                       ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit1005
  %i.qu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qv = getelementptr inbounds nuw i8, ptr %267, i64 432
  %i.qw = getelementptr inbounds nuw i8, ptr %267, i64 224
  %i.qx = getelementptr inbounds nuw i8, ptr %267, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %276, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %276, i64 24
  %i.ra = getelementptr inbounds nuw i8, ptr %276, i64 72
  %i.rb = getelementptr inbounds nuw i8, ptr %276, i64 128
  %i.rc = getelementptr inbounds nuw i8, ptr %155, i64 8
  %i.rd = getelementptr inbounds nuw i8, ptr %155, i64 16
  %i.re = getelementptr inbounds nuw i8, ptr %277, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %277, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %277, i64 72
  %i.rh = getelementptr inbounds nuw i8, ptr %277, i64 128
  %i.ri = getelementptr inbounds nuw i8, ptr %153, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %153, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %278, i64 16
  %i.rl = getelementptr inbounds nuw i8, ptr %278, i64 20
  %i.rm = getelementptr inbounds nuw i8, ptr %278, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %279, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %279, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %280, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %280, i64 20
  %i.rr = getelementptr inbounds nuw i8, ptr %280, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %281, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %281, i64 20
  %i.ru = getelementptr inbounds nuw i8, ptr %281, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %282, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %282, i64 16
  %i.rx = shl nsw i32 %i.dj, 1                    ; 20 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %284, i64 432
  %i.rz = getelementptr inbounds nuw i8, ptr %284, i64 224
  %i.sa = getelementptr inbounds nuw i8, ptr %284, i64 16
  %i.sb = getelementptr inbounds nuw i8, ptr %150, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %287, i64 8
  %i.sd = getelementptr inbounds nuw i8, ptr %287, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %149, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %147, i64 4
  %i.sg = getelementptr inbounds nuw i8, ptr %144, i64 4
  %i.sh = getelementptr inbounds nuw i8, ptr %290, i64 8
  %i.si = getelementptr inbounds nuw i8, ptr %290, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %143, i64 4
  %i.sk = getelementptr inbounds nuw i8, ptr %141, i64 4
  %i.sl = getelementptr inbounds nuw i8, ptr %138, i64 4
  %i.sm = getelementptr inbounds nuw i8, ptr %294, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %294, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %137, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %135, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %132, i64 4
  %i.sr = getelementptr inbounds nuw i8, ptr %298, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %298, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %131, i64 4
  %i.su = getelementptr inbounds nuw i8, ptr %129, i64 4
  %i.sv = getelementptr inbounds nuw i8, ptr %126, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %302, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %302, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %125, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %123, i64 4
  %i.ta = getelementptr inbounds nuw i8, ptr %120, i64 4
  %i.tb = getelementptr inbounds nuw i8, ptr %306, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %306, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %119, i64 4
  %i.te = getelementptr inbounds nuw i8, ptr %117, i64 4
  %i.tf = getelementptr inbounds nuw i8, ptr %114, i64 4
  %i.tg = getelementptr inbounds nuw i8, ptr %310, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %310, i64 16
  %i.ti = getelementptr inbounds nuw i8, ptr %313, i64 16
  %i.tj = getelementptr inbounds nuw i8, ptr %313, i64 20
  %i.tk = getelementptr inbounds nuw i8, ptr %313, i64 8
  %i.tl = getelementptr inbounds nuw i8, ptr %314, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %314, i64 20
  %i.tn = getelementptr inbounds nuw i8, ptr %314, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %315, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %315, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %316, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %316, i64 8
  %i.ts = getelementptr inbounds nuw i8, ptr %317, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %317, i64 24
  %i.tu = getelementptr inbounds nuw i8, ptr %317, i64 72
  %i.tv = getelementptr inbounds nuw i8, ptr %317, i64 128
  %i.tw = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.tx = getelementptr inbounds nuw i8, ptr %113, i64 16
  %i.ty = getelementptr inbounds nuw i8, ptr %318, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %318, i64 24
  %i.ua = getelementptr inbounds nuw i8, ptr %318, i64 72
  %i.ub = getelementptr inbounds nuw i8, ptr %318, i64 128
  %i.uc = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %111, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %319, i64 16
  %i.uf = getelementptr inbounds nuw i8, ptr %319, i64 20
  %i.ug = getelementptr inbounds nuw i8, ptr %319, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %320, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %320, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %321, i64 16
  %i.uk = getelementptr inbounds nuw i8, ptr %321, i64 20
  %i.ul = getelementptr inbounds nuw i8, ptr %321, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %322, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %322, i64 20
  %i.uo = getelementptr inbounds nuw i8, ptr %322, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %323, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %323, i64 16
  %i.ur = getelementptr inbounds nuw i8, ptr %324, i64 432
  %i.us = getelementptr inbounds nuw i8, ptr %324, i64 224
  %i.ut = getelementptr inbounds nuw i8, ptr %324, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %108, i64 4
  %i.uv = getelementptr inbounds nuw i8, ptr %327, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %327, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %107, i64 4
  %i.uy = getelementptr inbounds nuw i8, ptr %105, i64 4
  %i.uz = getelementptr inbounds nuw i8, ptr %330, i64 432
  %i.va = getelementptr inbounds nuw i8, ptr %330, i64 224
  %i.vb = getelementptr inbounds nuw i8, ptr %330, i64 16
  %i.vc = getelementptr inbounds nuw i8, ptr %333, i64 432
  %i.vd = getelementptr inbounds nuw i8, ptr %333, i64 224
  %i.ve = getelementptr inbounds nuw i8, ptr %333, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %331, i64 432
  %i.vg = getelementptr inbounds nuw i8, ptr %331, i64 224
  %i.vh = getelementptr inbounds nuw i8, ptr %331, i64 16
  %i.vi = getelementptr inbounds nuw i8, ptr %103, i64 4
  %i.vj = getelementptr inbounds nuw i8, ptr %101, i64 4
  %i.vk = getelementptr inbounds nuw i8, ptr %336, i64 432
  %i.vl = getelementptr inbounds nuw i8, ptr %336, i64 224
  %i.vm = getelementptr inbounds nuw i8, ptr %336, i64 16
  %i.vn = getelementptr inbounds nuw i8, ptr %339, i64 432
  %i.vo = getelementptr inbounds nuw i8, ptr %339, i64 224
  %i.vp = getelementptr inbounds nuw i8, ptr %339, i64 16
  %i.vq = getelementptr inbounds nuw i8, ptr %337, i64 432
  %i.vr = getelementptr inbounds nuw i8, ptr %337, i64 224
  %i.vs = getelementptr inbounds nuw i8, ptr %337, i64 16
end_hunk_1
begin_hunk_2_@_ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE:bb.a
  %i.yb = getelementptr inbounds nuw i8, ptr %256, i64 84
  %i.yc = getelementptr inbounds nuw i8, ptr %256, i64 88
  %i.yd = getelementptr inbounds nuw i8, ptr %256, i64 12
  %i.ye = getelementptr inbounds nuw i8, ptr %256, i64 24
  %i.yf = getelementptr inbounds nuw i8, ptr %256, i64 128
  %i.yg = getelementptr inbounds nuw i8, ptr %50, i64 4
  %i.yh = getelementptr inbounds nuw i8, ptr %383, i64 8
  %i.yi = getelementptr inbounds nuw i8, ptr %383, i64 16
  %i.yj = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.yk = getelementptr inbounds nuw i8, ptr %385, i64 8
  %i.yl = getelementptr inbounds nuw i8, ptr %385, i64 16
  %i.ym = getelementptr inbounds nuw i8, ptr %249, i64 8 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %249, i64 16 ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %247, i64 8 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %247, i64 16 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %251, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %387, i64 8
  %i.ys = getelementptr inbounds nuw i8, ptr %387, i64 16 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %388, i64 16
  %i.yu = getelementptr inbounds nuw i8, ptr %388, i64 20
  %i.yv = getelementptr inbounds nuw i8, ptr %388, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %389, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %389, i64 20
  %i.yy = getelementptr inbounds nuw i8, ptr %389, i64 8
  %i.yz = getelementptr inbounds nuw i8, ptr %397, i64 8
  %i.za = getelementptr inbounds nuw i8, ptr %397, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %395, i64 432
  %i.zc = getelementptr inbounds nuw i8, ptr %395, i64 224
  %i.zd = getelementptr inbounds nuw i8, ptr %395, i64 16
  %i.ze = getelementptr inbounds nuw i8, ptr %396, i64 432
  %i.zf = getelementptr inbounds nuw i8, ptr %396, i64 224
  %i.zg = getelementptr inbounds nuw i8, ptr %396, i64 16
  %i.zh = getelementptr inbounds nuw i8, ptr %392, i64 432
  %i.zi = getelementptr inbounds nuw i8, ptr %392, i64 224
  %i.zj = getelementptr inbounds nuw i8, ptr %392, i64 16
  %i.zk = getelementptr inbounds nuw i8, ptr %393, i64 432
  %i.zl = getelementptr inbounds nuw i8, ptr %393, i64 224
  %i.zm = getelementptr inbounds nuw i8, ptr %393, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %46, i64 4
  %i.zo = getelementptr inbounds nuw i8, ptr %398, i64 16
  %i.zp = getelementptr inbounds nuw i8, ptr %398, i64 32
  %i.zq = getelementptr inbounds nuw i8, ptr %398, i64 64
  %i.zr = getelementptr inbounds nuw i8, ptr %398, i64 72 ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %187, i64 88 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %398, i64 88 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.zv = getelementptr inbounds nuw i8, ptr %400, i64 16
  %i.zw = getelementptr inbounds nuw i8, ptr %400, i64 32
  %i.zx = getelementptr inbounds nuw i8, ptr %400, i64 64
  %i.zy = getelementptr inbounds nuw i8, ptr %400, i64 72 ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %188, i64 88 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %400, i64 88 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.aac = getelementptr inbounds nuw i8, ptr %402, i64 16
  %i.aad = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.aae = getelementptr inbounds nuw i8, ptr %404, i64 16
  %i.aaf = getelementptr inbounds nuw i8, ptr %409, i64 16
  %i.aag = getelementptr inbounds nuw i8, ptr %409, i64 24
  %i.aah = getelementptr inbounds nuw i8, ptr %409, i64 72
  %i.aai = getelementptr inbounds nuw i8, ptr %409, i64 128
  %i.aaj = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.aal = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.aam = getelementptr inbounds nuw i8, ptr %407, i64 24
  %i.aan = getelementptr inbounds nuw i8, ptr %407, i64 4
  %i.aao = getelementptr inbounds nuw i8, ptr %407, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %407, i64 12
  %i.aaq = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.aas = getelementptr inbounds nuw i8, ptr %406, i64 16
  %i.aat = getelementptr inbounds nuw i8, ptr %408, i64 432
  %i.aau = getelementptr inbounds nuw i8, ptr %408, i64 224
  %i.aav = getelementptr inbounds nuw i8, ptr %408, i64 16
  %i.aaw = getelementptr inbounds nuw i8, ptr %414, i64 16
  %i.aax = getelementptr inbounds nuw i8, ptr %414, i64 24
  %i.aay = getelementptr inbounds nuw i8, ptr %414, i64 72
  %i.aaz = getelementptr inbounds nuw i8, ptr %414, i64 128
  %i.aba = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.abb = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.abc = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.abd = getelementptr inbounds nuw i8, ptr %412, i64 24
  %i.abe = getelementptr inbounds nuw i8, ptr %412, i64 4
  %i.abf = getelementptr inbounds nuw i8, ptr %412, i64 8
  %i.abg = getelementptr inbounds nuw i8, ptr %412, i64 12
  %i.abh = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.abi = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.abj = getelementptr inbounds nuw i8, ptr %411, i64 16
  %i.abk = getelementptr inbounds nuw i8, ptr %413, i64 432
  %i.abl = getelementptr inbounds nuw i8, ptr %413, i64 224
  %i.abm = getelementptr inbounds nuw i8, ptr %413, i64 16
  %smax = call i32 @llvm.smax.i32(i32 %i.px, i32 1) ; 3 uses
  %wide.trip.count1569 = and i64 %i.dk, 2147483647
  %wide.trip.count1558 = zext nneg i32 %smax to i64 ; 3 uses
  %wide.trip.count1574 = and i64 %i.dk, 2147483647
  %xtraiter = and i64 %wide.trip.count1558, 1
  %i.abn = icmp eq i32 %smax, 1
  %unroll_iter = and i64 %wide.trip.count1558, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1860 = trunc i32 %smax to i1
  br label %bb.ih

bb.ih:                                            ; preds = %.lr.ph1478, %._crit_edge1472
  %.not6041477 = phi i1 [ %.not6041473, %.lr.ph1478 ], [ %.not604, %._crit_edge1472 ]
  %i.abo = phi i32 [ %i.qr, %.lr.ph1478 ], [ %i.asx, %._crit_edge1472 ] ; 2 uses
  %.02811476 = phi i32 [ 0, %.lr.ph1478 ], [ %i.asw, %._crit_edge1472 ]
  %.05351475 = phi double [ 1.000000e+00, %.lr.ph1478 ], [ %i.asv, %._crit_edge1472 ]
  %i.abp = icmp ne i32 %i.abo, 2
  %i.abq = load double, ptr %i.qu, align 8
  %i.abr = fcmp ugt double %.05351475, %i.abq     ; 2 uses
  %or.cond893 = select i1 %i.abp, i1 true, i1 %i.abr
  br i1 %or.cond893, label %bb.ii, label %._crit_edge1479

bb.ii:                                            ; preds = %bb.ih
  %i.abs = icmp ne i32 %i.abo, 3
  %or.cond896 = select i1 %i.abr, i1 %.not6041477, i1 false
  %or.cond1387 = select i1 %i.abs, i1 true, i1 %or.cond896
  br i1 %or.cond1387, label %bb.ip, label %._crit_edge1479

._crit_edge1479:                                  ; preds = %._crit_edge1472, %bb.ih, %bb.ii, %_ZNK2cv7MatExprcvNS_3MatEEv.exit1005
  %i.abt = getelementptr inbounds nuw i8, ptr %253, i64 24
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !68
  br label %bb.yv

bb.ij:                                            ; preds = %._crit_edge
  %i.abv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #18
  br label %bb.ady

bb.ik:                                            ; preds = %bb.id
  %i.abw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #18
  br label %bb.adx

bb.il:                                            ; preds = %bb.ie
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.im:                                            ; preds = %.body1001, %bb.il
  %.pn600 = phi { ptr, i32 } [ %i.qe, %.body1001 ], [ %i.abx, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #18
  br label %bb.adw

bb.in:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.io:                                            ; preds = %.body1003, %bb.in
  %.pn602 = phi { ptr, i32 } [ %i.qm, %.body1003 ], [ %i.aby, %bb.in ]
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #18
  br label %bb.adv

bb.ip:                                            ; preds = %bb.ii
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %251, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef 6)
          to label %bb.iq unwind label %bb.iu

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %253, i32 noundef %i.py, i32 noundef 1, i32 noundef 6)
          to label %bb.ir unwind label %bb.iu

bb.ir:                                            ; preds = %bb.iq
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %255, i32 noundef %i.px, i32 noundef %i.pz, i32 noundef 6)
          to label %bb.is unwind label %bb.iu

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %256, i32 noundef %i.px, i32 noundef 1, i32 noundef 6)
          to label %bb.it unwind label %bb.iu

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %257) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %257) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %258) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %258) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %259) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %259) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %260) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %260) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %261) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %261) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %262) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %262) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %263) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %263) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %264) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %264) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %265) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %265) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %266) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %266) #18
  br i1 %i.me, label %.lr.ph1467, label %._crit_edge1468

bb.iu:                                            ; preds = %bb.is, %bb.ir, %bb.iq, %bb.ip
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %bb.adu

.lr.ph1467:                                       ; preds = %bb.it, %bb.tu
  %indvars.iv1566 = phi i64 [ %indvars.iv.next1567, %bb.tu ], [ 0, %bb.it ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %267) #18
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %267, i32 noundef %i.px, i32 noundef %i.pz, i32 noundef 6)
          to label %bb.iv unwind label %bb.mq

bb.iv:                                            ; preds = %.lr.ph1467
  %i.aca = load ptr, ptr %267, align 8, !tbaa !48 ; 2 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !61
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 24
  %i.acd = load ptr, ptr %i.acc, align 8
  invoke void %i.acd(ptr noundef nonnull align 8 dereferenceable(8) %i.aca, ptr noundef nonnull align 8 dereferenceable(688) %267, ptr noundef nonnull align 8 dereferenceable(208) %255, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit1007 unwind label %bb.mr, !inline_history !115

_ZN2cv3MataSERKNS_7MatExprE.exit1007:             ; preds = %bb.iv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qv) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qw) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.qx) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %268) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %269) #18
  %i.ace = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc1008 unwind label %bb.mt ; 0 uses

.noexc1008:                                       ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit1007
  %i.acf = trunc nuw nsw i64 %indvars.iv1566 to i32 ; 4 uses
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %269, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.acf)
          to label %_ZNK2cv11_InputArray6getMatEi.exit1010 unwind label %bb.mt

_ZNK2cv11_InputArray6getMatEi.exit1010:           ; preds = %.noexc1008
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %268, ptr noundef nonnull align 8 dereferenceable(208) %269)
          to label %bb.iw unwind label %bb.mu

bb.iw:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit1010
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %269) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %269) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %270) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %271) #18
  %i.acg = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc1011 unwind label %bb.mw ; 0 uses

.noexc1011:                                       ; preds = %bb.iw
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %271, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.acf)
          to label %_ZNK2cv11_InputArray6getMatEi.exit1013 unwind label %bb.mw

_ZNK2cv11_InputArray6getMatEi.exit1013:           ; preds = %.noexc1011
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %270, ptr noundef nonnull align 8 dereferenceable(208) %271)
          to label %bb.ix unwind label %bb.mx

bb.ix:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit1013
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %271) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %271) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %272) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %273) #18
  %i.ach = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc1014 unwind label %bb.mz ; 0 uses

.noexc1014:                                       ; preds = %bb.ix
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %273, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.acf)
          to label %_ZNK2cv11_InputArray6getMatEi.exit1016 unwind label %bb.mz

_ZNK2cv11_InputArray6getMatEi.exit1016:           ; preds = %.noexc1014
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %272, ptr noundef nonnull align 8 dereferenceable(208) %273)
          to label %bb.iy unwind label %bb.na

bb.iy:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit1016
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %273) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %273) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %274) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %274) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %275) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %275) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %276) #18
  %i.aci = load ptr, ptr %203, align 8, !tbaa !39
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %276, align 16, !tbaa !17
  store i32 153, ptr %i.qy, align 16, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qz, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ra, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc1017 unwind label %bb.nc

.noexc1017:                                       ; preds = %bb.iy
  %i.acj = getelementptr inbounds nuw [24 x i8], ptr %i.aci, i64 %indvars.iv1566
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.rb, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %154, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %i.acj, i64 noundef 0)
          to label %.noexc1018 unwind label %bb.nc

.noexc1018:                                       ; preds = %.noexc1017
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #18
  store i64 0, ptr %i.rd, align 8
  store i32 33619968, ptr %155, align 8, !tbaa !26
  store ptr %276, ptr %i.rc, align 8, !tbaa !20
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %154, ptr noundef nonnull align 8 dereferenceable(24) %155)
          to label %bb.ja unwind label %bb.iz

bb.iz:                                            ; preds = %.noexc1018
  %i.ack = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %154) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #18
  br label %.body1019

bb.ja:                                            ; preds = %.noexc1018
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %154) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %277) #18
  %i.acl = load ptr, ptr %204, align 8, !tbaa !39
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %277, align 16, !tbaa !17
  store i32 153, ptr %i.re, align 16, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rf, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.rg, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc1022 unwind label %bb.nd

.noexc1022:                                       ; preds = %bb.ja
  %i.acm = getelementptr inbounds nuw [24 x i8], ptr %i.acl, i64 %indvars.iv1566
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.rh, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %152, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %i.acm, i64 noundef 0)
          to label %.noexc1023 unwind label %bb.nd

.noexc1023:                                       ; preds = %.noexc1022
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #18
  store i64 0, ptr %i.rj, align 8
  store i32 33619968, ptr %153, align 8, !tbaa !26
  store ptr %277, ptr %i.ri, align 8, !tbaa !20
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %152, ptr noundef nonnull align 8 dereferenceable(24) %153)
          to label %bb.jc unwind label %bb.jb

bb.jb:                                            ; preds = %.noexc1023
  %i.acn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %152) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #18
  br label %.body1024

bb.jc:                                            ; preds = %.noexc1023
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %152) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %278) #18
  store i32 0, ptr %i.rk, align 8, !tbaa !46
  store i32 0, ptr %i.rl, align 4, !tbaa !47
  store i32 16842752, ptr %278, align 8, !tbaa !26
  store ptr %268, ptr %i.rm, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %279) #18
  store i64 0, ptr %i.ro, align 8
  store i32 33619968, ptr %279, align 8, !tbaa !26
  store ptr %275, ptr %i.rn, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %280) #18
  store i32 0, ptr %i.rp, align 8, !tbaa !46
  store i32 0, ptr %i.rq, align 4, !tbaa !47
  store i32 16842752, ptr %280, align 8, !tbaa !26
  store ptr %276, ptr %i.rr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %281) #18
  store i32 0, ptr %i.rs, align 8, !tbaa !46
  store i32 0, ptr %i.rt, align 4, !tbaa !47
  store i32 16842752, ptr %281, align 8, !tbaa !26
  store ptr %277, ptr %i.ru, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %282) #18
  store i64 0, ptr %i.rw, align 8
  store i32 33619968, ptr %282, align 8, !tbaa !26
  store ptr %274, ptr %i.rv, align 8, !tbaa !20
  invoke void @_ZN2cv8internal13projectPointsERKNS_11_InputArrayERKNS_12_OutputArrayES3_S3_RKNS0_15IntrinsicParamsES6_(ptr noundef nonnull align 8 dereferenceable(24) %278, ptr noundef nonnull align 8 dereferenceable(24) %279, ptr noundef nonnull align 8 dereferenceable(24) %280, ptr noundef nonnull align 8 dereferenceable(24) %281, ptr noundef nonnull align 8 dereferenceable(96) %187, ptr noundef nonnull align 8 dereferenceable(24) %282)
          to label %bb.jd unwind label %bb.ne

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %282) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %279) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %283) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %284) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %285) #18
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %285, ptr noundef nonnull align 8 dereferenceable(208) %270, i32 noundef 1, i32 noundef %i.rx)
          to label %bb.je unwind label %bb.nf

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %286) #18
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %286, ptr noundef nonnull align 8 dereferenceable(208) %275, i32 noundef 1, i32 noundef %i.rx)
          to label %bb.jf unwind label %bb.ng

bb.jf:                                            ; preds = %bb.je
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %284, ptr noundef nonnull align 8 dereferenceable(208) %285, ptr noundef nonnull align 8 dereferenceable(208) %286)
          to label %bb.jg unwind label %bb.nh

bb.jg:                                            ; preds = %bb.jf
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %283) #18
  %i.aco = load ptr, ptr %284, align 8, !tbaa !48, !noalias !235 ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !61
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 24
  %i.acr = load ptr, ptr %i.acq, align 8
  invoke void %i.acr(ptr noundef nonnull align 8 dereferenceable(8) %i.aco, ptr noundef nonnull align 8 dereferenceable(688) %284, ptr noundef nonnull align 8 dereferenceable(208) %283, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit1029 unwind label %.body1027

.body1027:                                        ; preds = %bb.jg
  %i.acs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %283) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %284) #18
  br label %bb.ni

_ZNK2cv7MatExprcvNS_3MatEEv.exit1029:             ; preds = %bb.jg
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ry) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.rz) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.sa) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %286) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %286) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %285) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %285) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %287) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %288) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #18, !noalias !238
  store i32 0, ptr %150, align 4, !tbaa !105, !noalias !238
  store i32 %i.rx, ptr %i.sb, align 4, !tbaa !107, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #18, !noalias !238
  store i64 9223372034707292160, ptr %151, align 8, !noalias !238
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %288, ptr noundef nonnull align 8 dereferenceable(208) %256, ptr noundef nonnull align 4 dereferenceable(8) %150, ptr noundef nonnull align 4 dereferenceable(8) %151)
          to label %bb.jh unwind label %bb.nl

bb.jh:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit1029
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #18, !noalias !238
end_hunk_2
begin_hunk_3_@_ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %369) #18
  br label %bb.ub

bb.sq:                                            ; preds = %bb.mh
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  br label %bb.sw

bb.sr:                                            ; preds = %bb.mi
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.sv

bb.ss:                                            ; preds = %bb.mj
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %bb.su

bb.st:                                            ; preds = %bb.mk
  %i.aix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %375) #18
  br label %bb.su

bb.su:                                            ; preds = %bb.st, %bb.ss
  %.pn768.pn = phi { ptr, i32 } [ %i.aix, %bb.st ], [ %i.aiw, %bb.ss ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %376) #18
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.sr
  %.pn768.pn.pn = phi { ptr, i32 } [ %.pn768.pn, %bb.su ], [ %i.aiv, %bb.sr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %376) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %375) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %374) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %373) #18
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.sq
  %.pn768.pn.pn.pn = phi { ptr, i32 } [ %.pn768.pn.pn, %bb.sv ], [ %i.aiu, %bb.sq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %373) #18
  br label %bb.ub

bb.sx:                                            ; preds = %bb.ml
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  br label %bb.td

bb.sy:                                            ; preds = %bb.mm
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  br label %bb.tc

bb.sz:                                            ; preds = %bb.mn
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %bb.tb

bb.ta:                                            ; preds = %bb.mo
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %379) #18
  br label %bb.tb

bb.tb:                                            ; preds = %bb.ta, %bb.sz
  %.pn773.pn = phi { ptr, i32 } [ %i.ajb, %bb.ta ], [ %i.aja, %bb.sz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %380) #18
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.sy
  %.pn773.pn.pn = phi { ptr, i32 } [ %.pn773.pn, %bb.tb ], [ %i.aiz, %bb.sy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %380) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %379) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %378) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %377) #18
  br label %bb.td

bb.td:                                            ; preds = %bb.tc, %bb.sx
  %.pn773.pn.pn.pn = phi { ptr, i32 } [ %.pn773.pn.pn, %bb.tc ], [ %i.aiy, %bb.sx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %377) #18
  br label %bb.ub

.lr.ph1463.split:                                 ; preds = %.lr.ph1463, %bb.tl
  %indvars.iv1555 = phi i64 [ %indvars.iv.next1556, %bb.tl ], [ 0, %.lr.ph1463 ] ; 7 uses
  %.02791459 = phi double [ %.1, %bb.tl ], [ 0.000000e+00, %.lr.ph1463 ] ; 4 uses
  br i1 %or.cond.i, label %_ZN2cv3Mat2atIdEERT_i.exit.thread, label %bb.te

bb.te:                                            ; preds = %.lr.ph1463.split
  br i1 %i.aeo, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  %i.ajc = mul i64 %i.aer, %indvars.iv1555
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.ajc
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.tg:                                            ; preds = %bb.te
  %i.aje = trunc nuw nsw i64 %indvars.iv1555 to i32 ; 2 uses
  %i.ajf = sdiv i32 %i.aje, %i.aep                ; 2 uses
  %i.ajg = mul nsw i32 %i.ajf, %i.aep             ; 0 uses
  %.recomposed = srem i32 %i.aje, %i.aep
  %i.ajh = sext i32 %i.ajf to i64
  %i.aji = mul i64 %i.aer, %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aji
  %i.ajk = sext i32 %.recomposed to i64
  %i.ajl = getelementptr inbounds [8 x i8], ptr %i.ajj, i64 %i.ajk
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.tg, %bb.tf
  %.0.i = phi ptr [ %i.ajl, %bb.tg ], [ %i.ajd, %bb.tf ]
  %i.ajm = load double, ptr %.0.i, align 8, !tbaa !18
  %i.ajn = call double @llvm.fabs.f64(double %i.ajm)
  %i.ajo = fcmp ogt double %i.ajn, %.02791459
  br i1 %i.ajo, label %bb.th, label %bb.tl

_ZN2cv3Mat2atIdEERT_i.exit.thread:                ; preds = %.lr.ph1463.split
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %indvars.iv1555
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !18
  %i.ajr = call double @llvm.fabs.f64(double %i.ajq)
  %i.ajs = fcmp ogt double %i.ajr, %.02791459
  br i1 %i.ajs, label %.thread, label %bb.tl

bb.th:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit
  br i1 %i.aem, label %.thread, label %bb.ti

.thread:                                          ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.thread, %bb.th
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %indvars.iv1555
  br label %_ZN2cv3Mat2atIdEERT_i.exit1150

bb.ti:                                            ; preds = %bb.th
  br i1 %i.aeo, label %bb.tj, label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  %i.aju = mul i64 %i.aer, %indvars.iv1555
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aju
  br label %_ZN2cv3Mat2atIdEERT_i.exit1150

bb.tk:                                            ; preds = %bb.ti
  %i.ajw = trunc nuw nsw i64 %indvars.iv1555 to i32 ; 2 uses
  %i.ajx = sdiv i32 %i.ajw, %i.aep                ; 2 uses
  %i.ajy = mul nsw i32 %i.ajx, %i.aep             ; 0 uses
  %.recomposed1929 = srem i32 %i.ajw, %i.aep
  %i.ajz = sext i32 %i.ajx to i64
  %i.aka = mul i64 %i.aer, %i.ajz
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aka
  %i.akc = sext i32 %.recomposed1929 to i64
  %i.akd = getelementptr inbounds [8 x i8], ptr %i.akb, i64 %i.akc
  br label %_ZN2cv3Mat2atIdEERT_i.exit1150

_ZN2cv3Mat2atIdEERT_i.exit1150:                   ; preds = %bb.tk, %bb.tj, %.thread
  %.0.i1149 = phi ptr [ %i.akd, %bb.tk ], [ %i.ajt, %.thread ], [ %i.ajv, %bb.tj ]
  %i.ake = load double, ptr %.0.i1149, align 8, !tbaa !18
  %i.akf = call double @llvm.fabs.f64(double %i.ake)
  br label %bb.tl

bb.tl:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.thread, %_ZN2cv3Mat2atIdEERT_i.exit, %_ZN2cv3Mat2atIdEERT_i.exit1150
  %.1 = phi double [ %i.akf, %_ZN2cv3Mat2atIdEERT_i.exit1150 ], [ %.02791459, %_ZN2cv3Mat2atIdEERT_i.exit ], [ %.02791459, %_ZN2cv3Mat2atIdEERT_i.exit.thread ] ; 2 uses
  %indvars.iv.next1556 = add nuw nsw i64 %indvars.iv1555, 1 ; 2 uses
  %exitcond1559.not = icmp eq i64 %indvars.iv.next1556, %wide.trip.count1558
  br i1 %exitcond1559.not, label %._crit_edge1464, label %.lr.ph1463.split, !llvm.loop !394

bb.tm:                                            ; preds = %._crit_edge1464
  call void @llvm.lifetime.start.p0(ptr nonnull %381) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %382) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %381, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %382)
          to label %bb.tn unwind label %bb.tp

bb.tn:                                            ; preds = %bb.tm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %381, ptr noundef nonnull @__func__._ZN2cv7fisheye15stereoCalibrateERKNS_11_InputArrayES3_S3_RKNS_17_InputOutputArrayES6_S6_S6_NS_5Size_IiEERKNS_12_OutputArrayESB_SB_SB_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 387) #19
          to label %bb.to unwind label %bb.tq

bb.to:                                            ; preds = %bb.tn
  unreachable

bb.tp:                                            ; preds = %bb.tm
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153

bb.tq:                                            ; preds = %bb.tn
  %i.akh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aki = load ptr, ptr %381, align 8, !tbaa !8  ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %381, i64 16 ; 2 uses
  %i.akk = icmp eq ptr %i.aki, %i.akj
  br i1 %i.akk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151: ; preds = %bb.tq
  %i.akl = load i64, ptr %i.akj, align 8, !tbaa !14
  %i.akm = add i64 %i.akl, 1
  call void @_ZdlPvm(ptr noundef %i.aki, i64 noundef %i.akm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153: ; preds = %bb.tq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151, %bb.tp
  %.pn778 = phi { ptr, i32 } [ %i.akg, %bb.tp ], [ %i.akh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151 ], [ %i.akh, %bb.tq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %382) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %381) #18
  br label %bb.ub

._crit_edge1464.thread:                           ; preds = %bb.mp, %._crit_edge1464
  call void @llvm.lifetime.start.p0(ptr nonnull %383) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %384) #18
  %i.akn = mul i32 %i.px, %i.acf                  ; 2 uses
  %indvars.iv.next1567 = add nuw nsw i64 %indvars.iv1566, 1 ; 3 uses
  %indvars.iv.next1567.tr = trunc nuw nsw i64 %indvars.iv.next1567 to i32
  %i.ako = mul i32 %i.px, %indvars.iv.next1567.tr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18, !noalias !395
  store i32 %i.akn, ptr %50, align 4, !tbaa !105, !noalias !395
  store i32 %i.ako, ptr %i.yg, align 4, !tbaa !107, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18, !noalias !395
  store i64 9223372034707292160, ptr %51, align 8, !noalias !395
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %384, ptr noundef nonnull align 8 dereferenceable(208) %251, ptr noundef nonnull align 4 dereferenceable(8) %50, ptr noundef nonnull align 4 dereferenceable(8) %51)
          to label %bb.tr unwind label %bb.tv

bb.tr:                                            ; preds = %._crit_edge1464.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18, !noalias !395
  store i64 0, ptr %i.yi, align 8
  store i32 -1040121856, ptr %383, align 8, !tbaa !26
  store ptr %384, ptr %i.yh, align 8, !tbaa !20
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %255, ptr noundef nonnull align 8 dereferenceable(24) %383)
          to label %bb.ts unwind label %bb.tw

bb.ts:                                            ; preds = %bb.tr
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %384) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %385) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %386) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18, !noalias !398
  store i32 %i.akn, ptr %48, align 4, !tbaa !105, !noalias !398
  store i32 %i.ako, ptr %i.yj, align 4, !tbaa !107, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18, !noalias !398
  store i64 9223372034707292160, ptr %49, align 8, !noalias !398
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %386, ptr noundef nonnull align 8 dereferenceable(208) %253, ptr noundef nonnull align 4 dereferenceable(8) %48, ptr noundef nonnull align 4 dereferenceable(8) %49)
          to label %bb.tt unwind label %bb.ty

bb.tt:                                            ; preds = %bb.ts
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18, !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18, !noalias !398
  store i64 0, ptr %i.yl, align 8
  store i32 -1040121856, ptr %385, align 8, !tbaa !26
  store ptr %386, ptr %i.yk, align 8, !tbaa !20
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %256, ptr noundef nonnull align 8 dereferenceable(24) %385)
          to label %bb.tu unwind label %bb.tz

bb.tu:                                            ; preds = %bb.tt
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %386) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %347) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %341) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %335) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %329) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %283) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %277) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %276) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %275) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %274) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %272) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %270) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %268) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #18
  %exitcond1570.not = icmp eq i64 %indvars.iv.next1567, %wide.trip.count1569
  br i1 %exitcond1570.not, label %._crit_edge1468, label %.lr.ph1467, !llvm.loop !401

bb.tv:                                            ; preds = %._crit_edge1464.thread
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %bb.tx

bb.tw:                                            ; preds = %bb.tr
  %i.akq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %384) #18
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.tv
  %.pn780.pn = phi { ptr, i32 } [ %i.akq, %bb.tw ], [ %i.akp, %bb.tv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #18
  br label %bb.ub

bb.ty:                                            ; preds = %bb.ts
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ua

bb.tz:                                            ; preds = %bb.tt
  %i.aks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %386) #18
  br label %bb.ua

bb.ua:                                            ; preds = %bb.tz, %bb.ty
  %.pn783.pn = phi { ptr, i32 } [ %i.aks, %bb.tz ], [ %i.akr, %bb.ty ]
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #18
  br label %bb.ub

bb.ub:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153, %bb.tx, %bb.ua, %bb.td, %bb.sw, %bb.sp, %bb.si, %bb.sb, %bb.rw, %bb.rr, %bb.rm
  %.pn786.pn = phi { ptr, i32 } [ %.pn742.pn.pn, %bb.rm ], [ %.pn773.pn.pn.pn, %bb.td ], [ %.pn768.pn.pn.pn, %bb.sw ], [ %.pn763.pn.pn.pn, %bb.sp ], [ %.pn758.pn.pn.pn, %bb.si ], [ %.pn754.pn.pn, %bb.sb ], [ %.pn750.pn.pn, %bb.rw ], [ %.pn746.pn.pn, %bb.rr ], [ %.pn778, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153 ], [ %.pn783.pn, %bb.ua ], [ %.pn780.pn, %bb.tx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %347) #18
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.rh
  %.pn786.pn.pn = phi { ptr, i32 } [ %.pn786.pn, %bb.ub ], [ %.pn736.pn.pn.pn.pn, %bb.rh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %341) #18
  br label %bb.ud

bb.ud:                                            ; preds = %bb.uc, %bb.qx
  %.pn786.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn, %bb.uc ], [ %.pn730.pn.pn.pn.pn, %bb.qx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %335) #18
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.qn
  %.pn786.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn, %bb.ud ], [ %.pn724.pn.pn.pn.pn, %bb.qn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %329) #18
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.qd
  %.pn786.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn, %bb.ue ], [ %.pn718.pn.pn.pn.pn, %bb.qd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #18
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.pt, %bb.pq, %bb.pj, %.body1073, %.body1068, %bb.pe, %bb.pd, %bb.ow, %bb.op, %bb.oi, %bb.ob, %bb.nu, %bb.nn
  %.pn786.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn, %bb.uf ], [ %.pn715.pn, %bb.pt ], [ %.pn711.pn.pn, %bb.pq ], [ %i.agz, %bb.pj ], [ %.pn703, %.body1073 ], [ %.pn701, %.body1068 ], [ %i.agu, %bb.pe ], [ %.pn691.pn.pn.pn, %bb.pd ], [ %.pn686.pn.pn.pn, %bb.ow ], [ %.pn681.pn.pn.pn, %bb.op ], [ %.pn676.pn.pn.pn, %bb.oi ], [ %.pn671.pn.pn.pn, %bb.ob ], [ %.pn666.pn.pn.pn, %bb.nu ], [ %.pn663.pn, %bb.nn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %283) #18
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %bb.nk
  %.pn786.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn, %bb.ug ], [ %.pn659.pn.pn, %bb.nk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #18
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.ne
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn, %bb.uh ], [ %i.afq, %bb.ne ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %277) #18
  br label %.body1024

.body1024:                                        ; preds = %bb.nd, %bb.jb, %bb.ui
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ui ], [ %i.afp, %bb.nd ], [ %i.acn, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %276) #18
  br label %.body1019

.body1019:                                        ; preds = %bb.nc, %bb.iz, %.body1024
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body1024 ], [ %i.afo, %bb.nc ], [ %i.ack, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %275) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %274) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %274) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %272) #18
  br label %bb.uj

bb.uj:                                            ; preds = %.body1019, %bb.nb
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body1019 ], [ %.pn651, %bb.nb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %270) #18
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.my
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.uj ], [ %.pn649, %bb.my ]
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %268) #18
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uk, %bb.mv
  %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn786.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.uk ], [ %.pn647, %bb.mv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #18
  br label %bb.yu

._crit_edge1468:                                  ; preds = %bb.tu, %bb.it
  %i.akt = load double, ptr %249, align 16, !tbaa !18
  %i.aku = load double, ptr %i.ym, align 8, !tbaa !18
  %i.akv = load double, ptr %i.yn, align 16, !tbaa !18
  %i.akw = load double, ptr %247, align 16, !tbaa !18
  %i.akx = load <2 x double>, ptr %i.yo, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %387) #18
  %i.aky = load i32, ptr %i.yq, align 8, !tbaa !72 ; 3 uses
  %i.akz = sext i32 %i.aky to i64                 ; 3 uses
  %i.ala = icmp slt i32 %i.aky, 0
  br i1 %i.ala, label %bb.um, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i1158

bb.um:                                            ; preds = %._crit_edge1468
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #19
          to label %.noexc1162 unwind label %.loopexit.split-lp

.noexc1162:                                       ; preds = %bb.um
  unreachable

end_hunk_3
