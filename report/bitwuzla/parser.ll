Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5130
inline.NumDeleted: 1458
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1423, %bb.gt
  %.pn833.pn.pn.pn = phi { ptr, i32 } [ %i.avg, %bb.gt ], [ %.pn833.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1423 ], [ %.pn833.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1422 ] ; 2 uses
  %i.awd = load ptr, ptr %47, align 8, !tbaa !149 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.awf = icmp eq ptr %i.awd, %i.awe
  br i1 %i.awf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425
  %i.awg = load i64, ptr %i.awe, align 8, !tbaa !30
  %i.awh = add i64 %i.awg, 1
  call void @_ZdlPvm(ptr noundef %i.awd, i64 noundef %i.awh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426, %bb.gs
  %.pn833.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avf, %bb.gs ], [ %.pn833.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426 ], [ %.pn833.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #30
  %i.awi = load ptr, ptr %42, align 8, !tbaa !149 ; 2 uses
  %i.awj = icmp eq ptr %i.awi, %i.amy
  br i1 %i.awj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428
  %i.awk = load i64, ptr %i.amy, align 8, !tbaa !30
  %i.awl = add i64 %i.awk, 1
  call void @_ZdlPvm(ptr noundef %i.awi, i64 noundef %i.awl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429, %bb.gr
  %.pn833.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ave, %bb.gr ], [ %.pn833.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429 ], [ %.pn833.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428 ] ; 2 uses
  %i.awm = load ptr, ptr %43, align 8, !tbaa !149 ; 2 uses
  %i.awn = icmp eq ptr %i.awm, %i.ami
  br i1 %i.awn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431
  %i.awo = load i64, ptr %i.ami, align 8, !tbaa !30
  %i.awp = add i64 %i.awo, 1
  call void @_ZdlPvm(ptr noundef %i.awm, i64 noundef %i.awp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432, %bb.gq
  %.pn833.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avd, %bb.gq ], [ %.pn833.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432 ], [ %.pn833.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431 ] ; 2 uses
  %i.awq = load ptr, ptr %44, align 8, !tbaa !149 ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.alr
  br i1 %i.awr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434
  %i.aws = load i64, ptr %i.alr, align 8, !tbaa !30
  %i.awt = add i64 %i.aws, 1
  call void @_ZdlPvm(ptr noundef %i.awq, i64 noundef %i.awt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435, %bb.gp
  %.pn833.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avc, %bb.gp ], [ %.pn833.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435 ], [ %.pn833.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434 ] ; 2 uses
  %i.awu = load ptr, ptr %45, align 8, !tbaa !149 ; 2 uses
  %i.awv = icmp eq ptr %i.awu, %i.alc
  br i1 %i.awv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437
  %i.aww = load i64, ptr %i.alc, align 8, !tbaa !30
  %i.awx = add i64 %i.aww, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438, %bb.go
  %.pn833.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avb, %bb.go ], [ %.pn833.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438 ], [ %.pn833.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437 ]
  %i.awy = load ptr, ptr %46, align 8, !tbaa !149 ; 2 uses
  %i.awz = icmp eq ptr %i.awy, %i.akx
  br i1 %i.awz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440
  %i.axa = load i64, ptr %i.akx, align 8, !tbaa !30
  %i.axb = add i64 %i.axa, 1
  call void @_ZdlPvm(ptr noundef %i.awy, i64 noundef %i.axb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  br label %bb.afo

bb.gy:                                            ; preds = %bb.fd
  %i.axc = add i64 %i.p, 1                        ; 25 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !305 ; 3 uses
  %i.axf = load ptr, ptr %2, align 8, !tbaa !309  ; 2 uses
  %i.axg = ptrtoint ptr %i.axe to i64
  %i.axh = ptrtoint ptr %i.axf to i64
  %i.axi = sub i64 %i.axg, %i.axh
  %i.axj = ashr exact i64 %i.axi, 4               ; 3 uses
  %i.axk = icmp ugt i64 %i.r, %i.axj
  br i1 %i.axk, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.axl = sub nuw i64 %i.r, %i.axj
  tail call void @_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.axl)
  br label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit

bb.ha:                                            ; preds = %bb.gy
  %i.axm = icmp ult i64 %i.r, %i.axj
  br i1 %i.axm, label %bb.hb, label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit

bb.hb:                                            ; preds = %bb.ha
  %i.axn = getelementptr inbounds nuw [16 x i8], ptr %i.axf, i64 %i.r ; 3 uses
  %.not.i.i = icmp eq ptr %i.axe, %i.axn
  br i1 %.not.i.i, label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.hb, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.axo, %.lr.ph.i.i.i.i ], [ %i.axn, %bb.hb ] ; 2 uses
  tail call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i.i) #30
  %i.axo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.axo, %i.axe
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8bitwuzla4TermES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZSt8_DestroyIPN8bitwuzla4TermES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.axn, ptr %i.axd, align 8, !tbaa !305
  br label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit: ; preds = %bb.gz, %bb.ha, %bb.hb, %_ZSt8_DestroyIPN8bitwuzla4TermES1_EvT_S3_RSaIT0_E.exit.i.i
  %.not6372631 = icmp ult i64 %i.axc, %i.l
  br i1 %.not6372631, label %.lr.ph, label %.critedge855

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit
  %i.axp = load ptr, ptr %i.e, align 8, !tbaa !173 ; 2 uses
  %i.axq = ptrtoint ptr %i.axp to i64
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph, %bb.hg
  %.03832632 = phi i64 [ %i.axc, %.lr.ph ], [ %i.ayp, %bb.hg ] ; 3 uses
  %i.axr = getelementptr inbounds nuw [152 x i8], ptr %i.axp, i64 %.03832632 ; 2 uses
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !236 ; 2 uses
  %i.axt = icmp eq i32 %i.axs, 14
  br i1 %i.axt, label %bb.hg, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.axu = load ptr, ptr %i.f, align 8, !tbaa !174
  %i.axv = ptrtoint ptr %i.axu to i64
  %i.axw = sub i64 %i.axv, %i.axq
  %i.axx = sdiv exact i64 %i.axw, 152
  %i.axy = icmp ult i64 %.03832632, %i.axx
  %i.axz = icmp eq i32 %i.axs, 8
  %or.cond2517 = and i1 %i.axz, %i.axy
  br i1 %or.cond2517, label %bb.hg, label %_ZNK4bzla6parser4smt26Parser16peek_is_term_argEm.exit.thread

_ZNK4bzla6parser4smt26Parser16peek_is_term_argEm.exit.thread: ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  %i.aya = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  store ptr %i.aya, ptr %50, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aya, ptr noundef nonnull align 1 dereferenceable(13) @.str.21, i64 13, i1 false)
  %i.ayb = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 13, ptr %i.ayb, align 8, !tbaa !28
  %i.ayc = getelementptr inbounds nuw i8, ptr %50, i64 29
  store i8 0, ptr %i.ayc, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(16) %i.ayd, i64 16, i1 false), !tbaa.struct !255
  %i.aye = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i8 1, ptr %i.aye, align 8, !tbaa !226
  %i.ayf = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.he unwind label %bb.hf     ; 0 uses

bb.he:                                            ; preds = %_ZNK4bzla6parser4smt26Parser16peek_is_term_argEm.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  %i.ayg = load ptr, ptr %50, align 8, !tbaa !149 ; 2 uses
  %i.ayh = icmp eq ptr %i.ayg, %i.aya
  br i1 %i.ayh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446: ; preds = %bb.he
  %i.ayi = load i64, ptr %i.aya, align 8, !tbaa !30
  %i.ayj = add i64 %i.ayi, 1
  call void @_ZdlPvm(ptr noundef %i.ayg, i64 noundef %i.ayj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  br label %.critedge

bb.hf:                                            ; preds = %_ZNK4bzla6parser4smt26Parser16peek_is_term_argEm.exit.thread
  %i.ayk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  %i.ayl = load ptr, ptr %50, align 8, !tbaa !149 ; 2 uses
  %i.aym = icmp eq ptr %i.ayl, %i.aya
  br i1 %i.aym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1449: ; preds = %bb.hf
  %i.ayn = load i64, ptr %i.aya, align 8, !tbaa !30
  %i.ayo = add i64 %i.ayn, 1
  call void @_ZdlPvm(ptr noundef %i.ayl, i64 noundef %i.ayo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1449
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  br label %bb.afo

bb.hg:                                            ; preds = %bb.hd, %bb.hc
  %i.ayp = add i64 %.03832632, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ayp, %i.l
  br i1 %exitcond.not, label %.critedge855, label %bb.hc, !llvm.loop !863

.critedge855:                                     ; preds = %bb.hg, %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit
  switch i32 %i.a, label %.critedge857 [
    i32 4098, label %bb.hh
    i32 4099, label %bb.hh
    i32 4096, label %bb.is
    i32 4101, label %bb.is
    i32 4103, label %bb.is
    i32 4104, label %bb.is
    i32 4106, label %bb.is
    i32 4102, label %bb.ju
    i32 8193, label %bb.kr
    i32 8194, label %bb.lp
    i32 16386, label %bb.nb
    i32 16387, label %bb.nb
    i32 16388, label %bb.nb
    i32 16389, label %bb.nb
    i32 16390, label %bb.nb
    i32 16391, label %bb.nb
    i32 16392, label %bb.nb
    i32 16393, label %bb.nb
    i32 16394, label %bb.nb
    i32 16395, label %bb.nb
    i32 16428, label %bb.nb
    i32 16396, label %bb.nb
    i32 16397, label %bb.nb
    i32 16398, label %bb.nb
    i32 16399, label %bb.nb
    i32 16400, label %bb.nb
    i32 16401, label %bb.nb
    i32 16402, label %bb.nb
    i32 16403, label %bb.nb
    i32 16404, label %bb.nb
    i32 16405, label %bb.nb
    i32 16406, label %bb.nb
    i32 16407, label %bb.nb
    i32 16408, label %bb.nb
    i32 16409, label %bb.nb
    i32 16410, label %bb.nb
    i32 16411, label %bb.nb
    i32 16412, label %bb.nb
    i32 16413, label %bb.nb
    i32 16414, label %bb.nb
    i32 16415, label %bb.nb
    i32 16416, label %bb.nb
    i32 16417, label %bb.nb
    i32 16418, label %bb.nb
    i32 16419, label %bb.nb
    i32 16420, label %bb.nb
    i32 16421, label %bb.nb
    i32 16422, label %bb.nb
    i32 16423, label %bb.nb
    i32 16424, label %bb.nb
    i32 16425, label %bb.nb
    i32 16426, label %bb.nb
    i32 16427, label %bb.nb
    i32 16429, label %bb.nb
    i32 16430, label %bb.nb
    i32 16431, label %bb.nb
    i32 16432, label %bb.nb
    i32 16433, label %bb.nb
    i32 16434, label %bb.nb
    i32 16435, label %bb.nb
    i32 32789, label %bb.qe
    i32 32785, label %bb.ru
    i32 32786, label %bb.ru
    i32 32788, label %bb.ru
    i32 32803, label %bb.ru
    i32 32811, label %bb.ru
    i32 32812, label %bb.ru
    i32 32813, label %bb.ru
    i32 32816, label %bb.ru
    i32 32817, label %bb.ru
    i32 32790, label %bb.rv
    i32 32791, label %bb.rv
    i32 32792, label %bb.rv
    i32 32793, label %bb.rv
    i32 32794, label %bb.rv
    i32 32795, label %bb.rv
    i32 32796, label %bb.rv
    i32 32797, label %bb.rv
    i32 32798, label %bb.rv
    i32 32799, label %bb.rv
    i32 32800, label %bb.rv
    i32 32801, label %bb.rv
    i32 32802, label %bb.rv
    i32 32804, label %bb.rv
    i32 32805, label %bb.rv
    i32 32806, label %bb.rv
    i32 32807, label %bb.rv
    i32 32808, label %bb.rv
    i32 32809, label %bb.rv
    i32 32810, label %bb.rv
    i32 32784, label %bb.rv
    i32 32787, label %bb.rv
    i32 32815, label %bb.ve
    i32 32814, label %bb.ve
    i32 9, label %.preheader
    i32 519, label %bb.zd
    i32 517, label %bb.zd
  ]

.preheader:                                       ; preds = %.critedge855
  %.not2665 = icmp eq i64 %i.r, 0
  br i1 %.not2665, label %._crit_edge, label %.lr.ph2640

bb.hh:                                            ; preds = %.critedge855, %.critedge855
  %i.ayq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.axc)
  %i.ayr = load ptr, ptr %2, align 8, !tbaa !309
  %i.ays = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ayr, ptr noundef nonnull align 8 dereferenceable(16) %i.ayq) #30 ; 0 uses
  %.not7882660 = icmp ugt i64 %i.r, 1
  br i1 %.not7882660, label %.lr.ph2664.preheader, label %.critedge857

.lr.ph2664.preheader:                             ; preds = %bb.hh
  %i.ayt = add i64 %i.p, 2
  br label %.lr.ph2664

.lr.ph2664:                                       ; preds = %.lr.ph2664.preheader, %bb.ir
  %.03812662 = phi i64 [ %i.beo, %bb.ir ], [ %i.ayt, %.lr.ph2664.preheader ] ; 3 uses
  %.03822661 = phi i64 [ %i.ben, %bb.ir ], [ 1, %.lr.ph2664.preheader ] ; 5 uses
  %i.ayu = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.ayv = getelementptr inbounds nuw [152 x i8], ptr %i.ayu, i64 %.03812662 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 40
  %i.ayx = load i8, ptr %i.ayw, align 8, !tbaa !258
  switch i8 %i.ayx, label %bb.hi [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !278

bb.hi:                                            ; preds = %.lr.ph2664
  %i.ayy = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ayy, align 8, !tbaa !8
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 8
  store ptr @.str.202, ptr %i.ayz, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.ayy, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %.lr.ph2664
  %i.aza = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.aza, align 8, !tbaa !8
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 8
  store ptr @.str.201, ptr %i.azb, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.aza, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit: ; preds = %.lr.ph2664
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24
  %i.azd = load ptr, ptr %2, align 8, !tbaa !309  ; 2 uses
  %i.aze = getelementptr inbounds nuw [16 x i8], ptr %i.azd, i64 %.03822661 ; 2 uses
  %i.azf = load ptr, ptr %i.azc, align 8, !tbaa !271
  store ptr %i.azf, ptr %i.aze, align 8, !tbaa !271
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aze, i64 8 ; 3 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !267 ; 4 uses
  %i.azj = load ptr, ptr %i.azg, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1452 = icmp eq ptr %i.azi, %i.azj
  br i1 %.not.i.i.i.i1452, label %_ZN8bitwuzla4TermaSERKS0_.exit, label %bb.hj

bb.hj:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit
  %.not7.i.i.i.i = icmp eq ptr %i.azi, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azi, i64 8 ; 3 uses
  %i.azl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i = icmp eq i8 %i.azl, 0
  br i1 %.not.i.i.i.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.azm = load i32, ptr %i.azk, align 4, !tbaa !269
  %i.azn = add nsw i32 %i.azm, 1
  store i32 %i.azn, ptr %i.azk, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.azo = atomicrmw volatile add ptr %i.azk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.azg, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.hm, %bb.hl, %bb.hj
  %i.azp = phi ptr [ %i.azj, %bb.hj ], [ %i.azj, %bb.hl ], [ %.pr.pre.i.i.i.i, %bb.hm ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.azp, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.hn

bb.hn:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 8 ; 4 uses
  %i.azr = load atomic i64, ptr %i.azq acquire, align 8 ; 2 uses
  %i.azs = icmp eq i64 %i.azr, 4294967297
  %i.azt = trunc i64 %i.azr to i32                ; 2 uses
  br i1 %i.azs, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  store i32 0, ptr %i.azq, align 8, !tbaa !261
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azp, i64 12
  store i32 0, ptr %i.azu, align 4, !tbaa !263
  %i.azv = load ptr, ptr %i.azp, align 8, !tbaa !8
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 16
  %i.azx = load ptr, ptr %i.azw, align 8
  call void %i.azx(ptr noundef nonnull align 8 dereferenceable(16) %i.azp) #30, !inline_history !274
  %i.azy = load ptr, ptr %i.azp, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  br label %.critedge

bb.if:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ht
  %i.bck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #30
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.pn776 = phi { ptr, i32 } [ %i.bck, %bb.ig ], [ %i.bcj, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %52) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br label %bb.afo

bb.ii:                                            ; preds = %bb.hv
  %i.bcl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1503

bb.ij:                                            ; preds = %bb.hw
  %i.bcm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1500

bb.ik:                                            ; preds = %bb.hx
  %i.bcn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1497

bb.il:                                            ; preds = %bb.hy
  %i.bco = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494

bb.im:                                            ; preds = %bb.hz
  %i.bcp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1491

bb.in:                                            ; preds = %bb.ia
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1488

bb.io:                                            ; preds = %bb.ib
  %i.bcr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1485

bb.ip:                                            ; preds = %bb.ic
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482

bb.iq:                                            ; preds = %bb.id
  %i.bct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  %i.bcu = load ptr, ptr %54, align 8, !tbaa !149 ; 2 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.bcw = icmp eq ptr %i.bcu, %i.bcv
  br i1 %i.bcw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1480: ; preds = %bb.iq
  %i.bcx = load i64, ptr %i.bcv, align 8, !tbaa !30
  %i.bcy = add i64 %i.bcx, 1
  call void @_ZdlPvm(ptr noundef %i.bcu, i64 noundef %i.bcy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482: ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1480, %bb.ip
  %.pn778 = phi { ptr, i32 } [ %i.bcs, %bb.ip ], [ %i.bct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1480 ], [ %i.bct, %bb.iq ] ; 2 uses
  %i.bcz = load ptr, ptr %55, align 8, !tbaa !149 ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.bdb = icmp eq ptr %i.bcz, %i.bda
  br i1 %i.bdb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482
  %i.bdc = load i64, ptr %i.bda, align 8, !tbaa !30
  %i.bdd = add i64 %i.bdc, 1
  call void @_ZdlPvm(ptr noundef %i.bcz, i64 noundef %i.bdd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1485

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1485: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1483, %bb.io
  %.pn778.pn = phi { ptr, i32 } [ %i.bcr, %bb.io ], [ %.pn778, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1483 ], [ %.pn778, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482 ] ; 2 uses
  %i.bde = load ptr, ptr %62, align 8, !tbaa !149 ; 2 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.bdg = icmp eq ptr %i.bde, %i.bdf
  br i1 %i.bdg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1486: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1485
  %i.bdh = load i64, ptr %i.bdf, align 8, !tbaa !30
  %i.bdi = add i64 %i.bdh, 1
  call void @_ZdlPvm(ptr noundef %i.bde, i64 noundef %i.bdi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1488

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1488: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1486, %bb.in
  %.pn778.pn.pn = phi { ptr, i32 } [ %i.bcq, %bb.in ], [ %.pn778.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1486 ], [ %.pn778.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1485 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  %i.bdj = load ptr, ptr %56, align 8, !tbaa !149 ; 2 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.bdl = icmp eq ptr %i.bdj, %i.bdk
  br i1 %i.bdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1489: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1488
  %i.bdm = load i64, ptr %i.bdk, align 8, !tbaa !30
  %i.bdn = add i64 %i.bdm, 1
  call void @_ZdlPvm(ptr noundef %i.bdj, i64 noundef %i.bdn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1491: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1488, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1489, %bb.im
  %.pn778.pn.pn.pn = phi { ptr, i32 } [ %i.bcp, %bb.im ], [ %.pn778.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1489 ], [ %.pn778.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1488 ] ; 2 uses
  %i.bdo = load ptr, ptr %57, align 8, !tbaa !149 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.bdq = icmp eq ptr %i.bdo, %i.bdp
  br i1 %i.bdq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1491
  %i.bdr = load i64, ptr %i.bdp, align 8, !tbaa !30
  %i.bds = add i64 %i.bdr, 1
  call void @_ZdlPvm(ptr noundef %i.bdo, i64 noundef %i.bds) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1492, %bb.il
  %.pn778.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bco, %bb.il ], [ %.pn778.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1492 ], [ %.pn778.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1491 ] ; 2 uses
  %i.bdt = load ptr, ptr %61, align 8, !tbaa !149 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.bdv = icmp eq ptr %i.bdt, %i.bdu
  br i1 %i.bdv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494
  %i.bdw = load i64, ptr %i.bdu, align 8, !tbaa !30
  %i.bdx = add i64 %i.bdw, 1
  call void @_ZdlPvm(ptr noundef %i.bdt, i64 noundef %i.bdx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1497

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1497: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1495, %bb.ik
  %.pn778.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcn, %bb.ik ], [ %.pn778.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1495 ], [ %.pn778.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  %i.bdy = load ptr, ptr %58, align 8, !tbaa !149 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.bea = icmp eq ptr %i.bdy, %i.bdz
  br i1 %i.bea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1500, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1498

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1498: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1497
  %i.beb = load i64, ptr %i.bdz, align 8, !tbaa !30
  %i.bec = add i64 %i.beb, 1
  call void @_ZdlPvm(ptr noundef %i.bdy, i64 noundef %i.bec) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1500

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1500: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1497, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1498, %bb.ij
  %.pn778.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcm, %bb.ij ], [ %.pn778.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1498 ], [ %.pn778.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1497 ] ; 2 uses
  %i.bed = load ptr, ptr %59, align 8, !tbaa !149 ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.bef = icmp eq ptr %i.bed, %i.bee
  br i1 %i.bef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1501: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1500
  %i.beg = load i64, ptr %i.bee, align 8, !tbaa !30
  %i.beh = add i64 %i.beg, 1
  call void @_ZdlPvm(ptr noundef %i.bed, i64 noundef %i.beh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1503

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1503: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1500, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1501, %bb.ii
  %.pn778.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bcl, %bb.ii ], [ %.pn778.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1501 ], [ %.pn778.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1500 ]
  %i.bei = load ptr, ptr %60, align 8, !tbaa !149 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bek = icmp eq ptr %i.bei, %i.bej
  br i1 %i.bek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1506, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1504

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1503
  %i.bel = load i64, ptr %i.bej, align 8, !tbaa !30
  %i.bem = add i64 %i.bel, 1
  call void @_ZdlPvm(ptr noundef %i.bei, i64 noundef %i.bem) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1506

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1506: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1504
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  br label %bb.afo

bb.ir:                                            ; preds = %bb.hu
  %i.ben = add nuw i64 %.03822661, 1              ; 2 uses
  %i.beo = add i64 %.03812662, 1
  %exitcond2824.not = icmp eq i64 %i.ben, %i.r
  br i1 %exitcond2824.not, label %.critedge857, label %.lr.ph2664, !llvm.loop !864

bb.is:                                            ; preds = %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855
  %.not7752655.not = icmp eq i64 %i.r, 0
  br i1 %.not7752655.not, label %.critedge857, label %.lr.ph2659

.lr.ph2659:                                       ; preds = %bb.is, %bb.jt
  %.03792657 = phi i64 [ %i.biy, %bb.jt ], [ %i.axc, %bb.is ] ; 3 uses
  %.03802656 = phi i64 [ %i.bix, %bb.jt ], [ 0, %bb.is ] ; 4 uses
  %i.bep = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.beq = getelementptr inbounds nuw [152 x i8], ptr %i.bep, i64 %.03792657 ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 40
  %i.bes = load i8, ptr %i.ber, align 8, !tbaa !258
  switch i8 %i.bes, label %bb.it [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1508
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1507
  ], !prof !278

bb.it:                                            ; preds = %.lr.ph2659
  %i.bet = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bet, align 8, !tbaa !8
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 8
  store ptr @.str.202, ptr %i.beu, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.bet, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i1507: ; preds = %.lr.ph2659
  %i.bev = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bev, align 8, !tbaa !8
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 8
  store ptr @.str.201, ptr %i.bew, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.bev, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1508: ; preds = %.lr.ph2659
  %i.bex = getelementptr inbounds nuw i8, ptr %i.beq, i64 24
  %i.bey = load ptr, ptr %2, align 8, !tbaa !309  ; 2 uses
  %i.bez = getelementptr inbounds nuw [16 x i8], ptr %i.bey, i64 %.03802656 ; 2 uses
  %i.bfa = load ptr, ptr %i.bex, align 8, !tbaa !271
  store ptr %i.bfa, ptr %i.bez, align 8, !tbaa !271
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bez, i64 8 ; 3 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.beq, i64 32
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !267 ; 4 uses
  %i.bfe = load ptr, ptr %i.bfb, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1509 = icmp eq ptr %i.bfd, %i.bfe
  br i1 %.not.i.i.i.i1509, label %_ZN8bitwuzla4TermaSERKS0_.exit1519, label %bb.iu

bb.iu:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1508
  %.not7.i.i.i.i1510 = icmp eq ptr %i.bfd, null
  br i1 %.not7.i.i.i.i1510, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1512, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfd, i64 8 ; 3 uses
  %i.bfg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i1511 = icmp eq i8 %i.bfg, 0
  br i1 %.not.i.i.i.i.i1511, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.bfh = load i32, ptr %i.bff, align 4, !tbaa !269
  %i.bfi = add nsw i32 %i.bfh, 1
  store i32 %i.bfi, ptr %i.bff, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1512

bb.ix:                                            ; preds = %bb.iv
  %i.bfj = atomicrmw volatile add ptr %i.bff, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1518 = load ptr, ptr %i.bfb, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1512

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1512: ; preds = %bb.ix, %bb.iw, %bb.iu
  %i.bfk = phi ptr [ %i.bfe, %bb.iu ], [ %i.bfe, %bb.iw ], [ %.pr.pre.i.i.i.i1518, %bb.ix ] ; 8 uses
  %.not8.i.i.i.i1513 = icmp eq ptr %i.bfk, null
  br i1 %.not8.i.i.i.i1513, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1517, label %bb.iy

bb.iy:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1512
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8 ; 4 uses
  %i.bfm = load atomic i64, ptr %i.bfl acquire, align 8 ; 2 uses
  %i.bfn = icmp eq i64 %i.bfm, 4294967297
  %i.bfo = trunc i64 %i.bfm to i32                ; 2 uses
  br i1 %i.bfn, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  store i32 0, ptr %i.bfl, align 8, !tbaa !261
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfk, i64 12
  store i32 0, ptr %i.bfp, align 4, !tbaa !263
  %i.bfq = load ptr, ptr %i.bfk, align 8, !tbaa !8
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 16
  %i.bfs = load ptr, ptr %i.bfr, align 8
  call void %i.bfs(ptr noundef nonnull align 8 dereferenceable(16) %i.bfk) #30, !inline_history !274
  %i.bft = load ptr, ptr %i.bfk, align 8, !tbaa !8
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 24
  %i.bfv = load ptr, ptr %i.bfu, align 8
  call void %i.bfv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfk) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1517

bb.ja:                                            ; preds = %bb.iy
  %i.bfw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1514 = icmp eq i8 %i.bfw, 0
  br i1 %.not.i9.i.i.i.i1514, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bfx = add nsw i32 %i.bfo, -1
  store i32 %i.bfx, ptr %i.bfl, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1515

bb.jc:                                            ; preds = %bb.ja
  %i.bfy = atomicrmw volatile add ptr %i.bfl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1515

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1515: ; preds = %bb.jc, %bb.jb
  %.0.i.i.i.i.i.i1516 = phi i32 [ %i.bfo, %bb.jb ], [ %i.bfy, %bb.jc ]
  %i.bfz = icmp eq i32 %.0.i.i.i.i.i.i1516, 1
  br i1 %i.bfz, label %bb.jd, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1517, !prof !270

bb.jd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1515
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfk) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1517

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1517: ; preds = %bb.jd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1515, %bb.iz, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1512
  store ptr %i.bfd, ptr %i.bfb, align 8, !tbaa !267
  %.pre2832 = load ptr, ptr %2, align 8, !tbaa !309
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1519

_ZN8bitwuzla4TermaSERKS0_.exit1519:               ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1508, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1517
  %i.bga = phi ptr [ %i.bey, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1508 ], [ %.pre2832, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1517 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #30
  %i.bgb = getelementptr inbounds nuw [16 x i8], ptr %i.bga, i64 %.03802656
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %64, ptr noundef nonnull align 8 dereferenceable(16) %i.bgb)
  %i.bgc = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort7is_boolEv(ptr noundef nonnull align 8 dereferenceable(16) %64)
          to label %bb.je unwind label %bb.jm

bb.je:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1519
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #30
  br i1 %i.bgc, label %bb.jt, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #30
  call void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, i64 noundef %.03802656)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull @.str.163, ptr noundef nonnull align 8 dereferenceable(32) %69)
          to label %bb.jg unwind label %bb.jn

bb.jg:                                            ; preds = %bb.jf
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %67, ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @.str.160)
          to label %bb.jh unwind label %bb.jo

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #30
  invoke void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, i32 noundef %i.a)
          to label %bb.ji unwind label %bb.jp

bb.ji:                                            ; preds = %bb.jh
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.jj unwind label %bb.jq

bb.jj:                                            ; preds = %bb.ji
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @.str.2)
          to label %bb.jk unwind label %bb.jr

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #30
  %i.bgd = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.bge = getelementptr inbounds nuw [152 x i8], ptr %i.bgd, i64 %.03792657
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(16) %i.bgf, i64 16, i1 false), !tbaa.struct !255
  %i.bgg = getelementptr inbounds nuw i8, ptr %71, i64 16
  store i8 1, ptr %i.bgg, align 8, !tbaa !226
  %i.bgh = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(24) %71)
          to label %bb.jl unwind label %bb.js     ; 0 uses

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  %i.bgi = load ptr, ptr %65, align 8, !tbaa !149 ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.bgk = icmp eq ptr %i.bgi, %i.bgj
  br i1 %i.bgk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1520: ; preds = %bb.jl
  %i.bgl = load i64, ptr %i.bgj, align 8, !tbaa !30
  %i.bgm = add i64 %i.bgl, 1
  call void @_ZdlPvm(ptr noundef %i.bgi, i64 noundef %i.bgm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522: ; preds = %bb.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1520
  %i.bgn = load ptr, ptr %66, align 8, !tbaa !149 ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.bgp = icmp eq ptr %i.bgn, %i.bgo
  br i1 %i.bgp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1523

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1523: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522
  %i.bgq = load i64, ptr %i.bgo, align 8, !tbaa !30
  %i.bgr = add i64 %i.bgq, 1
  call void @_ZdlPvm(ptr noundef %i.bgn, i64 noundef %i.bgr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1522, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1523
  %i.bgs = load ptr, ptr %70, align 8, !tbaa !149 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.bgu = icmp eq ptr %i.bgs, %i.bgt
  br i1 %i.bgu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1526: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525
  %i.bgv = load i64, ptr %i.bgt, align 8, !tbaa !30
  %i.bgw = add i64 %i.bgv, 1
  call void @_ZdlPvm(ptr noundef %i.bgs, i64 noundef %i.bgw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1525, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1526
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #30
  %i.bgx = load ptr, ptr %67, align 8, !tbaa !149 ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.bgz = icmp eq ptr %i.bgx, %i.bgy
  br i1 %i.bgz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528
  %i.bha = load i64, ptr %i.bgy, align 8, !tbaa !30
  %i.bhb = add i64 %i.bha, 1
  call void @_ZdlPvm(ptr noundef %i.bgx, i64 noundef %i.bhb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1531

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1531: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1528, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1529
  %i.bhc = load ptr, ptr %68, align 8, !tbaa !149 ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.bhe = icmp eq ptr %i.bhc, %i.bhd
  br i1 %i.bhe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1532

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1532: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1531
  %i.bhf = load i64, ptr %i.bhd, align 8, !tbaa !30
  %i.bhg = add i64 %i.bhf, 1
  call void @_ZdlPvm(ptr noundef %i.bhc, i64 noundef %i.bhg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1534

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1534: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1531, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1532
  %i.bhh = load ptr, ptr %69, align 8, !tbaa !149 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.bhj = icmp eq ptr %i.bhh, %i.bhi
  br i1 %i.bhj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1535

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1535: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1534
  %i.bhk = load i64, ptr %i.bhi, align 8, !tbaa !30
  %i.bhl = add i64 %i.bhk, 1
  call void @_ZdlPvm(ptr noundef %i.bhh, i64 noundef %i.bhl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1534, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1535
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #30
  br label %.critedge

bb.jm:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1519
  %i.bhm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #30
  br label %bb.afo

bb.jn:                                            ; preds = %bb.jf
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552

bb.jo:                                            ; preds = %bb.jg
  %i.bho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549

bb.jp:                                            ; preds = %bb.jh
  %i.bhp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546

bb.jq:                                            ; preds = %bb.ji
  %i.bhq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543

bb.jr:                                            ; preds = %bb.jj
  %i.bhr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540

bb.js:                                            ; preds = %bb.jk
  %i.bhs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #30
  %i.bht = load ptr, ptr %65, align 8, !tbaa !149 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.bhv = icmp eq ptr %i.bht, %i.bhu
  br i1 %i.bhv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538: ; preds = %bb.js
  %i.bhw = load i64, ptr %i.bhu, align 8, !tbaa !30
  %i.bhx = add i64 %i.bhw, 1
  call void @_ZdlPvm(ptr noundef %i.bht, i64 noundef %i.bhx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540: ; preds = %bb.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538, %bb.jr
  %.pn768 = phi { ptr, i32 } [ %i.bhr, %bb.jr ], [ %i.bhs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1538 ], [ %i.bhs, %bb.js ] ; 2 uses
  %i.bhy = load ptr, ptr %66, align 8, !tbaa !149 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.bia = icmp eq ptr %i.bhy, %i.bhz
  br i1 %i.bia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540
  %i.bib = load i64, ptr %i.bhz, align 8, !tbaa !30
  %i.bic = add i64 %i.bib, 1
  call void @_ZdlPvm(ptr noundef %i.bhy, i64 noundef %i.bic) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541, %bb.jq
  %.pn768.pn = phi { ptr, i32 } [ %i.bhq, %bb.jq ], [ %.pn768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1541 ], [ %.pn768, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1540 ] ; 2 uses
  %i.bid = load ptr, ptr %70, align 8, !tbaa !149 ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.bif = icmp eq ptr %i.bid, %i.bie
  br i1 %i.bif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1544

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1544: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543
  %i.big = load i64, ptr %i.bie, align 8, !tbaa !30
  %i.bih = add i64 %i.big, 1
  call void @_ZdlPvm(ptr noundef %i.bid, i64 noundef %i.bih) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1544, %bb.jp
  %.pn768.pn.pn = phi { ptr, i32 } [ %i.bhp, %bb.jp ], [ %.pn768.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1544 ], [ %.pn768.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1543 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #30
  %i.bii = load ptr, ptr %67, align 8, !tbaa !149 ; 2 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.bik = icmp eq ptr %i.bii, %i.bij
  br i1 %i.bik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546
  %i.bil = load i64, ptr %i.bij, align 8, !tbaa !30
  %i.bim = add i64 %i.bil, 1
  call void @_ZdlPvm(ptr noundef %i.bii, i64 noundef %i.bim) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547, %bb.jo
  %.pn768.pn.pn.pn = phi { ptr, i32 } [ %i.bho, %bb.jo ], [ %.pn768.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1547 ], [ %.pn768.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1546 ] ; 2 uses
  %i.bin = load ptr, ptr %68, align 8, !tbaa !149 ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.bip = icmp eq ptr %i.bin, %i.bio
  br i1 %i.bip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549
  %i.biq = load i64, ptr %i.bio, align 8, !tbaa !30
  %i.bir = add i64 %i.biq, 1
  call void @_ZdlPvm(ptr noundef %i.bin, i64 noundef %i.bir) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550, %bb.jn
  %.pn768.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bhn, %bb.jn ], [ %.pn768.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1550 ], [ %.pn768.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1549 ]
  %i.bis = load ptr, ptr %69, align 8, !tbaa !149 ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.biu = icmp eq ptr %i.bis, %i.bit
  br i1 %i.biu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1553: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552
  %i.biv = load i64, ptr %i.bit, align 8, !tbaa !30
  %i.biw = add i64 %i.biv, 1
  call void @_ZdlPvm(ptr noundef %i.bis, i64 noundef %i.biw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1552, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1553
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #30
  br label %bb.afo

bb.jt:                                            ; preds = %bb.je
  %i.bix = add nuw i64 %.03802656, 1              ; 2 uses
  %i.biy = add i64 %.03792657, 1
  %exitcond2823.not = icmp eq i64 %i.bix, %i.r
  br i1 %exitcond2823.not, label %.critedge857, label %.lr.ph2659, !llvm.loop !865

bb.ju:                                            ; preds = %.critedge855
  %i.biz = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.axc)
  %i.bja = load ptr, ptr %2, align 8, !tbaa !309
  %i.bjb = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bja, ptr noundef nonnull align 8 dereferenceable(16) %i.biz) #30 ; 0 uses
  %i.bjc = add i64 %i.p, 2
  %i.bjd = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.bjc)
  %i.bje = load ptr, ptr %2, align 8, !tbaa !309
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 16
  %i.bjg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf, ptr noundef nonnull align 8 dereferenceable(16) %i.bjd) #30 ; 0 uses
  %i.bjh = add i64 %i.p, 3                        ; 2 uses
  %i.bji = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.bjh)
  %i.bjj = load ptr, ptr %2, align 8, !tbaa !309
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 32
  %i.bjl = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bjk, ptr noundef nonnull align 8 dereferenceable(16) %i.bji) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #30
  %i.bjm = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %72, ptr noundef nonnull align 8 dereferenceable(16) %i.bjm)
  %i.bjn = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort7is_boolEv(ptr noundef nonnull align 8 dereferenceable(16) %72)
          to label %bb.jv unwind label %bb.ka

bb.jv:                                            ; preds = %bb.ju
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  br i1 %i.bjn, label %bb.ke, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, i32 noundef 4102)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr noundef nonnull @.str.164, ptr noundef nonnull align 8 dereferenceable(32) %75)
          to label %bb.jx unwind label %bb.kb

bb.jx:                                            ; preds = %bb.jw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull @.str.2)
          to label %bb.jy unwind label %bb.kc

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #30
  %i.bjo = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.bjp = getelementptr inbounds nuw [152 x i8], ptr %i.bjo, i64 %i.axc
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(16) %i.bjq, i64 16, i1 false), !tbaa.struct !255
  %i.bjr = getelementptr inbounds nuw i8, ptr %76, i64 16
  store i8 1, ptr %i.bjr, align 8, !tbaa !226
  %i.bjs = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(24) %76)
          to label %bb.jz unwind label %bb.kd     ; 0 uses

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  %i.bjt = load ptr, ptr %73, align 8, !tbaa !149 ; 2 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.bjv = icmp eq ptr %i.bjt, %i.bju
  br i1 %i.bjv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1556: ; preds = %bb.jz
  %i.bjw = load i64, ptr %i.bju, align 8, !tbaa !30
  %i.bjx = add i64 %i.bjw, 1
  call void @_ZdlPvm(ptr noundef %i.bjt, i64 noundef %i.bjx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1558: ; preds = %bb.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1556
  %i.bjy = load ptr, ptr %74, align 8, !tbaa !149 ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.bka = icmp eq ptr %i.bjy, %i.bjz
  br i1 %i.bka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1561, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1559

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1559: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1558
  %i.bkb = load i64, ptr %i.bjz, align 8, !tbaa !30
  %i.bkc = add i64 %i.bkb, 1
  call void @_ZdlPvm(ptr noundef %i.bjy, i64 noundef %i.bkc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1561

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1561: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1558, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1559
  %i.bkd = load ptr, ptr %75, align 8, !tbaa !149 ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.bkf = icmp eq ptr %i.bkd, %i.bke
  br i1 %i.bkf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1564, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1562

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1562: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1561
  %i.bkg = load i64, ptr %i.bke, align 8, !tbaa !30
  %i.bkh = add i64 %i.bkg, 1
  call void @_ZdlPvm(ptr noundef %i.bkd, i64 noundef %i.bkh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1564

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1564: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1561, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1562
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #30
  br label %.critedge

bb.ka:                                            ; preds = %bb.ju
  %i.bki = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %72) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #30
  br label %bb.afo

bb.kb:                                            ; preds = %bb.jw
  %i.bkj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1570

bb.kc:                                            ; preds = %bb.jx
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567

bb.kd:                                            ; preds = %bb.jy
  %i.bkl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  %i.bkm = load ptr, ptr %73, align 8, !tbaa !149 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.bko = icmp eq ptr %i.bkm, %i.bkn
  br i1 %i.bko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1565

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1565: ; preds = %bb.kd
  %i.bkp = load i64, ptr %i.bkn, align 8, !tbaa !30
  %i.bkq = add i64 %i.bkp, 1
  call void @_ZdlPvm(ptr noundef %i.bkm, i64 noundef %i.bkq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567: ; preds = %bb.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1565, %bb.kc
  %.pn765 = phi { ptr, i32 } [ %i.bkk, %bb.kc ], [ %i.bkl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1565 ], [ %i.bkl, %bb.kd ] ; 2 uses
  %i.bkr = load ptr, ptr %74, align 8, !tbaa !149 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.bkt = icmp eq ptr %i.bkr, %i.bks
  br i1 %i.bkt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1568

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1568: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567
  %i.bku = load i64, ptr %i.bks, align 8, !tbaa !30
  %i.bkv = add i64 %i.bku, 1
  call void @_ZdlPvm(ptr noundef %i.bkr, i64 noundef %i.bkv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1570: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1568, %bb.kb
  %.pn765.pn = phi { ptr, i32 } [ %i.bkj, %bb.kb ], [ %.pn765, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1568 ], [ %.pn765, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1567 ]
  %i.bkw = load ptr, ptr %75, align 8, !tbaa !149 ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.bky = icmp eq ptr %i.bkw, %i.bkx
  br i1 %i.bky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1571: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1570
  %i.bkz = load i64, ptr %i.bkx, align 8, !tbaa !30
  %i.bla = add i64 %i.bkz, 1
  call void @_ZdlPvm(ptr noundef %i.bkw, i64 noundef %i.bla) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1573: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1571
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #30
  br label %bb.afo

bb.ke:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #30
  %i.blb = load ptr, ptr %2, align 8, !tbaa !309
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 16
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %77, ptr noundef nonnull align 8 dereferenceable(16) %i.blc)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #30
  %i.bld = load ptr, ptr %2, align 8, !tbaa !309
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 32
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %78, ptr noundef nonnull align 8 dereferenceable(16) %i.ble)
          to label %bb.kf unwind label %bb.kl

bb.kf:                                            ; preds = %bb.ke
  %i.blf = invoke noundef zeroext i1 @_ZN8bitwuzlaneERKNS_4SortES2_(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(16) %78)
          to label %bb.kg unwind label %bb.km

bb.kg:                                            ; preds = %bb.kf
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %78) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %77) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #30
  br i1 %i.blf, label %bb.kh, label %.critedge876.thread

bb.kh:                                            ; preds = %bb.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, i32 noundef 4102)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef nonnull @.str.165, ptr noundef nonnull align 8 dereferenceable(32) %81)
          to label %bb.ki unwind label %bb.ko

bb.ki:                                            ; preds = %bb.kh
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @.str.2)
          to label %bb.kj unwind label %bb.kp

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #30
  %i.blg = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.blh = getelementptr inbounds nuw [152 x i8], ptr %i.blg, i64 %i.bjh
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %82, ptr noundef nonnull align 8 dereferenceable(16) %i.bli, i64 16, i1 false), !tbaa.struct !255
  %i.blj = getelementptr inbounds nuw i8, ptr %82, i64 16
  store i8 1, ptr %i.blj, align 8, !tbaa !226
  %i.blk = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(24) %82)
          to label %bb.kk unwind label %bb.kq     ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #30
  br label %.critedge

bb.pr:                                            ; preds = %bb.pf
  %lpad.loopexit2814.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.pt

bb.ps:                                            ; preds = %bb.pg
  %lpad.loopexit2819 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %120) #30
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %.pn720 = phi { ptr, i32 } [ %lpad.loopexit2819, %bb.ps ], [ %lpad.loopexit2814.a, %bb.pr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #30
  br label %bb.afo

bb.pu:                                            ; preds = %.loopexit2822
  %i.cga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797

bb.pv:                                            ; preds = %bb.pi
  %i.cgb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794

bb.pw:                                            ; preds = %bb.pj
  %i.cgc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791

bb.px:                                            ; preds = %bb.pk
  %i.cgd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1788

bb.py:                                            ; preds = %bb.pl
  %i.cge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1785

bb.pz:                                            ; preds = %bb.pm
  %i.cgf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1782

bb.qa:                                            ; preds = %bb.pn
  %i.cgg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1779

bb.qb:                                            ; preds = %bb.po
  %i.cgh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1776

bb.qc:                                            ; preds = %bb.pp
  %i.cgi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #30
  %i.cgj = load ptr, ptr %121, align 8, !tbaa !149 ; 2 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 2 uses
  %i.cgl = icmp eq ptr %i.cgj, %i.cgk
  br i1 %i.cgl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1776, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1774

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1774: ; preds = %bb.qc
  %i.cgm = load i64, ptr %i.cgk, align 8, !tbaa !30
  %i.cgn = add i64 %i.cgm, 1
  call void @_ZdlPvm(ptr noundef %i.cgj, i64 noundef %i.cgn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1776

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1776: ; preds = %bb.qc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1774, %bb.qb
  %.pn722 = phi { ptr, i32 } [ %i.cgh, %bb.qb ], [ %i.cgi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1774 ], [ %i.cgi, %bb.qc ] ; 2 uses
  %i.cgo = load ptr, ptr %122, align 8, !tbaa !149 ; 2 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %122, i64 16 ; 2 uses
  %i.cgq = icmp eq ptr %i.cgo, %i.cgp
  br i1 %i.cgq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1779, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1777

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1777: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1776
  %i.cgr = load i64, ptr %i.cgp, align 8, !tbaa !30
  %i.cgs = add i64 %i.cgr, 1
  call void @_ZdlPvm(ptr noundef %i.cgo, i64 noundef %i.cgs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1779

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1779: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1776, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1777, %bb.qa
  %.pn722.pn = phi { ptr, i32 } [ %i.cgg, %bb.qa ], [ %.pn722, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1777 ], [ %.pn722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1776 ] ; 2 uses
  %i.cgt = load ptr, ptr %129, align 8, !tbaa !149 ; 2 uses
  %i.cgu = getelementptr inbounds nuw i8, ptr %129, i64 16 ; 2 uses
  %i.cgv = icmp eq ptr %i.cgt, %i.cgu
  br i1 %i.cgv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1782, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1780

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1780: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1779
  %i.cgw = load i64, ptr %i.cgu, align 8, !tbaa !30
  %i.cgx = add i64 %i.cgw, 1
  call void @_ZdlPvm(ptr noundef %i.cgt, i64 noundef %i.cgx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1782

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1782: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1779, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1780, %bb.pz
  %.pn722.pn.pn = phi { ptr, i32 } [ %i.cgf, %bb.pz ], [ %.pn722.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1780 ], [ %.pn722.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1779 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #30
  %i.cgy = load ptr, ptr %123, align 8, !tbaa !149 ; 2 uses
  %i.cgz = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 2 uses
  %i.cha = icmp eq ptr %i.cgy, %i.cgz
  br i1 %i.cha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1783

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1783: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1782
  %i.chb = load i64, ptr %i.cgz, align 8, !tbaa !30
  %i.chc = add i64 %i.chb, 1
  call void @_ZdlPvm(ptr noundef %i.cgy, i64 noundef %i.chc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1785: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1782, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1783, %bb.py
  %.pn722.pn.pn.pn = phi { ptr, i32 } [ %i.cge, %bb.py ], [ %.pn722.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1783 ], [ %.pn722.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1782 ] ; 2 uses
  %i.chd = load ptr, ptr %124, align 8, !tbaa !149 ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 2 uses
  %i.chf = icmp eq ptr %i.chd, %i.che
  br i1 %i.chf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1786: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1785
  %i.chg = load i64, ptr %i.che, align 8, !tbaa !30
  %i.chh = add i64 %i.chg, 1
  call void @_ZdlPvm(ptr noundef %i.chd, i64 noundef %i.chh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1788

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1788: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1785, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1786, %bb.px
  %.pn722.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cgd, %bb.px ], [ %.pn722.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1786 ], [ %.pn722.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1785 ] ; 2 uses
  %i.chi = load ptr, ptr %128, align 8, !tbaa !149 ; 2 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 2 uses
  %i.chk = icmp eq ptr %i.chi, %i.chj
  br i1 %i.chk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1789

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1789: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1788
  %i.chl = load i64, ptr %i.chj, align 8, !tbaa !30
  %i.chm = add i64 %i.chl, 1
  call void @_ZdlPvm(ptr noundef %i.chi, i64 noundef %i.chm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1788, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1789, %bb.pw
  %.pn722.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cgc, %bb.pw ], [ %.pn722.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1789 ], [ %.pn722.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1788 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #30
  %i.chn = load ptr, ptr %125, align 8, !tbaa !149 ; 2 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %125, i64 16 ; 2 uses
  %i.chp = icmp eq ptr %i.chn, %i.cho
  br i1 %i.chp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1792

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1792: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791
  %i.chq = load i64, ptr %i.cho, align 8, !tbaa !30
  %i.chr = add i64 %i.chq, 1
  call void @_ZdlPvm(ptr noundef %i.chn, i64 noundef %i.chr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1792, %bb.pv
  %.pn722.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cgb, %bb.pv ], [ %.pn722.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1792 ], [ %.pn722.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791 ] ; 2 uses
  %i.chs = load ptr, ptr %126, align 8, !tbaa !149 ; 2 uses
  %i.cht = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.chu = icmp eq ptr %i.chs, %i.cht
  br i1 %i.chu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1795

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1795: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794
  %i.chv = load i64, ptr %i.cht, align 8, !tbaa !30
  %i.chw = add i64 %i.chv, 1
  call void @_ZdlPvm(ptr noundef %i.chs, i64 noundef %i.chw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1795, %bb.pu
  %.pn722.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cga, %bb.pu ], [ %.pn722.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1795 ], [ %.pn722.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794 ]
  %i.chx = load ptr, ptr %127, align 8, !tbaa !149 ; 2 uses
  %i.chy = getelementptr inbounds nuw i8, ptr %127, i64 16 ; 2 uses
  %i.chz = icmp eq ptr %i.chx, %i.chy
  br i1 %i.chz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1798

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1798: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797
  %i.cia = load i64, ptr %i.chy, align 8, !tbaa !30
  %i.cib = add i64 %i.cia, 1
  call void @_ZdlPvm(ptr noundef %i.chx, i64 noundef %i.cib) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1798
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #30
  br label %bb.afo

bb.qd:                                            ; preds = %bb.pe, %bb.ph
  %i.cic = add nuw i64 %.03782651, 1              ; 2 uses
  %i.cid = add i64 %.03772652, 1
  %exitcond2803.not = icmp eq i64 %i.cic, %i.r
  br i1 %exitcond2803.not, label %.critedge857, label %bb.no, !llvm.loop !881

bb.qe:                                            ; preds = %.critedge855
  %i.cie = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.axc)
  %i.cif = load ptr, ptr %2, align 8, !tbaa !309
  %i.cig = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cif, ptr noundef nonnull align 8 dereferenceable(16) %i.cie) #30 ; 0 uses
  %i.cih = add i64 %i.p, 2                        ; 2 uses
  %i.cii = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.cih)
  %i.cij = load ptr, ptr %2, align 8, !tbaa !309
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cij, i64 16
  %i.cil = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cik, ptr noundef nonnull align 8 dereferenceable(16) %i.cii) #30 ; 0 uses
  %i.cim = add i64 %i.p, 3                        ; 2 uses
  %i.cin = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.cim)
  %i.cio = load ptr, ptr %2, align 8, !tbaa !309
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 32
  %i.ciq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cip, ptr noundef nonnull align 8 dereferenceable(16) %i.cin) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #30
  %i.cir = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %131, ptr noundef nonnull align 8 dereferenceable(16) %i.cir)
  %i.cis = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_bvEv(ptr noundef nonnull align 8 dereferenceable(16) %131)
          to label %bb.qf unwind label %bb.qm

bb.qf:                                            ; preds = %bb.qe
  br i1 %i.cis, label %bb.qg, label %.critedge863.thread

.critedge863.thread:                              ; preds = %bb.qf
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %131) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #30
  br label %bb.qi

bb.qg:                                            ; preds = %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #30
  %i.cit = load ptr, ptr %2, align 8, !tbaa !309
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %132, ptr noundef nonnull align 8 dereferenceable(16) %i.cit)
          to label %bb.qh unwind label %bb.qn

bb.qh:                                            ; preds = %bb.qg
  %i.ciu = invoke noundef i64 @_ZNK8bitwuzla4Sort7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %132)
          to label %.critedge863 unwind label %bb.qo

.critedge863:                                     ; preds = %bb.qh
  %.not2518 = icmp eq i64 %i.ciu, 1
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %132) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %131) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #30
  br i1 %.not2518, label %bb.qu, label %bb.qi

bb.qi:                                            ; preds = %.critedge863.thread, %.critedge863
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %135, i32 noundef 32789)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %134, ptr noundef nonnull @.str.170, ptr noundef nonnull align 8 dereferenceable(32) %135)
          to label %bb.qj unwind label %bb.qr

bb.qj:                                            ; preds = %bb.qi
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %133, ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull @.str.2)
          to label %bb.qk unwind label %bb.qs

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #30
  %i.civ = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.ciw = getelementptr inbounds nuw [152 x i8], ptr %i.civ, i64 %i.axc
  %i.cix = getelementptr inbounds nuw i8, ptr %i.ciw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %136, ptr noundef nonnull align 8 dereferenceable(16) %i.cix, i64 16, i1 false), !tbaa.struct !255
  %i.ciy = getelementptr inbounds nuw i8, ptr %136, i64 16
  store i8 1, ptr %i.ciy, align 8, !tbaa !226
  %i.ciz = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %133, ptr noundef nonnull align 8 dereferenceable(24) %136)
          to label %bb.ql unwind label %bb.qt     ; 0 uses

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #30
  %i.cja = load ptr, ptr %133, align 8, !tbaa !149 ; 2 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 2 uses
  %i.cjc = icmp eq ptr %i.cja, %i.cjb
  br i1 %i.cjc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1803, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1801

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1801: ; preds = %bb.ql
  %i.cjd = load i64, ptr %i.cjb, align 8, !tbaa !30
  %i.cje = add i64 %i.cjd, 1
  call void @_ZdlPvm(ptr noundef %i.cja, i64 noundef %i.cje) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1803

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1803: ; preds = %bb.ql, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1801
  %i.cjf = load ptr, ptr %134, align 8, !tbaa !149 ; 2 uses
  %i.cjg = getelementptr inbounds nuw i8, ptr %134, i64 16 ; 2 uses
  %i.cjh = icmp eq ptr %i.cjf, %i.cjg
  br i1 %i.cjh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1806, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1804

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1804: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1803
  %i.cji = load i64, ptr %i.cjg, align 8, !tbaa !30
  %i.cjj = add i64 %i.cji, 1
  call void @_ZdlPvm(ptr noundef %i.cjf, i64 noundef %i.cjj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1806

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1806: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1803, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1804
  %i.cjk = load ptr, ptr %135, align 8, !tbaa !149 ; 2 uses
  %i.cjl = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 2 uses
  %i.cjm = icmp eq ptr %i.cjk, %i.cjl
  br i1 %i.cjm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1807: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1806
  %i.cjn = load i64, ptr %i.cjl, align 8, !tbaa !30
  %i.cjo = add i64 %i.cjn, 1
  call void @_ZdlPvm(ptr noundef %i.cjk, i64 noundef %i.cjo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1809

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1809: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1806, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1807
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #30
  br label %.critedge

bb.qm:                                            ; preds = %bb.qe
  %i.cjp = landingpad { ptr, i32 }
          cleanup
  br label %bb.qq

bb.qn:                                            ; preds = %bb.qg
  %i.cjq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.qo:                                            ; preds = %bb.qh
  %i.cjr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %132) #30
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qn, %bb.qo
  %.pn705 = phi { ptr, i32 } [ %i.cjr, %bb.qo ], [ %i.cjq, %bb.qn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #30
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qm
  %.pn705.pn = phi { ptr, i32 } [ %.pn705, %bb.qp ], [ %i.cjp, %bb.qm ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %131) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #30
  br label %bb.afo

bb.qr:                                            ; preds = %bb.qi
  %i.cjs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815

bb.qs:                                            ; preds = %bb.qj
  %i.cjt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812

bb.qt:                                            ; preds = %bb.qk
  %i.cju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #30
  %i.cjv = load ptr, ptr %133, align 8, !tbaa !149 ; 2 uses
  %i.cjw = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 2 uses
  %i.cjx = icmp eq ptr %i.cjv, %i.cjw
  br i1 %i.cjx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1810: ; preds = %bb.qt
  %i.cjy = load i64, ptr %i.cjw, align 8, !tbaa !30
  %i.cjz = add i64 %i.cjy, 1
  call void @_ZdlPvm(ptr noundef %i.cjv, i64 noundef %i.cjz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812: ; preds = %bb.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1810, %bb.qs
  %.pn717 = phi { ptr, i32 } [ %i.cjt, %bb.qs ], [ %i.cju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1810 ], [ %i.cju, %bb.qt ] ; 2 uses
  %i.cka = load ptr, ptr %134, align 8, !tbaa !149 ; 2 uses
  %i.ckb = getelementptr inbounds nuw i8, ptr %134, i64 16 ; 2 uses
  %i.ckc = icmp eq ptr %i.cka, %i.ckb
  br i1 %i.ckc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1813: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812
  %i.ckd = load i64, ptr %i.ckb, align 8, !tbaa !30
  %i.cke = add i64 %i.ckd, 1
  call void @_ZdlPvm(ptr noundef %i.cka, i64 noundef %i.cke) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1813, %bb.qr
  %.pn717.pn = phi { ptr, i32 } [ %i.cjs, %bb.qr ], [ %.pn717, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1813 ], [ %.pn717, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812 ]
  %i.ckf = load ptr, ptr %135, align 8, !tbaa !149 ; 2 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 2 uses
  %i.ckh = icmp eq ptr %i.ckf, %i.ckg
  br i1 %i.ckh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1816: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815
  %i.cki = load i64, ptr %i.ckg, align 8, !tbaa !30
  %i.ckj = add i64 %i.cki, 1
  call void @_ZdlPvm(ptr noundef %i.ckf, i64 noundef %i.ckj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1816
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #30
  br label %bb.afo

bb.qu:                                            ; preds = %.critedge863
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #30
  %i.ckk = load ptr, ptr %2, align 8, !tbaa !309
end_hunk_2
begin_hunk_3_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a

bb.sd:                                            ; preds = %bb.sb
  %i.cot = atomicrmw volatile add ptr %i.con, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel: ; preds = %bb.sd, %bb.sc
  %.0.i.i.i.i.i.i1864.peel = phi i32 [ %i.coq, %bb.sc ], [ %i.cot, %bb.sd ]
  %i.cou = icmp eq i32 %.0.i.i.i.i.i.i1864.peel, 1
  br i1 %i.cou, label %bb.se, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel, !prof !270

bb.se:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.com) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel

bb.sf:                                            ; preds = %bb.sa
  store i32 0, ptr %i.con, align 8, !tbaa !261
  %i.cov = getelementptr inbounds nuw i8, ptr %i.com, i64 12
  store i32 0, ptr %i.cov, align 4, !tbaa !263
  %i.cow = load ptr, ptr %i.com, align 8, !tbaa !8
  %i.cox = getelementptr inbounds nuw i8, ptr %i.cow, i64 16
  %i.coy = load ptr, ptr %i.cox, align 8
  tail call void %i.coy(ptr noundef nonnull align 8 dereferenceable(16) %i.com) #30, !inline_history !274
  %i.coz = load ptr, ptr %i.com, align 8, !tbaa !8
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 24
  %i.cpb = load ptr, ptr %i.cpa, align 8
  tail call void %i.cpb(ptr noundef nonnull align 8 dereferenceable(16) %i.com) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel: ; preds = %bb.sf, %bb.se, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel
  store ptr %i.cof, ptr %i.cod, align 8, !tbaa !267
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel

_ZN8bitwuzla4TermaSERKS0_.exit1867.peel:          ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel
  br i1 %.0578, label %bb.si, label %bb.sg

bb.sg:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.cpc = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.cpc)
  %i.cpd = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_fpEv(ptr noundef nonnull align 8 dereferenceable(16) %153)
          to label %bb.sh unwind label %.loopexit.split-lp

bb.sh:                                            ; preds = %bb.sg
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %153) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %i.cpd, label %bb.sk, label %.loopexit2785

bb.si:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #30
  %i.cpe = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %148, ptr noundef nonnull align 8 dereferenceable(16) %i.cpe)
  %i.cpf = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_rmEv(ptr noundef nonnull align 8 dereferenceable(16) %148)
          to label %bb.sj unwind label %bb.tp

bb.sj:                                            ; preds = %bb.si
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %148) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #30
  br i1 %i.cpf, label %bb.sk, label %bb.tl

bb.sk:                                            ; preds = %bb.sh, %bb.sj
  %exitcond2782.peel.not = icmp eq i64 %i.r, 1
  br i1 %exitcond2782.peel.not, label %.critedge857, label %.lr.ph2649.peel.next

.lr.ph2649.peel.next:                             ; preds = %bb.sk
  %i.cpg = add i64 %i.p, 2                        ; 3 uses
  %i.cph = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.cpi = getelementptr inbounds nuw [152 x i8], ptr %i.cph, i64 %i.cpg ; 3 uses
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.cpi, i64 40
  %i.cpk = load i8, ptr %i.cpj, align 8, !tbaa !258
  switch i8 %i.cpk, label %.loopexit [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855
  ], !prof !278

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136: ; preds = %.lr.ph2649.peel.next
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpi, i64 24
  %i.cpm = load ptr, ptr %2, align 8, !tbaa !309  ; 2 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpm, i64 16
  %i.cpo = load ptr, ptr %i.cpl, align 8, !tbaa !271
  store ptr %i.cpo, ptr %i.cpn, align 8, !tbaa !271
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpm, i64 24 ; 3 uses
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cpi, i64 32
  %i.cpr = load ptr, ptr %i.cpq, align 8, !tbaa !267 ; 4 uses
  %i.cps = load ptr, ptr %i.cpp, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1857.peel4137 = icmp eq ptr %i.cpr, %i.cps
  br i1 %.not.i.i.i.i1857.peel4137, label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147, label %bb.sl

bb.sl:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136
  %.not7.i.i.i.i1858.peel4138 = icmp eq ptr %i.cpr, null
  br i1 %.not7.i.i.i.i1858.peel4138, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpr, i64 8 ; 3 uses
  %i.cpu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i1859.peel4139 = icmp eq i8 %i.cpu, 0
  br i1 %.not.i.i.i.i.i1859.peel4139, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.cpv = load i32, ptr %i.cpt, align 4, !tbaa !269
  %i.cpw = add nsw i32 %i.cpv, 1
  store i32 %i.cpw, ptr %i.cpt, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141

bb.so:                                            ; preds = %bb.sm
  %i.cpx = atomicrmw volatile add ptr %i.cpt, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1866.peel4140 = load ptr, ptr %i.cpp, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141: ; preds = %bb.so, %bb.sn, %bb.sl
  %i.cpy = phi ptr [ %i.cps, %bb.sl ], [ %i.cps, %bb.sn ], [ %.pr.pre.i.i.i.i1866.peel4140, %bb.so ] ; 8 uses
  %.not8.i.i.i.i1861.peel4142 = icmp eq ptr %i.cpy, null
  br i1 %.not8.i.i.i.i1861.peel4142, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146, label %bb.sp

bb.sp:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cpy, i64 8 ; 4 uses
  %i.cqa = load atomic i64, ptr %i.cpz acquire, align 8 ; 2 uses
  %i.cqb = icmp eq i64 %i.cqa, 4294967297
  %i.cqc = trunc i64 %i.cqa to i32                ; 2 uses
  br i1 %i.cqb, label %bb.su, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.cqd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1862.peel4143 = icmp eq i8 %i.cqd, 0
  br i1 %.not.i9.i.i.i.i1862.peel4143, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.cqe = add nsw i32 %i.cqc, -1
  store i32 %i.cqe, ptr %i.cpz, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144

bb.ss:                                            ; preds = %bb.sq
  %i.cqf = atomicrmw volatile add ptr %i.cpz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144: ; preds = %bb.ss, %bb.sr
  %.0.i.i.i.i.i.i1864.peel4145 = phi i32 [ %i.cqc, %bb.sr ], [ %i.cqf, %bb.ss ]
  %i.cqg = icmp eq i32 %.0.i.i.i.i.i.i1864.peel4145, 1
  br i1 %i.cqg, label %bb.st, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146, !prof !270

bb.st:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cpy) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146

bb.su:                                            ; preds = %bb.sp
  store i32 0, ptr %i.cpz, align 8, !tbaa !261
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cpy, i64 12
  store i32 0, ptr %i.cqh, align 4, !tbaa !263
  %i.cqi = load ptr, ptr %i.cpy, align 8, !tbaa !8
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqi, i64 16
  %i.cqk = load ptr, ptr %i.cqj, align 8
  call void %i.cqk(ptr noundef nonnull align 8 dereferenceable(16) %i.cpy) #30, !inline_history !274
  %i.cql = load ptr, ptr %i.cpy, align 8, !tbaa !8
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 24
  %i.cqn = load ptr, ptr %i.cqm, align 8
  call void %i.cqn(ptr noundef nonnull align 8 dereferenceable(16) %i.cpy) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146: ; preds = %bb.su, %bb.st, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141
  store ptr %i.cpr, ptr %i.cpp, align 8, !tbaa !267
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147

_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147:      ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.cqo = load ptr, ptr %2, align 8, !tbaa !309
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 16
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.cqp)
  %i.cqq = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_fpEv(ptr noundef nonnull align 8 dereferenceable(16) %153)
          to label %bb.sv unwind label %.loopexit2784.loopexit.split-lp

bb.sv:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %153) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %i.cqq, label %bb.sw, label %.loopexit2785

bb.sw:                                            ; preds = %bb.sv
  br i1 %.0578, label %bb.ta, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #30
  %i.cqr = load ptr, ptr %2, align 8, !tbaa !309
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.cqr, i64 16
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %161, ptr noundef nonnull align 8 dereferenceable(16) %i.cqs)
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #30
  %i.cqt = load ptr, ptr %2, align 8, !tbaa !309
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %162, ptr noundef nonnull align 8 dereferenceable(16) %i.cqt)
          to label %bb.sy unwind label %.loopexit.split-lp4153

bb.sy:                                            ; preds = %bb.sx
  %i.cqu = invoke noundef zeroext i1 @_ZN8bitwuzlaneERKNS_4SortES2_(ptr noundef nonnull align 8 dereferenceable(16) %161, ptr noundef nonnull align 8 dereferenceable(16) %162)
          to label %bb.sz unwind label %.loopexit.split-lp4157

bb.sz:                                            ; preds = %bb.sy
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %162) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #30
  br i1 %i.cqu, label %.loopexit2802, label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sw
  %i.cqv = add i64 %i.p, 3
  %exitcond2782.not.peel = icmp eq i64 %i.r, 2
  br i1 %exitcond2782.not.peel, label %.critedge857, label %.lr.ph2649

.lr.ph2649:                                       ; preds = %bb.ta, %bb.vd
  %.03712647 = phi i64 [ %i.daw, %bb.vd ], [ %i.cqv, %bb.ta ] ; 4 uses
  %.03722646 = phi i64 [ %i.dav, %bb.vd ], [ 2, %bb.ta ] ; 7 uses
  %i.cqw = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.cqx = getelementptr inbounds nuw [152 x i8], ptr %i.cqw, i64 %.03712647 ; 3 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 40
  %i.cqz = load i8, ptr %i.cqy, align 8, !tbaa !258
  switch i8 %i.cqz, label %.loopexit [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855
  ], !prof !278

.loopexit:                                        ; preds = %.lr.ph2649.peel.next, %.lr.ph2649, %.lr.ph2649.preheader
  %i.cra = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cra, align 8, !tbaa !8
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cra, i64 8
  store ptr @.str.202, ptr %i.crb, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.cra, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855: ; preds = %.lr.ph2649.peel.next, %.lr.ph2649, %.lr.ph2649.preheader
  %i.crc = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.crc, align 8, !tbaa !8
  %i.crd = getelementptr inbounds nuw i8, ptr %i.crc, i64 8
  store ptr @.str.201, ptr %i.crd, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.crc, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856: ; preds = %.lr.ph2649
  %i.cre = getelementptr inbounds nuw i8, ptr %i.cqx, i64 24
  %i.crf = load ptr, ptr %2, align 8, !tbaa !309
  %i.crg = getelementptr inbounds nuw [16 x i8], ptr %i.crf, i64 %.03722646 ; 2 uses
  %i.crh = load ptr, ptr %i.cre, align 8, !tbaa !271
  store ptr %i.crh, ptr %i.crg, align 8, !tbaa !271
  %i.cri = getelementptr inbounds nuw i8, ptr %i.crg, i64 8 ; 3 uses
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cqx, i64 32
  %i.crk = load ptr, ptr %i.crj, align 8, !tbaa !267 ; 4 uses
  %i.crl = load ptr, ptr %i.cri, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1857 = icmp eq ptr %i.crk, %i.crl
  br i1 %.not.i.i.i.i1857, label %_ZN8bitwuzla4TermaSERKS0_.exit1867, label %bb.tb

bb.tb:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856
  %.not7.i.i.i.i1858 = icmp eq ptr %i.crk, null
  br i1 %.not7.i.i.i.i1858, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crk, i64 8 ; 3 uses
  %i.crn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i1859 = icmp eq i8 %i.crn, 0
  br i1 %.not.i.i.i.i.i1859, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.cro = load i32, ptr %i.crm, align 4, !tbaa !269
  %i.crp = add nsw i32 %i.cro, 1
  store i32 %i.crp, ptr %i.crm, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860

bb.te:                                            ; preds = %bb.tc
  %i.crq = atomicrmw volatile add ptr %i.crm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1866 = load ptr, ptr %i.cri, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860: ; preds = %bb.te, %bb.td, %bb.tb
  %i.crr = phi ptr [ %i.crl, %bb.tb ], [ %i.crl, %bb.td ], [ %.pr.pre.i.i.i.i1866, %bb.te ] ; 8 uses
  %.not8.i.i.i.i1861 = icmp eq ptr %i.crr, null
  br i1 %.not8.i.i.i.i1861, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865, label %bb.tf

bb.tf:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crr, i64 8 ; 4 uses
  %i.crt = load atomic i64, ptr %i.crs acquire, align 8 ; 2 uses
  %i.cru = icmp eq i64 %i.crt, 4294967297
  %i.crv = trunc i64 %i.crt to i32                ; 2 uses
  br i1 %i.cru, label %bb.tg, label %bb.th

bb.tg:                                            ; preds = %bb.tf
  store i32 0, ptr %i.crs, align 8, !tbaa !261
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crr, i64 12
  store i32 0, ptr %i.crw, align 4, !tbaa !263
  %i.crx = load ptr, ptr %i.crr, align 8, !tbaa !8
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crx, i64 16
  %i.crz = load ptr, ptr %i.cry, align 8
  call void %i.crz(ptr noundef nonnull align 8 dereferenceable(16) %i.crr) #30, !inline_history !274
  %i.csa = load ptr, ptr %i.crr, align 8, !tbaa !8
  %i.csb = getelementptr inbounds nuw i8, ptr %i.csa, i64 24
  %i.csc = load ptr, ptr %i.csb, align 8
  call void %i.csc(ptr noundef nonnull align 8 dereferenceable(16) %i.crr) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865

bb.th:                                            ; preds = %bb.tf
  %i.csd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1862 = icmp eq i8 %i.csd, 0
  br i1 %.not.i9.i.i.i.i1862, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.cse = add nsw i32 %i.crv, -1
  store i32 %i.cse, ptr %i.crs, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863

bb.tj:                                            ; preds = %bb.th
  %i.csf = atomicrmw volatile add ptr %i.crs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863: ; preds = %bb.tj, %bb.ti
  %.0.i.i.i.i.i.i1864 = phi i32 [ %i.crv, %bb.ti ], [ %i.csf, %bb.tj ]
  %i.csg = icmp eq i32 %.0.i.i.i.i.i.i1864, 1
  br i1 %i.csg, label %bb.tk, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865, !prof !270

bb.tk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.crr) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865: ; preds = %bb.tk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863, %bb.tg, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860
  store ptr %i.crk, ptr %i.cri, align 8, !tbaa !267
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1867

bb.tl:                                            ; preds = %bb.sj
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %151, i32 noundef %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %150, ptr noundef nonnull @.str.173, ptr noundef nonnull align 8 dereferenceable(32) %151)
          to label %bb.tm unwind label %bb.tq

bb.tm:                                            ; preds = %bb.tl
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %149, ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull @.str.2)
          to label %bb.tn unwind label %bb.tr

bb.tn:                                            ; preds = %bb.tm
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #30
  %i.csh = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.csi = getelementptr inbounds nuw [152 x i8], ptr %i.csh, i64 %i.axc
  %i.csj = getelementptr inbounds nuw i8, ptr %i.csi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %152, ptr noundef nonnull align 8 dereferenceable(16) %i.csj, i64 16, i1 false), !tbaa.struct !255
  %i.csk = getelementptr inbounds nuw i8, ptr %152, i64 16
  store i8 1, ptr %i.csk, align 8, !tbaa !226
  %i.csl = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull align 8 dereferenceable(24) %152)
          to label %bb.to unwind label %bb.ts     ; 0 uses

bb.to:                                            ; preds = %bb.tn
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #30
  %i.csm = load ptr, ptr %149, align 8, !tbaa !149 ; 2 uses
  %i.csn = getelementptr inbounds nuw i8, ptr %149, i64 16 ; 2 uses
  %i.cso = icmp eq ptr %i.csm, %i.csn
  br i1 %i.cso, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1868

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1868: ; preds = %bb.to
  %i.csp = load i64, ptr %i.csn, align 8, !tbaa !30
  %i.csq = add i64 %i.csp, 1
  call void @_ZdlPvm(ptr noundef %i.csm, i64 noundef %i.csq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870: ; preds = %bb.to, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1868
  %i.csr = load ptr, ptr %150, align 8, !tbaa !149 ; 2 uses
  %i.css = getelementptr inbounds nuw i8, ptr %150, i64 16 ; 2 uses
  %i.cst = icmp eq ptr %i.csr, %i.css
  br i1 %i.cst, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1871

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1871: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870
  %i.csu = load i64, ptr %i.css, align 8, !tbaa !30
  %i.csv = add i64 %i.csu, 1
  call void @_ZdlPvm(ptr noundef %i.csr, i64 noundef %i.csv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1871
  %i.csw = load ptr, ptr %151, align 8, !tbaa !149 ; 2 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %151, i64 16 ; 2 uses
  %i.csy = icmp eq ptr %i.csw, %i.csx
  br i1 %i.csy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873
  %i.csz = load i64, ptr %i.csx, align 8, !tbaa !30
  %i.cta = add i64 %i.csz, 1
  call void @_ZdlPvm(ptr noundef %i.csw, i64 noundef %i.cta) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #30
  br label %.critedge

bb.tp:                                            ; preds = %bb.si
  %lpad.loopexit.split-lp2789 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %148) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #30
  br label %bb.afo

bb.tq:                                            ; preds = %bb.tl
  %i.ctb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1882

bb.tr:                                            ; preds = %bb.tm
  %i.ctc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1879

bb.ts:                                            ; preds = %bb.tn
end_hunk_3
begin_hunk_4_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  %lpad.loopexit.split-lp4154 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

.loopexit4156:                                    ; preds = %bb.uh
  %lpad.loopexit4158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.us

.loopexit.split-lp4157:                           ; preds = %bb.sy
  %lpad.loopexit.split-lp4159 = landingpad { ptr, i32 }
          cleanup
  br label %bb.us

bb.us:                                            ; preds = %.loopexit.split-lp4157, %.loopexit4156
  %lpad.phi4160 = phi { ptr, i32 } [ %lpad.loopexit4158, %.loopexit4156 ], [ %lpad.loopexit.split-lp4159, %.loopexit.split-lp4157 ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %162) #30
  br label %bb.ut

bb.ut:                                            ; preds = %.loopexit4152, %.loopexit.split-lp4153, %bb.us
  %.pn689 = phi { ptr, i32 } [ %lpad.phi4160, %bb.us ], [ %lpad.loopexit, %.loopexit4152 ], [ %lpad.loopexit.split-lp4154, %.loopexit.split-lp4153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #30
  br label %bb.afo

bb.uu:                                            ; preds = %.loopexit2802
  %i.cyt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1972

bb.uv:                                            ; preds = %bb.uj
  %i.cyu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969

bb.uw:                                            ; preds = %bb.uk
  %i.cyv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966

bb.ux:                                            ; preds = %bb.ul
  %i.cyw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963

bb.uy:                                            ; preds = %bb.um
  %i.cyx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1960

bb.uz:                                            ; preds = %bb.un
  %i.cyy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1957

bb.va:                                            ; preds = %bb.uo
  %i.cyz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1954

bb.vb:                                            ; preds = %bb.up
  %i.cza = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1951

bb.vc:                                            ; preds = %bb.uq
  %i.czb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #30
  %i.czc = load ptr, ptr %163, align 8, !tbaa !149 ; 2 uses
  %i.czd = getelementptr inbounds nuw i8, ptr %163, i64 16 ; 2 uses
  %i.cze = icmp eq ptr %i.czc, %i.czd
  br i1 %i.cze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1951, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1949

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1949: ; preds = %bb.vc
  %i.czf = load i64, ptr %i.czd, align 8, !tbaa !30
  %i.czg = add i64 %i.czf, 1
  call void @_ZdlPvm(ptr noundef %i.czc, i64 noundef %i.czg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1951

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1951: ; preds = %bb.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1949, %bb.vb
  %.pn691 = phi { ptr, i32 } [ %i.cza, %bb.vb ], [ %i.czb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1949 ], [ %i.czb, %bb.vc ] ; 2 uses
  %i.czh = load ptr, ptr %164, align 8, !tbaa !149 ; 2 uses
  %i.czi = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 2 uses
  %i.czj = icmp eq ptr %i.czh, %i.czi
  br i1 %i.czj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1954, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1952

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1952: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1951
  %i.czk = load i64, ptr %i.czi, align 8, !tbaa !30
  %i.czl = add i64 %i.czk, 1
  call void @_ZdlPvm(ptr noundef %i.czh, i64 noundef %i.czl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1954

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1954: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1951, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1952, %bb.va
  %.pn691.pn = phi { ptr, i32 } [ %i.cyz, %bb.va ], [ %.pn691, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1952 ], [ %.pn691, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1951 ] ; 2 uses
  %i.czm = load ptr, ptr %171, align 8, !tbaa !149 ; 2 uses
  %i.czn = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 2 uses
  %i.czo = icmp eq ptr %i.czm, %i.czn
  br i1 %i.czo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1957, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1955

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1955: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1954
  %i.czp = load i64, ptr %i.czn, align 8, !tbaa !30
  %i.czq = add i64 %i.czp, 1
  call void @_ZdlPvm(ptr noundef %i.czm, i64 noundef %i.czq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1957

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1957: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1954, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1955, %bb.uz
  %.pn691.pn.pn = phi { ptr, i32 } [ %i.cyy, %bb.uz ], [ %.pn691.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1955 ], [ %.pn691.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1954 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #30
  %i.czr = load ptr, ptr %165, align 8, !tbaa !149 ; 2 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %165, i64 16 ; 2 uses
  %i.czt = icmp eq ptr %i.czr, %i.czs
  br i1 %i.czt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1960, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1958

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1958: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1957
  %i.czu = load i64, ptr %i.czs, align 8, !tbaa !30
  %i.czv = add i64 %i.czu, 1
  call void @_ZdlPvm(ptr noundef %i.czr, i64 noundef %i.czv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1960

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1960: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1957, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1958, %bb.uy
  %.pn691.pn.pn.pn = phi { ptr, i32 } [ %i.cyx, %bb.uy ], [ %.pn691.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1958 ], [ %.pn691.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1957 ] ; 2 uses
  %i.czw = load ptr, ptr %166, align 8, !tbaa !149 ; 2 uses
  %i.czx = getelementptr inbounds nuw i8, ptr %166, i64 16 ; 2 uses
  %i.czy = icmp eq ptr %i.czw, %i.czx
  br i1 %i.czy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1960
  %i.czz = load i64, ptr %i.czx, align 8, !tbaa !30
  %i.daa = add i64 %i.czz, 1
  call void @_ZdlPvm(ptr noundef %i.czw, i64 noundef %i.daa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1960, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961, %bb.ux
  %.pn691.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cyw, %bb.ux ], [ %.pn691.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961 ], [ %.pn691.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1960 ] ; 2 uses
  %i.dab = load ptr, ptr %170, align 8, !tbaa !149 ; 2 uses
  %i.dac = getelementptr inbounds nuw i8, ptr %170, i64 16 ; 2 uses
  %i.dad = icmp eq ptr %i.dab, %i.dac
  br i1 %i.dad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963
  %i.dae = load i64, ptr %i.dac, align 8, !tbaa !30
  %i.daf = add i64 %i.dae, 1
  call void @_ZdlPvm(ptr noundef %i.dab, i64 noundef %i.daf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964, %bb.uw
  %.pn691.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cyv, %bb.uw ], [ %.pn691.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964 ], [ %.pn691.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #30
  %i.dag = load ptr, ptr %167, align 8, !tbaa !149 ; 2 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %167, i64 16 ; 2 uses
  %i.dai = icmp eq ptr %i.dag, %i.dah
  br i1 %i.dai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1967

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1967: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966
  %i.daj = load i64, ptr %i.dah, align 8, !tbaa !30
  %i.dak = add i64 %i.daj, 1
  call void @_ZdlPvm(ptr noundef %i.dag, i64 noundef %i.dak) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1967, %bb.uv
  %.pn691.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cyu, %bb.uv ], [ %.pn691.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1967 ], [ %.pn691.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966 ] ; 2 uses
  %i.dal = load ptr, ptr %168, align 8, !tbaa !149 ; 2 uses
  %i.dam = getelementptr inbounds nuw i8, ptr %168, i64 16 ; 2 uses
  %i.dan = icmp eq ptr %i.dal, %i.dam
  br i1 %i.dan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1972, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1970: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969
  %i.dao = load i64, ptr %i.dam, align 8, !tbaa !30
  %i.dap = add i64 %i.dao, 1
  call void @_ZdlPvm(ptr noundef %i.dal, i64 noundef %i.dap) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1972

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1972: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1970, %bb.uu
  %.pn691.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cyt, %bb.uu ], [ %.pn691.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1970 ], [ %.pn691.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1969 ]
  %i.daq = load ptr, ptr %169, align 8, !tbaa !149 ; 2 uses
  %i.dar = getelementptr inbounds nuw i8, ptr %169, i64 16 ; 2 uses
  %i.das = icmp eq ptr %i.daq, %i.dar
  br i1 %i.das, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1975, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1973

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1973: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1972
  %i.dat = load i64, ptr %i.dar, align 8, !tbaa !30
  %i.dau = add i64 %i.dat, 1
  call void @_ZdlPvm(ptr noundef %i.daq, i64 noundef %i.dau) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1975

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1975: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1972, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1973
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #30
  br label %bb.afo

bb.vd:                                            ; preds = %bb.ui
  %i.dav = add nuw i64 %.03722646, 1              ; 2 uses
  %i.daw = add i64 %.03712647, 1
  %exitcond2782.not = icmp eq i64 %i.dav, %i.r
  br i1 %exitcond2782.not, label %.critedge857, label %.lr.ph2649, !llvm.loop !882

bb.ve:                                            ; preds = %.critedge855, %.critedge855
  %i.dax = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.axc)
  %i.day = load ptr, ptr %2, align 8, !tbaa !309
  %i.daz = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.day, ptr noundef nonnull align 8 dereferenceable(16) %i.dax) #30 ; 0 uses
  %i.dba = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dbb = load ptr, ptr %i.dba, align 8, !tbaa !663
  %i.dbc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dbd = load ptr, ptr %i.dbc, align 8, !tbaa !663
  %i.dbe = icmp eq ptr %i.dbb, %i.dbd
  %i.dbf = icmp eq i64 %i.r, 1
  %or.cond24 = and i1 %i.dbf, %i.dbe
  br i1 %or.cond24, label %bb.vf, label %bb.vp

bb.vf:                                            ; preds = %bb.ve
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #30
  %i.dbg = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %173, ptr noundef nonnull align 8 dereferenceable(16) %i.dbg)
  %i.dbh = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_bvEv(ptr noundef nonnull align 8 dereferenceable(16) %173)
          to label %bb.vg unwind label %bb.vl

bb.vg:                                            ; preds = %bb.vf
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %173) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #30
  br i1 %i.dbh, label %.critedge857, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %176, i32 noundef %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %175, ptr noundef nonnull @.str.175, ptr noundef nonnull align 8 dereferenceable(32) %176)
          to label %bb.vi unwind label %bb.vm

bb.vi:                                            ; preds = %bb.vh
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %174, ptr noundef nonnull align 8 dereferenceable(32) %175, ptr noundef nonnull @.str.2)
          to label %bb.vj unwind label %bb.vn

bb.vj:                                            ; preds = %bb.vi
  call void @llvm.lifetime.start.p0(ptr nonnull %177) #30
  %i.dbi = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.dbj = getelementptr inbounds nuw [152 x i8], ptr %i.dbi, i64 %i.axc
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %177, ptr noundef nonnull align 8 dereferenceable(16) %i.dbk, i64 16, i1 false), !tbaa.struct !255
  %i.dbl = getelementptr inbounds nuw i8, ptr %177, i64 16
  store i8 1, ptr %i.dbl, align 8, !tbaa !226
  %i.dbm = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %174, ptr noundef nonnull align 8 dereferenceable(24) %177)
          to label %bb.vk unwind label %bb.vo     ; 0 uses

bb.vk:                                            ; preds = %bb.vj
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #30
  %i.dbn = load ptr, ptr %174, align 8, !tbaa !149 ; 2 uses
  %i.dbo = getelementptr inbounds nuw i8, ptr %174, i64 16 ; 2 uses
  %i.dbp = icmp eq ptr %i.dbn, %i.dbo
  br i1 %i.dbp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1978, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1976

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1976: ; preds = %bb.vk
  %i.dbq = load i64, ptr %i.dbo, align 8, !tbaa !30
  %i.dbr = add i64 %i.dbq, 1
  call void @_ZdlPvm(ptr noundef %i.dbn, i64 noundef %i.dbr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1978

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1978: ; preds = %bb.vk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1976
  %i.dbs = load ptr, ptr %175, align 8, !tbaa !149 ; 2 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 2 uses
  %i.dbu = icmp eq ptr %i.dbs, %i.dbt
  br i1 %i.dbu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1981, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1979

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1979: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1978
  %i.dbv = load i64, ptr %i.dbt, align 8, !tbaa !30
  %i.dbw = add i64 %i.dbv, 1
  call void @_ZdlPvm(ptr noundef %i.dbs, i64 noundef %i.dbw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1981

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1981: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1978, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1979
  %i.dbx = load ptr, ptr %176, align 8, !tbaa !149 ; 2 uses
  %i.dby = getelementptr inbounds nuw i8, ptr %176, i64 16 ; 2 uses
  %i.dbz = icmp eq ptr %i.dbx, %i.dby
  br i1 %i.dbz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1984, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1982

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1982: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1981
  %i.dca = load i64, ptr %i.dby, align 8, !tbaa !30
  %i.dcb = add i64 %i.dca, 1
  call void @_ZdlPvm(ptr noundef %i.dbx, i64 noundef %i.dcb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1984

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1984: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1981, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1982
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #30
  br label %.critedge

bb.vl:                                            ; preds = %bb.vf
  %i.dcc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %173) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #30
  br label %bb.afo

bb.vm:                                            ; preds = %bb.vh
  %i.dcd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1990

bb.vn:                                            ; preds = %bb.vi
  %i.dce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1987

bb.vo:                                            ; preds = %bb.vj
  %i.dcf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #30
  %i.dcg = load ptr, ptr %174, align 8, !tbaa !149 ; 2 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %174, i64 16 ; 2 uses
  %i.dci = icmp eq ptr %i.dcg, %i.dch
  br i1 %i.dci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1987, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1985

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1985: ; preds = %bb.vo
  %i.dcj = load i64, ptr %i.dch, align 8, !tbaa !30
  %i.dck = add i64 %i.dcj, 1
  call void @_ZdlPvm(ptr noundef %i.dcg, i64 noundef %i.dck) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1987

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1987: ; preds = %bb.vo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1985, %bb.vn
  %.pn679 = phi { ptr, i32 } [ %i.dce, %bb.vn ], [ %i.dcf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1985 ], [ %i.dcf, %bb.vo ] ; 2 uses
  %i.dcl = load ptr, ptr %175, align 8, !tbaa !149 ; 2 uses
  %i.dcm = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 2 uses
  %i.dcn = icmp eq ptr %i.dcl, %i.dcm
  br i1 %i.dcn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1990, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1988

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1988: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1987
  %i.dco = load i64, ptr %i.dcm, align 8, !tbaa !30
  %i.dcp = add i64 %i.dco, 1
  call void @_ZdlPvm(ptr noundef %i.dcl, i64 noundef %i.dcp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1990

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1990: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1987, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1988, %bb.vm
  %.pn679.pn = phi { ptr, i32 } [ %i.dcd, %bb.vm ], [ %.pn679, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1988 ], [ %.pn679, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1987 ]
  %i.dcq = load ptr, ptr %176, align 8, !tbaa !149 ; 2 uses
  %i.dcr = getelementptr inbounds nuw i8, ptr %176, i64 16 ; 2 uses
  %i.dcs = icmp eq ptr %i.dcq, %i.dcr
  br i1 %i.dcs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1993, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1991

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1991: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1990
  %i.dct = load i64, ptr %i.dcr, align 8, !tbaa !30
  %i.dcu = add i64 %i.dct, 1
  call void @_ZdlPvm(ptr noundef %i.dcq, i64 noundef %i.dcu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1993

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1993: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1990, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1991
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #30
  br label %bb.afo

bb.vp:                                            ; preds = %bb.ve
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #30
  %i.dcv = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %178, ptr noundef nonnull align 8 dereferenceable(16) %i.dcv)
  %i.dcw = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_rmEv(ptr noundef nonnull align 8 dereferenceable(16) %178)
          to label %bb.vq unwind label %bb.vv

bb.vq:                                            ; preds = %bb.vp
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %178) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #30
  br i1 %i.dcw, label %bb.vz, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  call void @llvm.lifetime.start.p0(ptr nonnull %179) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %181, i32 noundef %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %180, ptr noundef nonnull @.str.173, ptr noundef nonnull align 8 dereferenceable(32) %181)
          to label %bb.vs unwind label %bb.vw

bb.vs:                                            ; preds = %bb.vr
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %179, ptr noundef nonnull align 8 dereferenceable(32) %180, ptr noundef nonnull @.str.2)
          to label %bb.vt unwind label %bb.vx

bb.vt:                                            ; preds = %bb.vs
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #30
  %i.dcx = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.dcy = getelementptr inbounds nuw [152 x i8], ptr %i.dcx, i64 %i.axc
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %182, ptr noundef nonnull align 8 dereferenceable(16) %i.dcz, i64 16, i1 false), !tbaa.struct !255
  %i.dda = getelementptr inbounds nuw i8, ptr %182, i64 16
  store i8 1, ptr %i.dda, align 8, !tbaa !226
  %i.ddb = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %179, ptr noundef nonnull align 8 dereferenceable(24) %182)
          to label %bb.vu unwind label %bb.vy     ; 0 uses

bb.vu:                                            ; preds = %bb.vt
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #30
  %i.ddc = load ptr, ptr %179, align 8, !tbaa !149 ; 2 uses
  %i.ddd = getelementptr inbounds nuw i8, ptr %179, i64 16 ; 2 uses
  %i.dde = icmp eq ptr %i.ddc, %i.ddd
  br i1 %i.dde, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1996, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1994: ; preds = %bb.vu
  %i.ddf = load i64, ptr %i.ddd, align 8, !tbaa !30
end_hunk_4
begin_hunk_5_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  %i.dfr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %184) #30
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wj, %bb.wk
  %.pn670 = phi { ptr, i32 } [ %i.dfr, %bb.wk ], [ %i.dfq, %bb.wj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #30
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wl, %bb.wi
  %.pn670.pn = phi { ptr, i32 } [ %.pn670, %bb.wl ], [ %i.dfp, %bb.wi ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %183) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #30
  br label %bb.afo

bb.wn:                                            ; preds = %bb.we
  %i.dfs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027

bb.wo:                                            ; preds = %bb.wf
  %i.dft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024

bb.wp:                                            ; preds = %bb.wg
  %i.dfu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dfv = load ptr, ptr %185, align 8, !tbaa !149 ; 2 uses
  %i.dfw = getelementptr inbounds nuw i8, ptr %185, i64 16 ; 2 uses
  %i.dfx = icmp eq ptr %i.dfv, %i.dfw
  br i1 %i.dfx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2022

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2022: ; preds = %bb.wp
  %i.dfy = load i64, ptr %i.dfw, align 8, !tbaa !30
  %i.dfz = add i64 %i.dfy, 1
  call void @_ZdlPvm(ptr noundef %i.dfv, i64 noundef %i.dfz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024: ; preds = %bb.wp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2022, %bb.wo
  %.pn673 = phi { ptr, i32 } [ %i.dft, %bb.wo ], [ %i.dfu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2022 ], [ %i.dfu, %bb.wp ] ; 2 uses
  %i.dga = load ptr, ptr %186, align 8, !tbaa !149 ; 2 uses
  %i.dgb = getelementptr inbounds nuw i8, ptr %186, i64 16 ; 2 uses
  %i.dgc = icmp eq ptr %i.dga, %i.dgb
  br i1 %i.dgc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2025

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2025: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024
  %i.dgd = load i64, ptr %i.dgb, align 8, !tbaa !30
  %i.dge = add i64 %i.dgd, 1
  call void @_ZdlPvm(ptr noundef %i.dga, i64 noundef %i.dge) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2025, %bb.wn
  %.pn673.pn = phi { ptr, i32 } [ %i.dfs, %bb.wn ], [ %.pn673, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2025 ], [ %.pn673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024 ]
  %i.dgf = load ptr, ptr %187, align 8, !tbaa !149 ; 2 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %187, i64 16 ; 2 uses
  %i.dgh = icmp eq ptr %i.dgf, %i.dgg
  br i1 %i.dgh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2028

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2028: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027
  %i.dgi = load i64, ptr %i.dgg, align 8, !tbaa !30
  %i.dgj = add i64 %i.dgi, 1
  call void @_ZdlPvm(ptr noundef %i.dgf, i64 noundef %i.dgj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2028
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #30
  br label %bb.afo

._crit_edge:                                      ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit2043, %.preheader
  %i.dgk = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.axc)
  %i.dgl = load ptr, ptr %2, align 8, !tbaa !309
  %i.dgm = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dgl, ptr noundef nonnull align 8 dereferenceable(16) %i.dgk) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #30
  %i.dgn = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %188, ptr noundef nonnull align 8 dereferenceable(16) %i.dgn)
  %i.dgo = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort6is_funEv(ptr noundef nonnull align 8 dereferenceable(16) %188)
          to label %bb.xb unwind label %bb.xg

.lr.ph2640:                                       ; preds = %.preheader, %_ZN8bitwuzla4TermaSERKS0_.exit2043
  %.03672639 = phi i64 [ %i.dib, %_ZN8bitwuzla4TermaSERKS0_.exit2043 ], [ %i.axc, %.preheader ] ; 2 uses
  %.03682638 = phi i64 [ %i.dia, %_ZN8bitwuzla4TermaSERKS0_.exit2043 ], [ 0, %.preheader ] ; 2 uses
  %i.dgp = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.dgq = getelementptr inbounds nuw [152 x i8], ptr %i.dgp, i64 %.03672639 ; 3 uses
  %i.dgr = getelementptr inbounds nuw i8, ptr %i.dgq, i64 40
  %i.dgs = load i8, ptr %i.dgr, align 8, !tbaa !258
  switch i8 %i.dgs, label %bb.wq [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit2032
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i2031
  ], !prof !278

bb.wq:                                            ; preds = %.lr.ph2640
  %i.dgt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.dgt, align 8, !tbaa !8
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgt, i64 8
  store ptr @.str.202, ptr %i.dgu, align 8, !tbaa !279
  tail call void @__cxa_throw(ptr nonnull %i.dgt, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i2031: ; preds = %.lr.ph2640
  %i.dgv = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.dgv, align 8, !tbaa !8
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dgv, i64 8
  store ptr @.str.201, ptr %i.dgw, align 8, !tbaa !279
  tail call void @__cxa_throw(ptr nonnull %i.dgv, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit2032: ; preds = %.lr.ph2640
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dgq, i64 24
  %i.dgy = load ptr, ptr %2, align 8, !tbaa !309
  %i.dgz = getelementptr inbounds nuw [16 x i8], ptr %i.dgy, i64 %.03682638 ; 2 uses
  %i.dha = load ptr, ptr %i.dgx, align 8, !tbaa !271
  store ptr %i.dha, ptr %i.dgz, align 8, !tbaa !271
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dgz, i64 8 ; 3 uses
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgq, i64 32
  %i.dhd = load ptr, ptr %i.dhc, align 8, !tbaa !267 ; 4 uses
  %i.dhe = load ptr, ptr %i.dhb, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i2033 = icmp eq ptr %i.dhd, %i.dhe
  br i1 %.not.i.i.i.i2033, label %_ZN8bitwuzla4TermaSERKS0_.exit2043, label %bb.wr

bb.wr:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit2032
  %.not7.i.i.i.i2034 = icmp eq ptr %i.dhd, null
  br i1 %.not7.i.i.i.i2034, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2036, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dhd, i64 8 ; 3 uses
  %i.dhg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i2035 = icmp eq i8 %i.dhg, 0
  br i1 %.not.i.i.i.i.i2035, label %bb.wu, label %bb.wt

bb.wt:                                            ; preds = %bb.ws
  %i.dhh = load i32, ptr %i.dhf, align 4, !tbaa !269
  %i.dhi = add nsw i32 %i.dhh, 1
  store i32 %i.dhi, ptr %i.dhf, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2036

bb.wu:                                            ; preds = %bb.ws
  %i.dhj = atomicrmw volatile add ptr %i.dhf, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i2042 = load ptr, ptr %i.dhb, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2036

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2036: ; preds = %bb.wu, %bb.wt, %bb.wr
  %i.dhk = phi ptr [ %i.dhe, %bb.wr ], [ %i.dhe, %bb.wt ], [ %.pr.pre.i.i.i.i2042, %bb.wu ] ; 8 uses
  %.not8.i.i.i.i2037 = icmp eq ptr %i.dhk, null
  br i1 %.not8.i.i.i.i2037, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2041, label %bb.wv

bb.wv:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2036
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.dhk, i64 8 ; 4 uses
  %i.dhm = load atomic i64, ptr %i.dhl acquire, align 8 ; 2 uses
  %i.dhn = icmp eq i64 %i.dhm, 4294967297
  %i.dho = trunc i64 %i.dhm to i32                ; 2 uses
  br i1 %i.dhn, label %bb.ww, label %bb.wx

bb.ww:                                            ; preds = %bb.wv
  store i32 0, ptr %i.dhl, align 8, !tbaa !261
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dhk, i64 12
  store i32 0, ptr %i.dhp, align 4, !tbaa !263
  %i.dhq = load ptr, ptr %i.dhk, align 8, !tbaa !8
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhq, i64 16
  %i.dhs = load ptr, ptr %i.dhr, align 8
  tail call void %i.dhs(ptr noundef nonnull align 8 dereferenceable(16) %i.dhk) #30, !inline_history !274
  %i.dht = load ptr, ptr %i.dhk, align 8, !tbaa !8
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 24
  %i.dhv = load ptr, ptr %i.dhu, align 8
  tail call void %i.dhv(ptr noundef nonnull align 8 dereferenceable(16) %i.dhk) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2041

bb.wx:                                            ; preds = %bb.wv
  %i.dhw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i2038 = icmp eq i8 %i.dhw, 0
  br i1 %.not.i9.i.i.i.i2038, label %bb.wz, label %bb.wy

bb.wy:                                            ; preds = %bb.wx
  %i.dhx = add nsw i32 %i.dho, -1
  store i32 %i.dhx, ptr %i.dhl, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2039

bb.wz:                                            ; preds = %bb.wx
  %i.dhy = atomicrmw volatile add ptr %i.dhl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2039

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2039: ; preds = %bb.wz, %bb.wy
  %.0.i.i.i.i.i.i2040 = phi i32 [ %i.dho, %bb.wy ], [ %i.dhy, %bb.wz ]
  %i.dhz = icmp eq i32 %.0.i.i.i.i.i.i2040, 1
  br i1 %i.dhz, label %bb.xa, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2041, !prof !270

bb.xa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2039
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dhk) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2041

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2041: ; preds = %bb.xa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i2039, %bb.ww, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i2036
  store ptr %i.dhd, ptr %i.dhb, align 8, !tbaa !267
  br label %_ZN8bitwuzla4TermaSERKS0_.exit2043

_ZN8bitwuzla4TermaSERKS0_.exit2043:               ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit2032, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i2041
  %i.dia = add nuw i64 %.03682638, 1              ; 2 uses
  %i.dib = add i64 %.03672639, 1
  %exitcond2780.not = icmp eq i64 %i.dia, %i.r
  br i1 %exitcond2780.not, label %._crit_edge, label %.lr.ph2640, !llvm.loop !884

bb.xb:                                            ; preds = %._crit_edge
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %188) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #30
  br i1 %i.dgo, label %bb.xk, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #30
  %i.dic = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term3strB5cxx11Eh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %191, ptr noundef nonnull align 8 dereferenceable(16) %i.dic, i8 noundef zeroext 2)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %190, ptr noundef nonnull @.str.177, ptr noundef nonnull align 8 dereferenceable(32) %191)
          to label %bb.xd unwind label %bb.xh

bb.xd:                                            ; preds = %bb.xc
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %189, ptr noundef nonnull align 8 dereferenceable(32) %190, ptr noundef nonnull @.str.178)
          to label %bb.xe unwind label %bb.xi

bb.xe:                                            ; preds = %bb.xd
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #30
  %i.did = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.die = getelementptr inbounds nuw [152 x i8], ptr %i.did, i64 %i.axc
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %192, ptr noundef nonnull align 8 dereferenceable(16) %i.dif, i64 16, i1 false), !tbaa.struct !255
  %i.dig = getelementptr inbounds nuw i8, ptr %192, i64 16
  store i8 1, ptr %i.dig, align 8, !tbaa !226
  %i.dih = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %189, ptr noundef nonnull align 8 dereferenceable(24) %192)
          to label %bb.xf unwind label %bb.xj     ; 0 uses

bb.xf:                                            ; preds = %bb.xe
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #30
  %i.dii = load ptr, ptr %189, align 8, !tbaa !149 ; 2 uses
  %i.dij = getelementptr inbounds nuw i8, ptr %189, i64 16 ; 2 uses
  %i.dik = icmp eq ptr %i.dii, %i.dij
  br i1 %i.dik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2046, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2044

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2044: ; preds = %bb.xf
  %i.dil = load i64, ptr %i.dij, align 8, !tbaa !30
  %i.dim = add i64 %i.dil, 1
  call void @_ZdlPvm(ptr noundef %i.dii, i64 noundef %i.dim) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2046

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2046: ; preds = %bb.xf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2044
  %i.din = load ptr, ptr %190, align 8, !tbaa !149 ; 2 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %190, i64 16 ; 2 uses
  %i.dip = icmp eq ptr %i.din, %i.dio
  br i1 %i.dip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2049, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2047

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2047: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2046
  %i.diq = load i64, ptr %i.dio, align 8, !tbaa !30
  %i.dir = add i64 %i.diq, 1
  call void @_ZdlPvm(ptr noundef %i.din, i64 noundef %i.dir) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2049

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2049: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2046, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2047
  %i.dis = load ptr, ptr %191, align 8, !tbaa !149 ; 2 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %191, i64 16 ; 2 uses
  %i.diu = icmp eq ptr %i.dis, %i.dit
  br i1 %i.diu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2052, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2050

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2050: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2049
  %i.div = load i64, ptr %i.dit, align 8, !tbaa !30
  %i.diw = add i64 %i.div, 1
  call void @_ZdlPvm(ptr noundef %i.dis, i64 noundef %i.diw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2052

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2052: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2049, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2050
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #30
  br label %.critedge

bb.xg:                                            ; preds = %._crit_edge
  %i.dix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %188) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #30
  br label %bb.afo

bb.xh:                                            ; preds = %bb.xc
  %i.diy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2058

bb.xi:                                            ; preds = %bb.xd
  %i.diz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2055

bb.xj:                                            ; preds = %bb.xe
  %i.dja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #30
  %i.djb = load ptr, ptr %189, align 8, !tbaa !149 ; 2 uses
  %i.djc = getelementptr inbounds nuw i8, ptr %189, i64 16 ; 2 uses
  %i.djd = icmp eq ptr %i.djb, %i.djc
  br i1 %i.djd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2055, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2053

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2053: ; preds = %bb.xj
  %i.dje = load i64, ptr %i.djc, align 8, !tbaa !30
  %i.djf = add i64 %i.dje, 1
  call void @_ZdlPvm(ptr noundef %i.djb, i64 noundef %i.djf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2055

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2055: ; preds = %bb.xj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2053, %bb.xi
  %.pn667 = phi { ptr, i32 } [ %i.diz, %bb.xi ], [ %i.dja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2053 ], [ %i.dja, %bb.xj ] ; 2 uses
  %i.djg = load ptr, ptr %190, align 8, !tbaa !149 ; 2 uses
  %i.djh = getelementptr inbounds nuw i8, ptr %190, i64 16 ; 2 uses
  %i.dji = icmp eq ptr %i.djg, %i.djh
  br i1 %i.dji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2058, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2056

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2056: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2055
  %i.djj = load i64, ptr %i.djh, align 8, !tbaa !30
  %i.djk = add i64 %i.djj, 1
  call void @_ZdlPvm(ptr noundef %i.djg, i64 noundef %i.djk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2058

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2058: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2055, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2056, %bb.xh
  %.pn667.pn = phi { ptr, i32 } [ %i.diy, %bb.xh ], [ %.pn667, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2056 ], [ %.pn667, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2055 ]
  %i.djl = load ptr, ptr %191, align 8, !tbaa !149 ; 2 uses
  %i.djm = getelementptr inbounds nuw i8, ptr %191, i64 16 ; 2 uses
  %i.djn = icmp eq ptr %i.djl, %i.djm
  br i1 %i.djn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2061, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2059

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2059: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2058
  %i.djo = load i64, ptr %i.djm, align 8, !tbaa !30
  %i.djp = add i64 %i.djo, 1
  call void @_ZdlPvm(ptr noundef %i.djl, i64 noundef %i.djp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2061

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2061: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2058, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2059
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #30
  br label %bb.afo

bb.xk:                                            ; preds = %bb.xb
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #30
  %i.djq = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %193, ptr noundef nonnull align 8 dereferenceable(16) %i.djq)
  %i.djr = invoke noundef i64 @_ZNK8bitwuzla4Sort9fun_arityEv(ptr noundef nonnull align 8 dereferenceable(16) %193)
          to label %bb.xl unwind label %bb.xu     ; 2 uses

bb.xl:                                            ; preds = %bb.xk
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %193) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #30
  %i.djs = add i64 %i.r, -1                       ; 4 uses
  %.not645 = icmp eq i64 %i.djs, %i.djr
  br i1 %.not645, label %bb.yd, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #30
  call void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %199, i64 noundef %i.djr)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %198, ptr noundef nonnull @.str.152, ptr noundef nonnull align 8 dereferenceable(32) %199)
          to label %bb.xn unwind label %bb.xv

bb.xn:                                            ; preds = %bb.xm
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %197, ptr noundef nonnull align 8 dereferenceable(32) %198, ptr noundef nonnull @.str.179)
          to label %bb.xo unwind label %bb.xw

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #30
  invoke void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %200, i32 noundef 9)
          to label %bb.xp unwind label %bb.xx

bb.xp:                                            ; preds = %bb.xo
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %196, ptr noundef nonnull align 8 dereferenceable(32) %197, ptr noundef nonnull align 8 dereferenceable(32) %200)
          to label %bb.xq unwind label %bb.xy

bb.xq:                                            ; preds = %bb.xp
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %195, ptr noundef nonnull align 8 dereferenceable(32) %196, ptr noundef nonnull @.str.125)
          to label %bb.xr unwind label %bb.xz

bb.xr:                                            ; preds = %bb.xq
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #30
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %201, i64 noundef %i.djs)
          to label %bb.xs unwind label %bb.ya

bb.xs:                                            ; preds = %bb.xr
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %194, ptr noundef nonnull align 8 dereferenceable(32) %195, ptr noundef nonnull align 8 dereferenceable(32) %201)
          to label %bb.xt unwind label %bb.yb

bb.xt:                                            ; preds = %bb.xs
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #30
  %i.djt = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %202, ptr noundef nonnull align 8 dereferenceable(16) %i.djt, i64 16, i1 false), !tbaa.struct !255
  %i.dju = getelementptr inbounds nuw i8, ptr %202, i64 16
  store i8 1, ptr %i.dju, align 8, !tbaa !226
  %i.djv = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %194, ptr noundef nonnull align 8 dereferenceable(24) %202)
          to label %.critedge872 unwind label %bb.yc ; 0 uses

.critedge872:                                     ; preds = %bb.xt
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #30
  %i.djw = load ptr, ptr %194, align 8, !tbaa !149 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
bb.zy:                                            ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #30
  %i.dss = load ptr, ptr %2, align 8, !tbaa !309
  %i.dst = getelementptr inbounds nuw [16 x i8], ptr %i.dss, i64 %.03632636
  call void @_ZNK8bitwuzla4Term3strB5cxx11Eh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %217, ptr noundef nonnull align 8 dereferenceable(16) %i.dst, i8 noundef zeroext 2)
  invoke void @_ZN4bzla6parser4smt211SymbolTable6removeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.dqj, ptr noundef nonnull align 8 dereferenceable(32) %217)
          to label %bb.zz unwind label %bb.aaa

bb.zz:                                            ; preds = %bb.zy
  %i.dsu = load ptr, ptr %217, align 8, !tbaa !149 ; 2 uses
  %i.dsv = icmp eq ptr %i.dsu, %i.dqk
  br i1 %i.dsv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2159: ; preds = %bb.zz
  %i.dsw = load i64, ptr %i.dqk, align 8, !tbaa !30
  %i.dsx = add i64 %i.dsw, 1
  call void @_ZdlPvm(ptr noundef %i.dsu, i64 noundef %i.dsx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161: ; preds = %bb.zz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2159
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #30
  %i.dsy = add i64 %.03632636, 1
  br label %bb.aan

bb.aaa:                                           ; preds = %bb.zy
  %i.dsz = landingpad { ptr, i32 }
          cleanup
  %i.dta = load ptr, ptr %217, align 8, !tbaa !149 ; 2 uses
  %i.dtb = icmp eq ptr %i.dta, %i.dqk
  br i1 %i.dtb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162: ; preds = %bb.aaa
  %i.dtc = load i64, ptr %i.dqk, align 8, !tbaa !30
  %i.dtd = add i64 %i.dtc, 1
  call void @_ZdlPvm(ptr noundef %i.dta, i64 noundef %i.dtd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164: ; preds = %bb.aaa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #30
  br label %bb.afo

bb.aab:                                           ; preds = %bb.ze
  %i.dte = icmp eq i64 %.03652634, %i.dqi
  br i1 %i.dte, label %bb.aac, label %bb.aan

bb.aac:                                           ; preds = %bb.aab
  %i.dtf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %.03642635)
  %i.dtg = load ptr, ptr %2, align 8, !tbaa !309
  %i.dth = getelementptr inbounds nuw [16 x i8], ptr %i.dtg, i64 %.03632636
  %i.dti = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dth, ptr noundef nonnull align 8 dereferenceable(16) %i.dtf) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #30
  %i.dtj = load ptr, ptr %2, align 8, !tbaa !309
  %i.dtk = getelementptr inbounds nuw [16 x i8], ptr %i.dtj, i64 %.03632636
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %218, ptr noundef nonnull align 8 dereferenceable(16) %i.dtk)
  %i.dtl = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort7is_boolEv(ptr noundef nonnull align 8 dereferenceable(16) %218)
          to label %bb.aad unwind label %bb.aai

bb.aad:                                           ; preds = %bb.aac
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %218) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #30
  br i1 %i.dtl, label %bb.aam, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %221, i32 noundef %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %220, ptr noundef nonnull @.str.181, ptr noundef nonnull align 8 dereferenceable(32) %221)
          to label %bb.aaf unwind label %bb.aaj

bb.aaf:                                           ; preds = %bb.aae
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %219, ptr noundef nonnull align 8 dereferenceable(32) %220, ptr noundef nonnull @.str.2)
          to label %bb.aag unwind label %bb.aak

bb.aag:                                           ; preds = %bb.aaf
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #30
  %i.dtm = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.dtn = getelementptr inbounds nuw [152 x i8], ptr %i.dtm, i64 %.03642635
  %i.dto = getelementptr inbounds nuw i8, ptr %i.dtn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %222, ptr noundef nonnull align 8 dereferenceable(16) %i.dto, i64 16, i1 false), !tbaa.struct !255
  %i.dtp = getelementptr inbounds nuw i8, ptr %222, i64 16
  store i8 1, ptr %i.dtp, align 8, !tbaa !226
  %i.dtq = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %219, ptr noundef nonnull align 8 dereferenceable(24) %222)
          to label %bb.aah unwind label %bb.aal   ; 0 uses

bb.aah:                                           ; preds = %bb.aag
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #30
  %i.dtr = load ptr, ptr %219, align 8, !tbaa !149 ; 2 uses
  %i.dts = getelementptr inbounds nuw i8, ptr %219, i64 16 ; 2 uses
  %i.dtt = icmp eq ptr %i.dtr, %i.dts
  br i1 %i.dtt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165: ; preds = %bb.aah
  %i.dtu = load i64, ptr %i.dts, align 8, !tbaa !30
  %i.dtv = add i64 %i.dtu, 1
  call void @_ZdlPvm(ptr noundef %i.dtr, i64 noundef %i.dtv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167: ; preds = %bb.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165
  %i.dtw = load ptr, ptr %220, align 8, !tbaa !149 ; 2 uses
  %i.dtx = getelementptr inbounds nuw i8, ptr %220, i64 16 ; 2 uses
  %i.dty = icmp eq ptr %i.dtw, %i.dtx
  br i1 %i.dty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167
  %i.dtz = load i64, ptr %i.dtx, align 8, !tbaa !30
  %i.dua = add i64 %i.dtz, 1
  call void @_ZdlPvm(ptr noundef %i.dtw, i64 noundef %i.dua) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2168
  %i.dub = load ptr, ptr %221, align 8, !tbaa !149 ; 2 uses
  %i.duc = getelementptr inbounds nuw i8, ptr %221, i64 16 ; 2 uses
  %i.dud = icmp eq ptr %i.dub, %i.duc
  br i1 %i.dud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170
  %i.due = load i64, ptr %i.duc, align 8, !tbaa !30
  %i.duf = add i64 %i.due, 1
  call void @_ZdlPvm(ptr noundef %i.dub, i64 noundef %i.duf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2171
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #30
  br label %.critedge

bb.aai:                                           ; preds = %bb.aac
  %i.dug = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %218) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #30
  br label %bb.afo

bb.aaj:                                           ; preds = %bb.aae
  %i.duh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179

bb.aak:                                           ; preds = %bb.aaf
  %i.dui = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176

bb.aal:                                           ; preds = %bb.aag
  %i.duj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #30
  %i.duk = load ptr, ptr %219, align 8, !tbaa !149 ; 2 uses
  %i.dul = getelementptr inbounds nuw i8, ptr %219, i64 16 ; 2 uses
  %i.dum = icmp eq ptr %i.duk, %i.dul
  br i1 %i.dum, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174: ; preds = %bb.aal
  %i.dun = load i64, ptr %i.dul, align 8, !tbaa !30
  %i.duo = add i64 %i.dun, 1
  call void @_ZdlPvm(ptr noundef %i.duk, i64 noundef %i.duo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176: ; preds = %bb.aal, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174, %bb.aak
  %.pn638 = phi { ptr, i32 } [ %i.dui, %bb.aak ], [ %i.duj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174 ], [ %i.duj, %bb.aal ] ; 2 uses
  %i.dup = load ptr, ptr %220, align 8, !tbaa !149 ; 2 uses
  %i.duq = getelementptr inbounds nuw i8, ptr %220, i64 16 ; 2 uses
  %i.dur = icmp eq ptr %i.dup, %i.duq
  br i1 %i.dur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176
  %i.dus = load i64, ptr %i.duq, align 8, !tbaa !30
  %i.dut = add i64 %i.dus, 1
  call void @_ZdlPvm(ptr noundef %i.dup, i64 noundef %i.dut) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177, %bb.aaj
  %.pn638.pn = phi { ptr, i32 } [ %i.duh, %bb.aaj ], [ %.pn638, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177 ], [ %.pn638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176 ]
  %i.duu = load ptr, ptr %221, align 8, !tbaa !149 ; 2 uses
  %i.duv = getelementptr inbounds nuw i8, ptr %221, i64 16 ; 2 uses
  %i.duw = icmp eq ptr %i.duu, %i.duv
  br i1 %i.duw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179
  %i.dux = load i64, ptr %i.duv, align 8, !tbaa !30
  %i.duy = add i64 %i.dux, 1
  call void @_ZdlPvm(ptr noundef %i.duu, i64 noundef %i.duy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2180
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #30
  br label %bb.afo

bb.aam:                                           ; preds = %bb.aad
  %i.duz = add i64 %.03632636, 1
  br label %bb.aan

bb.aan:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161, %bb.aam, %bb.aab
  %.1 = phi i64 [ %i.dsy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161 ], [ %i.duz, %bb.aam ], [ %.03632636, %bb.aab ]
  %i.dva = add nuw i64 %.03652634, 1              ; 2 uses
  %i.dvb = add i64 %.03642635, 1
  %exitcond2779.not = icmp eq i64 %i.dva, %i.r
  br i1 %exitcond2779.not, label %.critedge874, label %bb.ze, !llvm.loop !886

.critedge874:                                     ; preds = %bb.aan, %bb.zd
  %i.dvc = load ptr, ptr %i.axd, align 8, !tbaa !305
  %i.dvd = getelementptr inbounds i8, ptr %i.dvc, i64 -16 ; 2 uses
  store ptr %i.dvd, ptr %i.axd, align 8, !tbaa !305
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dvd) #30
  br label %.critedge857

.critedge857.critedge:                            ; preds = %bb.zb, %bb.ye
  call void @_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %203) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #30
  br label %.critedge857

.critedge857:                                     ; preds = %bb.ta, %bb.vd, %bb.qd, %bb.jt, %bb.ir, %bb.sk, %bb.nn, %bb.rv, %bb.nb, %bb.is, %bb.hh, %.critedge870.thread, %.critedge857.critedge, %.critedge855, %bb.vz, %.critedge870, %bb.vg, %.critedge874
  switch i32 %i.a, label %.critedge876.thread [
    i32 16391, label %bb.aao
    i32 16399, label %bb.abw
    i32 16422, label %bb.acs
    i32 16408, label %bb.acs
    i32 32814, label %bb.aek
  ]

bb.aao:                                           ; preds = %.critedge857
  %i.dve = load ptr, ptr %i.ako, align 8, !tbaa !155
  %i.dvf = load i64, ptr %i.dve, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #30
  %i.dvg = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %223, ptr noundef nonnull align 8 dereferenceable(16) %i.dvg)
  %i.dvh = invoke noundef i64 @_ZNK8bitwuzla4Sort7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %223)
          to label %bb.aap unwind label %bb.abc

bb.aap:                                           ; preds = %bb.aao
  %.not818 = icmp ult i64 %i.dvf, %i.dvh
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %223) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #30
  br i1 %.not818, label %bb.abo, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #30
  %i.dvi = load ptr, ptr %i.ako, align 8, !tbaa !155
  %i.dvj = load i64, ptr %i.dvi, align 8, !tbaa !143
  call void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %230, i64 noundef %i.dvj)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %229, ptr noundef nonnull @.str.182, ptr noundef nonnull align 8 dereferenceable(32) %230)
          to label %bb.aar unwind label %bb.abd

bb.aar:                                           ; preds = %bb.aaq
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %228, ptr noundef nonnull align 8 dereferenceable(32) %229, ptr noundef nonnull @.str.183)
          to label %bb.aas unwind label %bb.abe

bb.aas:                                           ; preds = %bb.aar
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #30
  %i.dvk = load ptr, ptr %2, align 8, !tbaa !309
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %232, ptr noundef nonnull align 8 dereferenceable(16) %i.dvk)
          to label %bb.aat unwind label %bb.abf

bb.aat:                                           ; preds = %bb.aas
  %i.dvl = invoke noundef i64 @_ZNK8bitwuzla4Sort7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %232)
          to label %bb.aau unwind label %bb.abg

bb.aau:                                           ; preds = %bb.aat
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %231, i64 noundef %i.dvl)
          to label %bb.aav unwind label %bb.abg

bb.aav:                                           ; preds = %bb.aau
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %227, ptr noundef nonnull align 8 dereferenceable(32) %228, ptr noundef nonnull align 8 dereferenceable(32) %231)
          to label %bb.aaw unwind label %bb.abh

bb.aaw:                                           ; preds = %bb.aav
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %226, ptr noundef nonnull align 8 dereferenceable(32) %227, ptr noundef nonnull @.str.160)
          to label %bb.aax unwind label %bb.abi

bb.aax:                                           ; preds = %bb.aaw
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #30
  invoke void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %233, i32 noundef 16391)
          to label %bb.aay unwind label %bb.abj

bb.aay:                                           ; preds = %bb.aax
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %225, ptr noundef nonnull align 8 dereferenceable(32) %226, ptr noundef nonnull align 8 dereferenceable(32) %233)
          to label %bb.aaz unwind label %bb.abk

bb.aaz:                                           ; preds = %bb.aay
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %224, ptr noundef nonnull align 8 dereferenceable(32) %225, ptr noundef nonnull @.str.2)
          to label %bb.aba unwind label %bb.abl

bb.aba:                                           ; preds = %bb.aaz
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #30
  %i.dvm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dvn = load ptr, ptr %i.dvm, align 8, !tbaa !684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %234, ptr noundef nonnull align 8 dereferenceable(16) %i.dvn, i64 16, i1 false), !tbaa.struct !255
  %i.dvo = getelementptr inbounds nuw i8, ptr %234, i64 16
  store i8 1, ptr %i.dvo, align 8, !tbaa !226
  %i.dvp = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %224, ptr noundef nonnull align 8 dereferenceable(24) %234)
          to label %bb.abb unwind label %bb.abm   ; 0 uses

bb.abb:                                           ; preds = %bb.aba
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #30
  %i.dvq = load ptr, ptr %224, align 8, !tbaa !149 ; 2 uses
  %i.dvr = getelementptr inbounds nuw i8, ptr %224, i64 16 ; 2 uses
  %i.dvs = icmp eq ptr %i.dvq, %i.dvr
  br i1 %i.dvs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2183: ; preds = %bb.abb
  %i.dvt = load i64, ptr %i.dvr, align 8, !tbaa !30
  %i.dvu = add i64 %i.dvt, 1
  call void @_ZdlPvm(ptr noundef %i.dvq, i64 noundef %i.dvu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185: ; preds = %bb.abb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2183
  %i.dvv = load ptr, ptr %225, align 8, !tbaa !149 ; 2 uses
  %i.dvw = getelementptr inbounds nuw i8, ptr %225, i64 16 ; 2 uses
  %i.dvx = icmp eq ptr %i.dvv, %i.dvw
  br i1 %i.dvx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185
  %i.dvy = load i64, ptr %i.dvw, align 8, !tbaa !30
  %i.dvz = add i64 %i.dvy, 1
  call void @_ZdlPvm(ptr noundef %i.dvv, i64 noundef %i.dvz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2186
  %i.dwa = load ptr, ptr %233, align 8, !tbaa !149 ; 2 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %233, i64 16 ; 2 uses
  %i.dwc = icmp eq ptr %i.dwa, %i.dwb
  br i1 %i.dwc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188
  %i.dwd = load i64, ptr %i.dwb, align 8, !tbaa !30
  %i.dwe = add i64 %i.dwd, 1
  call void @_ZdlPvm(ptr noundef %i.dwa, i64 noundef %i.dwe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2189
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #30
  %i.dwf = load ptr, ptr %226, align 8, !tbaa !149 ; 2 uses
  %i.dwg = getelementptr inbounds nuw i8, ptr %226, i64 16 ; 2 uses
  %i.dwh = icmp eq ptr %i.dwf, %i.dwg
  br i1 %i.dwh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191
  %i.dwi = load i64, ptr %i.dwg, align 8, !tbaa !30
  %i.dwj = add i64 %i.dwi, 1
  call void @_ZdlPvm(ptr noundef %i.dwf, i64 noundef %i.dwj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2192
  %i.dwk = load ptr, ptr %227, align 8, !tbaa !149 ; 2 uses
  %i.dwl = getelementptr inbounds nuw i8, ptr %227, i64 16 ; 2 uses
  %i.dwm = icmp eq ptr %i.dwk, %i.dwl
  br i1 %i.dwm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194
  %i.dwn = load i64, ptr %i.dwl, align 8, !tbaa !30
  %i.dwo = add i64 %i.dwn, 1
  call void @_ZdlPvm(ptr noundef %i.dwk, i64 noundef %i.dwo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195
  %i.dwp = load ptr, ptr %231, align 8, !tbaa !149 ; 2 uses
  %i.dwq = getelementptr inbounds nuw i8, ptr %231, i64 16 ; 2 uses
  %i.dwr = icmp eq ptr %i.dwp, %i.dwq
  br i1 %i.dwr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197
  %i.dws = load i64, ptr %i.dwq, align 8, !tbaa !30
  %i.dwt = add i64 %i.dws, 1
  call void @_ZdlPvm(ptr noundef %i.dwp, i64 noundef %i.dwt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %232) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #30
  %i.dwu = load ptr, ptr %228, align 8, !tbaa !149 ; 2 uses
  %i.dwv = getelementptr inbounds nuw i8, ptr %228, i64 16 ; 2 uses
  %i.dww = icmp eq ptr %i.dwu, %i.dwv
  br i1 %i.dww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200
  %i.dwx = load i64, ptr %i.dwv, align 8, !tbaa !30
  %i.dwy = add i64 %i.dwx, 1
  call void @_ZdlPvm(ptr noundef %i.dwu, i64 noundef %i.dwy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2201
  %i.dwz = load ptr, ptr %229, align 8, !tbaa !149 ; 2 uses
  %i.dxa = getelementptr inbounds nuw i8, ptr %229, i64 16 ; 2 uses
  %i.dxb = icmp eq ptr %i.dwz, %i.dxa
  br i1 %i.dxb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203
  %i.dxc = load i64, ptr %i.dxa, align 8, !tbaa !30
  %i.dxd = add i64 %i.dxc, 1
  call void @_ZdlPvm(ptr noundef %i.dwz, i64 noundef %i.dxd) #28
end_hunk_6
