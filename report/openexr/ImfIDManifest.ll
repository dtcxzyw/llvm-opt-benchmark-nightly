Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfIDManifest?download=true
inline.NumInlined: 2191
inline.NumDeleted: 810
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK7Imf_3_410IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  %.024.i.i.i561.unr = phi ptr [ %.024.i.i.i561.ph, %.lr.ph.i.i.i559.preheader ], [ %i.ark, %.lr.ph.i.i.i559.prol ]
  %i.arn = icmp ult i32 %i.ari, 7
  br i1 %i.arn, label %_ZN7Imf_3_412_GLOBAL__N_117writePascalStringERPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.i559

.lr.ph.i.i.i559:                                  ; preds = %.lr.ph.i.i.i559.prol.loopexit, %.lr.ph.i.i.i559
  %.24 = phi ptr [ %i.asm, %.lr.ph.i.i.i559 ], [ %.24.unr, %.lr.ph.i.i.i559.prol.loopexit ] ; 9 uses
  %.05.i.i.i560 = phi i32 [ %i.asj, %.lr.ph.i.i.i559 ], [ %.05.i.i.i560.unr, %.lr.ph.i.i.i559.prol.loopexit ]
  %.024.i.i.i561 = phi ptr [ %i.ask, %.lr.ph.i.i.i559 ], [ %.024.i.i.i561.unr, %.lr.ph.i.i.i559.prol.loopexit ] ; 9 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 1
  %i.arp = load i8, ptr %.024.i.i.i561, align 1, !tbaa !35
  %i.arq = getelementptr inbounds nuw i8, ptr %.24, i64 1
  store i8 %i.arp, ptr %.24, align 1, !tbaa !35
  %i.arr = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 2
  %i.ars = load i8, ptr %i.aro, align 1, !tbaa !35
  %i.art = getelementptr inbounds nuw i8, ptr %.24, i64 2
  store i8 %i.ars, ptr %i.arq, align 1, !tbaa !35
  %i.aru = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 3
  %i.arv = load i8, ptr %i.arr, align 1, !tbaa !35
  %i.arw = getelementptr inbounds nuw i8, ptr %.24, i64 3
  store i8 %i.arv, ptr %i.art, align 1, !tbaa !35
  %i.arx = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 4
  %i.ary = load i8, ptr %i.aru, align 1, !tbaa !35
  %i.arz = getelementptr inbounds nuw i8, ptr %.24, i64 4
  store i8 %i.ary, ptr %i.arw, align 1, !tbaa !35
  %i.asa = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 5
  %i.asb = load i8, ptr %i.arx, align 1, !tbaa !35
  %i.asc = getelementptr inbounds nuw i8, ptr %.24, i64 5
  store i8 %i.asb, ptr %i.arz, align 1, !tbaa !35
  %i.asd = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 6
  %i.ase = load i8, ptr %i.asa, align 1, !tbaa !35
  %i.asf = getelementptr inbounds nuw i8, ptr %.24, i64 6
  store i8 %i.ase, ptr %i.asc, align 1, !tbaa !35
  %i.asg = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 7
  %i.ash = load i8, ptr %i.asd, align 1, !tbaa !35
  %i.asi = getelementptr inbounds nuw i8, ptr %.24, i64 7
  store i8 %i.ash, ptr %i.asf, align 1, !tbaa !35
  %i.asj = add nsw i32 %.05.i.i.i560, -8          ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.024.i.i.i561, i64 8
  %i.asl = load i8, ptr %i.asg, align 1, !tbaa !35
  %i.asm = getelementptr inbounds nuw i8, ptr %.24, i64 8 ; 2 uses
  store i8 %i.asl, ptr %i.asi, align 1, !tbaa !35
  %.not.i.i.i562.7 = icmp eq i32 %i.asj, 0
  br i1 %.not.i.i.i562.7, label %_ZN7Imf_3_412_GLOBAL__N_117writePascalStringERPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.i559, !llvm.loop !214

_ZN7Imf_3_412_GLOBAL__N_117writePascalStringERPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i.i559.prol.loopexit, %.lr.ph.i.i.i559, %middle.block2034, %vec.epilog.middle.block2049, %_ZN7Imf_3_412_GLOBAL__N_115writeStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPcRKT_i.exit552
  %.25 = phi ptr [ %i.aqo, %_ZN7Imf_3_412_GLOBAL__N_115writeStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPcRKT_i.exit552 ], [ %i.ard, %vec.epilog.middle.block2049 ], [ %i.aqw, %middle.block2034 ], [ %.lcssa2143.unr, %.lr.ph.i.i.i559.prol.loopexit ], [ %i.asm, %.lr.ph.i.i.i559 ] ; 3 uses
  %.251979 = ptrtoaddr ptr %.25 to i64
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aky, i64 120
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !33 ; 5 uses
  %i.asp = trunc i64 %i.aso to i32                ; 6 uses
  store i32 %i.asp, ptr %.25, align 1
  %i.asq = getelementptr inbounds nuw i8, ptr %.25, i64 4 ; 7 uses
  %.not3.i.i.i571 = icmp eq i32 %i.asp, 0
  br i1 %.not3.i.i.i571, label %.loopexit1130, label %iter.check1997

iter.check1997:                                   ; preds = %_ZN7Imf_3_412_GLOBAL__N_117writePascalStringERPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aky, i64 112
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !34 ; 7 uses
  %i.ast = and i64 %i.aso, 4294967295             ; 4 uses
  %min.iters.check1981 = icmp samesign ult i64 %i.ast, 4
  br i1 %min.iters.check1981, label %.lr.ph.i.i.i573.preheader, label %vector.memcheck1982

vector.memcheck1982:                              ; preds = %iter.check1997
  %i.asu = ptrtoaddr ptr %i.ass to i64
  %i.asv = sub i64 %.251979, %i.asu
  %i.asw = add i64 %i.asv, 3
  %diff.check1983 = icmp ult i64 %i.asw, 31
  br i1 %diff.check1983, label %.lr.ph.i.i.i573.preheader, label %vector.main.loop.iter.check1984

vector.main.loop.iter.check1984:                  ; preds = %vector.memcheck1982
  %min.iters.check1985 = icmp samesign ult i64 %i.ast, 32
  br i1 %min.iters.check1985, label %vec.epilog.ph2001, label %vector.ph1986

vector.ph1986:                                    ; preds = %vector.main.loop.iter.check1984
  %i.asx = and i64 %i.aso, 28
  %n.vec1987 = and i64 %i.aso, 4294967264         ; 6 uses
  %i.asy = getelementptr i8, ptr %i.asq, i64 %n.vec1987 ; 2 uses
  %i.asz = trunc nuw i64 %n.vec1987 to i32
  %i.ata = sub i32 %i.asp, %i.asz
  %i.atb = getelementptr i8, ptr %i.ass, i64 %n.vec1987
  br label %vector.body1988

vector.body1988:                                  ; preds = %vector.ph1986, %vector.body1988
  %index1989 = phi i64 [ 0, %vector.ph1986 ], [ %index.next1994, %vector.body1988 ] ; 3 uses
  %next.gep1990 = getelementptr i8, ptr %i.asq, i64 %index1989 ; 2 uses
  %next.gep1991 = getelementptr i8, ptr %i.ass, i64 %index1989 ; 2 uses
  %i.atc = getelementptr i8, ptr %next.gep1991, i64 16
  %wide.load1992 = load <16 x i8>, ptr %next.gep1991, align 1, !tbaa !35
  %wide.load1993 = load <16 x i8>, ptr %i.atc, align 1, !tbaa !35
  %i.atd = getelementptr i8, ptr %next.gep1990, i64 16
  store <16 x i8> %wide.load1992, ptr %next.gep1990, align 1, !tbaa !35
  store <16 x i8> %wide.load1993, ptr %i.atd, align 1, !tbaa !35
  %index.next1994 = add nuw i64 %index1989, 32    ; 2 uses
  %i.ate = icmp eq i64 %index.next1994, %n.vec1987
  br i1 %i.ate, label %middle.block1995, label %vector.body1988, !llvm.loop !215

middle.block1995:                                 ; preds = %vector.body1988
  %cmp.n1996 = icmp eq i64 %i.ast, %n.vec1987
  br i1 %cmp.n1996, label %.loopexit1130, label %vec.epilog.iter.check1998

vec.epilog.iter.check1998:                        ; preds = %middle.block1995
  %min.epilog.iters.check2000 = icmp eq i64 %i.asx, 0
  br i1 %min.epilog.iters.check2000, label %.lr.ph.i.i.i573.preheader, label %vec.epilog.ph2001, !prof !231

vec.epilog.ph2001:                                ; preds = %vector.main.loop.iter.check1984, %vec.epilog.iter.check1998
  %vec.epilog.resume.val2002 = phi i64 [ %n.vec1987, %vec.epilog.iter.check1998 ], [ 0, %vector.main.loop.iter.check1984 ]
  %n.vec2003 = and i64 %i.aso, 4294967292         ; 5 uses
  %i.atf = getelementptr i8, ptr %i.asq, i64 %n.vec2003 ; 2 uses
  %i.atg = trunc nuw i64 %n.vec2003 to i32
  %i.ath = sub i32 %i.asp, %i.atg
  %i.ati = getelementptr i8, ptr %i.ass, i64 %n.vec2003
  br label %vec.epilog.vector.body2004

vec.epilog.vector.body2004:                       ; preds = %vec.epilog.vector.body2004, %vec.epilog.ph2001
  %index2005 = phi i64 [ %vec.epilog.resume.val2002, %vec.epilog.ph2001 ], [ %index.next2009, %vec.epilog.vector.body2004 ] ; 3 uses
  %next.gep2006 = getelementptr i8, ptr %i.asq, i64 %index2005
  %next.gep2007 = getelementptr i8, ptr %i.ass, i64 %index2005
  %wide.load2008 = load <4 x i8>, ptr %next.gep2007, align 1, !tbaa !35
  store <4 x i8> %wide.load2008, ptr %next.gep2006, align 1, !tbaa !35
  %index.next2009 = add nuw i64 %index2005, 4     ; 2 uses
  %i.atj = icmp eq i64 %index.next2009, %n.vec2003
  br i1 %i.atj, label %vec.epilog.middle.block2010, label %vec.epilog.vector.body2004, !llvm.loop !216

vec.epilog.middle.block2010:                      ; preds = %vec.epilog.vector.body2004
  %cmp.n2011 = icmp eq i64 %i.ast, %n.vec2003
  br i1 %cmp.n2011, label %.loopexit1130, label %.lr.ph.i.i.i573.preheader

.lr.ph.i.i.i573.preheader:                        ; preds = %iter.check1997, %vector.memcheck1982, %vec.epilog.iter.check1998, %vec.epilog.middle.block2010
  %.26.ph = phi ptr [ %i.asq, %iter.check1997 ], [ %i.asq, %vector.memcheck1982 ], [ %i.asy, %vec.epilog.iter.check1998 ], [ %i.atf, %vec.epilog.middle.block2010 ] ; 2 uses
  %.05.i.i.i574.ph = phi i32 [ %i.asp, %iter.check1997 ], [ %i.asp, %vector.memcheck1982 ], [ %i.ata, %vec.epilog.iter.check1998 ], [ %i.ath, %vec.epilog.middle.block2010 ] ; 4 uses
  %.024.i.i.i575.ph = phi ptr [ %i.ass, %iter.check1997 ], [ %i.ass, %vector.memcheck1982 ], [ %i.atb, %vec.epilog.iter.check1998 ], [ %i.ati, %vec.epilog.middle.block2010 ] ; 2 uses
  %i.atk = add nsw i32 %.05.i.i.i574.ph, -1
  %xtraiter2266 = and i32 %.05.i.i.i574.ph, 7     ; 2 uses
  %lcmp.mod2267.not = icmp eq i32 %xtraiter2266, 0
  br i1 %lcmp.mod2267.not, label %.lr.ph.i.i.i573.prol.loopexit, label %.lr.ph.i.i.i573.prol

.lr.ph.i.i.i573.prol:                             ; preds = %.lr.ph.i.i.i573.preheader, %.lr.ph.i.i.i573.prol
  %.26.prol = phi ptr [ %i.ato, %.lr.ph.i.i.i573.prol ], [ %.26.ph, %.lr.ph.i.i.i573.preheader ] ; 2 uses
  %.05.i.i.i574.prol = phi i32 [ %i.atl, %.lr.ph.i.i.i573.prol ], [ %.05.i.i.i574.ph, %.lr.ph.i.i.i573.preheader ]
  %.024.i.i.i575.prol = phi ptr [ %i.atm, %.lr.ph.i.i.i573.prol ], [ %.024.i.i.i575.ph, %.lr.ph.i.i.i573.preheader ] ; 2 uses
  %prol.iter2268 = phi i32 [ %prol.iter2268.next, %.lr.ph.i.i.i573.prol ], [ 0, %.lr.ph.i.i.i573.preheader ]
  %i.atl = add nsw i32 %.05.i.i.i574.prol, -1     ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.024.i.i.i575.prol, i64 1 ; 2 uses
  %i.atn = load i8, ptr %.024.i.i.i575.prol, align 1, !tbaa !35
  %i.ato = getelementptr inbounds nuw i8, ptr %.26.prol, i64 1 ; 3 uses
  store i8 %i.atn, ptr %.26.prol, align 1, !tbaa !35
  %prol.iter2268.next = add i32 %prol.iter2268, 1 ; 2 uses
  %prol.iter2268.cmp.not = icmp eq i32 %prol.iter2268.next, %xtraiter2266
  br i1 %prol.iter2268.cmp.not, label %.lr.ph.i.i.i573.prol.loopexit, label %.lr.ph.i.i.i573.prol, !llvm.loop !217

.lr.ph.i.i.i573.prol.loopexit:                    ; preds = %.lr.ph.i.i.i573.prol, %.lr.ph.i.i.i573.preheader
  %.lcssa2144.unr = phi ptr [ poison, %.lr.ph.i.i.i573.preheader ], [ %i.ato, %.lr.ph.i.i.i573.prol ]
  %.26.unr = phi ptr [ %.26.ph, %.lr.ph.i.i.i573.preheader ], [ %i.ato, %.lr.ph.i.i.i573.prol ]
  %.05.i.i.i574.unr = phi i32 [ %.05.i.i.i574.ph, %.lr.ph.i.i.i573.preheader ], [ %i.atl, %.lr.ph.i.i.i573.prol ]
  %.024.i.i.i575.unr = phi ptr [ %.024.i.i.i575.ph, %.lr.ph.i.i.i573.preheader ], [ %i.atm, %.lr.ph.i.i.i573.prol ]
  %i.atp = icmp ult i32 %i.atk, 7
  br i1 %i.atp, label %.loopexit1130, label %.lr.ph.i.i.i573

.lr.ph.i.i.i573:                                  ; preds = %.lr.ph.i.i.i573.prol.loopexit, %.lr.ph.i.i.i573
  %.26 = phi ptr [ %i.auo, %.lr.ph.i.i.i573 ], [ %.26.unr, %.lr.ph.i.i.i573.prol.loopexit ] ; 9 uses
  %.05.i.i.i574 = phi i32 [ %i.aul, %.lr.ph.i.i.i573 ], [ %.05.i.i.i574.unr, %.lr.ph.i.i.i573.prol.loopexit ]
  %.024.i.i.i575 = phi ptr [ %i.aum, %.lr.ph.i.i.i573 ], [ %.024.i.i.i575.unr, %.lr.ph.i.i.i573.prol.loopexit ] ; 9 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 1
  %i.atr = load i8, ptr %.024.i.i.i575, align 1, !tbaa !35
  %i.ats = getelementptr inbounds nuw i8, ptr %.26, i64 1
  store i8 %i.atr, ptr %.26, align 1, !tbaa !35
  %i.att = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 2
  %i.atu = load i8, ptr %i.atq, align 1, !tbaa !35
  %i.atv = getelementptr inbounds nuw i8, ptr %.26, i64 2
  store i8 %i.atu, ptr %i.ats, align 1, !tbaa !35
  %i.atw = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 3
  %i.atx = load i8, ptr %i.att, align 1, !tbaa !35
  %i.aty = getelementptr inbounds nuw i8, ptr %.26, i64 3
  store i8 %i.atx, ptr %i.atv, align 1, !tbaa !35
  %i.atz = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 4
  %i.aua = load i8, ptr %i.atw, align 1, !tbaa !35
  %i.aub = getelementptr inbounds nuw i8, ptr %.26, i64 4
  store i8 %i.aua, ptr %i.aty, align 1, !tbaa !35
  %i.auc = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 5
  %i.aud = load i8, ptr %i.atz, align 1, !tbaa !35
  %i.aue = getelementptr inbounds nuw i8, ptr %.26, i64 5
  store i8 %i.aud, ptr %i.aub, align 1, !tbaa !35
  %i.auf = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 6
  %i.aug = load i8, ptr %i.auc, align 1, !tbaa !35
  %i.auh = getelementptr inbounds nuw i8, ptr %.26, i64 6
  store i8 %i.aug, ptr %i.aue, align 1, !tbaa !35
  %i.aui = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 7
  %i.auj = load i8, ptr %i.auf, align 1, !tbaa !35
  %i.auk = getelementptr inbounds nuw i8, ptr %.26, i64 7
  store i8 %i.auj, ptr %i.auh, align 1, !tbaa !35
  %i.aul = add nsw i32 %.05.i.i.i574, -8          ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %.024.i.i.i575, i64 8
  %i.aun = load i8, ptr %i.aui, align 1, !tbaa !35
  %i.auo = getelementptr inbounds nuw i8, ptr %.26, i64 8 ; 2 uses
  store i8 %i.aun, ptr %i.auk, align 1, !tbaa !35
  %.not.i.i.i576.7 = icmp eq i32 %i.aul, 0
  br i1 %.not.i.i.i576.7, label %.loopexit1130, label %.lr.ph.i.i.i573, !llvm.loop !218

.loopexit1130:                                    ; preds = %.lr.ph.i.i.i573.prol.loopexit, %.lr.ph.i.i.i573, %middle.block1995, %vec.epilog.middle.block2010, %_ZN7Imf_3_412_GLOBAL__N_117writePascalStringERPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.27 = phi ptr [ %i.asq, %_ZN7Imf_3_412_GLOBAL__N_117writePascalStringERPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.atf, %vec.epilog.middle.block2010 ], [ %i.asy, %middle.block1995 ], [ %.lcssa2144.unr, %.lr.ph.i.i.i573.prol.loopexit ], [ %i.auo, %.lr.ph.i.i.i573 ] ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.0828.0.lcssa, i64 %.01461421
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !35 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.27, i64 1
  store i8 %i.auq, ptr %.27, align 1, !tbaa !35
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aky, i64 184
  %i.aut = load i64, ptr %i.aus, align 8, !tbaa !49
  %i.auu = trunc i64 %i.aut to i32
  store i32 %i.auu, ptr %i.aur, align 1
  %i.auv = getelementptr inbounds nuw i8, ptr %.27, i64 5 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aky, i64 168
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !51 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aky, i64 152 ; 2 uses
  %.not11211411 = icmp eq ptr %i.aux, %i.auy
  br i1 %.not11211411, label %._crit_edge1417, label %.lr.ph1416

._crit_edge1417:                                  ; preds = %._crit_edge1409, %.loopexit1130
  %.2985.lcssa = phi ptr [ %i.auv, %.loopexit1130 ], [ %.4.lcssa, %._crit_edge1409 ] ; 2 uses
  %i.auz = add nuw nsw i64 %.01461421, 1          ; 2 uses
  %i.ava = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.avb = load ptr, ptr %0, align 8, !tbaa !42   ; 2 uses
  %i.avc = ptrtoint ptr %i.ava to i64
  %i.avd = ptrtoint ptr %i.avb to i64
  %i.ave = sub i64 %i.avc, %i.avd
  %i.avf = sdiv exact i64 %i.ave, 208
  %i.avg = icmp ult i64 %i.auz, %i.avf
  br i1 %i.avg, label %bb.eo, label %._crit_edge1424, !llvm.loop !219

.lr.ph1416:                                       ; preds = %.loopexit1130, %._crit_edge1409
  %.01451414 = phi i64 [ %i.avr, %._crit_edge1409 ], [ 0, %.loopexit1130 ]
  %.sroa.0742.01413 = phi ptr [ %i.avv, %._crit_edge1409 ], [ %i.aux, %.loopexit1130 ] ; 3 uses
  %.29851412 = phi ptr [ %.4.lcssa, %._crit_edge1409 ], [ %i.auv, %.loopexit1130 ] ; 6 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.sroa.0742.01413, i64 32 ; 2 uses
  %i.avi = load i64, ptr %i.avh, align 8, !tbaa !76
  %i.avj = sub i64 %i.avi, %.01451414             ; 3 uses
  switch i8 %i.auq, label %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit [
    i8 0, label %bb.er
    i8 1, label %bb.es
    i8 2, label %.preheader
  ]

bb.er:                                            ; preds = %.lr.ph1416
  store i64 %i.avj, ptr %.29851412, align 1
  %i.avk = getelementptr inbounds nuw i8, ptr %.29851412, i64 8
  br label %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit

bb.es:                                            ; preds = %.lr.ph1416
  %i.avl = trunc i64 %i.avj to i32
  store i32 %i.avl, ptr %.29851412, align 1
  %i.avm = getelementptr inbounds nuw i8, ptr %.29851412, i64 4
  br label %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit

.preheader:                                       ; preds = %.lr.ph1416, %.preheader
  %.28 = phi ptr [ %i.avq, %.preheader ], [ %.29851412, %.lr.ph1416 ] ; 2 uses
  %.06.i = phi i64 [ %i.avp, %.preheader ], [ %i.avj, %.lr.ph1416 ] ; 2 uses
  %i.avn = trunc i64 %.06.i to i8
  %i.avo = and i8 %i.avn, 127
  %i.avp = lshr i64 %.06.i, 7                     ; 2 uses
  %.not.i603 = icmp eq i64 %i.avp, 0              ; 2 uses
  %masksel.i = select i1 %.not.i603, i8 0, i8 -128
  %.0.i604 = or disjoint i8 %masksel.i, %i.avo
  %i.avq = getelementptr inbounds nuw i8, ptr %.28, i64 1 ; 2 uses
  store i8 %.0.i604, ptr %.28, align 1, !tbaa !35
  br i1 %.not.i603, label %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit, label %.preheader, !llvm.loop !188

_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit: ; preds = %.preheader, %bb.es, %bb.er, %.lr.ph1416
  %.3986 = phi ptr [ %.29851412, %.lr.ph1416 ], [ %i.avk, %bb.er ], [ %i.avm, %bb.es ], [ %i.avq, %.preheader ] ; 2 uses
  %i.avr = load i64, ptr %i.avh, align 8, !tbaa !76
  %i.avs = load ptr, ptr %i.ano, align 8, !tbaa !27
  %i.avt = load ptr, ptr %i.ann, align 8, !tbaa !28
  %.not1433 = icmp eq ptr %i.avs, %i.avt
  br i1 %.not1433, label %._crit_edge1409, label %.lr.ph1408

.lr.ph1408:                                       ; preds = %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.0742.01413, i64 40
  br label %bb.et

._crit_edge1409:                                  ; preds = %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit642, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit
  %.4.lcssa = phi ptr [ %.3986, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit ], [ %i.aya, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit642 ] ; 2 uses
  %i.avv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0742.01413) #36 ; 2 uses
  %.not1121 = icmp eq ptr %i.avv, %i.auy
  br i1 %.not1121, label %._crit_edge1417, label %.lr.ph1416, !llvm.loop !220

bb.et:                                            ; preds = %.lr.ph1408, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit642
  %.01441407 = phi i64 [ 0, %.lr.ph1408 ], [ %i.ayb, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit642 ] ; 2 uses
  %.41406 = phi ptr [ %.3986, %.lr.ph1408 ], [ %i.aya, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit642 ]
  %i.avw = load ptr, ptr %i.avu, align 8, !tbaa !28
  %i.avx = getelementptr inbounds nuw [32 x i8], ptr %i.avw, i64 %.01441407 ; 3 uses
  %i.avy = load ptr, ptr %i.d, align 8, !tbaa !72 ; 2 uses
  %.not10.i.i.i.i605 = icmp eq ptr %i.avy, null
  br i1 %.not10.i.i.i.i605, label %.critedge.i626, label %.lr.ph.i.i.i.i606

.lr.ph.i.i.i.i606:                                ; preds = %bb.et
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avx, i64 8
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !33 ; 4 uses
  %i.awb = load ptr, ptr %i.avx, align 8          ; 2 uses
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i612, %.lr.ph.i.i.i.i606
  %.012.i.i.i.i607 = phi ptr [ %i.avy, %.lr.ph.i.i.i.i606 ], [ %.1.i.i.i.i617, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i612 ] ; 6 uses
  %.0811.i.i.i.i608 = phi ptr [ %i.c, %.lr.ph.i.i.i.i606 ], [ %.19.i.i.i.i614, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i612 ] ; 3 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i607, i64 40
  %i.awd = load i64, ptr %i.awc, align 8, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i609 = call i64 @llvm.umin.i64(i64 %i.awa, i64 %i.awd) ; 2 uses
  %i.awe = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i609, 0
  br i1 %i.awe, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i632, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i610

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i610: ; preds = %bb.eu
  %i.awf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i607, i64 32
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !34
  %i.awh = call i32 @memcmp(ptr noundef %i.awg, ptr noundef %i.awb, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i609) #32 ; 2 uses
  %.not.i.i.i.i.i.i.i611 = icmp eq i32 %i.awh, 0
  br i1 %.not.i.i.i.i.i.i.i611, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i632, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i612

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i632: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i610, %bb.eu
  %i.awi = sub i64 %i.awd, %i.awa
  %spec.select7.i.i.i.i.i.i.i.i633 = call i64 @llvm.smax.i64(i64 %i.awi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i634 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i633, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i635 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i634 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i612

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i612: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i632, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i610
  %.0.i.i.i.i.i.i.i613 = phi i32 [ %i.awh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i610 ], [ %.0.i6.i.i.i.i.i.i.i635, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i632 ]
  %i.awj = icmp slt i32 %.0.i.i.i.i.i.i.i613, 0   ; 4 uses
  %.19.i.i.i.i614 = select i1 %i.awj, ptr %.0811.i.i.i.i608, ptr %.012.i.i.i.i607 ; 5 uses
  %.1.in.v.i.i.i.i615 = select i1 %i.awj, i64 24, i64 16
  %.1.in.i.i.i.i616 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i607, i64 %.1.in.v.i.i.i.i615
  %.1.i.i.i.i617 = load ptr, ptr %.1.in.i.i.i.i616, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i618 = icmp eq ptr %.1.i.i.i.i617, null
  br i1 %.not.i.i.i.i618, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i619, label %bb.eu, !llvm.loop !153

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i619: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i612
  %i.awk = icmp eq ptr %.19.i.i.i.i614, %i.c
  br i1 %i.awk, label %.critedge.i626, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i619
  %.19.i.i.i.i614.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.awj, ptr %.0811.i.i.i.i608, ptr %.012.i.i.i.i607
  %.19.i.i.i.i614.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i614.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.awl = load i64, ptr %.19.i.i.i.i614.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i.i.i620 = call i64 @llvm.umin.i64(i64 %i.awl, i64 %i.awa) ; 2 uses
  %i.awm = icmp eq i64 %.sroa.speculated.i.i.i.i620, 0
  br i1 %i.awm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i628, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i621

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i621: ; preds = %bb.ev
  %.19.i.i.i.i614.sroa.sel980.v.sroa.sel.v.sroa.sel.v = select i1 %i.awj, ptr %.0811.i.i.i.i608, ptr %.012.i.i.i.i607
  %.19.i.i.i.i614.sroa.sel980.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i614.sroa.sel980.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.awn = load ptr, ptr %.19.i.i.i.i614.sroa.sel980.v.sroa.sel.v.sroa.sel, align 8, !tbaa !34
  %i.awo = call i32 @memcmp(ptr noundef %i.awb, ptr noundef %i.awn, i64 noundef %.sroa.speculated.i.i.i.i620) #32 ; 2 uses
  %.not.i.i.i4.i622 = icmp eq i32 %i.awo, 0
  br i1 %.not.i.i.i4.i622, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i628, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i623

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i628: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i621, %bb.ev
  %i.awp = sub i64 %i.awa, %i.awl
  %spec.select7.i.i.i.i.i629 = call i64 @llvm.smax.i64(i64 %i.awp, i64 -2147483648)
  %.08.i.i.i.i.i630 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i629, i64 2147483647)
  %.0.i6.i.i.i.i631 = trunc nsw i64 %.08.i.i.i.i.i630 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i623

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i623: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i628, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i621
  %.0.i.i.i.i624 = phi i32 [ %i.awo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i621 ], [ %.0.i6.i.i.i.i631, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i628 ]
  %i.awq = icmp slt i32 %.0.i.i.i.i624, 0
  br i1 %i.awq, label %.critedge.i626, label %bb.fb

.critedge.i626:                                   ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i623, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i619, %bb.et
  %.08.lcssa.i.i.i12.i627 = phi ptr [ %.19.i.i.i.i614, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i623 ], [ %.19.i.i.i.i614, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i619 ], [ %i.c, %bb.et ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.avx, ptr %3, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %9, ptr %2, align 8, !tbaa !234
  %i.awr = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34
          to label %.noexc729 unwind label %.loopexit ; 8 uses

.noexc729:                                        ; preds = %.critedge.i626
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.awr, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc730 unwind label %.loopexit

.noexc730:                                        ; preds = %.noexc729
  store ptr %i.awr, ptr %i.ajt, align 8, !tbaa !100
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 32 ; 3 uses
  %i.awt = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.08.lcssa.i.i.i12.i627, ptr noundef nonnull align 8 dereferenceable(32) %i.aws)
          to label %bb.ew unwind label %bb.ez     ; 2 uses

bb.ew:                                            ; preds = %.noexc730
  %i.awu = extractvalue { ptr, ptr } %i.awt, 0    ; 2 uses
  %i.awv = extractvalue { ptr, ptr } %i.awt, 1    ; 5 uses
  %.not.i712 = icmp eq ptr %i.awv, null
  br i1 %.not.i712, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.not.i.i.i713 = icmp ne ptr %i.awu, null
  %i.aww = icmp eq ptr %i.awv, %i.c
  %or.cond.i.i.i714 = or i1 %.not.i.i.i713, %i.aww
  br i1 %or.cond.i.i.i714, label %.thread.i720, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awr, i64 40
  %i.awy = load i64, ptr %i.awx, align 8, !tbaa !33 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awv, i64 40
  %i.axa = load i64, ptr %i.awz, align 8, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i715 = call i64 @llvm.umin.i64(i64 %i.axa, i64 %i.awy) ; 2 uses
  %i.axb = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i715, 0
  br i1 %i.axb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i722, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i716

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i716: ; preds = %bb.ey
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awv, i64 32
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !34
  %i.axe = load ptr, ptr %i.aws, align 8, !tbaa !34
  %i.axf = call i32 @memcmp(ptr noundef %i.axe, ptr noundef %i.axd, i64 noundef %.sroa.speculated.i.i.i.i.i.i715) #32 ; 2 uses
  %.not.i.i.i.i.i.i717 = icmp eq i32 %i.axf, 0
  br i1 %.not.i.i.i.i.i.i717, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i722, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i718

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i722: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i716, %bb.ey
  %i.axg = sub i64 %i.awy, %i.axa
  %spec.select7.i.i.i.i.i.i.i723 = call i64 @llvm.smax.i64(i64 %i.axg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i724 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i723, i64 2147483647)
  %.0.i6.i.i.i.i.i.i725 = trunc nsw i64 %.08.i.i.i.i.i.i.i724 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i718

end_hunk_0
