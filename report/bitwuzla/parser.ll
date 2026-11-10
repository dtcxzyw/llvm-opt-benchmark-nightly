Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  br i1 %i.awf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425
  %i.awg = load i64, ptr %i.awe, align 8, !tbaa !54
  %i.awh = add i64 %i.awg, 1
  call void @_ZdlPvm(ptr noundef %i.awd, i64 noundef %i.awh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426, %bb.gs
  %.pn833.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avf, %bb.gs ], [ %.pn833.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426 ], [ %.pn833.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #30
  %i.awi = load ptr, ptr %42, align 8, !tbaa !154 ; 2 uses
  %i.awj = icmp eq ptr %i.awi, %i.amy
  br i1 %i.awj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428
  %i.awk = load i64, ptr %i.amy, align 8, !tbaa !54
  %i.awl = add i64 %i.awk, 1
  call void @_ZdlPvm(ptr noundef %i.awi, i64 noundef %i.awl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429, %bb.gr
  %.pn833.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ave, %bb.gr ], [ %.pn833.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429 ], [ %.pn833.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428 ] ; 2 uses
  %i.awm = load ptr, ptr %43, align 8, !tbaa !154 ; 2 uses
  %i.awn = icmp eq ptr %i.awm, %i.ami
  br i1 %i.awn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431
  %i.awo = load i64, ptr %i.ami, align 8, !tbaa !54
  %i.awp = add i64 %i.awo, 1
  call void @_ZdlPvm(ptr noundef %i.awm, i64 noundef %i.awp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432, %bb.gq
  %.pn833.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avd, %bb.gq ], [ %.pn833.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1432 ], [ %.pn833.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431 ] ; 2 uses
  %i.awq = load ptr, ptr %44, align 8, !tbaa !154 ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.alr
  br i1 %i.awr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434
  %i.aws = load i64, ptr %i.alr, align 8, !tbaa !54
  %i.awt = add i64 %i.aws, 1
  call void @_ZdlPvm(ptr noundef %i.awq, i64 noundef %i.awt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435, %bb.gp
  %.pn833.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avc, %bb.gp ], [ %.pn833.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1435 ], [ %.pn833.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1434 ] ; 2 uses
  %i.awu = load ptr, ptr %45, align 8, !tbaa !154 ; 2 uses
  %i.awv = icmp eq ptr %i.awu, %i.alc
  br i1 %i.awv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437
  %i.aww = load i64, ptr %i.alc, align 8, !tbaa !54
  %i.awx = add i64 %i.aww, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438, %bb.go
  %.pn833.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.avb, %bb.go ], [ %.pn833.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1438 ], [ %.pn833.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1437 ]
  %i.awy = load ptr, ptr %46, align 8, !tbaa !154 ; 2 uses
  %i.awz = icmp eq ptr %i.awy, %i.akx
  br i1 %i.awz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1440
  %i.axa = load i64, ptr %i.akx, align 8, !tbaa !54
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
  br label %bb.afm

bb.gy:                                            ; preds = %bb.fd
  %i.axc = add i64 %i.p, 1                        ; 25 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !278 ; 3 uses
  %i.axf = load ptr, ptr %2, align 8, !tbaa !280  ; 2 uses
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
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8bitwuzla4TermES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN8bitwuzla4TermES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.axn, ptr %i.axd, align 8, !tbaa !278
  br label %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit: ; preds = %bb.gz, %bb.ha, %bb.hb, %_ZSt8_DestroyIPN8bitwuzla4TermES1_EvT_S3_RSaIT0_E.exit.i.i
  %.not6372631 = icmp ult i64 %i.axc, %i.l
  br i1 %.not6372631, label %.lr.ph, label %.critedge855

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit
  %i.axp = load ptr, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.axq = ptrtoint ptr %i.axp to i64
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph, %bb.hg
  %.03832632 = phi i64 [ %i.axc, %.lr.ph ], [ %i.ayp, %bb.hg ] ; 3 uses
  %i.axr = getelementptr inbounds nuw [152 x i8], ptr %i.axp, i64 %.03832632 ; 2 uses
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !240 ; 2 uses
  %i.axt = icmp eq i32 %i.axs, 14
  br i1 %i.axt, label %bb.hg, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.axu = load ptr, ptr %i.f, align 8, !tbaa !184
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
  store ptr %i.aya, ptr %50, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aya, ptr noundef nonnull align 1 dereferenceable(13) @.str.21, i64 13, i1 false)
  %i.ayb = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 13, ptr %i.ayb, align 8, !tbaa !53
  %i.ayc = getelementptr inbounds nuw i8, ptr %50, i64 29
  store i8 0, ptr %i.ayc, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(16) %i.ayd, i64 16, i1 false), !tbaa.struct !241
  %i.aye = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i8 1, ptr %i.aye, align 8, !tbaa !219
  %i.ayf = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.he unwind label %bb.hf     ; 0 uses

bb.he:                                            ; preds = %_ZNK4bzla6parser4smt26Parser16peek_is_term_argEm.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  %i.ayg = load ptr, ptr %50, align 8, !tbaa !154 ; 2 uses
  %i.ayh = icmp eq ptr %i.ayg, %i.aya
  br i1 %i.ayh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1446: ; preds = %bb.he
  %i.ayi = load i64, ptr %i.aya, align 8, !tbaa !54
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
  %i.ayl = load ptr, ptr %50, align 8, !tbaa !154 ; 2 uses
  %i.aym = icmp eq ptr %i.ayl, %i.aya
  br i1 %i.aym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1449: ; preds = %bb.hf
  %i.ayn = load i64, ptr %i.aya, align 8, !tbaa !54
  %i.ayo = add i64 %i.ayn, 1
  call void @_ZdlPvm(ptr noundef %i.ayl, i64 noundef %i.ayo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1449
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  br label %bb.afm

bb.hg:                                            ; preds = %bb.hd, %bb.hc
  %i.ayp = add i64 %.03832632, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ayp, %i.l
  br i1 %exitcond.not, label %.critedge855, label %bb.hc, !llvm.loop !862

.critedge855:                                     ; preds = %bb.hg, %_ZNSt6vectorIN8bitwuzla4TermESaIS1_EE6resizeEm.exit
  switch i32 %i.a, label %.critedge876.thread [
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
    i32 32789, label %bb.qd
    i32 32785, label %bb.rt
    i32 32786, label %bb.rt
    i32 32788, label %bb.rt
    i32 32803, label %bb.rt
    i32 32811, label %bb.rt
    i32 32812, label %bb.rt
    i32 32813, label %bb.rt
    i32 32816, label %bb.rt
    i32 32817, label %bb.rt
    i32 32790, label %bb.ru
    i32 32791, label %bb.ru
    i32 32792, label %bb.ru
    i32 32793, label %bb.ru
    i32 32794, label %bb.ru
    i32 32795, label %bb.ru
    i32 32796, label %bb.ru
    i32 32797, label %bb.ru
    i32 32798, label %bb.ru
    i32 32799, label %bb.ru
    i32 32800, label %bb.ru
    i32 32801, label %bb.ru
    i32 32802, label %bb.ru
    i32 32804, label %bb.ru
    i32 32805, label %bb.ru
    i32 32806, label %bb.ru
    i32 32807, label %bb.ru
    i32 32808, label %bb.ru
    i32 32809, label %bb.ru
    i32 32810, label %bb.ru
    i32 32784, label %bb.ru
    i32 32787, label %bb.ru
    i32 32815, label %bb.vc
    i32 32814, label %bb.vc
    i32 9, label %.preheader
    i32 519, label %bb.zb
    i32 517, label %bb.zb
  ]

.preheader:                                       ; preds = %.critedge855
  %.not2665 = icmp eq i64 %i.r, 0
  br i1 %.not2665, label %._crit_edge, label %.lr.ph2640

bb.hh:                                            ; preds = %.critedge855, %.critedge855
  %i.ayq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %i.axc)
  %i.ayr = load ptr, ptr %2, align 8, !tbaa !280
  %i.ays = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ayr, ptr noundef nonnull align 8 dereferenceable(16) %i.ayq) #30 ; 0 uses
  %.not7882660 = icmp ugt i64 %i.r, 1
  br i1 %.not7882660, label %.lr.ph2664.preheader, label %.critedge857

.lr.ph2664.preheader:                             ; preds = %bb.hh
  %i.ayt = add i64 %i.p, 2
  br label %.lr.ph2664

.lr.ph2664:                                       ; preds = %.lr.ph2664.preheader, %bb.ir
  %.03812662 = phi i64 [ %i.beo, %bb.ir ], [ %i.ayt, %.lr.ph2664.preheader ] ; 3 uses
  %.03822661 = phi i64 [ %i.ben, %bb.ir ], [ 1, %.lr.ph2664.preheader ] ; 5 uses
  %i.ayu = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.ayv = getelementptr inbounds nuw [152 x i8], ptr %i.ayu, i64 %.03812662 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 40
  %i.ayx = load i8, ptr %i.ayw, align 8, !tbaa !244
  switch i8 %i.ayx, label %bb.hi [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !261

bb.hi:                                            ; preds = %.lr.ph2664
  %i.ayy = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ayy, align 8, !tbaa !33
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 8
  store ptr @.str.202, ptr %i.ayz, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.ayy, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %.lr.ph2664
  %i.aza = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.aza, align 8, !tbaa !33
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 8
  store ptr @.str.201, ptr %i.azb, align 8, !tbaa !264
  call void @__cxa_throw(ptr nonnull %i.aza, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit: ; preds = %.lr.ph2664
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24
  %i.azd = load ptr, ptr %2, align 8, !tbaa !280  ; 2 uses
  %i.aze = getelementptr inbounds nuw [16 x i8], ptr %i.azd, i64 %.03822661 ; 2 uses
  %i.azf = load ptr, ptr %i.azc, align 8, !tbaa !258
  store ptr %i.azf, ptr %i.aze, align 8, !tbaa !258
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aze, i64 8 ; 3 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !253 ; 4 uses
  %i.azj = load ptr, ptr %i.azg, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i1452 = icmp eq ptr %i.azi, %i.azj
  br i1 %.not.i.i.i.i1452, label %_ZN8bitwuzla4TermaSERKS0_.exit, label %bb.hj

bb.hj:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit
  %.not7.i.i.i.i = icmp eq ptr %i.azi, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azi, i64 8 ; 3 uses
  %i.azl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.azl, 0
  br i1 %.not.i.i.i.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.azm = load i32, ptr %i.azk, align 4, !tbaa !254
  %i.azn = add nsw i32 %i.azm, 1
  store i32 %i.azn, ptr %i.azk, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.azo = atomicrmw volatile add ptr %i.azk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.azg, align 8, !tbaa !253
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
  store i32 0, ptr %i.azq, align 8, !tbaa !248
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azp, i64 12
  store i32 0, ptr %i.azu, align 4, !tbaa !249
  %i.azv = load ptr, ptr %i.azp, align 8, !tbaa !33
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 16
  %i.azx = load ptr, ptr %i.azw, align 8
  call void %i.azx(ptr noundef nonnull align 8 dereferenceable(16) %i.azp) #30, !inline_history !5
  %i.azy = load ptr, ptr %i.azp, align 8, !tbaa !33
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 24
  %i.baa = load ptr, ptr %i.azz, align 8
  call void %i.baa(ptr noundef nonnull align 8 dereferenceable(16) %i.azp) #30, !inline_history !5
end_hunk_0
begin_hunk_1_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833

bb.rh:                                            ; preds = %bb.qy
  %i.clp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830

bb.ri:                                            ; preds = %bb.qz
  %i.clq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #30
  %i.clr = load ptr, ptr %139, align 8, !tbaa !154 ; 2 uses
  %i.cls = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 2 uses
  %i.clt = icmp eq ptr %i.clr, %i.cls
  br i1 %i.clt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1828

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1828: ; preds = %bb.ri
  %i.clu = load i64, ptr %i.cls, align 8, !tbaa !54
  %i.clv = add i64 %i.clu, 1
  call void @_ZdlPvm(ptr noundef %i.clr, i64 noundef %i.clv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830: ; preds = %bb.ri, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1828, %bb.rh
  %.pn714 = phi { ptr, i32 } [ %i.clp, %bb.rh ], [ %i.clq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1828 ], [ %i.clq, %bb.ri ] ; 2 uses
  %i.clw = load ptr, ptr %140, align 8, !tbaa !154 ; 2 uses
  %i.clx = getelementptr inbounds nuw i8, ptr %140, i64 16 ; 2 uses
  %i.cly = icmp eq ptr %i.clw, %i.clx
  br i1 %i.cly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830
  %i.clz = load i64, ptr %i.clx, align 8, !tbaa !54
  %i.cma = add i64 %i.clz, 1
  call void @_ZdlPvm(ptr noundef %i.clw, i64 noundef %i.cma) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831, %bb.rg
  %.pn714.pn = phi { ptr, i32 } [ %i.clo, %bb.rg ], [ %.pn714, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831 ], [ %.pn714, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1830 ]
  %i.cmb = load ptr, ptr %141, align 8, !tbaa !154 ; 2 uses
  %i.cmc = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 2 uses
  %i.cmd = icmp eq ptr %i.cmb, %i.cmc
  br i1 %i.cmd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1836, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1834: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833
  %i.cme = load i64, ptr %i.cmc, align 8, !tbaa !54
  %i.cmf = add i64 %i.cme, 1
  call void @_ZdlPvm(ptr noundef %i.cmb, i64 noundef %i.cmf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1836

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1836: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1834
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #30
  br label %bb.afm

bb.rj:                                            ; preds = %.critedge865
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #30
  %i.cmg = load ptr, ptr %2, align 8, !tbaa !280
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmg, i64 32
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %143, ptr noundef nonnull align 8 dereferenceable(16) %i.cmh)
  %i.cmi = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_bvEv(ptr noundef nonnull align 8 dereferenceable(16) %143)
          to label %bb.rk unwind label %bb.rp

bb.rk:                                            ; preds = %bb.rj
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %143) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #30
  br i1 %i.cmi, label %.critedge876.thread, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %146, i32 noundef 32789)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %145, ptr noundef nonnull @.str.172, ptr noundef nonnull align 8 dereferenceable(32) %146)
          to label %bb.rm unwind label %bb.rq

bb.rm:                                            ; preds = %bb.rl
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %144, ptr noundef nonnull align 8 dereferenceable(32) %145, ptr noundef nonnull @.str.2)
          to label %bb.rn unwind label %bb.rr

bb.rn:                                            ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #30
  %i.cmj = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.cmk = getelementptr inbounds nuw [152 x i8], ptr %i.cmj, i64 %i.cim
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %147, ptr noundef nonnull align 8 dereferenceable(16) %i.cml, i64 16, i1 false), !tbaa.struct !241
  %i.cmm = getelementptr inbounds nuw i8, ptr %147, i64 16
  store i8 1, ptr %i.cmm, align 8, !tbaa !219
  %i.cmn = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %144, ptr noundef nonnull align 8 dereferenceable(24) %147)
          to label %bb.ro unwind label %bb.rs     ; 0 uses

bb.ro:                                            ; preds = %bb.rn
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #30
  %i.cmo = load ptr, ptr %144, align 8, !tbaa !154 ; 2 uses
  %i.cmp = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 2 uses
  %i.cmq = icmp eq ptr %i.cmo, %i.cmp
  br i1 %i.cmq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1837: ; preds = %bb.ro
  %i.cmr = load i64, ptr %i.cmp, align 8, !tbaa !54
  %i.cms = add i64 %i.cmr, 1
  call void @_ZdlPvm(ptr noundef %i.cmo, i64 noundef %i.cms) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839: ; preds = %bb.ro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1837
  %i.cmt = load ptr, ptr %145, align 8, !tbaa !154 ; 2 uses
  %i.cmu = getelementptr inbounds nuw i8, ptr %145, i64 16 ; 2 uses
  %i.cmv = icmp eq ptr %i.cmt, %i.cmu
  br i1 %i.cmv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1840

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1840: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839
  %i.cmw = load i64, ptr %i.cmu, align 8, !tbaa !54
  %i.cmx = add i64 %i.cmw, 1
  call void @_ZdlPvm(ptr noundef %i.cmt, i64 noundef %i.cmx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1839, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1840
  %i.cmy = load ptr, ptr %146, align 8, !tbaa !154 ; 2 uses
  %i.cmz = getelementptr inbounds nuw i8, ptr %146, i64 16 ; 2 uses
  %i.cna = icmp eq ptr %i.cmy, %i.cmz
  br i1 %i.cna, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1843

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1843: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842
  %i.cnb = load i64, ptr %i.cmz, align 8, !tbaa !54
  %i.cnc = add i64 %i.cnb, 1
  call void @_ZdlPvm(ptr noundef %i.cmy, i64 noundef %i.cnc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1842, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1843
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #30
  br label %.critedge

bb.rp:                                            ; preds = %bb.rj
  %i.cnd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %143) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #30
  br label %bb.afm

bb.rq:                                            ; preds = %bb.rl
  %i.cne = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851

bb.rr:                                            ; preds = %bb.rm
  %i.cnf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1848

bb.rs:                                            ; preds = %bb.rn
  %i.cng = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #30
  %i.cnh = load ptr, ptr %144, align 8, !tbaa !154 ; 2 uses
  %i.cni = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 2 uses
  %i.cnj = icmp eq ptr %i.cnh, %i.cni
  br i1 %i.cnj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1848, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1846

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1846: ; preds = %bb.rs
  %i.cnk = load i64, ptr %i.cni, align 8, !tbaa !54
  %i.cnl = add i64 %i.cnk, 1
  call void @_ZdlPvm(ptr noundef %i.cnh, i64 noundef %i.cnl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1848

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1848: ; preds = %bb.rs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1846, %bb.rr
  %.pn711 = phi { ptr, i32 } [ %i.cnf, %bb.rr ], [ %i.cng, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1846 ], [ %i.cng, %bb.rs ] ; 2 uses
  %i.cnm = load ptr, ptr %145, align 8, !tbaa !154 ; 2 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %145, i64 16 ; 2 uses
  %i.cno = icmp eq ptr %i.cnm, %i.cnn
  br i1 %i.cno, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1849

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1849: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1848
  %i.cnp = load i64, ptr %i.cnn, align 8, !tbaa !54
  %i.cnq = add i64 %i.cnp, 1
  call void @_ZdlPvm(ptr noundef %i.cnm, i64 noundef %i.cnq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1848, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1849, %bb.rq
  %.pn711.pn = phi { ptr, i32 } [ %i.cne, %bb.rq ], [ %.pn711, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1849 ], [ %.pn711, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1848 ]
  %i.cnr = load ptr, ptr %146, align 8, !tbaa !154 ; 2 uses
  %i.cns = getelementptr inbounds nuw i8, ptr %146, i64 16 ; 2 uses
  %i.cnt = icmp eq ptr %i.cnr, %i.cns
  br i1 %i.cnt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1852

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1852: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851
  %i.cnu = load i64, ptr %i.cns, align 8, !tbaa !54
  %i.cnv = add i64 %i.cnu, 1
  call void @_ZdlPvm(ptr noundef %i.cnr, i64 noundef %i.cnv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1852
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #30
  br label %bb.afm

bb.rt:                                            ; preds = %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855
  br label %bb.ru

bb.ru:                                            ; preds = %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %bb.rt
  %.0578 = phi i1 [ true, %bb.rt ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ], [ false, %.critedge855 ] ; 2 uses
  %.not7042645.not = icmp eq i64 %i.r, 0
  br i1 %.not7042645.not, label %.critedge857, label %.lr.ph2649.preheader

.lr.ph2649.preheader:                             ; preds = %bb.ru
  %i.cnw = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.cnx = getelementptr inbounds nuw [152 x i8], ptr %i.cnw, i64 %i.axc ; 3 uses
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnx, i64 40
  %i.cnz = load i8, ptr %i.cny, align 8, !tbaa !244
  switch i8 %i.cnz, label %.loopexit [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855
  ], !prof !261

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel: ; preds = %.lr.ph2649.preheader
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnx, i64 24
  %i.cob = load ptr, ptr %2, align 8, !tbaa !280  ; 2 uses
  %i.coc = load ptr, ptr %i.coa, align 8, !tbaa !258
  store ptr %i.coc, ptr %i.cob, align 8, !tbaa !258
  %i.cod = getelementptr inbounds nuw i8, ptr %i.cob, i64 8 ; 3 uses
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cnx, i64 32
  %i.cof = load ptr, ptr %i.coe, align 8, !tbaa !253 ; 4 uses
  %i.cog = load ptr, ptr %i.cod, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i1857.peel = icmp eq ptr %i.cof, %i.cog
  br i1 %.not.i.i.i.i1857.peel, label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel, label %bb.rv

bb.rv:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel
  %.not7.i.i.i.i1858.peel = icmp eq ptr %i.cof, null
  br i1 %.not7.i.i.i.i1858.peel, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.coh = getelementptr inbounds nuw i8, ptr %i.cof, i64 8 ; 3 uses
  %i.coi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i1859.peel = icmp eq i8 %i.coi, 0
  br i1 %.not.i.i.i.i.i1859.peel, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.coj = load i32, ptr %i.coh, align 4, !tbaa !254
  %i.cok = add nsw i32 %i.coj, 1
  store i32 %i.cok, ptr %i.coh, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel

bb.ry:                                            ; preds = %bb.rw
  %i.col = atomicrmw volatile add ptr %i.coh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1866.peel = load ptr, ptr %i.cod, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel: ; preds = %bb.ry, %bb.rx, %bb.rv
  %i.com = phi ptr [ %i.cog, %bb.rv ], [ %i.cog, %bb.rx ], [ %.pr.pre.i.i.i.i1866.peel, %bb.ry ] ; 8 uses
  %.not8.i.i.i.i1861.peel = icmp eq ptr %i.com, null
  br i1 %.not8.i.i.i.i1861.peel, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel, label %bb.rz

bb.rz:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel
  %i.con = getelementptr inbounds nuw i8, ptr %i.com, i64 8 ; 4 uses
  %i.coo = load atomic i64, ptr %i.con acquire, align 8 ; 2 uses
  %i.cop = icmp eq i64 %i.coo, 4294967297
  %i.coq = trunc i64 %i.coo to i32                ; 2 uses
  br i1 %i.cop, label %bb.se, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.cor = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i1862.peel = icmp eq i8 %i.cor, 0
  br i1 %.not.i9.i.i.i.i1862.peel, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.cos = add nsw i32 %i.coq, -1
  store i32 %i.cos, ptr %i.con, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel

bb.sc:                                            ; preds = %bb.sa
  %i.cot = atomicrmw volatile add ptr %i.con, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel: ; preds = %bb.sc, %bb.sb
  %.0.i.i.i.i.i.i1864.peel = phi i32 [ %i.coq, %bb.sb ], [ %i.cot, %bb.sc ]
  %i.cou = icmp eq i32 %.0.i.i.i.i.i.i1864.peel, 1
  br i1 %i.cou, label %bb.sd, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel, !prof !255

bb.sd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.com) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel

bb.se:                                            ; preds = %bb.rz
  store i32 0, ptr %i.con, align 8, !tbaa !248
  %i.cov = getelementptr inbounds nuw i8, ptr %i.com, i64 12
  store i32 0, ptr %i.cov, align 4, !tbaa !249
  %i.cow = load ptr, ptr %i.com, align 8, !tbaa !33
  %i.cox = getelementptr inbounds nuw i8, ptr %i.cow, i64 16
  %i.coy = load ptr, ptr %i.cox, align 8
  tail call void %i.coy(ptr noundef nonnull align 8 dereferenceable(16) %i.com) #30, !inline_history !5
  %i.coz = load ptr, ptr %i.com, align 8, !tbaa !33
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 24
  %i.cpb = load ptr, ptr %i.cpa, align 8
  tail call void %i.cpb(ptr noundef nonnull align 8 dereferenceable(16) %i.com) #30, !inline_history !5
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel: ; preds = %bb.se, %bb.sd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel
  store ptr %i.cof, ptr %i.cod, align 8, !tbaa !253
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel

_ZN8bitwuzla4TermaSERKS0_.exit1867.peel:          ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel
  br i1 %.0578, label %bb.sh, label %bb.sf

bb.sf:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.cpc = load ptr, ptr %2, align 8, !tbaa !280
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.cpc)
  %i.cpd = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_fpEv(ptr noundef nonnull align 8 dereferenceable(16) %153)
          to label %bb.sg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.sg:                                            ; preds = %bb.sf
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %153) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %i.cpd, label %bb.sj, label %.loopexit2786

bb.sh:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #30
  %i.cpe = load ptr, ptr %2, align 8, !tbaa !280
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %148, ptr noundef nonnull align 8 dereferenceable(16) %i.cpe)
  %i.cpf = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_rmEv(ptr noundef nonnull align 8 dereferenceable(16) %148)
          to label %bb.si unwind label %bb.to

bb.si:                                            ; preds = %bb.sh
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %148) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #30
  br i1 %i.cpf, label %bb.sj, label %bb.tk

bb.sj:                                            ; preds = %bb.sg, %bb.si
  %exitcond2783.peel.not = icmp eq i64 %i.r, 1
  br i1 %exitcond2783.peel.not, label %.critedge857, label %.lr.ph2649.peel.next

.lr.ph2649.peel.next:                             ; preds = %bb.sj
  %i.cpg = add i64 %i.p, 2                        ; 3 uses
  %i.cph = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.cpi = getelementptr inbounds nuw [152 x i8], ptr %i.cph, i64 %i.cpg ; 3 uses
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.cpi, i64 40
  %i.cpk = load i8, ptr %i.cpj, align 8, !tbaa !244
  switch i8 %i.cpk, label %.loopexit [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4142
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855
  ], !prof !261

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4142: ; preds = %.lr.ph2649.peel.next
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpi, i64 24
  %i.cpm = load ptr, ptr %2, align 8, !tbaa !280  ; 2 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpm, i64 16
  %i.cpo = load ptr, ptr %i.cpl, align 8, !tbaa !258
  store ptr %i.cpo, ptr %i.cpn, align 8, !tbaa !258
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpm, i64 24 ; 3 uses
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cpi, i64 32
  %i.cpr = load ptr, ptr %i.cpq, align 8, !tbaa !253 ; 4 uses
  %i.cps = load ptr, ptr %i.cpp, align 8, !tbaa !253 ; 3 uses
  %.not.i.i.i.i1857.peel4143 = icmp eq ptr %i.cpr, %i.cps
  br i1 %.not.i.i.i.i1857.peel4143, label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4153, label %bb.sk

bb.sk:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4142
  %.not7.i.i.i.i1858.peel4144 = icmp eq ptr %i.cpr, null
  br i1 %.not7.i.i.i.i1858.peel4144, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4147, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpr, i64 8 ; 3 uses
  %i.cpu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i1859.peel4145 = icmp eq i8 %i.cpu, 0
  br i1 %.not.i.i.i.i.i1859.peel4145, label %bb.sn, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.cpv = load i32, ptr %i.cpt, align 4, !tbaa !254
  %i.cpw = add nsw i32 %i.cpv, 1
  store i32 %i.cpw, ptr %i.cpt, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4147

bb.sn:                                            ; preds = %bb.sl
  %i.cpx = atomicrmw volatile add ptr %i.cpt, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1866.peel4146 = load ptr, ptr %i.cpp, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4147

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4147: ; preds = %bb.sn, %bb.sm, %bb.sk
  %i.cpy = phi ptr [ %i.cps, %bb.sk ], [ %i.cps, %bb.sm ], [ %.pr.pre.i.i.i.i1866.peel4146, %bb.sn ] ; 8 uses
  %.not8.i.i.i.i1861.peel4148 = icmp eq ptr %i.cpy, null
  br i1 %.not8.i.i.i.i1861.peel4148, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4152, label %bb.so

bb.so:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4147
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cpy, i64 8 ; 4 uses
  %i.cqa = load atomic i64, ptr %i.cpz acquire, align 8 ; 2 uses
  %i.cqb = icmp eq i64 %i.cqa, 4294967297
  %i.cqc = trunc i64 %i.cqa to i32                ; 2 uses
  br i1 %i.cqb, label %bb.st, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.cqd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i1862.peel4149 = icmp eq i8 %i.cqd, 0
  br i1 %.not.i9.i.i.i.i1862.peel4149, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.cqe = add nsw i32 %i.cqc, -1
  store i32 %i.cqe, ptr %i.cpz, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4150

bb.sr:                                            ; preds = %bb.sp
  %i.cqf = atomicrmw volatile add ptr %i.cpz, i32 -1 acq_rel, align 4
end_hunk_1
begin_hunk_2_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  %i.dsx = add i64 %i.dsw, 1
  call void @_ZdlPvm(ptr noundef %i.dsu, i64 noundef %i.dsx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161: ; preds = %bb.zx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2159
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #30
  %i.dsy = add i64 %.03632636, 1
  br label %bb.aal

bb.zy:                                            ; preds = %bb.zw
  %i.dsz = landingpad { ptr, i32 }
          cleanup
  %i.dta = load ptr, ptr %217, align 8, !tbaa !154 ; 2 uses
  %i.dtb = icmp eq ptr %i.dta, %i.dqk
  br i1 %i.dtb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162: ; preds = %bb.zy
  %i.dtc = load i64, ptr %i.dqk, align 8, !tbaa !54
  %i.dtd = add i64 %i.dtc, 1
  call void @_ZdlPvm(ptr noundef %i.dta, i64 noundef %i.dtd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164: ; preds = %bb.zy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #30
  br label %bb.afm

bb.zz:                                            ; preds = %bb.zc
  %i.dte = icmp eq i64 %.03652634, %i.dqi
  br i1 %i.dte, label %bb.aaa, label %bb.aal

bb.aaa:                                           ; preds = %bb.zz
  %i.dtf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4bzla6parser4smt26Parser13peek_term_argEm(ptr noundef nonnull align 8 dereferenceable(2056) %0, i64 noundef %.03642635)
  %i.dtg = load ptr, ptr %2, align 8, !tbaa !280
  %i.dth = getelementptr inbounds nuw [16 x i8], ptr %i.dtg, i64 %.03632636
  %i.dti = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dth, ptr noundef nonnull align 8 dereferenceable(16) %i.dtf) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #30
  %i.dtj = load ptr, ptr %2, align 8, !tbaa !280
  %i.dtk = getelementptr inbounds nuw [16 x i8], ptr %i.dtj, i64 %.03632636
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %218, ptr noundef nonnull align 8 dereferenceable(16) %i.dtk)
  %i.dtl = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort7is_boolEv(ptr noundef nonnull align 8 dereferenceable(16) %218)
          to label %bb.aab unwind label %bb.aag

bb.aab:                                           ; preds = %bb.aaa
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %218) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #30
  br i1 %i.dtl, label %bb.aak, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %221, i32 noundef %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %220, ptr noundef nonnull @.str.181, ptr noundef nonnull align 8 dereferenceable(32) %221)
          to label %bb.aad unwind label %bb.aah

bb.aad:                                           ; preds = %bb.aac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %219, ptr noundef nonnull align 8 dereferenceable(32) %220, ptr noundef nonnull @.str.2)
          to label %bb.aae unwind label %bb.aai

bb.aae:                                           ; preds = %bb.aad
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #30
  %i.dtm = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.dtn = getelementptr inbounds nuw [152 x i8], ptr %i.dtm, i64 %.03642635
  %i.dto = getelementptr inbounds nuw i8, ptr %i.dtn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %222, ptr noundef nonnull align 8 dereferenceable(16) %i.dto, i64 16, i1 false), !tbaa.struct !241
  %i.dtp = getelementptr inbounds nuw i8, ptr %222, i64 16
  store i8 1, ptr %i.dtp, align 8, !tbaa !219
  %i.dtq = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %219, ptr noundef nonnull align 8 dereferenceable(24) %222)
          to label %bb.aaf unwind label %bb.aaj   ; 0 uses

bb.aaf:                                           ; preds = %bb.aae
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #30
  %i.dtr = load ptr, ptr %219, align 8, !tbaa !154 ; 2 uses
  %i.dts = getelementptr inbounds nuw i8, ptr %219, i64 16 ; 2 uses
  %i.dtt = icmp eq ptr %i.dtr, %i.dts
  br i1 %i.dtt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165: ; preds = %bb.aaf
  %i.dtu = load i64, ptr %i.dts, align 8, !tbaa !54
  %i.dtv = add i64 %i.dtu, 1
  call void @_ZdlPvm(ptr noundef %i.dtr, i64 noundef %i.dtv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167: ; preds = %bb.aaf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165
  %i.dtw = load ptr, ptr %220, align 8, !tbaa !154 ; 2 uses
  %i.dtx = getelementptr inbounds nuw i8, ptr %220, i64 16 ; 2 uses
  %i.dty = icmp eq ptr %i.dtw, %i.dtx
  br i1 %i.dty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167
  %i.dtz = load i64, ptr %i.dtx, align 8, !tbaa !54
  %i.dua = add i64 %i.dtz, 1
  call void @_ZdlPvm(ptr noundef %i.dtw, i64 noundef %i.dua) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2168
  %i.dub = load ptr, ptr %221, align 8, !tbaa !154 ; 2 uses
  %i.duc = getelementptr inbounds nuw i8, ptr %221, i64 16 ; 2 uses
  %i.dud = icmp eq ptr %i.dub, %i.duc
  br i1 %i.dud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170
  %i.due = load i64, ptr %i.duc, align 8, !tbaa !54
  %i.duf = add i64 %i.due, 1
  call void @_ZdlPvm(ptr noundef %i.dub, i64 noundef %i.duf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2171
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #30
  br label %.critedge

bb.aag:                                           ; preds = %bb.aaa
  %i.dug = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %218) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #30
  br label %bb.afm

bb.aah:                                           ; preds = %bb.aac
  %i.duh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179

bb.aai:                                           ; preds = %bb.aad
  %i.dui = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176

bb.aaj:                                           ; preds = %bb.aae
  %i.duj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #30
  %i.duk = load ptr, ptr %219, align 8, !tbaa !154 ; 2 uses
  %i.dul = getelementptr inbounds nuw i8, ptr %219, i64 16 ; 2 uses
  %i.dum = icmp eq ptr %i.duk, %i.dul
  br i1 %i.dum, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174: ; preds = %bb.aaj
  %i.dun = load i64, ptr %i.dul, align 8, !tbaa !54
  %i.duo = add i64 %i.dun, 1
  call void @_ZdlPvm(ptr noundef %i.duk, i64 noundef %i.duo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176: ; preds = %bb.aaj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174, %bb.aai
  %.pn638 = phi { ptr, i32 } [ %i.dui, %bb.aai ], [ %i.duj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2174 ], [ %i.duj, %bb.aaj ] ; 2 uses
  %i.dup = load ptr, ptr %220, align 8, !tbaa !154 ; 2 uses
  %i.duq = getelementptr inbounds nuw i8, ptr %220, i64 16 ; 2 uses
  %i.dur = icmp eq ptr %i.dup, %i.duq
  br i1 %i.dur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176
  %i.dus = load i64, ptr %i.duq, align 8, !tbaa !54
  %i.dut = add i64 %i.dus, 1
  call void @_ZdlPvm(ptr noundef %i.dup, i64 noundef %i.dut) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177, %bb.aah
  %.pn638.pn = phi { ptr, i32 } [ %i.duh, %bb.aah ], [ %.pn638, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2177 ], [ %.pn638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2176 ]
  %i.duu = load ptr, ptr %221, align 8, !tbaa !154 ; 2 uses
  %i.duv = getelementptr inbounds nuw i8, ptr %221, i64 16 ; 2 uses
  %i.duw = icmp eq ptr %i.duu, %i.duv
  br i1 %i.duw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179
  %i.dux = load i64, ptr %i.duv, align 8, !tbaa !54
  %i.duy = add i64 %i.dux, 1
  call void @_ZdlPvm(ptr noundef %i.duu, i64 noundef %i.duy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2180
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #30
  br label %bb.afm

bb.aak:                                           ; preds = %bb.aab
  %i.duz = add i64 %.03632636, 1
  br label %bb.aal

bb.aal:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161, %bb.aak, %bb.zz
  %.1 = phi i64 [ %i.dsy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161 ], [ %i.duz, %bb.aak ], [ %.03632636, %bb.zz ]
  %i.dva = add nuw i64 %.03652634, 1              ; 2 uses
  %i.dvb = add i64 %.03642635, 1
  %exitcond2780.not = icmp eq i64 %i.dva, %i.r
  br i1 %exitcond2780.not, label %.critedge874, label %bb.zc, !llvm.loop !879

.critedge874:                                     ; preds = %bb.aal, %bb.zb
  %i.dvc = load ptr, ptr %i.axd, align 8, !tbaa !278
  %i.dvd = getelementptr inbounds i8, ptr %i.dvc, i64 -16 ; 2 uses
  store ptr %i.dvd, ptr %i.axd, align 8, !tbaa !278
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dvd) #30
  br label %.critedge857

.critedge857.critedge:                            ; preds = %bb.yz, %bb.yc
  call void @_ZNSt6vectorIN8bitwuzla4SortESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %203) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #30
  br label %.critedge857

.critedge857:                                     ; preds = %bb.sz, %bb.vb, %bb.qc, %bb.jt, %bb.ir, %bb.sj, %bb.nn, %bb.ru, %bb.nb, %bb.is, %bb.hh, %.critedge870.thread, %.critedge857.critedge, %bb.vx, %.critedge870, %bb.ve, %.critedge874
  switch i32 %i.a, label %.critedge876.thread [
    i32 16391, label %bb.aam
    i32 16399, label %bb.abu
    i32 16422, label %bb.acq
    i32 16408, label %bb.acq
    i32 32814, label %bb.aei
  ]

bb.aam:                                           ; preds = %.critedge857
  %i.dve = load ptr, ptr %i.ako, align 8, !tbaa !165
  %i.dvf = load i64, ptr %i.dve, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #30
  %i.dvg = load ptr, ptr %2, align 8, !tbaa !280
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %223, ptr noundef nonnull align 8 dereferenceable(16) %i.dvg)
  %i.dvh = invoke noundef i64 @_ZNK8bitwuzla4Sort7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %223)
          to label %bb.aan unwind label %bb.aba

bb.aan:                                           ; preds = %bb.aam
  %.not818 = icmp ult i64 %i.dvf, %i.dvh
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %223) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #30
  br i1 %.not818, label %bb.abm, label %bb.aao

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #30
  %i.dvi = load ptr, ptr %i.ako, align 8, !tbaa !165
  %i.dvj = load i64, ptr %i.dvi, align 8, !tbaa !164
  call void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %230, i64 noundef %i.dvj)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %229, ptr noundef nonnull @.str.182, ptr noundef nonnull align 8 dereferenceable(32) %230)
          to label %bb.aap unwind label %bb.abb

bb.aap:                                           ; preds = %bb.aao
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %228, ptr noundef nonnull align 8 dereferenceable(32) %229, ptr noundef nonnull @.str.183)
          to label %bb.aaq unwind label %bb.abc

bb.aaq:                                           ; preds = %bb.aap
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #30
  %i.dvk = load ptr, ptr %2, align 8, !tbaa !280
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %232, ptr noundef nonnull align 8 dereferenceable(16) %i.dvk)
          to label %bb.aar unwind label %bb.abd

bb.aar:                                           ; preds = %bb.aaq
  %i.dvl = invoke noundef i64 @_ZNK8bitwuzla4Sort7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %232)
          to label %bb.aas unwind label %bb.abe

bb.aas:                                           ; preds = %bb.aar
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %231, i64 noundef %i.dvl)
          to label %bb.aat unwind label %bb.abe

bb.aat:                                           ; preds = %bb.aas
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %227, ptr noundef nonnull align 8 dereferenceable(32) %228, ptr noundef nonnull align 8 dereferenceable(32) %231)
          to label %bb.aau unwind label %bb.abf

bb.aau:                                           ; preds = %bb.aat
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %226, ptr noundef nonnull align 8 dereferenceable(32) %227, ptr noundef nonnull @.str.160)
          to label %bb.aav unwind label %bb.abg

bb.aav:                                           ; preds = %bb.aau
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #30
  invoke void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %233, i32 noundef 16391)
          to label %bb.aaw unwind label %bb.abh

bb.aaw:                                           ; preds = %bb.aav
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %225, ptr noundef nonnull align 8 dereferenceable(32) %226, ptr noundef nonnull align 8 dereferenceable(32) %233)
          to label %bb.aax unwind label %bb.abi

bb.aax:                                           ; preds = %bb.aaw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %224, ptr noundef nonnull align 8 dereferenceable(32) %225, ptr noundef nonnull @.str.2)
          to label %bb.aay unwind label %bb.abj

bb.aay:                                           ; preds = %bb.aax
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #30
  %i.dvm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dvn = load ptr, ptr %i.dvm, align 8, !tbaa !343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %234, ptr noundef nonnull align 8 dereferenceable(16) %i.dvn, i64 16, i1 false), !tbaa.struct !241
  %i.dvo = getelementptr inbounds nuw i8, ptr %234, i64 16
  store i8 1, ptr %i.dvo, align 8, !tbaa !219
  %i.dvp = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %224, ptr noundef nonnull align 8 dereferenceable(24) %234)
          to label %bb.aaz unwind label %bb.abk   ; 0 uses

bb.aaz:                                           ; preds = %bb.aay
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #30
  %i.dvq = load ptr, ptr %224, align 8, !tbaa !154 ; 2 uses
  %i.dvr = getelementptr inbounds nuw i8, ptr %224, i64 16 ; 2 uses
  %i.dvs = icmp eq ptr %i.dvq, %i.dvr
  br i1 %i.dvs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2183: ; preds = %bb.aaz
  %i.dvt = load i64, ptr %i.dvr, align 8, !tbaa !54
  %i.dvu = add i64 %i.dvt, 1
  call void @_ZdlPvm(ptr noundef %i.dvq, i64 noundef %i.dvu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185: ; preds = %bb.aaz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2183
  %i.dvv = load ptr, ptr %225, align 8, !tbaa !154 ; 2 uses
  %i.dvw = getelementptr inbounds nuw i8, ptr %225, i64 16 ; 2 uses
  %i.dvx = icmp eq ptr %i.dvv, %i.dvw
  br i1 %i.dvx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185
  %i.dvy = load i64, ptr %i.dvw, align 8, !tbaa !54
  %i.dvz = add i64 %i.dvy, 1
  call void @_ZdlPvm(ptr noundef %i.dvv, i64 noundef %i.dvz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2186
  %i.dwa = load ptr, ptr %233, align 8, !tbaa !154 ; 2 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %233, i64 16 ; 2 uses
  %i.dwc = icmp eq ptr %i.dwa, %i.dwb
  br i1 %i.dwc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188
  %i.dwd = load i64, ptr %i.dwb, align 8, !tbaa !54
  %i.dwe = add i64 %i.dwd, 1
  call void @_ZdlPvm(ptr noundef %i.dwa, i64 noundef %i.dwe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2189
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #30
  %i.dwf = load ptr, ptr %226, align 8, !tbaa !154 ; 2 uses
  %i.dwg = getelementptr inbounds nuw i8, ptr %226, i64 16 ; 2 uses
  %i.dwh = icmp eq ptr %i.dwf, %i.dwg
  br i1 %i.dwh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191
  %i.dwi = load i64, ptr %i.dwg, align 8, !tbaa !54
  %i.dwj = add i64 %i.dwi, 1
  call void @_ZdlPvm(ptr noundef %i.dwf, i64 noundef %i.dwj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2192
  %i.dwk = load ptr, ptr %227, align 8, !tbaa !154 ; 2 uses
  %i.dwl = getelementptr inbounds nuw i8, ptr %227, i64 16 ; 2 uses
  %i.dwm = icmp eq ptr %i.dwk, %i.dwl
  br i1 %i.dwm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194
  %i.dwn = load i64, ptr %i.dwl, align 8, !tbaa !54
  %i.dwo = add i64 %i.dwn, 1
  call void @_ZdlPvm(ptr noundef %i.dwk, i64 noundef %i.dwo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195
  %i.dwp = load ptr, ptr %231, align 8, !tbaa !154 ; 2 uses
  %i.dwq = getelementptr inbounds nuw i8, ptr %231, i64 16 ; 2 uses
  %i.dwr = icmp eq ptr %i.dwp, %i.dwq
  br i1 %i.dwr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197
  %i.dws = load i64, ptr %i.dwq, align 8, !tbaa !54
  %i.dwt = add i64 %i.dws, 1
  call void @_ZdlPvm(ptr noundef %i.dwp, i64 noundef %i.dwt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %232) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #30
  %i.dwu = load ptr, ptr %228, align 8, !tbaa !154 ; 2 uses
  %i.dwv = getelementptr inbounds nuw i8, ptr %228, i64 16 ; 2 uses
  %i.dww = icmp eq ptr %i.dwu, %i.dwv
  br i1 %i.dww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200
  %i.dwx = load i64, ptr %i.dwv, align 8, !tbaa !54
  %i.dwy = add i64 %i.dwx, 1
  call void @_ZdlPvm(ptr noundef %i.dwu, i64 noundef %i.dwy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2201
  %i.dwz = load ptr, ptr %229, align 8, !tbaa !154 ; 2 uses
  %i.dxa = getelementptr inbounds nuw i8, ptr %229, i64 16 ; 2 uses
  %i.dxb = icmp eq ptr %i.dwz, %i.dxa
  br i1 %i.dxb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203
  %i.dxc = load i64, ptr %i.dxa, align 8, !tbaa !54
  %i.dxd = add i64 %i.dxc, 1
  call void @_ZdlPvm(ptr noundef %i.dwz, i64 noundef %i.dxd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2204
  %i.dxe = load ptr, ptr %230, align 8, !tbaa !154 ; 2 uses
  %i.dxf = getelementptr inbounds nuw i8, ptr %230, i64 16 ; 2 uses
  %i.dxg = icmp eq ptr %i.dxe, %i.dxf
  br i1 %i.dxg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2206
  %i.dxh = load i64, ptr %i.dxf, align 8, !tbaa !54
  %i.dxi = add i64 %i.dxh, 1
  call void @_ZdlPvm(ptr noundef %i.dxe, i64 noundef %i.dxi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2209

end_hunk_2
begin_hunk_3_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #30
  br label %.critedge

bb.aex:                                           ; preds = %bb.aei
  %i.evg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %261) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %261) #30
  br label %bb.afm

bb.aey:                                           ; preds = %bb.aej
  %i.evh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %262) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #30
  br label %bb.afm

bb.aez:                                           ; preds = %bb.aem, %bb.ael
  %i.evi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507

bb.afa:                                           ; preds = %bb.aen
  %i.evj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504

bb.afb:                                           ; preds = %bb.aeo
  %i.evk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501

bb.afc:                                           ; preds = %bb.aep
  %i.evl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498

bb.afd:                                           ; preds = %bb.aeq
  %i.evm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

bb.afe:                                           ; preds = %bb.aer
  %i.evn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492

bb.aff:                                           ; preds = %bb.aes
  %i.evo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489

bb.afg:                                           ; preds = %bb.aet
  %i.evp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486

bb.afh:                                           ; preds = %bb.aeu
  %i.evq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483

bb.afi:                                           ; preds = %bb.aev
  %i.evr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %273) #30
  %i.evs = load ptr, ptr %263, align 8, !tbaa !154 ; 2 uses
  %i.evt = getelementptr inbounds nuw i8, ptr %263, i64 16 ; 2 uses
  %i.evu = icmp eq ptr %i.evs, %i.evt
  br i1 %i.evu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481: ; preds = %bb.afi
  %i.evv = load i64, ptr %i.evt, align 8, !tbaa !54
  %i.evw = add i64 %i.evv, 1
  call void @_ZdlPvm(ptr noundef %i.evs, i64 noundef %i.evw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483: ; preds = %bb.afi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481, %bb.afh
  %.pn790 = phi { ptr, i32 } [ %i.evq, %bb.afh ], [ %i.evr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481 ], [ %i.evr, %bb.afi ] ; 2 uses
  %i.evx = load ptr, ptr %264, align 8, !tbaa !154 ; 2 uses
  %i.evy = getelementptr inbounds nuw i8, ptr %264, i64 16 ; 2 uses
  %i.evz = icmp eq ptr %i.evx, %i.evy
  br i1 %i.evz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483
  %i.ewa = load i64, ptr %i.evy, align 8, !tbaa !54
  %i.ewb = add i64 %i.ewa, 1
  call void @_ZdlPvm(ptr noundef %i.evx, i64 noundef %i.ewb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484, %bb.afg
  %.pn790.pn = phi { ptr, i32 } [ %i.evp, %bb.afg ], [ %.pn790, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484 ], [ %.pn790, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483 ] ; 2 uses
  %i.ewc = load ptr, ptr %272, align 8, !tbaa !154 ; 2 uses
  %i.ewd = getelementptr inbounds nuw i8, ptr %272, i64 16 ; 2 uses
  %i.ewe = icmp eq ptr %i.ewc, %i.ewd
  br i1 %i.ewe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486
  %i.ewf = load i64, ptr %i.ewd, align 8, !tbaa !54
  %i.ewg = add i64 %i.ewf, 1
  call void @_ZdlPvm(ptr noundef %i.ewc, i64 noundef %i.ewg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487, %bb.aff
  %.pn790.pn.pn = phi { ptr, i32 } [ %i.evo, %bb.aff ], [ %.pn790.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487 ], [ %.pn790.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #30
  %i.ewh = load ptr, ptr %265, align 8, !tbaa !154 ; 2 uses
  %i.ewi = getelementptr inbounds nuw i8, ptr %265, i64 16 ; 2 uses
  %i.ewj = icmp eq ptr %i.ewh, %i.ewi
  br i1 %i.ewj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489
  %i.ewk = load i64, ptr %i.ewi, align 8, !tbaa !54
  %i.ewl = add i64 %i.ewk, 1
  call void @_ZdlPvm(ptr noundef %i.ewh, i64 noundef %i.ewl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490, %bb.afe
  %.pn790.pn.pn.pn = phi { ptr, i32 } [ %i.evn, %bb.afe ], [ %.pn790.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490 ], [ %.pn790.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489 ] ; 2 uses
  %i.ewm = load ptr, ptr %266, align 8, !tbaa !154 ; 2 uses
  %i.ewn = getelementptr inbounds nuw i8, ptr %266, i64 16 ; 2 uses
  %i.ewo = icmp eq ptr %i.ewm, %i.ewn
  br i1 %i.ewo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492
  %i.ewp = load i64, ptr %i.ewn, align 8, !tbaa !54
  %i.ewq = add i64 %i.ewp, 1
  call void @_ZdlPvm(ptr noundef %i.ewm, i64 noundef %i.ewq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493, %bb.afd
  %.pn790.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evm, %bb.afd ], [ %.pn790.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493 ], [ %.pn790.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492 ] ; 2 uses
  %i.ewr = load ptr, ptr %271, align 8, !tbaa !154 ; 2 uses
  %i.ews = getelementptr inbounds nuw i8, ptr %271, i64 16 ; 2 uses
  %i.ewt = icmp eq ptr %i.ewr, %i.ews
  br i1 %i.ewt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495
  %i.ewu = load i64, ptr %i.ews, align 8, !tbaa !54
  %i.ewv = add i64 %i.ewu, 1
  call void @_ZdlPvm(ptr noundef %i.ewr, i64 noundef %i.ewv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496, %bb.afc
  %.pn790.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evl, %bb.afc ], [ %.pn790.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496 ], [ %.pn790.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %271) #30
  %i.eww = load ptr, ptr %267, align 8, !tbaa !154 ; 2 uses
  %i.ewx = getelementptr inbounds nuw i8, ptr %267, i64 16 ; 2 uses
  %i.ewy = icmp eq ptr %i.eww, %i.ewx
  br i1 %i.ewy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498
  %i.ewz = load i64, ptr %i.ewx, align 8, !tbaa !54
  %i.exa = add i64 %i.ewz, 1
  call void @_ZdlPvm(ptr noundef %i.eww, i64 noundef %i.exa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499, %bb.afb
  %.pn790.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evk, %bb.afb ], [ %.pn790.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499 ], [ %.pn790.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498 ] ; 2 uses
  %i.exb = load ptr, ptr %268, align 8, !tbaa !154 ; 2 uses
  %i.exc = getelementptr inbounds nuw i8, ptr %268, i64 16 ; 2 uses
  %i.exd = icmp eq ptr %i.exb, %i.exc
  br i1 %i.exd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501
  %i.exe = load i64, ptr %i.exc, align 8, !tbaa !54
  %i.exf = add i64 %i.exe, 1
  call void @_ZdlPvm(ptr noundef %i.exb, i64 noundef %i.exf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502, %bb.afa
  %.pn790.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evj, %bb.afa ], [ %.pn790.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2502 ], [ %.pn790.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501 ] ; 2 uses
  %i.exg = load ptr, ptr %269, align 8, !tbaa !154 ; 2 uses
  %i.exh = getelementptr inbounds nuw i8, ptr %269, i64 16 ; 2 uses
  %i.exi = icmp eq ptr %i.exg, %i.exh
  br i1 %i.exi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504
  %i.exj = load i64, ptr %i.exh, align 8, !tbaa !54
  %i.exk = add i64 %i.exj, 1
  call void @_ZdlPvm(ptr noundef %i.exg, i64 noundef %i.exk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505, %bb.aez
  %.pn790.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.evi, %bb.aez ], [ %.pn790.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2505 ], [ %.pn790.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2504 ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %270) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %269) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #30
  br label %bb.afm

.critedge876.thread:                              ; preds = %.critedge855, %.critedge857, %bb.kg, %bb.le, %bb.mq, %bb.rk, %bb.abv, %.critedge876, %bb.aek, %bb.acr, %bb.abm
  %i.exl = load ptr, ptr %i.f, align 8, !tbaa !184 ; 3 uses
  %i.exm = load ptr, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.exn = ptrtoint ptr %i.exl to i64
  %i.exo = ptrtoint ptr %i.exm to i64
  %i.exp = sub i64 %i.exn, %i.exo
  %i.exq = sdiv exact i64 %i.exp, 152             ; 2 uses
  %i.exr = sub nuw i64 %i.exq, %i.r
  %i.exs = icmp ugt i64 %i.r, %i.exq
  br i1 %i.exs, label %bb.afj, label %bb.afk

bb.afj:                                           ; preds = %.critedge876.thread
  %i.ext = sub i64 0, %i.r
  call void @_ZNSt6vectorIN4bzla6parser4smt26Parser10ParsedItemESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ext)
  br label %.critedge

bb.afk:                                           ; preds = %.critedge876.thread
  %.not2666 = icmp eq i64 %i.r, 0
  br i1 %.not2666, label %.critedge, label %bb.afl

bb.afl:                                           ; preds = %bb.afk
  %i.exu = getelementptr inbounds nuw [152 x i8], ptr %i.exm, i64 %i.exr ; 3 uses
  %.not.i.i2508 = icmp eq ptr %i.exl, %i.exu
  br i1 %.not.i.i2508, label %.critedge, label %.lr.ph.i.i.i.i2509

.lr.ph.i.i.i.i2509:                               ; preds = %bb.afl, %.lr.ph.i.i.i.i2509
  %.05.i.i.i.i2510 = phi ptr [ %i.exv, %.lr.ph.i.i.i.i2509 ], [ %i.exu, %bb.afl ] ; 2 uses
  call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %.05.i.i.i.i2510) #30
  %i.exv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2510, i64 152 ; 2 uses
  %.not.i.i.i.i2511 = icmp eq ptr %i.exv, %i.exl
  br i1 %.not.i.i.i.i2511, label %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i2509, !llvm.loop !3

_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i2509
  store ptr %i.exu, ptr %i.f, align 8, !tbaa !184
  br label %.critedge

.critedge:                                        ; preds = %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.afl, %bb.afk, %bb.afj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1903, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1948, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1728, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1773, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1600, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1612, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1624, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1636, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1827, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2002, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2052, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955
  %.11590 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2209 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2245 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2155 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2281 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2426 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1479 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1537 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1564 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1600 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1612 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1624 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1636 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1045 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1809 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1827 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1845 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1728 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1984 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2002 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2052 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2124 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1448 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1120 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1773 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1948 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1903 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2173 ], [ true, %bb.afj ], [ true, %bb.afk ], [ true, %bb.afl ], [ true, %_ZSt8_DestroyIPN4bzla6parser4smt26Parser10ParsedItemES4_EvT_S6_RSaIT0_E.exit.i.i ]
  ret i1 %.11590

bb.afm:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451, %bb.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1573, %bb.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1591, %bb.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1609, %bb.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1615, %bb.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1633, %bb.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1639, %bb.my, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645, %bb.qp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818, %bb.rf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1836, %bb.rp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854, %bb.vj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1993, %bb.vt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2011, %bb.wk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030, %bb.xe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2061, %bb.aba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254, %bb.acg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2308, %bb.ady, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2453, %bb.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507, %bb.aex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1506, %bb.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555, %bb.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800, %bb.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1746, %.loopexit.split-lp2808.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1975, %bb.ur, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1921, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1885, %bb.to, %bb.yd, %bb.za, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2109, %bb.xs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182, %bb.aag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2158, %bb.zt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit985
  %.pn843.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn843.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit985 ], [ %.pn833.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443 ], [ %.pn622.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285 ], [ %.pn616.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210 ], [ %.pn629.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060 ], [ %.pn822.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2236 ], [ %.pn819.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2254 ], [ %i.dxj, %bb.aba ], [ %.pn809.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2308 ], [ %i.edg, %bb.acg ], [ %.pn800.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2453 ], [ %i.eqy, %bb.ady ], [ %.pn790.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2507 ], [ %i.evh, %bb.aey ], [ %i.evg, %bb.aex ], [ %i.ayk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1451 ], [ %i.dni, %bb.yd ], [ %.pn776, %bb.ih ], [ %.pn765.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1573 ], [ %.pn762.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1591 ], [ %.pn760, %bb.kn ], [ %i.bki, %bb.ka ], [ %.pn757.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1609 ], [ %.pn755, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1615 ], [ %.pn752.pn, %bb.lm ], [ %i.bny, %bb.kx ], [ %.pn749.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1633 ], [ %.pn747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1639 ], [ %.pn745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645 ], [ %.pn742.pn, %bb.my ], [ %.pn739.pn, %bb.mk ], [ %i.bqy, %bb.lv ], [ %i.bhm, %bb.jm ], [ %.pn717.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818 ], [ %.pn714.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1836 ], [ %.pn711.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854 ], [ %i.cnd, %bb.rp ], [ %.pn708.pn, %bb.rf ], [ %.pn705.pn, %bb.qp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp2808.loopexit.split-lp.loopexit.split-lp ], [ %.pn679.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1993 ], [ %i.dcc, %bb.vj ], [ %.pn676.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2011 ], [ %.pn673.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030 ], [ %.pn670.pn, %bb.wk ], [ %i.ddr, %bb.vt ], [ %.pn667.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2061 ], [ %lpad.loopexit.split-lp4156, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.dix, %bb.xe ], [ %.pn778.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1506 ], [ %.pn768.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1555 ], [ %.pn731.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1746 ], [ %.pn722.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800 ], [ %.pn720, %bb.ps ], [ %.pn700.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1885 ], [ %.pn691.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1975 ], [ %.pn689, %bb.ur ], [ %lpad.loopexit.split-lp2790, %bb.to ], [ %.pn682.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1921 ], [ %.pn658.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2109 ], [ %i.dlk, %bb.xs ], [ %.pn648.pn.pn.pn.pn.pn.pn, %bb.za ], [ %.pn641, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2158 ], [ %i.dsz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164 ], [ %i.dsk, %bb.zt ], [ %.pn638.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2182 ], [ %i.dug, %bb.aag ]
  resume { ptr, i32 } %.pn843.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN8bitwuzla11TermManager11mk_fp_valueERKNS_4SortERKNS_4TermERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager11mk_fp_valueERKNS_4SortERKNS_4TermERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_bvEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8bitwuzla4Term8is_valueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager11mk_fp_valueERKNS_4TermES3_S3_(ptr dead_on_unwind writable sret(%"class.bitwuzla::Term") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager12mk_bool_sortEv(ptr dead_on_unwind writable sret(%"class.bitwuzla::Sort") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN8bitwuzla11TermManager10mk_rm_sortEv(ptr dead_on_unwind writable sret(%"class.bitwuzla::Sort") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser16parse_sort_arrayERN8bitwuzla4SortE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %4 = alloca %"class.bitwuzla::Sort", align 8    ; 8 uses
  %5 = alloca %"class.bitwuzla::Sort", align 8    ; 8 uses
  %6 = alloca %"class.bitwuzla::Sort", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN8bitwuzla4SortC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN8bitwuzla4SortC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERN8bitwuzla4SortEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.f, label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.h, %bb.f, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.d = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERN8bitwuzla4SortEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.e = invoke noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.h
  %.not.i = icmp eq i32 %i.e, 4
  br i1 %.not.i, label %bb.k, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) @.str.83, i64 11, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.h, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !219
  %i.j = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.k = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.m = load i64, ptr %i.f, align 8, !tbaa !54
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZN4bzla6parser4smt26Parser10parse_rparEv.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.p = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.f
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.j
  %i.r = load i64, ptr %i.f, align 8, !tbaa !54
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZN4bzla6parser4smt26Parser10parse_rparEv.exit:   ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.x

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !246, !nonnull !209, !align !210
  invoke void @_ZN8bitwuzla11TermManager13mk_array_sortERKNS_4SortES3_(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr %6, align 8, !tbaa !268
  store ptr %i.v, ptr %1, align 8, !tbaa !268
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !253  ; 4 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !253  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i, label %_ZN8bitwuzla4SortaSERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not7.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !254
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.af = phi ptr [ %i.z, %bb.m ], [ %i.z, %bb.o ], [ %.pr.pre.i.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
end_hunk_3
