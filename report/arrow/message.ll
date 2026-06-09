inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZN5arrow3ipc11ReadMessageEliPNS_2io16RandomAccessFileERKSt8functionIFNS_6StatusEPKvS3_EE:bb.a
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !323
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i8 0, i64 24, i1 false), !noalias !323
  %i.gz = icmp ugt i64 %i.gu, 11
  br i1 %i.gz, label %bb.bo, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ha = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !326 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.ha, 0
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bp, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.hb = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hc = add i64 %i.gt, -9
  %.not.i.i.i.i.i.i = icmp ult i64 %i.hc, %i.hb
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !323
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i: ; preds = %bb.bp
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hb
  %i.he = invoke noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.hd, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %.noexc118 unwind label %bb.db

.noexc118:                                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !323
  br i1 %i.he, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc118
  %i.hf = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !326
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hg ; 4 uses
  store ptr null, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = sext i32 %i.hi to i64
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 %i.hk ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !71 ; 2 uses
  %i.hn = icmp ugt i16 %i.hm, 6
  br i1 %i.hn, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc118, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31)
          to label %_ZN5arrow6StatusD2Ev.exit124.thread unwind label %bb.db

_ZN5arrow6StatusD2Ev.exit124.thread:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !27, !noalias !320, !nonnull !43, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  store ptr %.pr.i, ptr %34, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.cx

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i115 = icmp eq i16 %i.hp, 0
  br i1 %.not.i.i.i.i115, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.hq = zext i16 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !25
  %i.ht = icmp eq i8 %i.hs, 3
  %i.hu = icmp ugt i16 %i.hm, 8
  %or.cond.i.i = and i1 %i.hu, %i.ht
  br i1 %or.cond.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i116 = icmp eq i16 %i.hw, 0
  br i1 %.not.i.i.i.i.i116, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.hx = zext i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hx ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !320
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false), !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow2io13FileInterfaceE, i64 16), ptr %i.ic, align 8, !tbaa !22, !noalias !320
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 0, ptr %i.ie, align 8, !tbaa !327, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow2io8ReadableE, i64 16), ptr %9, align 8, !tbaa !22, !noalias !320
  invoke void @_ZN5arrow2io16RandomAccessFileC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8))
          to label %bb.bq unwind label %bb.br

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %35, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(62) @.str.34)
          to label %_ZN5arrow6StatusD2Ev.exit124 unwind label %bb.db

bb.bq:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 328), ptr %i.ic, align 8, !tbaa !22, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 64), ptr %9, align 8, !tbaa !22, !noalias !320
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 240), ptr %i.if, align 8, !tbaa !22, !noalias !320
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.gk, ptr %i.ig, align 8, !tbaa !335, !noalias !320
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ih, i8 0, i64 33, i1 false), !noalias !320
  invoke void @_ZN5arrow2io9IOContextC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ii)
          to label %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i unwind label %bb.bs

bb.br:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !358, !noalias !320 ; 3 uses
  %.not.i.i.i.i60.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i60.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.im = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !359, !noalias !320
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.iq) #29
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bt, %bb.bs
  call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8)) #28
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, %bb.br
  %.pn.i.i = phi { ptr, i32 } [ %i.ik, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i ], [ %i.ij, %bb.br ]
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.ic) #28
  br label %.body121

_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i: ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  store ptr %i.ib, ptr %i.a, align 8, !tbaa !11, !noalias !360
  store ptr %9, ptr %i.b, align 8, !tbaa !363, !noalias !360
  %i.ir = load ptr, ptr %i.fm, align 8, !tbaa !309, !noalias !360
  %.not.i.i.i117 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i117, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc.i unwind label %bb.bx

.noexc.i:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !365, !noalias !360
  invoke void %i.it(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5arrow6StatusD2Ev.exit63.i unwind label %bb.bx, !inline_history !367

_ZN5arrow6StatusD2Ev.exit63.i:                    ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  %i.iu = load ptr, ptr %10, align 8, !tbaa !27, !noalias !320 ; 2 uses
  store ptr %i.iu, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN5arrow6StatusD2Ev.exit67.i, label %.critedge51.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  br label %bb.cw

_ZN5arrow6StatusD2Ev.exit67.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit63.i
  %i.ix = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow3ipc8internal26IoRecordedRandomAccessFile13GetReadRangesEv(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !368 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !368 ; 2 uses
  %i.jb = icmp eq ptr %i.iy, %i.ja
  br i1 %i.jb, label %.critedge55.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.by
  %i.jc = sext i32 %i.ge to i64
  %i.jd = add nsw i64 %i.gd, %i.jc
  br label %bb.ca

bb.bz:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ca:                                            ; preds = %bb.cn, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %i.iy, %.lr.ph.i ], [ %i.lg, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !320
  %i.jf = load i64, ptr %.sroa.01.06.i, align 8, !tbaa !369 ; 2 uses
  %i.jg = add nsw i64 %i.jd, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !371
  %i.jj = load ptr, ptr %31, align 16, !tbaa !16, !noalias !320 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 9
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !46, !range !42, !noundef !43
  %i.jm = trunc nuw i8 %i.jl to i1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jo = load i8, ptr %i.jn, align 8, !range !42
  %i.jp = trunc nuw i8 %i.jo to i1
  %i.jq = select i1 %i.jm, i1 %i.jp, i1 false, !prof !30
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = select i1 %i.jq, ptr %i.js, ptr null, !prof !30
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %i.jf
  %i.jv = load ptr, ptr %3, align 8, !tbaa !22, !noalias !320
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  %i.jx = load ptr, ptr %i.jw, align 8
  invoke void %i.jx(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.72") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.jg, i64 noundef %i.ji, ptr noundef %i.ju)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.jy = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.cn, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !320
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !372
  invoke void @_ZN5arrow8internal12JoinToStringIJRA36_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(36) @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc68.i unwind label %bb.ck

.noexc68.i:                                       ; preds = %bb.cd
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %35, i8 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %.noexc68.i
  %i.ka = load ptr, ptr %6, align 8, !tbaa !78, !noalias !372 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ce
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !25, !noalias !372
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.cf:                                            ; preds = %.noexc68.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  %i.kg = load ptr, ptr %6, align 8, !tbaa !78, !noalias !372 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.cf
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !25, !noalias !372
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !372
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !372
  %i.kl = load ptr, ptr %12, align 8, !tbaa !78, !noalias !320 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !25, !noalias !320
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !320
  %i.kq = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320 ; 2 uses
  %.not.i.i69.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i69.i, label %bb.co, label %bb.cg, !prof !30

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !31, !range !42, !noundef !43
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %bb.co

bb.ci:                                            ; preds = %bb.ca
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIlED2Ev.exit74.i

bb.cj:                                            ; preds = %bb.cc
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

bb.ck:                                            ; preds = %bb.cd
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.kw, %bb.ck ], [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ] ; 2 uses
  %i.kx = load ptr, ptr %12, align 8, !tbaa !78, !noalias !320 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %.body.i
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !25, !noalias !320
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i, %bb.cj
  %.pn44.i = phi { ptr, i32 } [ %i.kv, %bb.cj ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %eh.lpad-body.i, %.body.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !320
  %i.lc = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320 ; 2 uses
  %.not.i.i73.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i73.i, label %_ZN5arrow6ResultIlED2Ev.exit74.i, label %bb.cl, !prof !30

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !31, !range !42, !noundef !43
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %_ZN5arrow6ResultIlED2Ev.exit74.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %_ZN5arrow6ResultIlED2Ev.exit74.i

bb.cn:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.ja
  br i1 %i.lh, label %.critedge55.i, label %bb.ca

_ZN5arrow6ResultIlED2Ev.exit74.i:                 ; preds = %bb.cm, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, %bb.ci
  %.pn44.pn.i = phi { ptr, i32 } [ %i.ku, %bb.ci ], [ %.pn44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ], [ %.pn44.i, %bb.cl ], [ %.pn44.i, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  br label %bb.cw

bb.co:                                            ; preds = %bb.ch, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  br label %.critedge51.i

.critedge55.i:                                    ; preds = %bb.cn, %bb.by
  store ptr null, ptr %35, align 8, !tbaa !27, !alias.scope !377
  br label %.critedge51.i

.critedge51.i:                                    ; preds = %.critedge55.i, %bb.co, %_ZN5arrow6StatusD2Ev.exit63.i
  %i.li = load ptr, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, align 8, !noalias !320 ; 2 uses
  store ptr %i.li, ptr %9, align 8, !tbaa !22, !noalias !320
  %i.lj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 56), align 8, !noalias !320
  %i.lk = getelementptr i8, ptr %i.li, i64 -56
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds i8, ptr %9, i64 %i.ll
  store ptr %i.lj, ptr %i.lm, align 8, !tbaa !22, !noalias !320
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 64), align 8, !noalias !320
  %i.lo = load ptr, ptr %9, align 8, !tbaa !22, !noalias !320
  %i.lp = getelementptr i8, ptr %i.lo, i64 -64
  %i.lq = load i64, ptr %i.lp, align 8
  %i.lr = getelementptr inbounds i8, ptr %9, i64 %i.lq
  store ptr %i.ln, ptr %i.lr, align 8, !tbaa !22, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 240), ptr %i.if, align 8, !tbaa !22, !noalias !320
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !13, !noalias !320 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.critedge51.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %i.lv = load atomic i64, ptr %i.lu acquire, align 8 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 4294967297
  %i.lx = trunc i64 %i.lv to i32                  ; 2 uses
  br i1 %i.lw, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.lu, align 8, !tbaa !19
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store i32 0, ptr %i.ly, align 4, !tbaa !21
  %i.lz = load ptr, ptr %i.lt, align 8, !tbaa !22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #28, !inline_history !380
end_hunk_0
begin_hunk_1_@llvm.trap

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

declare void @_ZN5arrow6Buffer10ViewOrCopyESt10shared_ptrIS0_ERKS1_INS_13MemoryManagerEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.32") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl15ConsumeMetadataEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Result.32", align 8  ; 12 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16, !noalias !654 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46, !range !42, !noalias !654, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !654
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not15.i = icmp ne i64 %i.i, 0
  %.not.not.i = select i1 %i.e, i1 %.not15.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit23.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !654
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53, !noalias !654
  %i.l = tail call noundef ptr @_ZN5arrow19default_memory_poolEv(), !noalias !654
  call void @_ZNK5arrow6Buffer9CopySliceEllPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 0, i64 noundef %i.k, ptr noundef %i.l), !noalias !654
  %i.m = load ptr, ptr %4, align 8, !tbaa !27, !noalias !654
  %i.n = icmp eq ptr %i.m, null                   ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %5, align 8, !tbaa !27, !alias.scope !654
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.d

common.resume:                                    ; preds = %bb.ae, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.dh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.dz, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !654
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !11, !noalias !657
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !654
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !13, !noalias !654 ; 8 uses
  store <2 x ptr> %i.r, ptr %i.a, align 8, !tbaa !11, !noalias !654
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6StatusC2ERKS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8, !noalias !654 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !19, !noalias !654
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !21, !noalias !654
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !22, !noalias !654
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !654
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !noalias !654, !inline_history !662
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !22, !noalias !654
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !654
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !noalias !654, !inline_history !662
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !654
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3, !noalias !654
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4, !noalias !654
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %_ZN5arrow6StatusC2ERKS0_.exit.i, !prof !26

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !noalias !654
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %bb.e, %bb.c
  %i.ai = load ptr, ptr %4, align 8, !tbaa !27, !noalias !654 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !30

bb.l:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13, !noalias !654 ; 8 uses
  %.not.i.i.i.i.i12.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i12.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.am, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !21
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !663
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !663
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !654
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.r, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !26

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %bb.l
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !27, !noalias !654 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i13.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !171

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.bb = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.ai, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !31, !range !42, !noundef !43
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i: ; preds = %bb.s, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !654
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit23.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit23.thread:               ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.t

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i
  %.pr = load ptr, ptr %5, align 8, !tbaa !27     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bf = icmp eq ptr %.pr, null
  br i1 %i.bf, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit23.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !664
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !46, !range !42, !noalias !664, !noundef !43
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !664 ; 4 uses
  %i.bm = select i1 %i.bj, ptr %i.bl, ptr null, !prof !30 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !53, !noalias !664 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !667
  %.tr.i.i.i = trunc i64 %i.bo to i32
  %i.bp = shl i32 %.tr.i.i.i, 3
  store ptr %i.bm, ptr %2, align 8, !tbaa !57, !noalias !667
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !61, !noalias !667
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 128, ptr %i.br, align 8, !tbaa !3, !noalias !667
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.bp, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 4, !tbaa !3, !noalias !667
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !667
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 1, !tbaa !62, !noalias !667
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !tbaa !63, !noalias !667
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !667
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false), !noalias !667
  %i.bt = icmp ugt i64 %i.bo, 11
  br i1 %i.bt, label %bb.u, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !3, !noalias !667 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.bu, 0
  br i1 %or.cond.i.i.i.i.i.i, label %bb.v, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = add i64 %i.bo, -1
  %.not.i.i.i.i.i.i24 = icmp ult i64 %i.bw, %i.bv
  br i1 %.not.i.i.i.i.i.i24, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !667
  br label %_ZN5arrow6StatusD2Ev.exit26.thread43

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i: ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bv
  %i.by = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !667
  br i1 %i.by, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %_ZN5arrow6StatusD2Ev.exit26.thread43

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i
  %i.bz = load i32, ptr %i.bl, align 4, !tbaa !3, !noalias !667
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !27, !alias.scope !664
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !664
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3, !noalias !664
  %i.cd = sext i32 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !71, !noalias !664
  %i.ch = icmp ugt i16 %i.cg, 10
  br i1 %i.ch, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZN5arrow6StatusD2Ev.exit26.thread

_ZN5arrow6StatusD2Ev.exit26.thread43:             ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31), !noalias !664
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !27, !noalias !664, !nonnull !43, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !664
  store ptr %.pr.i, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !71, !noalias !664 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit26.thread, label %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !63, !noalias !664 ; 3 uses
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit26, label %_ZN5arrow6StatusD2Ev.exit26.thread

_ZN5arrow6StatusD2Ev.exit26.thread:               ; preds = %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %.0 = phi i64 [ %i.cm, %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(41) @.str.38)
  %.pr40 = load ptr, ptr %6, align 8, !tbaa !27   ; 2 uses
  store ptr %.pr40, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.co = icmp eq ptr %.pr40, null
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit32, label %.critedge

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow6StatusD2Ev.exit26, %_ZN5arrow6StatusD2Ev.exit26.thread
  %.142 = phi i64 [ %.0, %_ZN5arrow6StatusD2Ev.exit26.thread ], [ %i.cm, %_ZN5arrow6StatusD2Ev.exit26 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 3, ptr %i.cp, align 8, !tbaa !262
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !512, !range !42, !noundef !43
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = select i1 %i.cs, i64 0, i64 %.142
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cv = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
  %i.cz = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  store ptr %i.cz, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN5arrow6StatusD2Ev.exit36, label %.critedge

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.db = load i64, ptr %i.cu, align 8, !tbaa !147
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.w, label %bb.af

bb.w:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.dd = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !673 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 1, ptr %i.de, align 8, !tbaa !19, !noalias !670
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 1, ptr %i.df, align 4, !tbaa !21, !noalias !670
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dd, align 8, !tbaa !22, !noalias !670
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.dg, ptr noundef null, i64 noundef 0)
          to label %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !670

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.w
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 96) #29, !noalias !670
  br label %common.resume

_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.dd, ptr %i.di, align 8, !tbaa !13, !alias.scope !670
  store ptr %i.dg, ptr %8, align 8, !tbaa !317, !alias.scope !670
  invoke void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl11ConsumeBodyEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull %8)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dk, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !21
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !24
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i37 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.dn, %bb.ab ], [ %i.dx, %bb.ac ]
  %i.dy = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dy, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl20ConsumeInitialChunksEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(105) %1, i64 noundef 4, ptr noundef nonnull %i.a)
  %i.b = load ptr, ptr %5, align 8, !tbaa !27     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit8, label %.critedge

_ZN5arrow6StatusD2Ev.exit8:                       ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  switch i32 %i.d, label %bb.c [
    i32 -1, label %_ZN5arrow6StatusD2Ev.exit.i
    i32 0, label %_ZN5arrow6StatusD2Ev.exit26.i
  ]

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.e, align 8, !tbaa !262, !noalias !719
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 4, ptr %i.f, align 8, !tbaa !147, !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !719
  %i.g = load ptr, ptr %1, align 8, !tbaa !141, !noalias !719 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22, !noalias !719
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !719
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !719, !inline_history !722
  %i.k = load ptr, ptr %2, align 8, !tbaa !27, !noalias !719 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !27, !alias.scope !719
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !719
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !723
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit26.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 4, ptr %i.m, align 8, !tbaa !262, !noalias !719
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !147, !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !719
  %i.o = load ptr, ptr %1, align 8, !tbaa !141, !noalias !719 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22, !noalias !719
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !noalias !719
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.o), !noalias !719, !inline_history !722
  %i.s = load ptr, ptr %3, align 8, !tbaa !27, !noalias !719 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !27, !alias.scope !719
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !719
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26.i
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !726
  br label %.critedge

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit8
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit32.i, label %bb.e

_ZN5arrow6StatusD2Ev.exit32.i:                    ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 2, ptr %i.v, align 8, !tbaa !262, !noalias !719
  %i.w = zext nneg i32 %i.d to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.w, ptr %i.x, align 8, !tbaa !147, !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !719
  %i.y = load ptr, ptr %1, align 8, !tbaa !141, !noalias !719 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22, !noalias !719
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !719
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.y), !noalias !719, !inline_history !722
  %i.ac = load ptr, ptr %4, align 8, !tbaa !27, !noalias !719 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !27, !alias.scope !719
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !719
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32.i
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !729
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA48_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(48) @.str.36)
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %_ZN5arrow6StatusD2Ev.exit32.i, %bb.b, %_ZN5arrow6StatusD2Ev.exit26.i, %bb.a, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl27ConsumeMetadataLengthChunksEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(105) %1, i64 noundef 4, ptr noundef nonnull %i.a)
  %i.b = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit8, label %.critedge

_ZN5arrow6StatusD2Ev.exit8:                       ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.b

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 4, ptr %i.f, align 8, !tbaa !262, !noalias !732
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !147, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !732
  %i.h = load ptr, ptr %1, align 8, !tbaa !141, !noalias !732 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22, !noalias !732
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !noalias !732
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !732, !inline_history !735
  %i.l = load ptr, ptr %2, align 8, !tbaa !27, !noalias !732 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !27, !alias.scope !732
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !732
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !736
  br label %.critedge

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit8
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit21.i, label %bb.d

_ZN5arrow6StatusD2Ev.exit21.i:                    ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 2, ptr %i.o, align 8, !tbaa !262, !noalias !732
  %i.p = zext nneg i32 %i.d to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !147, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !732
  %i.r = load ptr, ptr %1, align 8, !tbaa !141, !noalias !732 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22, !noalias !732
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !noalias !732
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !732, !inline_history !735
  %i.v = load ptr, ptr %3, align 8, !tbaa !27, !noalias !732 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !27, !alias.scope !732
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !732
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit21.i
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !739
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(46) @.str.37)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %_ZN5arrow6StatusD2Ev.exit21.i, %bb.a, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl21ConsumeMetadataChunksEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::Result.32", align 8  ; 12 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %6 = alloca %"class.arrow::Result.32", align 8  ; 12 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %10 = alloca %"class.arrow::Result.47", align 8 ; 12 uses
  %11 = alloca %"class.std::unique_ptr.51", align 8 ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !707  ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147  ; 5 uses
  %.not = icmp slt i64 %i.g, %i.i
  br i1 %.not, label %bb.dh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46, !range !42, !noundef !43
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.n, align 8, !tbaa !317
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 8 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !13
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !21
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28, !inline_history !575
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28, !inline_history !575
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !26

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.e, ptr %4, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i43 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.k, %bb.m, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN5arrow6Buffer10ViewOrCopyESt10shared_ptrIS0_ERKS1_INS_13MemoryManagerEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ar, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !21
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !inline_history !24
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i44 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.au, %bb.s ], [ %i.be, %bb.t ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  %i.bg = load ptr, ptr %3, align 8, !tbaa !27
  %i.bh = icmp eq ptr %i.bg, null                 ; 2 uses
  br i1 %i.bh, label %bb.y, label %bb.v, !prof !30

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !27
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.x

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br label %bb.dz

bb.x:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.dz

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !11, !noalias !742
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !11
  %.not.i.i.i.i45 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i45, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bp, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !21
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !22
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl21ConsumeMetadataChunksEv:bb.a

bb.ai:                                            ; preds = %bb.ag
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.aj ], [ %i.cv, %bb.ak ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.al, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !26

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !27   ; 2 uses
  %.not.i.i56 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !171

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.cx = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.ce, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !31, !range !42, !noundef !43
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.bh, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.dy

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %bb.d, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !747
  %i.dc = call ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.db) ; 0 uses
  br label %bb.dg

bb.an:                                            ; preds = %bb.b
  store ptr %i.e, ptr %5, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !13 ; 3 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !13
  %.not.i.i.i57 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i57, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit59, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i58 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i58, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit59

bb.aq:                                            ; preds = %bb.ao
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i64, ptr %i.h, align 8, !tbaa !147
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit59

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit59: ; preds = %bb.an, %bb.ap, %bb.aq
  %i.dl = phi i64 [ %i.i, %bb.an ], [ %i.i, %bb.ap ], [ %.pre, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !63, !noalias !748
  store i64 %i.dl, ptr %i.b, align 8, !tbaa !63, !noalias !748
  %i.dm = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc unwind label %bb.bq    ; 4 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit59
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ar unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !751

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 96) #29, !noalias !751
  br label %.body

bb.ar:                                            ; preds = %.noexc
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !317
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !13 ; 8 uses
  store ptr %i.dm, ptr %i.dq, align 8, !tbaa !13
  %.not.i.i.i.i60 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i60, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ds, align 8, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !21
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #28, !inline_history !575
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !22
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #28, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69

bb.au:                                            ; preds = %bb.as
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i61 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i61, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

bb.aw:                                            ; preds = %bb.au
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i63 = phi i32 [ %i.dv, %bb.av ], [ %i.ef, %bb.aw ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i63, 1
  br i1 %i.eg, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69, !prof !26

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62, %bb.at, %bb.ar
  %i.eh = load ptr, ptr %i.dd, align 8, !tbaa !13 ; 8 uses
  %.not.i.i70 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i70, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ei, align 8, !tbaa !19
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !21
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #28, !inline_history !24
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !22
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74

bb.ba:                                            ; preds = %bb.ay
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i71 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i71, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

bb.bc:                                            ; preds = %bb.ba
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i73 = phi i32 [ %i.el, %bb.bb ], [ %i.ev, %bb.bc ]
  %i.ew = icmp eq i32 %.0.i.i.i.i73, 1
  br i1 %i.ew, label %bb.bd, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74, !prof !26

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72, %bb.bd
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 9
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !46, !range !42, !noundef !43
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ci, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = load ptr, ptr %i.dq, align 8, !tbaa !13 ; 2 uses
  %i.fe = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !11
  store <2 x ptr> %i.fe, ptr %7, align 16, !tbaa !11
  %.not.i.i.i75 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i75, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit77, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.fg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i76 = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i.i.i76, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit77

bb.bh:                                            ; preds = %bb.bf
  %i.fj = atomicrmw volatile add ptr %i.ff, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit77

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit77: ; preds = %bb.be, %bb.bg, %bb.bh
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN5arrow6Buffer10ViewOrCopyESt10shared_ptrIS0_ERKS1_INS_13MemoryManagerEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(16) %i.fk)
          to label %bb.bi unwind label %bb.br

bb.bi:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit77
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !13 ; 8 uses
  %.not.i.i78 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i78, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.fm, align 8, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !21
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #28, !inline_history !24
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82

bb.bl:                                            ; preds = %bb.bj
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i79 = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i79, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

bb.bn:                                            ; preds = %bb.bl
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i81 = phi i32 [ %i.fp, %bb.bm ], [ %i.fz, %bb.bn ]
  %i.ga = icmp eq i32 %.0.i.i.i.i81, 1
  br i1 %i.ga, label %bb.bo, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82, !prof !26

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82: ; preds = %bb.bi, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80, %bb.bo
  %i.gb = load ptr, ptr %6, align 8, !tbaa !27
  %i.gc = icmp eq ptr %i.gb, null                 ; 2 uses
  br i1 %i.gc, label %bb.bt, label %bb.bp, !prof !30

bb.bp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82
  store ptr null, ptr %0, align 8, !tbaa !27
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit84 unwind label %bb.bs

bb.bq:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit59
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.bq
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.bq ], [ %i.dn, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %bb.dz

bb.br:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit77
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #28
  br label %bb.dz

bb.bs:                                            ; preds = %bb.bp
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.dz

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gh = load <2 x ptr>, ptr %i.gg, align 8, !tbaa !11, !noalias !754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false)
  %i.gi = load ptr, ptr %i.dq, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.gh, ptr %i.dp, align 8, !tbaa !11
  %.not.i.i.i.i85 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i85, label %_ZN5arrow6StatusC2ERKS0_.exit84, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.gj, align 8, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !21
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !22
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #28, !inline_history !575
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !22
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #28, !inline_history !575
  br label %_ZN5arrow6StatusC2ERKS0_.exit84

bb.bw:                                            ; preds = %bb.bu
  %i.gu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i86 = icmp eq i8 %i.gu, 0
  br i1 %.not.i.i.i.i.i86, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gv = add nsw i32 %i.gm, -1
  store i32 %i.gv, ptr %i.gj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i87

bb.by:                                            ; preds = %bb.bw
  %i.gw = atomicrmw volatile add ptr %i.gj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i87

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i87: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i88 = phi i32 [ %i.gm, %bb.bx ], [ %i.gw, %bb.by ]
  %i.gx = icmp eq i32 %.0.i.i.i.i.i.i88, 1
  br i1 %i.gx, label %bb.bz, label %_ZN5arrow6StatusC2ERKS0_.exit84, !prof !26

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i87
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #28
  br label %_ZN5arrow6StatusC2ERKS0_.exit84

_ZN5arrow6StatusC2ERKS0_.exit84:                  ; preds = %bb.bt, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i87, %bb.bz, %bb.bp
  %i.gy = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.ca, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i95, !prof !30

bb.ca:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit84
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i96, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.hc, align 8, !tbaa !19
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !21
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #28, !inline_history !170
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !22
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #28, !inline_history !170
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100

bb.cd:                                            ; preds = %bb.cb
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i97 = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i.i.i.i97, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.hc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98

bb.cf:                                            ; preds = %bb.cd
  %i.hp = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i.i99 = phi i32 [ %i.hf, %bb.ce ], [ %i.hp, %bb.cf ]
  %i.hq = icmp eq i32 %.0.i.i.i.i.i.i.i99, 1
  br i1 %i.hq, label %bb.cg, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100, !prof !26

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100: ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i98, %bb.cc, %bb.ca
  %.pr.i101 = load ptr, ptr %6, align 8, !tbaa !27 ; 2 uses
  %.not.i.i102 = icmp eq ptr %.pr.i101, null
  br i1 %.not.i.i102, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i95, !prof !171

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i95: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100, %_ZN5arrow6StatusC2ERKS0_.exit84
  %i.hr = phi ptr [ %.pr.i101, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100 ], [ %i.gy, %_ZN5arrow6StatusC2ERKS0_.exit84 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !31, !range !42, !noundef !43
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103, label %bb.ch

bb.ch:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i95
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i100, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i95, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.gc, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103._crit_edge, label %bb.dy

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103._crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103
  %.pre148 = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %.pre149 = load ptr, ptr %.pre148, align 8, !tbaa !16
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103._crit_edge, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74
  %i.hv = phi ptr [ %.pre149, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103._crit_edge ], [ %i.ey, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74 ]
  %i.hw = phi ptr [ %.pre148, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103._crit_edge ], [ %i.ex, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.hv, ptr %9, align 8, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !13 ; 3 uses
  store ptr %i.hz, ptr %i.hx, align 8, !tbaa !13
  %.not.i.i.i104 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i104, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit106, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 3 uses
  %i.ib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i105 = icmp eq i8 %i.ib, 0
  br i1 %.not.i.i.i.i105, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ia, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit106

bb.cl:                                            ; preds = %bb.cj
  %i.ie = atomicrmw volatile add ptr %i.ia, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit106

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit106: ; preds = %bb.ci, %bb.ck, %bb.cl
  %i.if = load i64, ptr %i.h, align 8, !tbaa !147
  invoke fastcc void @_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %9, i64 noundef %i.if)
          to label %bb.cm unwind label %bb.df

bb.cm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit106
  %i.ig = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load <2 x ptr>, ptr %8, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.ij, ptr %i.ig, align 8, !tbaa !11
  %.not.i.i.i.i107 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i107, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit111, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.il, align 8, !tbaa !19
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !21
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !22
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #28, !inline_history !575
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !22
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #28, !inline_history !575
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit111

bb.cp:                                            ; preds = %bb.cn
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i108 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i108, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109

bb.cr:                                            ; preds = %bb.cp
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i.i.i110 = phi i32 [ %i.io, %bb.cq ], [ %i.iy, %bb.cr ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i.i110, 1
  br i1 %i.iz, label %bb.cs, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit111, !prof !26

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit111

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit111: ; preds = %bb.cm, %bb.co, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i109, %bb.cs
  %i.ja = load ptr, ptr %i.ih, align 8, !tbaa !13 ; 8 uses
  %.not.i.i112 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i112, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit116, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit111
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.jb, align 8, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !21
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !22
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #28, !inline_history !24
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !22
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit116

bb.cv:                                            ; preds = %bb.ct
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i113 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i113, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i114

bb.cx:                                            ; preds = %bb.cv
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i114: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i115 = phi i32 [ %i.je, %bb.cw ], [ %i.jo, %bb.cx ]
  %i.jp = icmp eq i32 %.0.i.i.i.i115, 1
  br i1 %i.jp, label %bb.cy, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit116, !prof !26

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit116

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit116: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit111, %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i114, %bb.cy
  %i.jq = load ptr, ptr %i.hx, align 8, !tbaa !13 ; 8 uses
  %.not.i.i117 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i117, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit121, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit116
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 4 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 4294967297
  %i.ju = trunc i64 %i.js to i32                  ; 2 uses
  br i1 %i.jt, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.jr, align 8, !tbaa !19
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !21
  %i.jw = load ptr, ptr %i.jq, align 8, !tbaa !22
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #28, !inline_history !24
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !22
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit121

bb.db:                                            ; preds = %bb.cz
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i118 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i118, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.jr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119

bb.dd:                                            ; preds = %bb.db
  %i.ke = atomicrmw volatile add ptr %i.jr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119: ; preds = %bb.dd, %bb.dc
  %.0.i.i.i.i120 = phi i32 [ %i.ju, %bb.dc ], [ %i.ke, %bb.dd ]
  %i.kf = icmp eq i32 %.0.i.i.i.i120, 1
  br i1 %i.kf, label %bb.de, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit121, !prof !26

bb.de:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit121

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit121: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit116, %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.dg

bb.df:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit106
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.dz

bb.dg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit121, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  %i.kh = load i64, ptr %i.h, align 8, !tbaa !147
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !157
  %i.kk = sub nsw i64 %i.kj, %i.kh
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !157
  br label %bb.dx

bb.dh:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !511
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.47") align 8 %10, i64 noundef %i.i, ptr noundef %i.km)
  %i.kn = load ptr, ptr %10, align 8, !tbaa !27
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.dk, label %bb.di, !prof !30

bb.di:                                            ; preds = %bb.dh
  store ptr null, ptr %0, align 8, !tbaa !27
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit123 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !317, !noalias !765
  store i64 %i.kr, ptr %11, align 8, !tbaa !317, !alias.scope !765
  store ptr null, ptr %i.kq, align 8, !tbaa !317, !noalias !765
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc128 unwind label %bb.ds

.noexc128:                                        ; preds = %bb.dk
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !13 ; 8 uses
  %i.kv = load <2 x ptr>, ptr %i.ks, align 8, !tbaa !11
  %i.kw = load <2 x ptr>, ptr %2, align 16, !tbaa !11
  store <2 x ptr> %i.kw, ptr %i.ks, align 8, !tbaa !11
  store <2 x ptr> %i.kv, ptr %2, align 16, !tbaa !11
  %.not.i.i.i.i124 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i124, label %bb.dr, label %bb.dl

bb.dl:                                            ; preds = %.noexc128
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %i.ky = load atomic i64, ptr %i.kx acquire, align 8 ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 4294967297
  %i.la = trunc i64 %i.ky to i32                  ; 2 uses
  br i1 %i.kz, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.kx, align 8, !tbaa !19
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 0, ptr %i.lb, align 4, !tbaa !21
  %i.lc = load ptr, ptr %i.ku, align 8, !tbaa !22
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #28, !inline_history !766
  %i.lf = load ptr, ptr %i.ku, align 8, !tbaa !22
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #28, !inline_history !766
  br label %bb.dr

bb.dn:                                            ; preds = %bb.dl
  %i.li = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i125 = icmp eq i8 %i.li, 0
  br i1 %.not.i.i.i.i.i125, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lj = add nsw i32 %i.la, -1
  store i32 %i.lj, ptr %i.kx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

bb.dp:                                            ; preds = %bb.dn
  %i.lk = atomicrmw volatile add ptr %i.kx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126: ; preds = %bb.dp, %bb.do
  %.0.i.i.i.i.i.i127 = phi i32 [ %i.la, %bb.do ], [ %i.lk, %bb.dp ]
  %i.ll = icmp eq i32 %.0.i.i.i.i.i.i127, 1
  br i1 %i.ll, label %bb.dq, label %bb.dr, !prof !26

bb.dq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #28
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126, %bb.dm, %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.lm = load ptr, ptr %11, align 8, !tbaa !317  ; 3 uses
  %.not.i = icmp eq ptr %i.lm, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.dr
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !22
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.lm) #28, !inline_history !319
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.dr, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.lq = load i64, ptr %i.h, align 8, !tbaa !147
  %i.lr = load ptr, ptr %i.ks, align 8, !tbaa !16 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !46, !range !42, !noundef !43
  %i.lu = trunc nuw i8 %i.lt to i1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lw = load i8, ptr %i.lv, align 8, !range !42
  %i.lx = trunc nuw i8 %i.lw to i1
  %i.ly = select i1 %i.lu, i1 %i.lx, i1 false, !prof !30
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = select i1 %i.ly, ptr %i.ma, ptr null, !prof !30
  invoke void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(105) %1, i64 noundef %i.lq, ptr noundef %i.mb)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.dt

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.mc = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  store ptr %i.mc, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %.not147 = icmp eq ptr %i.mc, null
  br label %_ZN5arrow6StatusC2ERKS0_.exit123

bb.ds:                                            ; preds = %bb.dk
  %i.md = landingpad { ptr, i32 }
          cleanup
  %i.me = load ptr, ptr %11, align 8, !tbaa !317  ; 3 uses
  %.not.i130 = icmp eq ptr %i.me, null
  br i1 %.not.i130, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit132, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i131

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i131: ; preds = %bb.ds
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !22
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.me) #28, !inline_history !319
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit132

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit132: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i131, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.dw

bb.dt:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.dw

_ZN5arrow6StatusC2ERKS0_.exit123:                 ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.di
  %.328 = phi i1 [ %.not147, %_ZN5arrow6StatusD2Ev.exit ], [ false, %bb.di ]
  %i.mj = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.du, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !30

bb.du:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit123
  %i.ml = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !317 ; 3 uses
  %.not.i.i.i.i137 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i137, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.du
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !22
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.mm) #28, !inline_history !387
  %.pr.pre.i = load ptr, ptr %10, align 8, !tbaa !27 ; 2 uses
  %.not.i.i138 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i138, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !171

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit123
  %i.mq = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.mj, %_ZN5arrow6StatusC2ERKS0_.exit123 ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !31, !range !42, !noundef !43
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #28
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.du, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.328, label %bb.dx, label %bb.dy

bb.dw:                                            ; preds = %bb.dt, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit132, %bb.dj
  %.pn32 = phi { ptr, i32 } [ %i.kp, %bb.dj ], [ %i.mi, %bb.dt ], [ %i.md, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit132 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.dz

bb.dx:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %bb.dg
  call void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl15ConsumeMetadataEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1)
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit103, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.dx
  ret void

bb.dz:                                            ; preds = %bb.br, %bb.bs, %bb.w, %bb.x, %bb.dw, %bb.df, %.body
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn32, %bb.dw ], [ %i.kg, %bb.df ], [ %i.bi, %bb.w ], [ %eh.lpad-body, %.body ], [ %i.bj, %bb.x ], [ %i.gf, %bb.bs ], [ %i.ge, %bb.br ]
  resume { ptr, i32 } %.pn37.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeBodyChunksEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 10 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %8 = alloca %"class.arrow::Result.47", align 8  ; 12 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %10 = alloca %"class.std::unique_ptr.51", align 8 ; 7 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !707  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147  ; 7 uses
  %.not = icmp slt i64 %i.g, %i.i
  br i1 %.not, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl11ConsumeBodyEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull %i.d)
  %i.k = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit59, label %.critedge

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !747
  %i.n = call ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.m) ; 0 uses
  br label %bb.ar

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.e, ptr %4, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i64, ptr %i.h, align 8, !tbaa !147
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.c, %bb.e, %bb.f
  %i.w = phi i64 [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %.pre, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !63, !noalias !767
  store i64 %i.w, ptr %i.b, align 8, !tbaa !63, !noalias !767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  store ptr null, ptr %3, align 8, !tbaa !16, !alias.scope !773
  %i.x = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc unwind label %bb.n     ; 4 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !773

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #29, !noalias !773
  br label %.body

bb.g:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !13, !alias.scope !773
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %3, align 8, !tbaa !317, !alias.scope !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !13  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ac, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !21
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #28, !inline_history !24
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i60 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl11ConsumeBodyEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull %3)
          to label %_ZN5arrow6StatusD2Ev.exit62 unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit62:                      ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ar = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN5arrow6StatusD2Ev.exit66, label %.critedge53

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body

_ZN5arrow6StatusD2Ev.exit66:                      ; preds = %_ZN5arrow6StatusD2Ev.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.av, align 8, !tbaa !11
  store <2 x ptr> %i.az, ptr %7, align 16, !tbaa !11
  %.not.i.i.i67 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i67, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit69, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit66
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i68 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit69

bb.r:                                             ; preds = %bb.p
  %i.be = atomicrmw volatile add ptr %i.ba, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit69

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit69: ; preds = %_ZN5arrow6StatusD2Ev.exit66, %bb.q, %bb.r
  invoke fastcc void @_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %7, i64 noundef %i.i)
          to label %.critedge52 unwind label %bb.aq

.critedge52:                                      ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit69
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !707 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load <2 x ptr>, ptr %6, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bf, align 8, !tbaa !11
  %.not.i.i.i.i70 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i70, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.s

bb.s:                                             ; preds = %.critedge52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bk, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !21
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #28, !inline_history !575
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #28, !inline_history !575
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.v ], [ %i.bx, %bb.w ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.x, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !26

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %.critedge52, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.x
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !13 ; 8 uses
  %.not.i.i71 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i71, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ca, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !21
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #28, !inline_history !24
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !22
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75

bb.aa:                                            ; preds = %bb.y
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i72 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i72, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

bb.ac:                                            ; preds = %bb.aa
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i74 = phi i32 [ %i.cd, %bb.ab ], [ %i.cn, %bb.ac ]
  %i.co = icmp eq i32 %.0.i.i.i.i74, 1
  br i1 %i.co, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, !prof !26

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73, %bb.ad
  %i.cp = load ptr, ptr %i.aw, align 8, !tbaa !13 ; 8 uses
  %.not.i.i76 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i76, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cq, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !21
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #28, !inline_history !24
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

bb.ag:                                            ; preds = %bb.ae
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i77 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i77, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

bb.ai:                                            ; preds = %bb.ag
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i79 = phi i32 [ %i.ct, %bb.ah ], [ %i.dd, %bb.ai ]
  %i.de = icmp eq i32 %.0.i.i.i.i79, 1
  br i1 %i.de, label %bb.aj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, !prof !26

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.df = load ptr, ptr %i.z, align 8, !tbaa !13  ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.df, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dg, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !21
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #28, !inline_history !24
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85

bb.am:                                            ; preds = %bb.ak
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i82 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

bb.ao:                                            ; preds = %bb.am
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i84 = phi i32 [ %i.dj, %bb.an ], [ %i.dt, %bb.ao ]
  %i.du = icmp eq i32 %.0.i.i.i.i84, 1
  br i1 %i.du, label %bb.ap, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85, !prof !26

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeBodyChunksEv:bb.a
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.fa = load i64, ptr %i.h, align 8, !tbaa !147
  %i.fb = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 9
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !46, !range !42, !noundef !43
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fg = load i8, ptr %i.ff, align 8, !range !42
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = select i1 %i.fe, i1 %i.fh, i1 false, !prof !30
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = select i1 %i.fi, ptr %i.fk, ptr null, !prof !30
  invoke void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(105) %1, i64 noundef %i.fa, ptr noundef %i.fl)
          to label %_ZN5arrow6StatusD2Ev.exit95 unwind label %bb.bd

_ZN5arrow6StatusD2Ev.exit95:                      ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.fm = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  store ptr %i.fm, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %_ZN5arrow6StatusD2Ev.exit102, label %.critedge55

bb.bc:                                            ; preds = %bb.bb
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %10, align 8, !tbaa !317  ; 3 uses
  %.not.i96 = icmp eq ptr %i.fp, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97: ; preds = %bb.bc
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fp) #28, !inline_history !319
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i97, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bm

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bl

_ZN5arrow6StatusD2Ev.exit102:                     ; preds = %_ZN5arrow6StatusD2Ev.exit95
  invoke void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl11ConsumeBodyEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull %9)
          to label %.critedge55 unwind label %bb.be

bb.be:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit102
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.critedge55:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit95, %_ZN5arrow6StatusD2Ev.exit102
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !13 ; 8 uses
  %.not.i.i103 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i103, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.bf

bb.bf:                                            ; preds = %.critedge55
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.fx, align 8, !tbaa !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !21
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !22
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #28, !inline_history !24
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !22
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.bh:                                            ; preds = %bb.bf
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i104 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i104, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

bb.bj:                                            ; preds = %bb.bh
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i106 = phi i32 [ %i.ga, %bb.bi ], [ %i.gk, %bb.bj ]
  %i.gl = icmp eq i32 %.0.i.i.i.i106, 1
  br i1 %i.gl, label %bb.bk, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, !prof !26

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107: ; preds = %.critedge55, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.bl:                                            ; preds = %bb.be, %bb.bd
  %.pn38 = phi { ptr, i32 } [ %i.fu, %bb.be ], [ %i.ft, %bb.bd ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.bl ], [ %i.fo, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bp

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.az, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107
  %i.gm = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.bn, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !30

bb.bn:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !317 ; 3 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i108, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bn
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !22
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.gp) #28, !inline_history !387
  %.pr.pre.i = load ptr, ptr %8, align 8, !tbaa !27 ; 2 uses
  %.not.i.i109 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i109, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !171

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gt = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.gm, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !31, !range !42, !noundef !43
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bn, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge

bb.bp:                                            ; preds = %bb.bm, %bb.ba
  %.pn41 = phi { ptr, i32 } [ %i.et, %bb.ba ], [ %.pn38.pn, %bb.bm ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bq

.critedge:                                        ; preds = %bb.ar, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit90, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  ret void

bb.bq:                                            ; preds = %.body, %bb.bp
  %.pn48.pn = phi { ptr, i32 } [ %.pn41, %bb.bp ], [ %.pn45.pn, %.body ]
  resume { ptr, i32 } %.pn48.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl17ConsumeDataChunksElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 13 uses
  %5 = alloca %"class.arrow::Result.32", align 8  ; 12 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !747  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !747  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.thread115, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bg
  %.0150 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %bb.bg ] ; 2 uses
  %.034149 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.bg ]
  %.0108148 = phi i64 [ %2, %.lr.ph ], [ %i.ew, %bb.bg ] ; 4 uses
  %.sroa.0102.0147 = phi ptr [ %i.b, %.lr.ph ], [ %i.ex, %bb.bg ] ; 7 uses
  %i.j = load ptr, ptr %.sroa.0102.0147, align 8, !tbaa !16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46, !range !42, !noundef !43
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.ag

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.j, ptr %6, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0102.0147, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.c, %bb.e, %bb.f
  invoke void @_ZN5arrow6Buffer10ViewOrCopyESt10shared_ptrIS0_ERKS1_INS_13MemoryManagerEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !21
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !24
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i56 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.am = load ptr, ptr %5, align 8, !tbaa !27
  %i.an = icmp eq ptr %i.am, null                 ; 2 uses
  br i1 %i.an, label %bb.q, label %bb.n, !prof !30

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !27
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.p

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br label %bb.bv

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bv

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = load <2 x ptr>, ptr %i.h, align 8, !tbaa !11, !noalias !784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !13  ; 8 uses
  store <2 x ptr> %i.aq, ptr %.sroa.0102.0147, align 8, !tbaa !11
  %.not.i.i.i.i57 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i57, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.as, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !21
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !575
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !575
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.u ], [ %i.bf, %bb.v ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.w, label %_ZN5arrow6StatusC2ERKS0_.exit, !prof !26

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %bb.n
  %i.bh = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.x, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !30

bb.x:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !13  ; 8 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i63, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bk, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !21
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #28, !inline_history !170
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #28, !inline_history !170
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.ab ], [ %i.bx, %bb.ac ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.ad, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !26

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z
  %.pr.i.pr = load ptr, ptr %5, align 8, !tbaa !27 ; 2 uses
  %.not.i.i64 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i64, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !171

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bz = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.bh, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !31, !range !42, !noundef !43
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.x, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.an, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pre = load ptr, ptr %.sroa.0102.0147, align 8, !tbaa !16 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 9
  %.pre166 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !46, !range !42
  %.pre166.fr = freeze i8 %.pre166
  %i.cd = trunc i8 %.pre166.fr to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %spec.select = select i1 %i.cd, ptr %i.cf, ptr null, !prof !789
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread
  %i.cg = phi ptr [ %.pre, %bb.af ], [ %i.j, %.thread ]
  %i.ch = phi ptr [ %spec.select, %bb.af ], [ %i.o, %.thread ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !53 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.cj, i64 %.0108148) ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 %.0150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.ch, i64 %.sroa.speculated, i1 false)
  %i.cl = add i64 %.034149, 1                     ; 4 uses
  %i.cm = add i64 %.sroa.speculated, %.0150       ; 4 uses
  %.not128 = icmp sgt i64 %.0108148, %i.cj
  br i1 %.not128, label %bb.bg, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.not = icmp sgt i64 %i.cj, %.0108148
  br i1 %.not.not, label %bb.ai, label %.thread115

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0102.0147, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %.sroa.0102.0147, align 8, !tbaa !11
  store <2 x ptr> %i.cq, ptr %8, align 16, !tbaa !11
  %.not.i.i.i65 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i65, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit67, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i66 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i66, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit67

bb.al:                                            ; preds = %bb.aj
  %i.cv = atomicrmw volatile add ptr %i.cr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit67

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit67: ; preds = %bb.ai, %bb.ak, %bb.al
  invoke fastcc void @_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %8, i64 noundef %.sroa.speculated)
          to label %bb.am unwind label %bb.bf

bb.am:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit67
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = load <2 x ptr>, ptr %7, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.cy, ptr %4, align 16, !tbaa !11
  %.not.i.i.i.i68 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i68, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit72, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.da, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !21
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #28, !inline_history !575
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #28, !inline_history !575
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit72

bb.ap:                                            ; preds = %bb.an
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i69 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i.i69, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70

bb.ar:                                            ; preds = %bb.ap
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i71 = phi i32 [ %i.dd, %bb.aq ], [ %i.dn, %bb.ar ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i.i71, 1
  br i1 %i.do, label %bb.as, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit72, !prof !26

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit72

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit72: ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i70, %bb.as
  %i.dp = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 8 uses
  %.not.i.i73 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i73, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77, label %bb.at

bb.at:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit72
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.dq, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !21
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #28, !inline_history !24
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77

bb.av:                                            ; preds = %bb.at
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i74 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i74, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

bb.ax:                                            ; preds = %bb.av
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i76 = phi i32 [ %i.dt, %bb.aw ], [ %i.ed, %bb.ax ]
  %i.ee = icmp eq i32 %.0.i.i.i.i76, 1
  br i1 %i.ee, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77, !prof !26

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit72, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75, %bb.ay
  %i.ef = load ptr, ptr %i.cn, align 8, !tbaa !13 ; 8 uses
  %.not.i.i78 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i78, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82, label %bb.az

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.eg, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !21
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !inline_history !24
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !22
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82

bb.bb:                                            ; preds = %bb.az
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i79 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i79, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

bb.bd:                                            ; preds = %bb.bb
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i81 = phi i32 [ %i.ej, %bb.bc ], [ %i.et, %bb.bd ]
  %i.eu = icmp eq i32 %.0.i.i.i.i81, 1
  br i1 %i.eu, label %bb.be, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82, !prof !26

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.thread115

bb.bf:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit67
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.bv

bb.bg:                                            ; preds = %bb.ag
  %i.ew = sub nsw i64 %.0108148, %.sroa.speculated
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0102.0147, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.d
  br i1 %i.ey, label %.thread115, label %bb.b

.thread115:                                       ; preds = %bb.bg, %bb.a, %bb.ah, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82
  %.2121 = phi i64 [ %i.cm, %bb.ah ], [ %i.cm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82 ], [ 0, %bb.a ], [ %i.cm, %bb.bg ]
  %.236120 = phi i64 [ %i.cl, %bb.ah ], [ %i.cl, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82 ], [ 0, %bb.a ], [ %i.cl, %bb.bg ]
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !747 ; 2 uses
  %i.fa = getelementptr inbounds [16 x i8], ptr %i.ez, i64 %.236120
  %i.fb = invoke ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ez, ptr %i.fa)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit unwind label %bb.bm ; 0 uses

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %.thread115
  %i.fc = load ptr, ptr %4, align 16, !tbaa !16   ; 2 uses
  %.not53 = icmp eq ptr %i.fc, null
  br i1 %.not53, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !747 ; 3 uses
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !553 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !554
  %.not.i.i83 = icmp eq ptr %i.fe, %i.fg
  br i1 %.not.i.i83, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fh = icmp eq ptr %i.fd, %i.fe
  br i1 %i.fh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  store ptr null, ptr %i.fi, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !13
  store ptr null, ptr %i.fj, align 8, !tbaa !13
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !13
  store ptr null, ptr %4, align 16, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fl, ptr %i.c, align 8, !tbaa !553
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bi
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bo unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %.thread115
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !157
  %i.fq = sub i64 %i.fp, %.2121
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !157
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !790
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.bo
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !13 ; 8 uses
  %.not.i.i85 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i85, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 4 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 4294967297
  %i.fw = trunc i64 %i.fu to i32                  ; 2 uses
  br i1 %i.fv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.ft, align 8, !tbaa !19
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 0, ptr %i.fx, align 4, !tbaa !21
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #28, !inline_history !24
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !22
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89

bb.br:                                            ; preds = %bb.bp
  %i.ge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i86 = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i.i86, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gf = add nsw i32 %i.fw, -1
  store i32 %i.gf, ptr %i.ft, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87

bb.bt:                                            ; preds = %bb.br
  %i.gg = atomicrmw volatile add ptr %i.ft, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i88 = phi i32 [ %i.fw, %bb.bs ], [ %i.gg, %bb.bt ]
  %i.gh = icmp eq i32 %.0.i.i.i.i88, 1
  br i1 %i.gh, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89, !prof !26

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89: ; preds = %.loopexit, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.bv:                                            ; preds = %bb.bf, %bb.p, %bb.o, %bb.bn, %bb.bm
  %.pn54 = phi { ptr, i32 } [ %i.fn, %bb.bn ], [ %i.fm, %bb.bm ], [ %i.ev, %bb.bf ], [ %i.ap, %bb.p ], [ %i.ao, %bb.o ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn54
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef %2) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !11
  %i.f = load ptr, ptr %1, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  %i.i = sub nsw i64 %i.h, %2
  store ptr null, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %3, align 16, !tbaa !11
  store ptr null, ptr %1, align 8, !tbaa !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.a, align 8, !tbaa !63, !noalias !793
  store i64 %i.i, ptr %i.b, align 8, !tbaa !63, !noalias !793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  store ptr null, ptr %0, align 8, !tbaa !16, !alias.scope !799
  %i.j = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc unwind label %bb.i     ; 4 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !799

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 96) #29, !noalias !799
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !13, !alias.scope !799
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.m, ptr %0, align 8, !tbaa !317, !alias.scope !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !21
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !24
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.k, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !11
  store ptr null, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !11
  store ptr null, ptr %1, align 8, !tbaa !16
  %i.f = load i64, ptr %2, align 8, !tbaa !63
  %i.g = load i64, ptr %3, align 8, !tbaa !63
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull %4, i64 noundef %i.f, i64 noundef %i.g)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_:bb.a
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !802
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !802
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, !prof !26

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ad = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !803

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !747 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.c
  %.pre-phi13 = phi i64 [ %.pre11, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %.pre12, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.e, %bb.c ]
  %.pre-phi = phi i64 [ %.pre11, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %i.f, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.f, %bb.c ]
  %i.af = phi ptr [ %2, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.c ] ; 2 uses
  %i.ag = sub i64 %.pre-phi13, %.pre-phi
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag ; 3 uses
  %.not.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %i.ah, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !21
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !804
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !804
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.o, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !26

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.af
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !805

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !553
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !11
  store ptr null, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !11
  store ptr null, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !553
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.af, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.c, %bb.a ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !13   ; 8 uses
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.q, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !21
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28, !inline_history !806
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28, !inline_history !806
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.e ], [ %i.ad, %bb.f ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.g, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, !prof !26

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.af = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ag = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit, !llvm.loop !807

_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load <2 x ptr>, ptr %2, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.ai, ptr %1, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !21
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !575
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !575
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.k ], [ %i.ax, %bb.l ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.m, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !26

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !747  ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ad, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.k = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !13   ; 8 uses
  store <2 x ptr> %i.k, ptr %.0811.i.i.i.i.i, align 8, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !21
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !802
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !802
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, !prof !26

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ad = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !803

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !553
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.b, %bb.a
  %i.af = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !553
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aj, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !21
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #28, !inline_history !808
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #28, !inline_history !808
  br label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit

bb.k:                                             ; preds = %bb.i
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.am, %bb.l ], [ %i.aw, %bb.m ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.n, label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit, !prof !26

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #28
  br label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit

_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow6BufferEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl20ConsumeInitialBufferERKSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_5
