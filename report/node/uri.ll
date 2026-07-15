inline.NumInlined: 1389
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2v88internal3Uri6DecodeEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.fe

bb.fd:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.zq = icmp eq ptr %.sroa.050.2, %.sroa.25.2
  br i1 %i.zq, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %.thread163, %bb.fd
  %.sroa.086.4174 = phi ptr [ %.sroa.086.4.ph, %.thread163 ], [ %.sroa.086.0, %bb.fd ] ; 3 uses
  %.sroa.21.4173 = phi ptr [ %.sroa.21.4.ph, %.thread163 ], [ %.sroa.21.0, %bb.fd ]
  %.sroa.44.4172 = phi ptr [ %.sroa.44.4.ph, %.thread163 ], [ %.sroa.44.0, %bb.fd ]
  %.sroa.050.0171 = phi ptr [ null, %.thread163 ], [ %.sroa.050.2, %bb.fd ]
  %.sroa.58.0170 = phi ptr [ null, %.thread163 ], [ %.sroa.58.2, %bb.fd ]
  %i.zr = ptrtoint ptr %.sroa.21.4173 to i64
  %i.zs = ptrtoint ptr %.sroa.086.4174 to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %sext = shl i64 %i.zt, 32
  %i.zu = ashr exact i64 %sext, 32
  %i.zv = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.sroa.086.4174, i64 %i.zu, i8 noundef zeroext 0) #12
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.ff:                                            ; preds = %bb.fd
  %i.zw = ptrtoint ptr %.sroa.21.0 to i64
  %i.zx = ptrtoint ptr %.sroa.086.0 to i64
  %i.zy = sub i64 %i.zw, %i.zx                    ; 3 uses
  %i.zz = ptrtoint ptr %.sroa.25.2 to i64
  %i.aaa = ptrtoint ptr %.sroa.050.2 to i64
  %i.aab = sub i64 %i.zz, %i.aaa                  ; 2 uses
  %i.aac = ashr exact i64 %i.aab, 1               ; 2 uses
  %i.aad = add i64 %i.aac, %i.zy
  %i.aae = trunc i64 %i.aad to i32
  %i.aaf = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aae, i8 noundef zeroext 0, i8 0) #12 ; 20 uses
  %.not178 = icmp eq ptr %i.aaf, null
  br i1 %.not178, label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aag = load i64, ptr %i.aaf, align 8
  %i.aah = add i64 %i.aag, -1
  %i.aai = inttoptr i64 %i.aah to ptr
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16 ; 3 uses
  %i.aak = icmp eq ptr %.sroa.086.0, %.sroa.21.0
  br i1 %i.aak, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aaj, ptr noundef %.sroa.086.0, i64 noundef %i.zy)
  %i.aal = getelementptr inbounds nuw [2 x i8], ptr %i.aaj, i64 %i.zy
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh
  %.0 = phi ptr [ %i.aaj, %bb.fg ], [ %i.aal, %bb.fh ] ; 17 uses
  switch i64 %i.aac, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.fj
    i64 2, label %bb.fk
    i64 3, label %bb.fl
    i64 4, label %bb.fm
    i64 5, label %bb.fn
    i64 6, label %bb.fo
    i64 7, label %bb.fp
    i64 8, label %bb.fq
    i64 9, label %bb.fr
    i64 10, label %bb.fs
    i64 11, label %bb.ft
    i64 12, label %bb.fu
    i64 13, label %bb.fv
    i64 14, label %bb.fw
    i64 15, label %bb.fx
    i64 16, label %bb.fy
    i64 0, label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  ]

bb.fj:                                            ; preds = %bb.fi
  %i.aam = load i16, ptr %.sroa.050.2, align 2
  store i16 %i.aam, ptr %.0, align 2
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fk:                                            ; preds = %bb.fi
  %i.aan = load i32, ptr %.sroa.050.2, align 2
  store i32 %i.aan, ptr %.0, align 2
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fl:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.050.2, i64 6, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fm:                                            ; preds = %bb.fi
  %i.aao = load i64, ptr %.sroa.050.2, align 2
  store i64 %i.aao, ptr %.0, align 2
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fn:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.0, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.050.2, i64 10, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fo:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.0, ptr noundef nonnull align 2 dereferenceable(12) %.sroa.050.2, i64 12, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fp:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.0, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.050.2, i64 14, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fq:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.050.2, i64 16, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fr:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.0, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.050.2, i64 18, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fs:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.0, ptr noundef nonnull align 2 dereferenceable(20) %.sroa.050.2, i64 20, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.ft:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.0, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.050.2, i64 22, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fu:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.0, ptr noundef nonnull align 2 dereferenceable(24) %.sroa.050.2, i64 24, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fv:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.0, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.050.2, i64 26, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fw:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.0, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.050.2, i64 28, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fx:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.0, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.050.2, i64 30, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

bb.fy:                                            ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.0, ptr noundef nonnull align 2 dereferenceable(32) %.sroa.050.2, i64 32, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.fi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.0, ptr nonnull align 2 %.sroa.050.2, i64 %i.aab, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.ff, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i, %bb.fi, %bb.fe, %_ZN2v88internal7Factory11NewURIErrorEv.exit
  %.sroa.086.4161 = phi ptr [ %.sroa.086.4174, %bb.fe ], [ %.sroa.086.0, %_ZN2v88internal7Factory11NewURIErrorEv.exit ], [ %.sroa.086.0, %bb.fi ], [ %.sroa.086.0, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.086.0, %bb.ff ] ; 2 uses
  %.sroa.44.4159 = phi ptr [ %.sroa.44.4172, %bb.fe ], [ %.sroa.44.0, %_ZN2v88internal7Factory11NewURIErrorEv.exit ], [ %.sroa.44.0, %bb.fi ], [ %.sroa.44.0, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.44.0, %bb.ff ] ; 2 uses
  %.sroa.050.0157 = phi ptr [ %.sroa.050.0171, %bb.fe ], [ %.sroa.050.0.ph, %_ZN2v88internal7Factory11NewURIErrorEv.exit ], [ %.sroa.050.2, %bb.fi ], [ %.sroa.050.2, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.050.2, %bb.ff ] ; 2 uses
  %.sroa.58.0155 = phi ptr [ %.sroa.58.0170, %bb.fe ], [ %.sroa.58.0.ph, %_ZN2v88internal7Factory11NewURIErrorEv.exit ], [ %.sroa.58.2, %bb.fi ], [ %.sroa.58.2, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.58.2, %bb.ff ]
  %.sroa.0115.1 = phi ptr [ %i.zv, %bb.fe ], [ null, %_ZN2v88internal7Factory11NewURIErrorEv.exit ], [ %i.aaf, %bb.fi ], [ %i.aaf, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ], [ null, %bb.ff ] ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %.sroa.050.0157, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorItSaItEED2Ev.exit, label %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0115.1358 = phi ptr [ %.sroa.0115.1, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.aaf, %bb.fj ], [ %i.aaf, %bb.fk ], [ %i.aaf, %bb.fl ], [ %i.aaf, %bb.fm ], [ %i.aaf, %bb.fn ], [ %i.aaf, %bb.fo ], [ %i.aaf, %bb.fp ], [ %i.aaf, %bb.fq ], [ %i.aaf, %bb.fr ], [ %i.aaf, %bb.fs ], [ %i.aaf, %bb.ft ], [ %i.aaf, %bb.fu ], [ %i.aaf, %bb.fv ], [ %i.aaf, %bb.fw ], [ %i.aaf, %bb.fx ], [ %i.aaf, %bb.fy ]
  %.sroa.58.0155357 = phi ptr [ %.sroa.58.0155, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.58.2, %bb.fj ], [ %.sroa.58.2, %bb.fk ], [ %.sroa.58.2, %bb.fl ], [ %.sroa.58.2, %bb.fm ], [ %.sroa.58.2, %bb.fn ], [ %.sroa.58.2, %bb.fo ], [ %.sroa.58.2, %bb.fp ], [ %.sroa.58.2, %bb.fq ], [ %.sroa.58.2, %bb.fr ], [ %.sroa.58.2, %bb.fs ], [ %.sroa.58.2, %bb.ft ], [ %.sroa.58.2, %bb.fu ], [ %.sroa.58.2, %bb.fv ], [ %.sroa.58.2, %bb.fw ], [ %.sroa.58.2, %bb.fx ], [ %.sroa.58.2, %bb.fy ]
  %.sroa.050.0157356 = phi ptr [ %.sroa.050.0157, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.050.2, %bb.fj ], [ %.sroa.050.2, %bb.fk ], [ %.sroa.050.2, %bb.fl ], [ %.sroa.050.2, %bb.fm ], [ %.sroa.050.2, %bb.fn ], [ %.sroa.050.2, %bb.fo ], [ %.sroa.050.2, %bb.fp ], [ %.sroa.050.2, %bb.fq ], [ %.sroa.050.2, %bb.fr ], [ %.sroa.050.2, %bb.fs ], [ %.sroa.050.2, %bb.ft ], [ %.sroa.050.2, %bb.fu ], [ %.sroa.050.2, %bb.fv ], [ %.sroa.050.2, %bb.fw ], [ %.sroa.050.2, %bb.fx ], [ %.sroa.050.2, %bb.fy ] ; 2 uses
  %.sroa.44.4159354 = phi ptr [ %.sroa.44.4159, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.44.0, %bb.fj ], [ %.sroa.44.0, %bb.fk ], [ %.sroa.44.0, %bb.fl ], [ %.sroa.44.0, %bb.fm ], [ %.sroa.44.0, %bb.fn ], [ %.sroa.44.0, %bb.fo ], [ %.sroa.44.0, %bb.fp ], [ %.sroa.44.0, %bb.fq ], [ %.sroa.44.0, %bb.fr ], [ %.sroa.44.0, %bb.fs ], [ %.sroa.44.0, %bb.ft ], [ %.sroa.44.0, %bb.fu ], [ %.sroa.44.0, %bb.fv ], [ %.sroa.44.0, %bb.fw ], [ %.sroa.44.0, %bb.fx ], [ %.sroa.44.0, %bb.fy ]
  %.sroa.086.4161352 = phi ptr [ %.sroa.086.4161, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.086.0, %bb.fj ], [ %.sroa.086.0, %bb.fk ], [ %.sroa.086.0, %bb.fl ], [ %.sroa.086.0, %bb.fm ], [ %.sroa.086.0, %bb.fn ], [ %.sroa.086.0, %bb.fo ], [ %.sroa.086.0, %bb.fp ], [ %.sroa.086.0, %bb.fq ], [ %.sroa.086.0, %bb.fr ], [ %.sroa.086.0, %bb.fs ], [ %.sroa.086.0, %bb.ft ], [ %.sroa.086.0, %bb.fu ], [ %.sroa.086.0, %bb.fv ], [ %.sroa.086.0, %bb.fw ], [ %.sroa.086.0, %bb.fx ], [ %.sroa.086.0, %bb.fy ]
  %i.aap = ptrtoint ptr %.sroa.58.0155357 to i64
  %i.aaq = ptrtoint ptr %.sroa.050.0157356 to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0157356, i64 noundef %i.aar) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %.sroa.0115.1359 = phi ptr [ %.sroa.0115.1, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.0115.1358, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ]
  %.sroa.44.4159355 = phi ptr [ %.sroa.44.4159, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.44.4159354, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ]
  %.sroa.086.4161353 = phi ptr [ %.sroa.086.4161, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.sroa.086.4161352, %_ZNK2v88internal11MaybeHandleINS0_16SeqTwoByteStringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread ] ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %.sroa.086.4161353, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.aas = ptrtoint ptr %.sroa.44.4159355 to i64
  %i.aat = ptrtoint ptr %.sroa.086.4161353 to i64
  %i.aau = sub i64 %i.aas, %i.aat
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.086.4161353, i64 noundef %i.aau) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.fz
  ret ptr %.sroa.0115.1359
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i16
  store i16 %4, ptr %0, align 2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %6, align 2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i8, ptr %9, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %10, align 2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 2
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 2
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 2
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %26, align 2
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %31 = load i8, ptr %29, align 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 2
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i8, ptr %33, align 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %34, align 2
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %39 = load i8, ptr %37, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 2
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %43 = load i8, ptr %41, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 2
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %47 = load i8, ptr %45, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 2
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %50, align 2
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %55 = load i8, ptr %53, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %54, align 2
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %59 = load i8, ptr %57, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %58, align 2
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %63 = load i8, ptr %61, align 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %65 = load i8, ptr %1, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %0, align 2
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 2
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 2
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %77 = load i8, ptr %75, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 2
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %81 = load i8, ptr %79, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %80, align 2
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %85 = load i8, ptr %83, align 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %84, align 2
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %88, align 2
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %92, align 2
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %97 = load i8, ptr %95, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %96, align 2
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %100, align 2
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %105 = load i8, ptr %103, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 2
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %109 = load i8, ptr %107, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %108, align 2
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %113 = load i8, ptr %111, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %112, align 2
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %117 = load i8, ptr %115, align 1
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %116, align 2
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %121 = load i8, ptr %119, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %120, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %123 = load i8, ptr %1, align 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %0, align 2
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %127 = load i8, ptr %125, align 1
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %126, align 2
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %131 = load i8, ptr %129, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %130, align 2
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %135 = load i8, ptr %133, align 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %134, align 2
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %139 = load i8, ptr %137, align 1
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %138, align 2
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %143 = load i8, ptr %141, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %142, align 2
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %147 = load i8, ptr %145, align 1
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %146, align 2
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %151 = load i8, ptr %149, align 1
  %152 = zext i8 %151 to i16
  store i16 %152, ptr %150, align 2
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %155 = load i8, ptr %153, align 1
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %154, align 2
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %159 = load i8, ptr %157, align 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %158, align 2
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %163 = load i8, ptr %161, align 1
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %162, align 2
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %167 = load i8, ptr %165, align 1
  %168 = zext i8 %167 to i16
  store i16 %168, ptr %166, align 2
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %171 = load i8, ptr %169, align 1
  %172 = zext i8 %171 to i16
  store i16 %172, ptr %170, align 2
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %175 = load i8, ptr %173, align 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %174, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i16
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.c, align 1
  %i.f = zext i8 %i.e to i16
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.g, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i8, ptr %1, align 1
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %0, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.ba, align 1
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr %i.bb, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.be, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i8, ptr %1, align 1
  %i.ct = zext i8 %i.cs to i16
  store i16 %i.ct, ptr %0, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = load i8, ptr %i.cu, align 1
  %i.cx = zext i8 %i.cw to i16
  store i16 %i.cx, ptr %i.cv, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %i.cz, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i8, ptr %1, align 1
  %i.ej = zext i8 %i.ei to i16
  store i16 %i.ej, ptr %0, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = zext i8 %i.em to i16
  store i16 %i.en, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jo = load i8, ptr %i.jm, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %i.jn, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i8, ptr %1, align 1
  %i.kd = zext i8 %i.kc to i16
  store i16 %i.kd, ptr %0, align 2
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kg = load i8, ptr %i.ke, align 1
  %i.kh = zext i8 %i.kg to i16
  store i16 %i.kh, ptr %i.kf, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kk = load i8, ptr %i.ki, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %i.kj, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i8, ptr %1, align 1
  %i.kv = zext i8 %i.ku to i16
  store i16 %i.kv, ptr %0, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ky = load i8, ptr %i.kw, align 1
  %i.kz = zext i8 %i.ky to i16
  store i16 %i.kz, ptr %i.kx, align 2
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lc = load i8, ptr %i.la, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %i.lb, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i8, ptr %1, align 1
  %i.lj = zext i8 %i.li to i16
  store i16 %i.lj, ptr %0, align 2
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lm = load i8, ptr %i.lk, align 1
  %i.ln = zext i8 %i.lm to i16
  store i16 %i.ln, ptr %i.ll, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lq = load i8, ptr %i.lo, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %i.lp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i8, ptr %1, align 1
  %i.lt = zext i8 %i.ls to i16
  store i16 %i.lt, ptr %0, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lw = load i8, ptr %i.lu, align 1
  %i.lx = zext i8 %i.lw to i16
  store i16 %i.lx, ptr %i.lv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i8, ptr %1, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mb = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mb
  %scevgep148 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = shl nuw i64 %n.vec, 1
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %i.mf = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mg ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep150, align 1, !alias.scope !35
  %wide.load151 = load <8 x i8>, ptr %i.mh, align 1, !alias.scope !35
  %i.mi = zext <8 x i8> %wide.load to <8 x i16>
  %i.mj = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.mk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mi, ptr %next.gep, align 2, !alias.scope !38, !noalias !35
  store <8 x i16> %i.mj, ptr %i.mk, align 2, !alias.scope !38, !noalias !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = shl nuw i64 %n.vec155, 1
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn
  %i.mp = getelementptr i8, ptr %1, i64 %n.vec155
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.mq = shl i64 %index156, 1
  %next.gep157 = getelementptr i8, ptr %0, i64 %i.mq
  %next.gep158 = getelementptr i8, ptr %1, i64 %index156
  %wide.load159 = load <4 x i8>, ptr %next.gep158, align 1, !alias.scope !35
  %i.mr = zext <4 x i8> %wide.load159 to <4 x i16>
  store <4 x i16> %i.mr, ptr %next.gep157, align 2, !alias.scope !38, !noalias !35
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.me, %vec.epilog.iter.check ], [ %i.mo, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.mu = zext i8 %i.mt to i16
  store i16 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !45

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i.i.i102.preheader, %.lr.ph.i.i.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal3Uri6EncodeEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEb(ptr noundef %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 9 uses
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 8 uses
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 17 uses
  %6 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 5 uses
  %7 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 10 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2 ; 3 uses
  %i.i = and i16 %i.h, -127
  %.not = icmp eq i16 %i.i, 1
  br i1 %.not, label %bb.b, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = and i16 %i.h, 7
  %i.k = icmp eq i16 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v acquire, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %.thread, %bb.b
  %.sroa.077.0 = phi i16 [ %i.z, %.thread ], [ %i.h, %bb.b ]
  %.sroa.012.1.i = phi i64 [ %i.t, %.thread ], [ %i.b, %bb.b ] ; 2 uses
  %i.ab = and i16 %.sroa.077.0, -121
  %i.ac = icmp eq i16 %i.ab, 5
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %.sroa.012.1.i, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.2.i = phi i64 [ %i.ag, %bb.f ], [ %.sroa.012.1.i, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.am = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #12
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.am, %bb.h ], [ %i.ai, %bb.g ] ; 3 uses
  %i.an = ptrtoint ptr %.0.i.i to i64
  %i.ao = add i64 %i.an, 8
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.ah, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.d, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.082.1 = phi ptr [ %i.aa, %bb.d ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %1, %bb.a ] ; 3 uses
  %i.aq = load i64, ptr %.sroa.082.1, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load i32, ptr %i.at, align 4            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = icmp slt i32 %i.au, 0
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

bb.j:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not318 = icmp eq i32 %i.au, 0
  br i1 %.not318, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #14 ; 3 uses
  store ptr %i.az, ptr %5, align 8
  store ptr %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  store ptr %i.ba, ptr %i.ax, align 8
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.j, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.bb = load i64, ptr %.sroa.082.1, align 8
  %i.bc = add i64 %i.bb, -1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12, !noalias !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !49, !noalias !46
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !noalias !52
  %i.bg = load atomic volatile i64, ptr %i.bd acquire, align 8, !noalias !55
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2, !noalias !55
  %i.bk = and i16 %i.bj, 15
  switch i16 %i.bk, label %bb.u [
    i16 8, label %bb.k
    i16 0, label %bb.l
    i16 9, label %bb.v
    i16 1, label %bb.v
    i16 10, label %bb.m
    i16 2, label %bb.q
    i16 11, label %bb.v
    i16 3, label %bb.v
    i16 13, label %bb.v
    i16 5, label %bb.v
  ]

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !58
  %i.bp = inttoptr i64 %i.bo to ptr               ; 6 uses
  %i.bq = load atomic volatile i64, ptr %i.bd monotonic, align 8, !noalias !58
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2, !noalias !58
  %i.bu = and i16 %i.bt, 16
  %.not.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bp, align 8, !noalias !58
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !58
  %i.by = tail call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #12, !noalias !58, !inline_history !63
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #12, !noalias !58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !58
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cb = load ptr, ptr %i.bp, align 8, !noalias !58
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !58
  %i.ce = tail call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #12, !noalias !58, !inline_history !63
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !64
  %i.ch = inttoptr i64 %i.cg to ptr               ; 6 uses
  %i.ci = load atomic volatile i64, ptr %i.bd monotonic, align 8, !noalias !64
  %i.cj = add i64 %i.ci, 11
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load atomic volatile i16, ptr %i.ck monotonic, align 2, !noalias !64
  %i.cm = and i16 %i.cl, 16
  %.not.i49 = icmp eq i16 %i.cm, 0
  br i1 %.not.i49, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_1
