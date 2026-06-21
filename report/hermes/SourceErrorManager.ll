inline.NumInlined: 1564
inline.NumDeleted: 774
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_T1_":bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i33.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i28.i.i
  %i.fd = getelementptr inbounds i8, ptr %storemerge3393, i64 -40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !90 ; 2 uses
  %i.ff = load i128, ptr %i.fe, align 1
  %i.fg = xor i128 %i.ff, 43134731028289254705102659877621165940
  %i.fh = getelementptr i8, ptr %i.fe, i64 7
  %i.fi = load i128, ptr %i.fh, align 1
  %i.fj = xor i128 %i.fi, 133449583543812656632503265877593235577
  %i.fk = or i128 %i.fg, %i.fj
  %i.fl = icmp ne i128 %i.fk, 0
  %i.fm = zext i1 %i.fl to i32
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.thread78.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i28.i.i
  %.old89.i.i = icmp ult ptr %i.ef, %i.ey
  br i1 %.old89.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.thread78.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.thread78.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i33.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i.i
  br i1 %or.cond10.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i47.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i40.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i47.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.thread78.i.i"
  %i.fo = load ptr, ptr %i.h, align 8, !tbaa !90  ; 2 uses
  %i.fp = load i128, ptr %i.fo, align 1
  %i.fq = xor i128 %i.fp, 43134731028289254705102659877621165940
  %i.fr = getelementptr i8, ptr %i.fo, i64 7
  %i.fs = load i128, ptr %i.fr, align 1
  %i.ft = xor i128 %i.fs, 133449583543812656632503265877593235577
  %i.fu = or i128 %i.fq, %i.ft
  %i.fv = icmp ne i128 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i40.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i40.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i47.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.thread78.i.i"
  %i.fy = load i32, ptr %i.dl, align 8, !tbaa !131
  %i.fz = icmp eq i32 %i.fy, 0
  %i.ga = getelementptr inbounds i8, ptr %storemerge3393, i64 -64
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  %or.cond7.not17.i.i41.i.i = select i1 %i.fz, i1 %i.gc, i1 false
  %i.gd = getelementptr inbounds i8, ptr %storemerge3393, i64 -32
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = icmp eq i64 %i.ge, 23
  %or.cond13.i.i42.i.i = select i1 %or.cond7.not17.i.i41.i.i, i1 %i.gf, i1 false
  br i1 %or.cond13.i.i42.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i45.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i45.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i40.i.i
  %i.gg = getelementptr inbounds i8, ptr %storemerge3393, i64 -40
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !90 ; 2 uses
  %i.gi = load i128, ptr %i.gh, align 1
  %i.gj = xor i128 %i.gi, 43134731028289254705102659877621165940
  %i.gk = getelementptr i8, ptr %i.gh, i64 7
  %i.gl = load i128, ptr %i.gk, align 1
  %i.gm = xor i128 %i.gl, 133449583543812656632503265877593235577
  %i.gn = or i128 %i.gj, %i.gm
  %i.go = icmp ne i128 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i40.i.i
  %.old91.i.i = icmp ult ptr %i.do, %i.gb
  br i1 %.old91.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i45.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i47.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i.i
  br i1 %or.cond10.i.i.i.i, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59_crit_edge.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i52.i.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59_crit_edge.i.i: ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59.i.i: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59_crit_edge.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i.i
  %i.gr = phi ptr [ %.pre.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59_crit_edge.i.i ], [ %i.ds, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i.i ] ; 2 uses
  %i.gs = load i128, ptr %i.gr, align 1
  %i.gt = xor i128 %i.gs, 43134731028289254705102659877621165940
  %i.gu = getelementptr i8, ptr %i.gr, i64 7
  %i.gv = load i128, ptr %i.gu, align 1
  %i.gw = xor i128 %i.gv, 133449583543812656632503265877593235577
  %i.gx = or i128 %i.gt, %i.gw
  %i.gy = icmp ne i128 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.thread84.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i52.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i52.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59.i.i, %bb.m
  %i.hb = load i32, ptr %i.dl, align 8, !tbaa !131
  %i.hc = icmp eq i32 %i.hb, 0
  %i.hd = getelementptr inbounds i8, ptr %storemerge3393, i64 -64
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  %or.cond7.not17.i.i53.i.i = select i1 %i.hc, i1 %i.hf, i1 false
  %i.hg = getelementptr inbounds i8, ptr %storemerge3393, i64 -32
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = icmp eq i64 %i.hh, 23
  %or.cond13.i.i54.i.i = select i1 %or.cond7.not17.i.i53.i.i, i1 %i.hi, i1 false
  br i1 %or.cond13.i.i54.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i57.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i57.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i52.i.i
  %i.hj = getelementptr inbounds i8, ptr %storemerge3393, i64 -40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !90 ; 2 uses
  %i.hl = load i128, ptr %i.hk, align 1
  %i.hm = xor i128 %i.hl, 43134731028289254705102659877621165940
  %i.hn = getelementptr i8, ptr %i.hk, i64 7
  %i.ho = load i128, ptr %i.hn, align 1
  %i.hp = xor i128 %i.ho, 133449583543812656632503265877593235577
  %i.hq = or i128 %i.hm, %i.hp
  %i.hr = icmp ne i128 %i.hq, 0
  %i.hs = zext i1 %i.hr to i32
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.thread84.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i52.i.i
  %.old93.i.i = icmp ult ptr %i.do, %i.he
  br i1 %.old93.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.thread84.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.thread84.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i57.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i59.i.i
  %i.hu = load i32, ptr %i.dk, align 8, !tbaa !131
  %i.hv = icmp eq i32 %i.hu, 0
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8            ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  %or.cond.not15.i.i62.i.i = select i1 %i.hv, i1 %i.hy, i1 false
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = icmp eq i64 %i.ia, 23
  %or.cond10.i.i63.i.i = select i1 %or.cond.not15.i.i62.i.i, i1 %i.ib, i1 false
  br i1 %or.cond10.i.i63.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i71.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i64.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i71.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.thread84.i.i"
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !90 ; 2 uses
  %i.ie = load i128, ptr %i.id, align 1
  %i.if = xor i128 %i.ie, 43134731028289254705102659877621165940
  %i.ig = getelementptr i8, ptr %i.id, i64 7
  %i.ih = load i128, ptr %i.ig, align 1
  %i.ii = xor i128 %i.ih, 133449583543812656632503265877593235577
  %i.ij = or i128 %i.if, %i.ii
  %i.ik = icmp ne i128 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i64.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i64.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i71.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.thread84.i.i"
  %i.in = load i32, ptr %i.dl, align 8, !tbaa !131
  %i.io = icmp eq i32 %i.in, 0
  %i.ip = getelementptr inbounds i8, ptr %storemerge3393, i64 -64
  %i.iq = load ptr, ptr %i.ip, align 8            ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  %or.cond7.not17.i.i65.i.i = select i1 %i.io, i1 %i.ir, i1 false
  %i.is = getelementptr inbounds i8, ptr %storemerge3393, i64 -32
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = icmp eq i64 %i.it, 23
  %or.cond13.i.i66.i.i = select i1 %or.cond7.not17.i.i65.i.i, i1 %i.iu, i1 false
  br i1 %or.cond13.i.i66.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i64.i.i
  %i.iv = getelementptr inbounds i8, ptr %storemerge3393, i64 -40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !90 ; 2 uses
  %i.ix = load i128, ptr %i.iw, align 1
  %i.iy = xor i128 %i.ix, 43134731028289254705102659877621165940
  %i.iz = getelementptr i8, ptr %i.iw, i64 7
  %i.ja = load i128, ptr %i.iz, align 1
  %i.jb = xor i128 %i.ja, 133449583543812656632503265877593235577
  %i.jc = or i128 %i.iy, %i.jb
  %i.jd = icmp ne i128 %i.jc, 0
  %i.je = zext i1 %i.jd to i32
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i64.i.i
  %.old95.i.i = icmp ult ptr %i.hx, %i.iq
  br i1 %.old95.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i71.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i57.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i45.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i33.i.i
  %.sink.i.i = phi ptr [ %i.dl, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.i.i" ], [ %i.dk, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.i.i" ], [ %i.dk, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i" ], [ %i.dk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i33.i.i ], [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i45.i.i ], [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i57.i.i ], [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i ], [ %i.dl, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i" ]
  call void @_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sink.i.i) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.sroa.022.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.op, %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3393, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %.us-phi.i.i, %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", %bb.n
  %.sroa.022.1.i.i = phi ptr [ %.sroa.022.0.i.i, %bb.n ], [ %i.kp, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i" ] ; 17 uses
  %i.jg = load i32, ptr %.sroa.022.1.i.i, align 8, !tbaa !131
  %i.jh = icmp eq i32 %i.jg, 0
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
  %or.cond.not15.i.i.i13.i = select i1 %i.jh, i1 %i.jk, i1 false
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 40
  %i.jm = load i64, ptr %i.jl, align 8            ; 3 uses
  %i.jn = icmp eq i64 %i.jm, 23
  %or.cond10.i.i.i14.i = select i1 %or.cond.not15.i.i.i13.i, i1 %i.jn, i1 false
  br i1 %or.cond10.i.i.i14.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i: ; preds = %bb.o
  %.pre44.i.i = load i32, ptr %0, align 8, !tbaa !131
  %.pre.i15.i = load ptr, ptr %i.i, align 8
  %.pre47.i.i = load i64, ptr %i.j, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i: ; preds = %bb.o
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !90 ; 2 uses
  %i.jq = load i128, ptr %i.jp, align 1
  %i.jr = xor i128 %i.jq, 43134731028289254705102659877621165940
  %i.js = getelementptr i8, ptr %i.jp, i64 7
  %i.jt = load i128, ptr %i.js, align 1
  %i.ju = xor i128 %i.jt, 133449583543812656632503265877593235577
  %i.jv = or i128 %i.jr, %i.ju
  %i.jw = icmp ne i128 %i.jv, 0
  %i.jx = zext i1 %i.jw to i32
  %i.jy = icmp eq i32 %i.jx, 0
  %.pre45.i.i = load i32, ptr %0, align 8, !tbaa !131 ; 2 uses
  %.pre46.i.i = load ptr, ptr %i.i, align 8       ; 2 uses
  %.pre48.i.i = load i64, ptr %i.j, align 8       ; 2 uses
  br i1 %i.jy, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i
  %i.jz = phi i64 [ %.pre47.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i ], [ %.pre48.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 2 uses
  %i.ka = phi ptr [ %.pre.i15.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i ], [ %.pre46.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 3 uses
  %i.kb = phi i32 [ %.pre44.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i ], [ %.pre45.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 2 uses
  %i.kc = icmp eq i32 %i.kb, 0
  %i.kd = icmp eq ptr %i.ka, null
  %or.cond7.not17.i.i.i17.i = select i1 %i.kc, i1 %i.kd, i1 false
  %i.ke = icmp eq i64 %i.jz, 23
  %or.cond13.i.i.i18.i = select i1 %or.cond7.not17.i.i.i17.i, i1 %i.ke, i1 false
  br i1 %or.cond13.i.i.i18.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i
  %i.kf = load ptr, ptr %i.k, align 8, !tbaa !90  ; 2 uses
  %i.kg = load i128, ptr %i.kf, align 1
  %i.kh = xor i128 %i.kg, 43134731028289254705102659877621165940
  %i.ki = getelementptr i8, ptr %i.kf, i64 7
  %i.kj = load i128, ptr %i.ki, align 1
  %i.kk = xor i128 %i.kj, 133449583543812656632503265877593235577
  %i.kl = or i128 %i.kh, %i.kk
  %i.km = icmp ne i128 %i.kl, 0
  %i.kn = zext i1 %i.km to i32
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i
  %.old.i20.i = icmp ult ptr %i.jj, %i.ka
  br i1 %.old.i20.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 72
  br label %bb.o, !llvm.loop !324

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i
  %.lcssa = phi i64 [ %i.jm, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i" ], [ %i.jm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i ], [ 23, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 3 uses
  %i.kq = phi i64 [ %i.jz, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i" ], [ 23, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i ], [ %.pre48.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ]
  %i.kr = phi ptr [ %i.ka, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i" ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i ], [ %.pre46.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 2 uses
  %i.ks = phi i32 [ %i.kb, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i" ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i ], [ %.pre45.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 40 ; 3 uses
  %i.ku = icmp eq i32 %i.ks, 0
  %i.kv = icmp eq ptr %i.kr, null
  %or.cond.not15.i.i8.i.i = select i1 %i.ku, i1 %i.kv, i1 false
  %i.kw = icmp eq i64 %i.kq, 23
  %or.cond10.i.i9.i.i = select i1 %or.cond.not15.i.i8.i.i, i1 %i.kw, i1 false
  br i1 %or.cond10.i.i9.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i"
  %i.kx = load ptr, ptr %i.k, align 8, !tbaa !90  ; 2 uses
  %i.ky = load i128, ptr %i.kx, align 1
  %i.kz = xor i128 %i.ky, 43134731028289254705102659877621165940
  %i.la = getelementptr i8, ptr %i.kx, i64 7
  %i.lb = load i128, ptr %i.la, align 1
  %i.lc = xor i128 %i.lb, 133449583543812656632503265877593235577
  %i.ld = or i128 %i.kz, %i.lc
  %i.le = icmp ne i128 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = icmp eq i32 %i.lf, 0
  %.sroa.0.1.us33.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -72 ; 2 uses
  br i1 %i.lg, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i"
  %.sroa.0.1.us35.i.i = phi ptr [ %.sroa.0.1.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i" ], [ %.sroa.0.1.us33.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i" ] ; 5 uses
  %.sroa.0.0.pn.us34.i.i = phi ptr [ %.sroa.0.1.us35.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i" ], [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i" ] ; 3 uses
  %i.lh = load i32, ptr %.sroa.0.1.us35.i.i, align 8, !tbaa !131
  %i.li = icmp eq i32 %i.lh, 0
  %i.lj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.us34.i.i, i64 -64
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = icmp eq ptr %i.lk, null                 ; 2 uses
  %or.cond7.not17.i.i11.us.i.i = select i1 %i.li, i1 %i.ll, i1 false
  %i.lm = getelementptr inbounds i8, ptr %.sroa.0.0.pn.us34.i.i, i64 -32
  %i.ln = load i64, ptr %i.lm, align 8
  %i.lo = icmp eq i64 %i.ln, 23
  %or.cond13.i.i12.us.i.i = select i1 %or.cond7.not17.i.i11.us.i.i, i1 %i.lo, i1 false
  br i1 %or.cond13.i.i12.us.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i
  br i1 %i.ll, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i
  %i.lp = getelementptr inbounds i8, ptr %.sroa.0.0.pn.us34.i.i, i64 -40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !90 ; 2 uses
  %i.lr = load i128, ptr %i.lq, align 1
  %i.ls = xor i128 %i.lr, 43134731028289254705102659877621165940
  %i.lt = getelementptr i8, ptr %i.lq, i64 7
  %i.lu = load i128, ptr %i.lt, align 1
  %i.lv = xor i128 %i.lu, 133449583543812656632503265877593235577
  %i.lw = or i128 %i.ls, %i.lv
  %i.lx = icmp ne i128 %i.lw, 0
  %i.ly = zext i1 %i.lx to i32
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i"
  %.sroa.0.1.us.i.i = getelementptr inbounds i8, ptr %.sroa.0.1.us35.i.i, i64 -72
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge ], [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i" ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 4 uses
  %i.ma = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !131
  %i.mb = icmp eq i32 %i.ma, 0
  %i.mc = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64
  %i.md = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.me = icmp eq ptr %i.md, null
  %or.cond7.not17.i.i11.i.i = select i1 %i.mb, i1 %i.me, i1 false
  %i.mf = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = icmp eq i64 %i.mg, 23
  %or.cond13.i.i12.i.i = select i1 %or.cond7.not17.i.i11.i.i, i1 %i.mh, i1 false
  br i1 %or.cond13.i.i12.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i
  %i.mi = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !90 ; 2 uses
  %i.mk = load i128, ptr %i.mj, align 1
  %i.ml = xor i128 %i.mk, 43134731028289254705102659877621165940
  %i.mm = getelementptr i8, ptr %i.mj, i64 7
  %i.mn = load i128, ptr %i.mm, align 1
  %i.mo = xor i128 %i.mn, 133449583543812656632503265877593235577
  %i.mp = or i128 %i.ml, %i.mo
  %i.mq = icmp ne i128 %i.mp, 0
  %i.mr = zext i1 %i.mq to i32
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i
  %.old31.i.i = icmp ult ptr %i.kr, %i.md
  br i1 %.old31.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i, !llvm.loop !325

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i"
  %.us-phi.i.i = phi ptr [ %.sroa.0.1.us33.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i" ], [ %.sroa.0.1.us35.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i ], [ %.sroa.0.1.us35.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i" ], [ %.sroa.0.1.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i ], [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i" ] ; 10 uses
  %i.mt = icmp ult ptr %.sroa.022.1.i.i, %.us-phi.i.i
  br i1 %i.mt, label %bb.p, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit"

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.022.1.i.i, i64 32, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 32 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !121
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !90 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 48 ; 9 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

bb.q:                                             ; preds = %bb.p
  %i.my = icmp ult i64 %.lcssa, 16
  call void @llvm.assume(i1 %i.my)
  %i.mz = add nuw nsw i64 %.lcssa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.mw, i64 %i.mz, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %bb.p
  store ptr %i.mv, ptr %i.l, align 8, !tbaa !90
  %i.na = load i64, ptr %i.mw, align 8, !tbaa !118
  store i64 %i.na, ptr %i.m, align 8, !tbaa !118
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16, %bb.q
  store i64 %.lcssa, ptr %i.n, align 8, !tbaa !93
  store ptr %i.mw, ptr %i.mu, align 8, !tbaa !90
  store i64 0, ptr %i.kt, align 8, !tbaa !93
  store i8 0, ptr %i.mw, align 8, !tbaa !118
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 64 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8
  store i64 %i.nc, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.022.1.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.us-phi.i.i, i64 32, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 32 ; 7 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !90 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 48 ; 8 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !93 ; 3 uses
  %i.nj = icmp ult i64 %i.ni, 16
  call void @llvm.assume(i1 %i.nj)
  switch i64 %i.ni, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.nk = load i8, ptr %i.ne, align 1, !tbaa !118
  store i8 %i.nk, ptr %i.mw, align 8, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mw, ptr align 1 %i.ne, i64 %i.ni, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22: ; preds = %bb.t, %bb.s, %bb.r
  %i.nl = load i64, ptr %i.nh, align 8, !tbaa !93 ; 2 uses
  store i64 %i.nl, ptr %i.kt, align 8, !tbaa !93
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.nl
  store i8 0, ptr %i.nm, align 1, !tbaa !118
  %.pre.i.i.i.i23 = load ptr, ptr %i.nd, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i
  store ptr %i.ne, ptr %i.mu, align 8, !tbaa !90
  %i.nn = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !93
  store i64 %i.no, ptr %i.kt, align 8, !tbaa !93
  %i.np = load i64, ptr %i.nf, align 8, !tbaa !118
  store i64 %i.np, ptr %i.mw, align 8, !tbaa !118
  store ptr %i.nf, ptr %i.nd, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22
  %i.nq = phi ptr [ %.pre.i.i.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22 ], [ %i.nf, %bb.u ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40 ; 4 uses
  store i64 0, ptr %i.nr, align 8, !tbaa !93
  store i8 0, ptr %i.nq, align 1, !tbaa !118
  %i.ns = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 64 ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8
  store i64 %i.nt, ptr %i.nb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.us-phi.i.i, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 32, i1 false)
  %i.nu = load ptr, ptr %i.nd, align 8, !tbaa !90 ; 6 uses
  %i.nv = icmp eq ptr %i.nu, %i.nf
  %i.nw = load ptr, ptr %i.l, align 8, !tbaa !90  ; 5 uses
  %i.nx = icmp eq ptr %i.nw, %i.m                 ; 2 uses
  br i1 %i.nv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19
  br i1 %i.nx, label %bb.v, label %.thread.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19
  br i1 %i.nx, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i
  %i.ny = load i64, ptr %i.n, align 8, !tbaa !93  ; 3 uses
  %i.nz = icmp ult i64 %i.ny, 16
  call void @llvm.assume(i1 %i.nz)
  switch i64 %i.ny, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !118
  store i8 %i.oa, ptr %i.nu, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nu, ptr align 1 %i.nw, i64 %i.ny, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.ob = load i64, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  store i64 %i.ob, ptr %i.nr, align 8, !tbaa !93
  %i.oc = load ptr, ptr %i.nd, align 8, !tbaa !90
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ob
  store i8 0, ptr %i.od, align 1, !tbaa !118
  %.pre.i.i.i10.i = load ptr, ptr %i.l, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i

.thread.i.i.i12.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i
  store ptr %i.nw, ptr %i.nd, align 8, !tbaa !90
  %i.oe = load i64, ptr %i.n, align 8, !tbaa !93
  store i64 %i.oe, ptr %i.nr, align 8, !tbaa !93
  %i.of = load i64, ptr %i.m, align 8, !tbaa !118
  store i64 %i.of, ptr %i.nf, align 8, !tbaa !118
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i
  %i.og = load i64, ptr %i.nf, align 8, !tbaa !118
  store ptr %i.nw, ptr %i.nd, align 8, !tbaa !90
  %i.oh = load i64, ptr %i.n, align 8, !tbaa !93
  store i64 %i.oh, ptr %i.nr, align 8, !tbaa !93
  %i.oi = load i64, ptr %i.m, align 8, !tbaa !118
  store i64 %i.oi, ptr %i.nf, align 8, !tbaa !118
  %.not.i.i.i7.i = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i7.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i
  store ptr %i.nu, ptr %i.l, align 8, !tbaa !90
  store i64 %i.og, ptr %i.m, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i, %.thread.i.i.i12.i
  store ptr %i.m, ptr %i.l, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i: ; preds = %bb.z, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i
  %i.oj = phi ptr [ %i.nu, %bb.y ], [ %i.m, %bb.z ], [ %.pre.i.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i ]
  store i64 0, ptr %i.n, align 8, !tbaa !93
  store i8 0, ptr %i.oj, align 1, !tbaa !118
  %i.ok = load i64, ptr %i.o, align 8
  store i64 %i.ok, ptr %i.ns, align 8
  %i.ol = load ptr, ptr %i.l, align 8, !tbaa !90  ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.m
  br i1 %i.om, label %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i
  %i.on = load i64, ptr %i.m, align 8, !tbaa !118
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #25
  br label %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 72
  br label %bb.n, !llvm.loop !326

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_T1_"(ptr nonnull %.sroa.022.1.i.i, ptr %storemerge3393, i64 noundef %i.di)
  %i.oq = ptrtoint ptr %.sroa.022.1.i.i to i64
  %i.or = sub i64 %i.oq, %i.a                     ; 3 uses
  %i.os = icmp sgt i64 %i.or, 1152
  br i1 %i.os, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !321

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 9 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  %.051 = phi i64 [ %i.av, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.051, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [72 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [72 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !131
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %or.cond.not15.i.i = select i1 %i.j, i1 %i.m, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, 23
  %or.cond10.i.i = select i1 %or.cond.not15.i.i, i1 %i.p, i1 false
  br i1 %or.cond10.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90   ; 2 uses
  %i.s = load i128, ptr %i.r, align 1
  %i.t = xor i128 %i.s, 43134731028289254705102659877621165940
  %i.u = getelementptr i8, ptr %i.r, i64 7
  %i.v = load i128, ptr %i.u, align 1
  %i.w = xor i128 %i.v, 133449583543812656632503265877593235577
  %i.x = or i128 %i.t, %i.w
  %i.y = icmp ne i128 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread48", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %.lr.ph
end_hunk_0
begin_hunk_1_@_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !90
  %i.k = load i64, ptr %i.e, align 8, !tbaa !118
  store i64 %i.k, ptr %i.c, align 8, !tbaa !118
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !93
  store ptr %i.e, ptr %i.b, align 8, !tbaa !90
  store i64 0, ptr %i.m, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !93   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i.i, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, label %bb.d, !prof !207

bb.d:                                             ; preds = %bb.c
  switch i64 %i.w, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.s, align 1, !tbaa !118
  store i8 %i.y, ptr %i.e, align 8, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.z = load i64, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  store i64 %i.z, ptr %i.m, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !118
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  store ptr %i.s, ptr %i.b, align 8, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !93
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !93
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !118
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !118
  store ptr %i.t, ptr %i.r, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g
  %i.ae = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.t, %bb.g ], [ %i.s, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store i64 0, ptr %i.af, align 8, !tbaa !93
  store i8 0, ptr %i.ae, align 1, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 32, i1 false)
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !90  ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.t
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !90  ; 5 uses
  %i.al = icmp eq ptr %i.ak, %i.c                 ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  br i1 %i.al, label %bb.h, label %.thread.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  br i1 %i.al, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  %i.am = load i64, ptr %i.n, align 8, !tbaa !93  ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  switch i64 %i.am, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !118
  store i8 %i.ao, ptr %i.ai, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9: ; preds = %bb.j, %bb.i, %bb.h
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !93
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !118
  %.pre.i.i.i10 = load ptr, ptr %i.a, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13

.thread.i.i.i12:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !90
  %i.as = load <2 x i64>, ptr %i.n, align 8, !tbaa !118
  store <2 x i64> %i.as, ptr %i.af, align 8, !tbaa !118
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5
  %i.at = load i64, ptr %i.t, align 8, !tbaa !118
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !90
  %i.au = load <2 x i64>, ptr %i.n, align 8, !tbaa !118
  store <2 x i64> %i.au, ptr %i.af, align 8, !tbaa !118
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !90
  store i64 %i.at, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6, %.thread.i.i.i12
  store ptr %i.c, ptr %i.a, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9, %bb.k, %bb.l
  %i.av = phi ptr [ %i.ai, %bb.k ], [ %i.c, %bb.l ], [ %.pre.i.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9 ]
  store i64 0, ptr %i.n, align 8, !tbaa !93
  store i8 0, ptr %i.av, align 1, !tbaa !118
  %i.aw = load i64, ptr %i.o, align 8
  store i64 %i.aw, ptr %i.ag, align 8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13
  %i.az = load i64, ptr %i.c, align 8, !tbaa !118
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 9 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.022 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.0.022, %1
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.not21.i.i.i = icmp eq ptr %2, %0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0.025 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %.sroa.0.0, %bb.o ] ; 7 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.025, %bb.o ] ; 7 uses
  %i.l = load i32, ptr %.sroa.0.025, align 8, !tbaa !131
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24, i64 80
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.not15.i.i = select i1 %i.m, i1 %i.p, i1 false
  %i.q = getelementptr inbounds nuw i8, ptr %.pn24, i64 112 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = icmp eq i64 %i.r, 23
  %or.cond10.i.i = select i1 %or.cond.not15.i.i, i1 %i.s, i1 false
  br i1 %or.cond10.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.pn24, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %i.v = load i128, ptr %i.u, align 1
  %i.w = xor i128 %i.v, 43134731028289254705102659877621165940
  %i.x = getelementptr i8, ptr %i.u, i64 7
  %i.y = load i128, ptr %i.x, align 1
  %i.z = xor i128 %i.y, 133449583543812656632503265877593235577
  %i.aa = or i128 %i.w, %i.z
  %i.ab = icmp ne i128 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.b
  %i.ae = load i32, ptr %0, align 8, !tbaa !131
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %or.cond7.not17.i.i = select i1 %i.af, i1 %i.ah, i1 false
  %i.ai = load i64, ptr %i.c, align 8
  %i.aj = icmp eq i64 %i.ai, 23
  %or.cond13.i.i = select i1 %or.cond7.not17.i.i, i1 %i.aj, i1 false
  br i1 %or.cond13.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !90  ; 2 uses
  %i.al = load i128, ptr %i.ak, align 1
  %i.am = xor i128 %i.al, 43134731028289254705102659877621165940
  %i.an = getelementptr i8, ptr %i.ak, i64 7
  %i.ao = load i128, ptr %i.an, align 1
  %i.ap = xor i128 %i.ao, 133449583543812656632503265877593235577
  %i.aq = or i128 %i.am, %i.ap
  %i.ar = icmp ne i128 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %.old = icmp ult ptr %i.o, %i.ag
  br i1 %.old, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.025, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.pn24, i64 104 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !121
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn24, i64 120 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread"
  %i.ay = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread"
  store ptr %i.av, ptr %i.e, align 8, !tbaa !90
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !118
  store i64 %i.ba, ptr %i.f, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store i64 %i.r, ptr %i.g, align 8, !tbaa !93
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !90
  store i64 0, ptr %i.q, align 8, !tbaa !93
  store i8 0, ptr %i.aw, align 8, !tbaa !118
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn24, i64 136
  %i.bc = load i64, ptr %i.bb, align 8
  store i64 %i.bc, ptr %i.h, align 8
  %i.bd = ptrtoint ptr %.sroa.0.025 to i64
  %i.be = sub i64 %i.bd, %i.i                     ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn24, i64 144
  %i.bh = udiv exact i64 %i.be, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.co, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bj, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bi, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.025, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bi, i64 32, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 4 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !90 ; 6 uses
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 4 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !90 ; 5 uses
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 6 uses
  %i.br = icmp eq ptr %i.bp, %i.bq                ; 2 uses
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.br, label %bb.d, label %.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.br, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !93 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  switch i64 %i.bt, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !118
  store i8 %i.bv, ptr %i.bm, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bp, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !93
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !90
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !118
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !90
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !93
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !93
  %i.cd = load i64, ptr %i.bq, align 8, !tbaa !118
  store i64 %i.cd, ptr %i.bn, align 8, !tbaa !118
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.ce = load i64, ptr %i.bn, align 8, !tbaa !118
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !90
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !93
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !93
  %i.ci = load i64, ptr %i.bq, align 8, !tbaa !118
  store i64 %i.ci, ptr %i.bn, align 8, !tbaa !118
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !90
  store i64 %i.ce, ptr %i.bq, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
  %i.cj = phi ptr [ %i.bm, %bb.g ], [ %i.bq, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.ck, align 8, !tbaa !93
  store i8 0, ptr %i.cj, align 1, !tbaa !118
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.cn = load i64, ptr %i.cm, align 8
  store i64 %i.cn, ptr %i.cl, align 8
  %i.co = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cp = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !329

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 32, i1 false)
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !90  ; 6 uses
  %i.cr = icmp eq ptr %i.cq, %i.j
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !90  ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.f                 ; 2 uses
  %.pre27 = load i64, ptr %i.g, align 8, !tbaa !93 ; 5 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  br i1 %i.ct, label %bb.i, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  br i1 %i.ct, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.cu = icmp ult i64 %.pre27, 16
  call void @llvm.assume(i1 %i.cu)
  br i1 %.not21.i.i.i, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, label %bb.j, !prof !207

bb.j:                                             ; preds = %bb.i
  switch i64 %.pre27, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cv = load i8, ptr %i.cs, align 1, !tbaa !118
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cs, i64 %.pre27, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cw = load i64, ptr %i.g, align 8, !tbaa !93  ; 2 uses
  store i64 %i.cw, ptr %i.c, align 8, !tbaa !93
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !118
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !90
  store i64 %.pre27, ptr %i.c, align 8, !tbaa !93
  %i.cz = load i64, ptr %i.f, align 8, !tbaa !118
  store i64 %i.cz, ptr %i.j, align 8, !tbaa !118
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.da = load i64, ptr %i.j, align 8, !tbaa !118
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !90
  store i64 %.pre27, ptr %i.c, align 8, !tbaa !93
  %i.db = load i64, ptr %i.f, align 8, !tbaa !118
  store i64 %i.db, ptr %i.j, align 8, !tbaa !118
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.cq, ptr %i.e, align 8, !tbaa !90
  store i64 %i.da, ptr %i.f, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.f, ptr %i.e, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.m, %bb.n
  %i.dc = phi ptr [ %i.cq, %bb.m ], [ %i.f, %bb.n ], [ %i.cs, %bb.i ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.g, align 8, !tbaa !93
  store i8 0, ptr %i.dc, align 1, !tbaa !118
  %i.dd = load i64, ptr %i.h, align 8
  store i64 %i.dd, ptr %i.k, align 8
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !90  ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.f
  br i1 %i.df, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  %i.dg = load i64, ptr %i.f, align 8, !tbaa !118
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.o
end_hunk_1
